# Інструкція з декомпіляції (FFDec / JPEXS)

У зв'язку з відсутністю FFDec (JPEXS Free Flash Decompiler) у поточному середовищі, експорт ассетів та скриптів необхідно виконати вручну або на іншій машині, де встановлено цей інструмент.

## Підготовка
1. Завантажте [JPEXS Free Flash Decompiler](https://github.com/jindrapetrik/jpexs-decompiler/releases).
2. Впевніться, що у вас встановлено Java 8 або вище.

## Експорт через графічний інтерфейс (GUI)
1. Відкрийте `game.swf` у FFDec.
2. Виберіть опцію "Export".
3. Оберіть категорії: `script`, `image`, `sound`, `text`.
4. Вкажіть цільову папку: `extracted/export/`.

## Експорт через командний рядок (CLI)
Ви можете запустити автоматичний експорт, знаходячись у корені проекту, за допомогою наступної команди:

```bash
java -jar ffdec.jar -export script,image,sound,text "extracted/export" "extracted/game.swf"
```

(Примітка: переконайтеся, що шлях до `ffdec.jar` правильний або програма `ffdec` додана до PATH, тоді замість `java -jar ffdec.jar` використовуйте просто `ffdec`).

Після завершення експорту перевірте, що папки `scripts`, `image`, `sound`, `text` у директорії `extracted/export/` містять відповідні артефакти.
