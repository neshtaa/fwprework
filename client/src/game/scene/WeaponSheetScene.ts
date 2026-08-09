import Phaser from 'phaser';
import { WEAPONS, type WeaponType } from '../data/weapons';

export class WeaponSheetScene extends Phaser.Scene {
    constructor() {
        super('WeaponSheetScene');
    }

    create() {
        const bg = this.add.rectangle(400, 300, 600, 400, 0x000000, 0.8);
        bg.setInteractive();

        this.add.text(400, 120, 'WEAPONS & INVENTORY', { fontSize: '24px', color: '#ffffff' }).setOrigin(0.5);

        const closeBtn = this.add.text(680, 120, '[X]', { fontSize: '24px', color: '#ff0000' }).setInteractive();
        closeBtn.on('pointerdown', () => this.scene.stop());

        // Just display a simple grid of icons for now
        let x = 150;
        let y = 180;
        let count = 0;
        for (const key of Object.keys(WEAPONS)) {
            const w = WEAPONS[key as WeaponType];
            if (!w.shown) continue;
            
            // Draw a small box
            const box = this.add.rectangle(x, y, 40, 40, 0x333333).setInteractive();
            box.setStrokeStyle(1, 0xffffff);
            
            this.add.text(x, y, w.name.substring(0, 3), { fontSize: '10px' }).setOrigin(0.5);
            
            box.on('pointerdown', () => {
                this.registry.set('currentWeapon', key);
                this.scene.stop();
            });
            
            x += 50;
            count++;
            if (count % 10 === 0) {
                x = 150;
                y += 50;
            }
            
            if (count > 40) break; // limit for now
        }
    }
}
