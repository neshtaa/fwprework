import Phaser from 'phaser';
import { DestructibleTerrainScene } from './game/scene/DestructibleTerrainScene';

async function initGame() {
    const res = await fetch('/levels_config.json');
    const levelsConfig = await res.json();

    const mapSelect = document.getElementById('mapSelect') as HTMLSelectElement;
    for (const mapName in levelsConfig) {
        const option = document.createElement('option');
        option.value = levelsConfig[mapName].dmap;
        option.text = mapName;
        mapSelect.appendChild(option);
    }

    const config: Phaser.Types.Core.GameConfig = {
        type: Phaser.AUTO,
        width: 1300,
        height: 700,
        parent: 'game-container',
        backgroundColor: '#87CEEB', // Sky blue
        scene: DestructibleTerrainScene,
        scale: {
            mode: Phaser.Scale.FIT,
            autoCenter: Phaser.Scale.CENTER_BOTH
        }
    };

    const game = new Phaser.Game(config);
    
    // Pass the levels config to the global registry so scenes can use it
    game.registry.set('levelsConfig', levelsConfig);
    game.registry.set('currentMap', mapSelect.value);
    
    mapSelect.addEventListener('change', (e) => {
        game.registry.set('currentMap', (e.target as HTMLSelectElement).value);
        // Restart the active scene to load the new map
        const activeScene = game.scene.getScenes(true)[0];
        if (activeScene) {
            activeScene.scene.restart();
        }
    });
}

initGame();
