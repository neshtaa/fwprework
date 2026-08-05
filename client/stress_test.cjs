const { chromium } = require('playwright');

async function runStressTest() {
    console.log('Starting stress test...');
    const browser = await chromium.launch({ 
        args: [
            '--no-sandbox', 
            '--disable-setuid-sandbox',
            '--use-gl=swiftshader',
            '--enable-webgl',
            '--disable-gpu',
            '--mute-audio'
        ]
    });
    const page = await browser.newPage();
    
    // Capture page console
    page.on('console', msg => {
        const text = msg.text();
        if (msg.type() === 'error' || msg.type() === 'warning') {
            console.log(`[BROWSER ${msg.type().toUpperCase()}] ${text}`);
        }
    });

    console.log('Navigating to http://localhost:5173...');
    await page.goto('http://localhost:5173', { waitUntil: 'networkidle' });

    console.log('Waiting for game to initialize...');
    await page.waitForTimeout(3000);

    const checkGameState = async () => {
        return await page.evaluate(() => {
            const scene = window.__GAME__?.scene?.scenes?.[0];
            if (!scene) return null;
            return {
                wormsCount: scene.worms?.length || 0,
                activeWormIndex: scene.activeWormIndex,
                waitingForTurnEnd: scene.waitingForTurnEnd,
                isAiming: scene.isAiming,
                turnTimeLeft: scene.turnTimeLeft,
                isGameOver: scene.isGameOver,
                teamInventories: scene.teamInventories,
                currentWeapon: scene.registry.get('currentWeapon'),
                mapName: scene.registry.get('currentMapName'),
                fps: window.__GAME__?.loop?.actualFps,
                worms: scene.worms?.map(w => ({ team: w.team, isActive: w.isActive, health: w.health }))
            };
        });
    };

    // Test 1: Rapid Map Switching (10 times)
    console.log('\n--- TEST 1: Rapid Map Switching ---');
    for (let i = 0; i < 10; i++) {
        await page.evaluate(() => {
            const s = document.querySelector('#mapSelect');
            const options = Array.from(s.options).map(o => o.value);
            const randomMap = options[Math.floor(Math.random() * options.length)];
            s.value = randomMap;
            s.dispatchEvent(new Event('change'));
        });
        await page.waitForTimeout(500); // Wait 0.5s between switches
    }
    await page.waitForTimeout(2000); // Settle
    let state = await checkGameState();
    console.log(`After rapid switch -> Map: ${state?.mapName}, Worms: ${state?.wormsCount}, FPS: ${state?.fps}`);

    // Test 2: Ammo Depletion and Turn Alternation on Fallback Map
    console.log('\n--- TEST 2: Ammo & Turns on Fallback Map ---');
    await page.evaluate(() => {
        const s = document.querySelector('#mapSelect');
        s.value = 'mission_1'; // Known fallback map
        s.dispatchEvent(new Event('change'));
    });
    
    await page.waitForTimeout(4000);
    
    // Inject low ammo
    await page.evaluate(() => {
        const scene = window.__GAME__.scene.scenes[0];
        const resetInv = (team) => {
            const inv = scene.teamInventories[team];
            for (let k in inv) inv[k] = 0;
        };
        resetInv(1);
        resetInv(2);
        scene.teamInventories[1].bazooka = 2;
        scene.teamInventories[2].bazooka = 2;
    });

    for(let round = 1; round <= 4; round++) {
        console.log(`\nRound ${round}:`);
        let sBefore = await checkGameState();
        console.log(`Player Turn - Weapon: ${sBefore?.currentWeapon}, Ammo: ${sBefore?.teamInventories?.[1]?.[sBefore.currentWeapon]}, ActiveWormIdx: ${sBefore?.activeWormIndex}, Wait: ${sBefore?.waitingForTurnEnd}`);
        
        // Shoot
        await page.mouse.move(600, 300);
        await page.mouse.down();
        await page.mouse.up();
        
        await page.waitForTimeout(3000); // Wait for explosion
        
        let sAfter = await checkGameState();
        console.log(`Post-Explosion - Ammo T1[bazooka]: ${sAfter?.teamInventories?.[1]?.['bazooka']}, Ammo T2[bazooka]: ${sAfter?.teamInventories?.[2]?.['bazooka']}, Wait: ${sAfter?.waitingForTurnEnd}`);
        
        console.log(`Waiting for AI...`);
        // AI takes turn automatically. Wait for AI to finish.
        await page.waitForTimeout(8000); 
        
        let sEnd = await checkGameState();
        console.log(`End of Round - ActiveWormIdx: ${sEnd?.activeWormIndex}, Ammo T1[bazooka]: ${sEnd?.teamInventories?.[1]?.['bazooka']}, Ammo T2[bazooka]: ${sEnd?.teamInventories?.[2]?.['bazooka']}`);
    }

    console.log('\nStress test complete.');
    await browser.close();
}

runStressTest().catch(console.error);
