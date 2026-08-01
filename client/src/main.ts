import Phaser from 'phaser';
import { DestructibleTerrainScene } from './game/scene/DestructibleTerrainScene';

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

new Phaser.Game(config);
