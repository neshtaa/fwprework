import Phaser from 'phaser';
import { DestructibleTerrainScene } from './game/scene/DestructibleTerrainScene';

const config: Phaser.Types.Core.GameConfig = {
    type: Phaser.AUTO,
    width: 1300,
    height: 700,
    parent: 'game-container',
    backgroundColor: '#87CEEB', // Sky blue
    scene: DestructibleTerrainScene,
    physics: {
        default: 'arcade',
        arcade: {
            debug: false
        }
    }
};

new Phaser.Game(config);
