const { chromium } = require('playwright');

(async () => {
    const browser = await chromium.launch({ headless: true });
    const context = await browser.newContext();
    const page = await context.newPage();
    await page.goto('http://localhost:5174');
    await page.waitForTimeout(2000);
    
    // Choose weapon poison_bazooka
    await page.evaluate(() => {
        const game = window.__GAME__;
        const scene = game.scene.scenes[0];
        scene.registry.set('currentWeapon', 'poison_bazooka');
        // Give poison bazooka ammo
        scene.teamInventories[1]['poison_bazooka'] = 10;
        // Move active worm to the center
        scene.worms[scene.activeWormIndex].x = 400;
        scene.worms[scene.activeWormIndex].y = 200;
        // Make another worm nearby
        const targetWorm = scene.worms.find(w => w.team !== 1);
        if(targetWorm) {
            targetWorm.x = 400;
            targetWorm.y = 250;
            targetWorm.health = 100;
        }
    });

    const box = await page.locator('#game-container canvas').boundingBox();
    // Aim down
    await page.mouse.move(box.x + box.width / 2, box.y + box.height / 2);
    await page.mouse.down();
    await page.mouse.move(box.x + box.width / 2, box.y + box.height / 2 + 50, { steps: 5 });
    await page.waitForTimeout(100); 
    await page.mouse.up();

    console.log("Fired poison_bazooka!");
    await page.waitForTimeout(5000); // wait for explosion and poison application

    const getTargetState = async () => {
        return await page.evaluate(() => {
            const scene = window.__GAME__.scene.scenes[0];
            const targetWorm = scene.worms.find(w => w.team !== 1);
            return { hp: targetWorm.health, isPoisoned: targetWorm.isPoisoned, nextPoisonDamage: targetWorm.nextPoisonDamage, poisonDamage: targetWorm.poisonDamage };
        });
    };

    let targetWormState = await getTargetState();
    console.log("Before turn boundary:", targetWormState);

    // Skip turns to trigger poison tick
    await page.evaluate(() => {
        const scene = window.__GAME__.scene.scenes[0];
        scene.nextTurn();
    });
    await page.waitForTimeout(500);

    let stateAfterT1 = await getTargetState();
    console.log("After turn 1 boundary:", stateAfterT1);

    // Skip another turn
    await page.evaluate(() => {
        const scene = window.__GAME__.scene.scenes[0];
        scene.nextTurn();
    });
    await page.waitForTimeout(500);

    let stateAfterT2 = await getTargetState();
    console.log("After turn 2 boundary:", stateAfterT2);

    let success = true;
    if (stateAfterT1.poisonDamage !== targetWormState.poisonDamage - 1 && stateAfterT1.poisonDamage !== 0) {
        console.error("Poison damage did not decay by 1 in T1!");
        success = false;
    }
    if (stateAfterT2.poisonDamage !== stateAfterT1.poisonDamage - 1 && stateAfterT2.poisonDamage !== 0) {
        console.error("Poison damage did not decay by 1 in T2!");
        success = false;
    }
    
    // Test if poison wears off
    await page.evaluate(() => {
        const scene = window.__GAME__.scene.scenes[0];
        const targetWorm = scene.worms.find(w => w.team !== 1);
        targetWorm.poisonDamage = 1; // Artificially set to 1
        scene.nextTurn();
    });
    await page.waitForTimeout(500);
    
    let stateAfterT3 = await getTargetState();
    console.log("After turn 3 boundary (artificially set to 1):", stateAfterT3);
    
    if (stateAfterT3.poisonDamage !== 0 || stateAfterT3.isPoisoned !== false) {
        console.error("Poison did not clear completely!");
        success = false;
    }

    if (success) {
        console.log("POISON DECAY TEST PASSED!");
    } else {
        console.error("POISON DECAY TEST FAILED!");
        process.exit(1);
    }
    
    await browser.close();
})();
