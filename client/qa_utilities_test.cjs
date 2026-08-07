const { chromium } = require('playwright');
const fs = require('fs');

(async () => {
    console.log('Launching browser for Utilities Test...');
    const browser = await chromium.launch({ headless: true });
    const context = await browser.newContext();
    const page = await context.newPage();

    let consoleErrors = [];

    page.on('console', msg => {
        console.log(`[BROWSER CONSOLE] ${msg.type().toUpperCase()}: ${msg.text()}`);
        if (msg.type() === 'error' || msg.type() === 'warning') {
            consoleErrors.push(`[${msg.type().toUpperCase()}] ${msg.text()}`);
        }
    });

    page.on('pageerror', err => {
        consoleErrors.push(`[UNCAUGHT] ${err.toString()}`);
    });

    console.log('Navigating to http://localhost:5174 ...');
    await page.goto('http://localhost:5174', { waitUntil: 'networkidle' });
    await page.waitForTimeout(2000);

    async function getGameState() {
        return await page.evaluate(() => {
            const game = window.__GAME__;
            if (!game) return null;
            const scene = game.scene.getScenes(true)[0];
            if (!scene) return null;
            
            return {
                worms: scene.worms ? scene.worms.map(w => ({ hp: w.health, isPoisoned: w.isPoisoned, speedMult: w.speedMultiplier })) : [],
                activeWormIndex: scene.activeWormIndex,
                turnTimeLeft: scene.turnTimeLeft,
                currentWeapon: scene.registry.get('currentWeapon'),
                globalGravity: scene.worms && scene.worms.length > 0 ? scene.worms[0].gravity : 0.24,
                projectilesCount: scene.projectiles ? scene.projectiles.length : 0,
            };
        });
    }

    async function selectWeapon(weaponId) {
        await page.evaluate((id) => {
            const game = window.__GAME__;
            const scene = game.scene.getScenes(true)[0];
            // Disable all AIs by making all worms team 1
            scene.worms.forEach(w => { w.team = 1; w.ai = null; });
            
            const activeTeam = scene.worms[scene.activeWormIndex].team;
            scene.teamInventories[activeTeam][id] = -1; // Infinite ammo
            scene.registry.set('currentWeapon', id);
            
            const weaponSelect = document.getElementById('weaponSelect');
            if (weaponSelect) weaponSelect.value = id;
            
            scene.updateWeaponUI();
        }, weaponId);
        await page.waitForTimeout(200);
    }
    
    async function getProjectileBaseGravity() {
        return await page.evaluate(() => {
            // Because Projectile is not globally exposed easily, we can check a static or via worm gravity
            const game = window.__GAME__;
            const scene = game.scene.getScenes(true)[0];
            return scene.worms[0].gravity; // In Worm.ts, get gravity() { return Projectile.BASE_GRAVITY; }
        });
    }

    async function setWormHpAndPoison(index, hp, poisoned) {
        await page.evaluate(({index, hp, poisoned}) => {
            const game = window.__GAME__;
            const scene = game.scene.getScenes(true)[0];
            scene.worms[index].team = 1; // Force player control
            scene.worms[index].health = hp;
            if (poisoned) {
                scene.worms[index].isPoisoned = true;
                scene.worms[index].poisonDamage = 10;
            }
        }, {index, hp, poisoned});
    }
    
    // Simulate firing utility directly
    async function fireCurrentUtility() {
        await page.evaluate(() => {
            const game = window.__GAME__;
            const scene = game.scene.getScenes(true)[0];
            scene.fireWeapon(0, 0); // Directly invoke fireWeapon
        });
        await page.waitForTimeout(500);
    }

    console.log('\n--- TESTING LOW GRAVITY ---');
    let state = await getGameState();
    let activeIdx = state.activeWormIndex;
    await setWormHpAndPoison(activeIdx, 100, false);
    
    await selectWeapon('low_gravity');
    await fireCurrentUtility();
    
    let g1 = await getProjectileBaseGravity();
    console.log(`Gravity after low_gravity: ${g1} (Expected: 0.12)`);
    if (g1 !== 0.12) throw new Error("Gravity was not set to 0.12!");
    
    // Fire skip_go to end turn, wait for next turn to start
    console.log('Firing skip_go to end turn...');
    await selectWeapon('skip_go');
    await fireCurrentUtility();
    await page.waitForTimeout(1500); // Wait for turn change
    
    let g2 = await getProjectileBaseGravity();
    console.log(`Gravity on next turn: ${g2} (Expected: 0.24)`);
    if (g2 !== 0.24) throw new Error("Gravity did not reset to 0.24!");

    console.log('\n--- TESTING MEDIKIT ---');
    state = await getGameState();
    activeIdx = state.activeWormIndex;
    
    await setWormHpAndPoison(activeIdx, 50, false);
    await selectWeapon('medikit');
    await fireCurrentUtility();
    
    state = await getGameState();
    let hpAfter = state.worms[activeIdx].hp;
    console.log(`HP after Medikit: ${hpAfter} (Expected: 100)`);
    if (hpAfter !== 100) throw new Error(`Medikit failed! HP is ${hpAfter}`);
    
    console.log('Waiting for next turn...');
    await page.waitForTimeout(1500);
    
    console.log('\n--- TESTING SUPER MEDIKIT ---');
    state = await getGameState();
    const newActiveIdx = state.activeWormIndex;
    
    await setWormHpAndPoison(newActiveIdx, 30, true);
    await selectWeapon('super_medikit');
    await fireCurrentUtility();
    
    state = await getGameState();
    let hpAfterSuper = state.worms[newActiveIdx].hp;
    let poisonedAfterSuper = state.worms[newActiveIdx].isPoisoned;
    
    console.log(`HP after Super Medikit: ${hpAfterSuper} (Expected: 130)`);
    console.log(`Poison after Super Medikit: ${poisonedAfterSuper} (Expected: false)`);
    if (hpAfterSuper !== 130) throw new Error(`Super Medikit failed! HP is ${hpAfterSuper}`);
    if (poisonedAfterSuper) throw new Error(`Super Medikit did not clear poison!`);

    console.log('\nAll utility tests passed successfully!');
    if (consoleErrors.length > 0) {
        console.warn('Console Errors during test:');
        console.warn(consoleErrors.join('\n'));
    }
    
    await browser.close();
})();
