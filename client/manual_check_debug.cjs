const { chromium } = require('playwright');

(async () => {
    const browser = await chromium.launch({ headless: true });
    const page = await browser.newPage();
    
    // Catch console logs
    page.on('console', msg => {
        if (msg.type() === 'error' || msg.type() === 'warning') {
            // console.log(`[BROWSER] ${msg.text()}`);
        }
    });

    await page.goto('http://localhost:5174');
    await page.waitForTimeout(2000);
    
    async function testMap(mapName) {
        console.log(`\n=== Testing Map: ${mapName} ===`);
        await page.evaluate((m) => {
            const s = document.getElementById('mapSelect');
            s.value = m;
            s.dispatchEvent(new Event('change'));
        }, mapName);
        await page.waitForTimeout(3000);
        
        for (let i = 1; i <= 8; i++) {
            console.log(`\nRound ${i}:`);
            const state = await page.evaluate(() => {
                const scene = window.__GAME__.scene.scenes[0];
                const activeWorm = scene.worms[scene.activeWormIndex];
                
                let movingWorms = scene.worms.filter(w => w.health > 0 && (!w.isGrounded || Math.abs(w.vx) > 0.1 || Math.abs(w.vy) > 0.1))
                    .map(w => `Worm ${w.team} (y=${w.y.toFixed(1)}, v=${w.vy.toFixed(2)}, g=${w.isGrounded})`);
                
                return {
                    activeWormIdx: scene.activeWormIndex,
                    team: activeWorm ? activeWorm.team : -1,
                    waiting: scene.waitingForTurnEnd,
                    isGameOver: scene.isGameOver,
                    moving: movingWorms,
                    projs: scene.projectiles ? scene.projectiles.length : 0,
                    turnTimer: scene.turnTimeLeft
                };
            });
            
            console.log(`State: Team ${state.team} (Worm ${state.activeWormIdx}), Wait: ${state.waiting}, Timer: ${state.turnTimer}s`);
            if (state.waiting) {
                console.log(`Waiting due to -> Moving Worms: ${state.moving.join(', ')} | Projectiles: ${state.projs}`);
            }
            
            if (!state.isGameOver) {
                if (state.team === 1 && !state.waiting) {
                    console.log('Player turn, clicking to shoot...');
                    await page.mouse.move(600, 300);
                    await page.mouse.down();
                    await page.mouse.up();
                    await page.waitForTimeout(6000);
                } else if (state.waiting) {
                    await page.waitForTimeout(3000);
                } else {
                    console.log('AI turn...');
                    await page.waitForTimeout(6000);
                }
            }
        }
    }

    await testMap('assault_1');
    
    await browser.close();
})();
