import Phaser from 'phaser';
import { WEAPONS, type WeaponType } from '../data/weapons';

export class WeaponSheetScene extends Phaser.Scene {
    constructor() {
        super('WeaponSheetScene');
    }

    create() {
        const gameScene = this.scene.manager.getScene('DestructibleTerrainScene') as any;
        const activeWorm = gameScene.worms[gameScene.activeWormIndex];
        const activeTeam = activeWorm?.team || 1;
        const inventory = gameScene.teamInventories[activeTeam] || {};

        // Semi-transparent background
        const bg = this.add.rectangle(650, 350, 1300, 700, 0x000000, 0.7);
        bg.setInteractive();
        
        // Close on right click or clicking outside panel
        bg.on('pointerdown', (pointer: Phaser.Input.Pointer) => {
            if (pointer.rightButtonDown()) {
                this.scene.stop();
            }
        });

        const panelWidth = 750;
        const panelHeight = 500;
        const panel = this.add.rectangle(650, 350, panelWidth, panelHeight, 0x1a1a1a, 0.95);
        panel.setStrokeStyle(4, 0x333333);
        // Prevent closing when clicking on the panel itself
        panel.setInteractive();
        panel.on('pointerdown', (pointer: Phaser.Input.Pointer) => {
            if (pointer.rightButtonDown()) this.scene.stop();
        });

        this.add.text(650, 130, 'BACKPACK', { fontSize: '28px', color: '#ffffff', fontStyle: 'bold' }).setOrigin(0.5);
        const tooltipText = this.add.text(650, 570, '', { fontSize: '20px', color: '#ffff00', fontStyle: 'bold' }).setOrigin(0.5).setDepth(100);

        const cols = 9;
        const rowsPerPage = 5;
        const itemsPerPage = cols * rowsPerPage;
        const cellSize = 64;
        const spacing = 10;
        
        // Calculate items
        const availableWeapons = Object.keys(WEAPONS).filter(k => WEAPONS[k as WeaponType].shown);
        const totalPages = Math.ceil(availableWeapons.length / itemsPerPage);
        
        let currentPage = 0;
        const currentWeapon = this.registry.get('currentWeapon') as WeaponType;
        
        // Find which page has the current weapon
        const currentIdx = availableWeapons.indexOf(currentWeapon);
        if (currentIdx !== -1) {
            currentPage = Math.floor(currentIdx / itemsPerPage);
        }

        const startX = 650 - ((cols - 1) * (cellSize + spacing)) / 2;
        const startY = 320 - ((rowsPerPage - 1) * (cellSize + spacing)) / 2;

        const container = this.add.container(0, 0);

        const renderPage = () => {
            container.removeAll(true);
            
            const startIdx = currentPage * itemsPerPage;
            const endIdx = Math.min(startIdx + itemsPerPage, availableWeapons.length);
            
            let col = 0;
            let row = 0;

            for (let i = startIdx; i < endIdx; i++) {
                const key = availableWeapons[i];
                const w = WEAPONS[key as WeaponType];
                const ammo = inventory[key] === undefined ? 0 : inventory[key];
                
                const cx = startX + col * (cellSize + spacing);
                const cy = startY + row * (cellSize + spacing);

                const isCurrent = currentWeapon === key;
                const hasAmmo = ammo > 0 || ammo === -1;

                const box = this.add.rectangle(cx, cy, cellSize, cellSize, isCurrent ? 0x444422 : 0x2a2a2a).setInteractive();
                box.setStrokeStyle(2, isCurrent ? 0xffff00 : (hasAmmo ? 0x555555 : 0x330000));
                container.add(box);

                // Weapon sprite
                let texKey = `icon_${key}`;
                if (!this.textures.exists(texKey)) texKey = 'bazooka_0';
                
                const sprite = this.add.sprite(cx, cy, texKey);
                sprite.setScale(0.8);
                if (!hasAmmo) sprite.setTint(0x555555);
                container.add(sprite);

                // Ammo text
                if (ammo !== -1) {
                    const t = this.add.text(cx + cellSize/2 - 4, cy + cellSize/2 - 2, ammo.toString(), { 
                        fontSize: '14px', color: hasAmmo ? '#00ff00' : '#ff0000', fontStyle: 'bold' 
                    }).setOrigin(1, 1).setStroke('#000000', 4);
                    container.add(t);
                } else {
                    const t = this.add.text(cx + cellSize/2 - 4, cy + cellSize/2 - 2, '∞', { 
                        fontSize: '18px', color: '#00ff00', fontStyle: 'bold' 
                    }).setOrigin(1, 1).setStroke('#000000', 4);
                    container.add(t);
                }

                box.on('pointerdown', (pointer: Phaser.Input.Pointer) => {
                    if (pointer.rightButtonDown()) {
                        this.scene.stop();
                        return;
                    }
                    if (hasAmmo) {
                        this.registry.set('currentWeapon', key);
                        this.scene.stop();
                    }
                });
                
                box.on('pointerover', () => {
                    if (hasAmmo && !isCurrent) box.setStrokeStyle(2, 0xffffff);
                    tooltipText.setText(w.name.toUpperCase());
                });
                
                box.on('pointerout', () => {
                    box.setStrokeStyle(2, isCurrent ? 0xffff00 : (hasAmmo ? 0x555555 : 0x330000));
                    tooltipText.setText('');
                });

                col++;
                if (col >= cols) {
                    col = 0;
                    row++;
                }
            }
            
            pageText.setText(`PAGE ${currentPage + 1} / ${totalPages}`);
            prevBtn.setVisible(currentPage > 0);
            nextBtn.setVisible(currentPage < totalPages - 1);
        };

        const pageText = this.add.text(650, 520, '', { fontSize: '20px', color: '#ffffff', fontStyle: 'bold' }).setOrigin(0.5);
        
        const prevBtn = this.add.text(450, 520, '< PREV', { fontSize: '24px', color: '#ffff00', fontStyle: 'bold' }).setOrigin(0.5).setInteractive();
        prevBtn.on('pointerdown', () => {
            if (currentPage > 0) {
                currentPage--;
                renderPage();
            }
        });
        
        const nextBtn = this.add.text(850, 520, 'NEXT >', { fontSize: '24px', color: '#ffff00', fontStyle: 'bold' }).setOrigin(0.5).setInteractive();
        nextBtn.on('pointerdown', () => {
            if (currentPage < totalPages - 1) {
                currentPage++;
                renderPage();
            }
        });

        // Mouse wheel navigation
        this.input.on('wheel', (_pointer: any, _gameObjects: any, _deltaX: number, deltaY: number, _deltaZ: number) => {
            if (deltaY > 0 && currentPage < totalPages - 1) {
                currentPage++;
                renderPage();
            } else if (deltaY < 0 && currentPage > 0) {
                currentPage--;
                renderPage();
            }
        });

        renderPage();
    }
}
