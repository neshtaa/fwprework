const { chromium } = require('playwright');

(async () => {
    const browser = await chromium.launch({ headless: true });
    const page = await browser.newPage();
    
    // Catch console logs
    page.on('console', msg => {
        if (msg.type() === 'error' || msg.type() === 'warning') {
            // suppress
        }
    });

    await page.goto('http://localhost:5174');
    await page.waitForTimeout(2000);
    
    async function testMap(mapName) {
        console.log(`\n=== Testing Map: ${mapName} ===`);
        const selected = await page.evaluate((m) => {
            const s = document.getElementById('mapSelect');
            let found = false;
            for(let i = 0; i < s.options.length; i++) {
                if(s.options[i].text === m || s.options[i].text === m.replace('_', '')) {
                    s.selectedIndex = i;
                    s.dispatchEvent(new Event('change'));
                    found = true;
                    break;
                }
            }
            return found ? s.options[s.selectedIndex].text : "NOT_FOUND";
        }, mapName);
        console.log(`Dropdown selected: ${selected}`);
        await page.waitForTimeout(3000);
        
        for (let i = 1; i <= 8; i++) {
            console.log(`\nRound ${i}:`);
            const state = await page.evaluate(() => {
                const scene = window.__GAME__.scene.scenes[0];
                const activeWorm = scene.worms[scene.activeWormIndex];
                return {
                    activeWormIdx: scene.activeWormIndex,
                    team: activeWorm ? activeWorm.team : -1,
                    waiting: scene.waitingForTurnEnd,
                    isGameOver: scene.isGameOver,
                    healths: scene.worms.map(w => ({ team: w.team, hp: w.health }))
                };
            });
            console.log(`State: Team ${state.team} (Worm ${state.activeWormIdx}), Wait: ${state.waiting}`);
            console.log(`Healths: ${state.healths.map((w, idx) => `[${idx}] T${w.team}(${w.hp}HP)`).join(', ')}`);
            
            if (!state.isGameOver) {
                if (state.team === 1 && !state.waiting) {
                    console.log('Player turn, clicking to shoot straight down (suicide)...');
                    await page.mouse.move(600, 500); // 500 is down from 300 (center)
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
    await testMap('boss_1');
    await testMap('rolitrad_1');
    
    await browser.close();
})();
