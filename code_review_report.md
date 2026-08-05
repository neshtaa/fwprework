# Code Review Report

**Commit:** `ed92956` — "fix: resolve critical bugs in physics, timers, aiming, and UI"
**Branch:** `full-flash-migration`
**Reviewer:** Automated code review
**Date:** 2026-08-06

---

## High-Level Summary

Коміт вносить зміни у 5 source-файлів клієнтської гри (Projectile.ts, AIBot.ts, Worm.ts, DestructibleTerrainScene.ts, weapons.ts) + повне переписування `levels_config.json` + додає ~11500 файлів із витягнутими бінарними даними SWF, декомпільованим AS3-кодом та інструментами (JDK 17, FFDec). Основна мета: фікс фізики снарядів (fixed timestep, гравітація), виправлення timer race у зміні ходів, коректне відображення напрямку worm'а при стрільбі, прибирання placeholder-зброї з UI, та синхронізація AI-симуляції з реальною фізикою снарядів.

---

## Знайдені проблеми

### 🔴 Критичні

#### 1. Projectile.ts: Відсутній guard на максимальну кількість ітерацій у fixed-timestep циклі
- **Файл:** `client/src/game/entities/Projectile.ts:92`
- **Блок:** `while (this.physicsAccumulator >= Projectile.FIXED_TIME_STEP)`
- **Що не так:** Якщо `delta` дуже великий (наприклад, браузер був у фоновому режимі й повернувся з `delta` у кілька секунд), цикл `while` виконає сотні підкроків фізики за один кадр, що призведе до зависання браузера на тривалий час.
- **Чому це проблема:** Немає обмеження ні на `delta` (наприклад, `Math.min(delta, 500)`), ні на кількість ітерацій (наприклад, `maxSubsteps = 10`). Phaser може передати довільний `delta`, включаючи дуже великі значення після повернення з фонового режиму.
- **Вплив:** Повне зависання гри/вкладки при поверненні з фонового режиму після тривалої відсутності.
- **Як перевірити:** Відкрити гру, переключитися на іншу вкладку на 5+ хвилин, повернутися — браузер зависне.

#### 2. DestructibleTerrainScene.ts: `turnEndTimerEvent` не очищується при частковому `cleanup()`
- **Файл:** `client/src/game/scene/DestructibleTerrainScene.ts:249-257`
- **Блок:** `private cleanup()`
- **Що не так:** cleanup() не видаляє `this.input` listener'и (`pointerdown`, `pointerup`, додані на рядках 243-244). Також не очищує `this.turnEndTimerEvent = null` (встановлює `undefined` замість `null`).
- **Чому це проблема:** Phaser зазвичай очищує input listener'и при shutdown/re-start, але явне додавання через `this.input.on()` без відповідного `off()` створює ризик подвійної реєстрації при edge-case перезапусках. Крім того, у коді `updateTurnState()` на рядках 617 і 624 використовується `this.turnEndTimerEvent = null`, а в cleanup — `this.turnEndTimerEvent = undefined`. Ця неконсистентність (`null` vs `undefined`) призводить до того, що `!this.turnEndTimerEvent` працює для обох (бо `!undefined === true` і `!null === true`), але логічно це різні значення.
- **Вплив:** Low practical impact (Phaser сам очищує), але потенційний memory leak при частих перезапусках сцени.
- **Як перевірити:** Багаторазово натискати "Restart", перевірити чи не накопичуються зайві event listener'и.

### 🟡 Середньої критичності

#### 3. Projectile.ts: Таймер працює до фізики — зміна порядку обробки
- **Файл:** `client/src/game/entities/Projectile.ts:80-87`
- **Блок:** Timer logic moved before physics loop
- **Що не так:** У старому коді фізика (включаючи impact-детекцію) виконувалась до перевірки таймера. Тепер таймер перевіряється першим. Для зброї, яка має **і** `timerMs`, **і** `explodeOnImpact`, змінився пріоритет: якщо таймер спливає на тому ж кадрі, коли снаряд мав би влучити в terrain, вибух станеться від таймера (а не від impact). Попередньо impact мав пріоритет.
- **Чому це проблема:** В оригінальній Flash-грі impact має пріоритет над таймером (снаряд вибухає при контакті, навіть якщо таймер ще не вичерпався). Новий порядок може змінити поведінку для зброї з обома властивостями (якщо такі є).
- **Вплив:** Зміна геймплейної поведінки для зброї з timerMs + explodeOnImpact (наприклад, гранати з таймером, яка вибухає при ударі об terrain). Потрібно перевірити, чи є така зброя в конфігурації.
- **Як перевірити:** Знайти зброю з `timerMs > 0 && explodeOnImpact === true`, перевірити поведінку при прямому влучанні в terrain.

#### 4. DestructibleTerrainScene.ts: `window.clearTimeout` для Phaser delayedCall?
- **Файл:** `client/src/game/scene/DestructibleTerrainScene.ts:622-623`
- **Блок:** `this.turnEndTimerEvent.destroy()` + `this.turnEndTimerEvent = null`
- **Що не так:** Код викликає `.destroy()` на Phaser TimerEvent, щоб скасувати відкладений виклик. Це правильний підхід. Але немає перевірки, чи `this.turnEndTimerEvent` ще існує і не був уже виконаний (після виконання колбеку таймер самознищується, і `.destroy()` на ньому може спричинити помилку).
- **Чому це проблема:** Якщо `turnEndTimerEvent` вже відпрацював (колбек викликався), об'єкт може бути вже невалідним або мати стан `destroyed`. Phaser зазвичай безпечно обробляє `.destroy()` на вже знищених таймерах, але це залежить від версії.
- **Вплив:** Можливий runtime warning/error у консолі при певних race conditions.
- **Як перевірити:** Швидко переключати ходи, спостерігати консоль на наявність помилок від Phaser timer API.

#### 5. AIBot.ts: `wind` перевіряється всередині `simulateStep`, але також встановлюється на projectile
- **Файл:** `client/src/game/entities/AIBot.ts:81`
- **Блок:** `const stepResult = Projectile.simulateStep(simX, simY, simVx, simVy, wind, weaponKey)`
- **Що не так:** `Projectile.simulateStep` приймає raw `wind` значення і всередині перевіряє `config.affectedByWind`. Це коректно. Але у старому коді AI самостійно обчислював `simWind = config.affectedByWind ? wind : 0` і застосовував `simVx += simWind * 0.05`. Коефіцієнт `0.05` був довільним і не відповідав реальній фізиці. Новий код використовує `simulateStep`, де wind додається БЕЗ коефіцієнта `0.05` (`newVx = vx + currentWind`). Це ВІРНО — AI тепер використовує ту саму фізику, що й реальний снаряд.
- **Вплив:** Позитивна зміна. AI тепер точніше цілиться, бо симулює справжню фізику.
- **Вердикт:** Not a bug — правильне виправлення.

### 🟢 Низької критичності

#### 6. Projectile.ts: Дубльований коментар
- **Файл:** `client/src/game/entities/Projectile.ts:23-24`
- **Блок:** `// Shared physical constants` (двічі)
- **Що не так:** Випадкове дублювання рядка при рефакторингу.
- **Вплив:** Косметичний. Не впливає на роботу.

#### 7. DestructibleTerrainScene.ts: `checkHitLine` у trajectory preview може бути дорогим
- **Файл:** `client/src/game/scene/DestructibleTerrainScene.ts:574`
- **Блок:** `const hitResult = this.worldPhysics.checkHitLine(simX, simY, step.x, step.y)`
- **Що не так:** Кожен кадр під час прицілювання (коли `isAiming === true`) викликається до 30 разів `checkHitLine` — по одному на кожен крок симуляції траєкторії. `checkHitLine` виконує Bresenham-подібний прохід по пікселях canvas-текстури. На великих картах це може спричинити просідання FPS під час прицілювання.
- **Чому це проблема:** 30 × 60fps = 1800 викликів `getImageData`/перевірок пікселів на секунду в найгіршому випадку.
- **Вплив:** Можливі мікро-фризи при прицілюванні на слабкому залізі або великих картах.
- **Як перевірити:** Увімкнути прицілювання на карті максимального розміру, спостерігати за FPS через browser devtools.

#### 8. Worm.ts: `setFacing` не перевіряє, чи sprite активний
- **Файл:** `client/src/game/entities/Worm.ts:170-174`
- **Блок:** `public setFacing(facingRight: boolean)`
- **Що не так:** Метод викликає `this.sprite.setFlipX(this.facingRight)` без перевірки `this.sprite?.active`. Якщо worm мертвий і sprite вже знищений (`this.sprite.destroy()` на рядку 87), виклик `setFacing` (наприклад, з `handlePointerUp` при швидкому кліку після смерті) може спричинити помилку доступу до знищеного об'єкта.
- **Чому це проблема:** `handlePointerUp` викликає `activeWorm.setFacing(vx > 0)` без перевірки health worm'а. Якщо worm помер між pointerdown і pointerup...
- **Вплив:** Малоймовірний edge case. Потребує точного таймінгу.
- **Як перевірити:** Спробувати вистрілити в момент, коли активний worm отримує летальний урон від вибуху попереднього снаряда.

---

## Regression Risks

| Risk | Severity | Details |
|---|---|---|
| **Timer <-> physics order swap** | Medium | Для зброї з timerMs + explodeOnImpact змінився пріоритет вибуху |
| **Fixed timestep без guard** | High | Може спричинити зависання після фонування вкладки |
| **Гравітація 0.2 → 0.24** | Low | Зміна траєкторій всіх снарядів. АЛЕ це виправлення, бо worm має gravity=0.24 — тепер фізика консистентна |
| **AI симуляція з новою фізикою** | Low | AI тепер правильно симулює, але може мати іншу поведінку через зміну гравітації та wind-коефіцієнта |
| **`waitingForTurnEnd` не скидається до false між ходами** | None | Це виправлення race condition — тепер чекає 1с після зупинки всіх worm'ів перед наступним ходом |

## Performance Risks

| Risk | Details |
|---|---|
| **Trajectory preview + checkHitLine ×30** | 30 викликів піксельної колізії за кадр під час прицілювання |
| **Fixed timestep без cap** | При великому delta (повернення з фону) може виконати сотні фізичних підкроків за один кадр |
| **Phaser CanvasTexture.refresh()** | Додано в попередньому коміті — синхронна операція завантаження canvas у WebGL, прибирати не можна, але варто знати про overhead |

## Testing Gaps

1. **Немає тестів на fixed-timestep фізику** — варто додати unit-тест для `Projectile.update()` з різними значеннями delta (16ms, 33ms, 100ms, 1000ms).
2. **Немає тестів на `cleanup()` при перезапуску сцени** — варто перевірити, що timer'и не залишаються після `scene.restart()`.
3. **Немає тестів на AI-симуляцію з новою фізикою** — AI тепер використовує `Projectile.simulateStep`, що має бути точніше, але потребує валідації на реальних мапах.
4. **Немає перевірки консистентності спрайтів worm'а** — `setFlipX` тепер однаковий для клавіатурного руху, кліку мишею та AI. Але чи правильний сам напрямок (чи спрайти дійсно дивляться вліво за замовчуванням)?

---

## Загальний висновок

**Verdict: Partially Safe** ⚠️

Коміт містить важливі виправлення (AI-фізика, timer race condition, траєкторія з terrain hit, прибирання placeholder-зброї), але має дві суттєві проблеми:

1. **Fixed-timestep без обмеження** створює реальний ризик зависання гри після повернення з фонового режиму.
2. **Зміна порядку timer/physics** може змінити поведінку зброї з комбінацією `timerMs` + `explodeOnImpact` (потребує ручної перевірки).

Решта змін — якісні виправлення, що покращують стабільність і parity з Flash-оригіналом. Рекомендую додати `Math.min(delta, 500)` або лічильник ітерацій у `while` цикл перед мерджем.
