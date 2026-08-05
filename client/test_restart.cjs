const { chromium } = require('playwright');
(async () => {
    const browser = await chromium.launch();
    const page = await browser.newPage();
    await page.goto('http://localhost:5174');
    await page.waitForTimeout(2000);
    const restarted = await page.evaluate(() => {
        const game = window.__GAME__;
        const activeScene = game.scene.getScenes(true)[0];
        if (activeScene) {
            activeScene.scene.restart();
            return true;
        }
        return false;
    });
    console.log("Restarted:", restarted);
    await page.waitForTimeout(2000);
    const state = await page.evaluate(() => {
        const scene = window.__GAME__.scene.scenes[0];
        return scene.worms.length;
    });
    console.log("Worms after restart:", state);
    await browser.close();
})();
