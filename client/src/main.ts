import Phaser from 'phaser';
import { DestructibleTerrainScene } from './game/scene/DestructibleTerrainScene';
import { WeaponSheetScene } from './game/scene/WeaponSheetScene';
import { BattleUIScene } from './game/scene/BattleUIScene';

async function initGame() {
    const res = await fetch('/levels_config.json');
    const levelsConfig = await res.json();

    const mapSelect = document.getElementById('mapSelect') as HTMLSelectElement;
    const addedMaps = new Set<string>();
    for (const mapName in levelsConfig) {
        if (mapName === 'WORM_BOSS_COORDS' || mapName === 'WORM_ASSAULT_COORDS') continue;
        const option = document.createElement('option');
        option.value = levelsConfig[mapName].dmap;
        option.text = mapName;
        mapSelect.appendChild(option);
        addedMaps.add(mapName.replace('_', ''));
    }

    if (levelsConfig.WORM_ASSAULT_COORDS) {
        for (const key in levelsConfig.WORM_ASSAULT_COORDS) {
            if (!addedMaps.has(key)) {
                const option = document.createElement('option');
                option.value = '/maps/assault_1_dmap.png'; // Fallback texture
                option.text = key;
                mapSelect.appendChild(option);
            }
        }
    }

    if (levelsConfig.WORM_BOSS_COORDS) {
        for (const key in levelsConfig.WORM_BOSS_COORDS) {
            if (!addedMaps.has(key)) {
                const option = document.createElement('option');
                option.value = '/maps/boss_1_dmap.png'; // Fallback texture
                option.text = key;
                mapSelect.appendChild(option);
            }
        }
    }

    document.addEventListener('contextmenu', event => event.preventDefault());

    const config: Phaser.Types.Core.GameConfig = {
        type: Phaser.AUTO,
        width: 1300,
        height: 700,
        parent: 'game-container',
        backgroundColor: '#87CEEB', // Sky blue
        scene: [DestructibleTerrainScene, WeaponSheetScene, BattleUIScene],
        scale: {
            mode: Phaser.Scale.FIT,
            autoCenter: Phaser.Scale.CENTER_BOTH
        }
    };

    const game = new Phaser.Game(config);
    (window as any).__GAME__ = game;
    
    // Pass the levels config to the global registry so scenes can use it
    game.registry.set('levelsConfig', levelsConfig);
    game.registry.set('currentMap', mapSelect.value);
    game.registry.set('currentMapName', mapSelect.options[mapSelect.selectedIndex].text);
    
    mapSelect.addEventListener('change', (e) => {
        const select = e.target as HTMLSelectElement;
        game.registry.set('currentMap', select.value);
        game.registry.set('currentMapName', select.options[select.selectedIndex].text);
        // Restart the active scene to load the new map
        const activeScene = game.scene.getScenes(true)[0];
        if (activeScene) {
            activeScene.scene.restart();
        }
    });
}

initGame();
