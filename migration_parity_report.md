# Migration Parity Report

**Дата:** 2026-08-08
**Проєкт:** Flash W.M.D. → Phaser 4 / TypeScript
**Останній коміт:** `25d126c`

---

## 1. High-Level Summary

Проєкт перебуває на стадії **функціонального вертикального зрізу**: базовий ігровий цикл працює (рух черв'яків, прицілювання, стрільба, руйнування terrain, вибухи, ефекти вогню/отрути, зміна ходів, AI-бот). Покриття відносно оригінальної Flash-гри — орієнтовно **25-30%**.

Фундамент чистий і розширюваний. 155 видів зброї мають повні конфігураційні дані — реалізовано лише ~5. 1 із 92 карт завантажено. HUD присутній, але 25+ екранів UI не імплементовано. Мережевий шар, мета-прогресія та економіка відсутні.

---

## 2. Parity by Subsystem

### ✅ Fully / Near-Fully Migrated

| Підсистема | Деталі |
|---|---|
| **Projectile Physics** | BASE_GRAVITY=0.24, fixed timestep, wind, gravity/wind множники, bounce (reflect), stopOnImpact, explodeOnImpact, timerMs. Усі 29+ полів WeaponConfig підтримуються. |
| **Weapon Data** | 155 видів зброї з повними конфігураціями (fire, poison, breaking, multiplexplosions, bounce, reflect, timing тощо). Автогенерація з weapons_full.json через generate_weapons_ts.cjs. |
| **Terrain Collision** | WorldPhysics: isSolid() (піксельна), checkHitLine() (рейкастинг), eraseCircle() (руйнування), reflect() (нормалі відбивання). |
| **Worm Movement** | Ходьба, гравітація (0.24), fall damage, тертя, стрибок, напрямок (setFacing). |
| **Explosions** | Радіусне руйнування terrain, розрахунок шкоди (зона 6.5px + лінійне спадання), knockback impulse. |
| **Turn Management** | Ротація команд, таймер ходу (60с), ротація черв'яків усередині команди, затримка 1с між ходами. |
| **AI Bot** | Brute-force пошук кута/сили для bazooka/grenade. Симуляція траєкторії через Projectile.simulateStep. |
| **Poison System** | applyPoison(), applyPoisonTick() на межі ходу, decay (sick--), «poison never kills» (лишає 1 HP). |
| **Fire Particles** | FireParticle з вітром, гравітацією, колізією, пошкодженням черв'яків, часом життя. |
| **Multi-Explosions** | multiplexplosions — послідовні вибухи без затримки (Flash-механіка «drilling»). |
| **Breaking/Cluster** | Спавн дочірніх снарядів при вибуху кластерної зброї. |
| **Wind** | Рандомізується щохóду, впливає на снаряди та частинки. |
| **Camera** | Слідує за активним черв'яком і снарядом. |
| **HUD** | Health 3 команд, таймер, wind indicator, weapon selector, aim power bar, game over screen. |

### ⚠️ Partially Migrated

| Підсистема | Стан | Чого бракує |
|---|---|---|
| **Maps** | 1/92 (1_dmap.png) | 91 карта, 9 біомів, spawn-координати з levels_config.json |
| **Weapon Sprites** | 5/155 (bazooka, grenade, dynamite, hhg, mine) | 150+ спрайтів зброї |
| **Worm Animations** | idle (60f), walk (9f) | flying, aiming, falling, death, parachute, firecontrol, special (~10 анімацій) |
| **Sound System** | 48 файлів завантажено, 3 використовуються | 27+ композитних звуків зброї (sound.as), ambient, музика |
| **Weapon Implementation** | ~5 працюють (bazooka, grenade, dynamite) | guns, mines, air strikes, animals, melee, utilities — 140+ типів |
| **Special Abilities** | Жодної | 12+ спеціалів (jet pack, teleport, blow torch, drill, prod, bat, firepunch, axe, parachute, girder, laser sight, ninja rope) |
| **AI Targeting** | Базова балістична симуляція | Не враховує reflect/кластери/спеціальну зброю |

### ❌ Not Migrated

| Підсистема | Опис |
|---|---|
| **Network / Backend** | VKontakte API інтеграція (авторизація, друзі, рейтинги, аукціон). Backend/ — лише README. |
| **Save / Load** | SharedObject → localStorage. Збереження прогресу гравця. |
| **Multiplayer** | PvP через VK API. Лобі, матчмейкінг. |
| **Inventory / Economy** | Золото, діаманти, володіння зброєю, крадіжка, аукціон (papa). |
| **Shop / Crafting** | Купівля/продаж зброї, крафт зброї та об'єктів. |
| **Perks / Skills / Stims** | Прогресія гравця: дерево перків, навички (attack/protect/spec), стимулятори (stimpacks, jet, buffout, psycho). |
| **Missions / Scripting** | 21 місія зі спеціальними правилами, цілями, сюжетними подіями. |
| **Replay System** | Повний запис і відтворення матчів (PARAMS_RECORD, покрокове збереження). |
| **Achievements** | Система досягнень (30+ ачівок з нагородами). |
| **Survival Mode** | Respawn механіка, SURV_KILLS. |
| **Crates** | Ящики зі зброєю/бонусами на карті. |
| **Player Fatigue** | Анти-фарм механіка (tiredness). |
| **Social Features** | Друзі, клани, таблиці лідерів, сканер. |
| **Avatar System** | Завантаження аватарок гравців із VK. |
| **World Map** | Карта світу з вибором місій, прогресом. |
| **Boss Fights** | 13 бос-карт зі спеціальними правилами. |
| **Assault Mode** | Спеціальний PvP-режим. |
| **Grave Search** | Пошук могил інших гравців, лут. |
| **Tutorial** | Навчальні підказки. |
| **UI Screens** | 25+ екранів: головне меню, скіли, крафт, магазин, перки, ачівки, реплей, рулетка, сканер, друзі, топ, арсенал, інфо гравця тощо. |
| **Ban / Anti-cheat** | Система банів, bug report. |
| **Banners / Ads** | Внутрішньоігрова реклама. |

---

## 3. Загальна оцінка

**Parity:** ~25-30%

**Стабільність:** Висока для реалізованого функціоналу. Core game loop працює без критичних багів. Архітектура чиста, типізована, з покриттям тестами (WorldPhysics spec + poison E2E).

**Технічний борг:**
- Лише 1 карта — решта 91 потребують витягнення PNG + валідації координат
- 150+ спрайтів зброї не витягнуто
- 10+ анімацій черв'яка відсутні
- Звукова система потребує інтеграції композитних звуків з Flash sound.as
- Duplicate friction removal, accumulator cap та інші fix'и нещодавно додані — потрібен regression test run

**Ризики:**
- Phaser 4 — beta/library ризик (API може змінюватися)
- Відсутність мережевого шару блокує multiplayer-тестування
- 92 карти × спрайти × анімації — значний обсяг asset pipeline роботи

---

## 4. Рекомендовані наступні кроки міграції

### Крок 1: Asset Pipeline — карти, спрайти, анімації (пріоритет: 🔴 must-have)

**Чому:** Без карт і спрайтів неможливо тестувати зброю в реальних умовах. 1 карта не дає coverage для координат, біомів, меж світу.

**Що робити:**
- Витягнути PNG з усіх 92 бінарних файлів карт (extracted/export/binaryData/*.bin)
- Витягнути спрайти зброї (155) та анімації черв'яка (~10)
- Сформувати `levels_config.json` з координатами спавну для кожної карти
- Налаштувати map selector для всіх карт

**Ризики:** Великий обсяг ручної/автоматизованої роботи. FFDec вже встановлено, extract_bins.sh готовий.

---

### Крок 2: Weapon Type Implementation (пріоритет: 🔴 must-have)

**Чому:** 155/155 видів зброї мають конфігураційні дані, але реалізовано ~5. Без цього гра не грабельна.

**Що робити:**
- **Guns** (sniper, minigun, shotgun, pistol, uzi, bozar, gauss, peacemaker, hunting rifle) — hitscan/semi-ballistic логіка
- **Mines** (mine, mine_agent, mine_tesla) — planted з detonation trigger
- **Air Strikes** (air_strike, napalm_strike, mine_strike, banana_strike, holy_strike, orbit_strike) — multi-projectile patterns
- **Animals** (sheep, super_sheep, kamikaze_sheep, old_woman) — AI-controlled wandering projectiles
- **Melee** (prod, firepunch, baseball_bat, battle_axe) — close-range with fixed damage
- **Utilities** (jet_pack, teleport, blow_torch, drill, parachute, girder, laser_sight, medikit, invisibility, low_gravity, fast_walk, skip_go, res_fast_walk) — special ability integration

**Ризики:** Guns потребують hitscan (перевірка лінії видимості, а не балістика). Air strikes потребують відкладених вибухів. Тварини — AI + wandaring. Складність: висока.

---

### Крок 3: Sound System Integration (пріоритет: 🟡 high)

**Чому:** 48 звукових файлів уже завантажено в preload, але використовується лише 3 (вибухи). Без звуку гра відчувається неповноцінно.

**Що робити:**
- Перенести композитні звукові мапінги з sound.as (27+ зброї мають унікальні комбінації звуків)
- Додати звуки: вибір зброї, ходьба, стрибок, вітер, кінець ходу, нова карта, смерть черв'яка
- Звук для кожної реалізованої зброї (firing sound + explosion)

**Ризики:** Phaser 4 sound API може відрізнятися. Складність: низька.

---

### Крок 4: UI — Weapon Sheet & Inventory (пріоритет: 🟡 high)

**Чому:** Поточний weapon selector — простий HTML `<select>`. Для повноцінного геймплею потрібен weapon sheet з візуальним вибором, кількістю боєприпасів, інвентарем.

**Що робити:**
- Замінити HTML select на Phaser-based weapon sheet (сітка 8 слотів, як у Flash)
- Відображати кількість боєприпасів (∞ / число)
- Візуальний фідбек при виборі зброї (highlight, опис)
- Інтегрувати з командною inventory системою

**Ризики:** Потребує sprite sheet для іконок зброї. Складність: середня.

---

### Крок 5: Special Abilities (пріоритет: 🟡 high)

**Чому:** 12+ спеціальних здібностей — core-механіка, що відрізняє W.M.D. від базових Worms-подібних ігор. Jet pack, teleport, blow torch — найбільш використовувані.

**Що робити:**
- **Пріоритетні:** jet_pack (політ), teleport (миттєве переміщення), blow_torch (прожигання terrain), drill (вертикальне копання), parachute (контрольоване падіння), girder (міст через прірву)
- **Другорядні:** prod (відштовхування), baseball_bat (відкидання), firepunch, battle_axe
- **Специфічні:** laser_sight (покращене прицілювання), ninja_rope (гойдалка)

**Ризики:** Складність різна для кожного спеціалу. Jet pack потребує постійного вводу + витрату палива + анімацію. Teleport — вибір точки на карті. Blow torch/drill — піксельне руйнування terrain певної форми (не круг). Складність: висока.

---

### Крок 6: Network Layer Foundation (пріоритет: 🟢 medium, довгостроково)

**Чому:** Flash-гра мала повну VK API інтеграцію: авторизація, друзі, рейтинги, аукціон, PvP. Для запуску в production це обов'язково. Але як наступний крок — foundation (WebSocket/HTTP API), а не повна імплементація.

**Що робити:**
- Спроєктувати API контракти (REST + WebSocket для real-time)
- Реалізувати базовий backend (Node.js/Python у backend/)
- Авторизація (OAuth/JWT)
- Збереження прогресу гравця (заміна SharedObject на DB)
- PvP matchmaking (базовий — 2 гравці в одній кімнаті)

**Ризики:** Найскладніший модуль. Потребує синхронізації ігрового стану через мережу (replay-based або real-time). Складність: дуже висока.

---

## 5. Додаткові спостереження

**Архітектура:**
- Поточний поділ на `core/`, `data/`, `entities/`, `scene/` — чистий. Рекомендую додати `systems/` для спеціальних здібностей і `ui/` для Phaser-based UI компонентів.
- `WorldPhysics` — добрий кандидат для винесення в окремий npm-пакет (чистий, не залежить від Phaser окрім CanvasTexture).

**Performance:**
- FireParticle.checkHitLine() викликається для кожної частинки щокадру. При fireAmount=30 це 30 рейкастів за кадр. При масштабуванні до air strikes з 100+ частинками — може бути проблемою.
- Trajectory preview викликає checkHitLine до 30 разів за кадр під час прицілювання.

**Testing:**
- Лише 1 unit-тест (WorldPhysics.spec.ts) + 1 E2E (poison_test.cjs) + кілька manual скриптів.
- Рекомендую: unit-тести на Projectile.simulateStep, Worm.applyPoisonTick, AIBot.simulateShot.
- Інтеграційні тести: fire/poison взаємодія з terrain, turn management edge cases.

**Tooling:**
- FFDec + JDK 17 вже в репозиторії (tools/) — готово для витягнення ассетів.
- extract_bins.sh автоматизує експорт із .bin файлів.

---

## 6. Overall Verdict

Проєкт має **солідний фундамент** для продовження міграції. Core game loop (рух → прицілювання → стрільба → руйнування → шкода → зміна ходу) працює коректно. Архітектура дозволяє поступово додавати нові типи зброї та механіки без переписування існуючого коду.

**Критичний шлях до playable demo:** asset pipeline (карти + спрайти) + weapon types (guns, mines, strikes).
**Наступний рівень:** special abilities + sound system + UI overhaul.
**Production-ready:** network layer + meta-progression + full UI suite.
