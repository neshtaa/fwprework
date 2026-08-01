import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';
import { Worm } from '../entities/Worm';
import { Projectile } from '../entities/Projectile';

export class DestructibleTerrainScene extends Phaser.Scene {
    private canvasTexture!: Phaser.Textures.CanvasTexture;
    private mapImage!: Phaser.GameObjects.Image;
    private worldPhysics!: WorldPhysics;
    private worms: Worm[] = [];
    private projectiles: Projectile[] = [];
    private activeWormIndex: number = 0;

    // Keys
    private cursors!: Phaser.Types.Input.Keyboard.CursorKeys;
    private spaceKey!: Phaser.Input.Keyboard.Key;

    constructor() {
        super('DestructibleTerrainScene');
    }

    preload() {
        this.load.image('map', '/1_dmap.png');
        this.load.json('levelsConfig', '/levels_config.json');
    }

    create() {
        const mapKey = 'map';
        const sourceImage = this.textures.get(mapKey).getSourceImage();
        const width = sourceImage.width as number;
        const height = sourceImage.height as number;

        // Create a CanvasTexture for destructible terrain
        this.canvasTexture = this.textures.createCanvas('terrain', width, height)!;
        this.canvasTexture.drawFrame(mapKey);

        // Display the CanvasTexture
        this.mapImage = this.add.image(width / 2, height / 2, 'terrain');

        this.worldPhysics = new WorldPhysics(this.canvasTexture);

        // Input
        if (this.input.keyboard) {
            this.cursors = this.input.keyboard.createCursorKeys();
            this.spaceKey = this.input.keyboard.addKey(Phaser.Input.Keyboard.KeyCodes.SPACE);
        }

        // Extract spawn coords for assault1
        const levelsConfig = this.cache.json.get('levelsConfig');
        const assault1 = levelsConfig.WORM_ASSAULT_COORDS.assault1;

        const spawnWorms = (teamCoords: number[], color: number, team: number) => {
            if (!teamCoords) return;
            for (let i = 0; i < teamCoords.length; i += 2) {
                const x = teamCoords[i];
                const y = teamCoords[i + 1];
                const worm = new Worm(this, x, y, color, team, this.worldPhysics);
                this.worms.push(worm);
            }
        };

        // Spawn teams
        spawnWorms(assault1.team1, 0xff0000, 1); // Red
        spawnWorms(assault1.team2, 0x00ff00, 2); // Green
        spawnWorms(assault1.team3, 0x0000ff, 3); // Blue

        if (this.worms.length > 0) {
            this.worms[this.activeWormIndex].isActive = true;
            this.cameras.main.startFollow(this.worms[this.activeWormIndex].sprite);
        }

        // Add input listener for shooting
        this.input.on('pointerdown', (pointer: Phaser.Input.Pointer) => {
            if (this.worms.length === 0 || this.waitingForTurnEnd) return;
            const activeWorm = this.worms[this.activeWormIndex];
            if (activeWorm.health <= 0) return;
            
            const localX = pointer.worldX - (this.mapImage.x - width / 2);
            const localY = pointer.worldY - (this.mapImage.y - height / 2);
            
            // Calculate velocity vector
            const dx = localX - activeWorm.x;
            const dy = localY - activeWorm.y;
            const dist = Math.sqrt(dx * dx + dy * dy);
            
            const speed = 10;
            const vx = (dx / dist) * speed;
            const vy = (dy / dist) * speed;

            const proj = new Projectile(this, activeWorm.x, activeWorm.y, vx, vy, this.worldPhysics, (expX, expY, radius, damage) => {
                this.handleExplosion(expX, expY, radius, damage);
            });
            this.projectiles.push(proj);
            this.waitingForTurnEnd = true;
        });

        // Add instructions text
        const uiText = this.add.text(10, 10, 'Arrows to move, Space to jump. Click to shoot.', {
            fontSize: '16px',
            color: '#ffffff',
            backgroundColor: '#000000'
        });
        uiText.setScrollFactor(0); // Fix to screen
    }

    private handleExplosion(x: number, y: number, radius: number, damage: number) {
        // Erase terrain
        this.worldPhysics.eraseCircle(x, y, radius);

        // Apply damage and knockback to worms
        for (const worm of this.worms) {
            if (worm.health <= 0) continue;
            
            const dx = worm.x - x;
            const dy = worm.y - y;
            const dist = Math.sqrt(dx * dx + dy * dy);

            if (dist < radius + 20) {
                worm.takeDamage(damage);
                
                // Knockback
                const force = (radius + 20 - dist) / 5;
                worm.vx += (dx / dist) * force;
                worm.vy += (dy / dist) * force;
                worm.isGrounded = false;
            }
        }
    }

    update(_time: number, delta: number) {
        if (this.worms.length === 0) return;

        const activeWorm = this.worms[this.activeWormIndex];

        if (activeWorm.health > 0) {
            if (this.cursors.left.isDown) {
                activeWorm.moveLeft();
            } else if (this.cursors.right.isDown) {
                activeWorm.moveRight();
            }
            
            if (Phaser.Input.Keyboard.JustDown(this.spaceKey)) {
                activeWorm.jump();
            }
        }

        // Update all worms physics
        for (const worm of this.worms) {
            if (worm.health > 0) {
                worm.update(delta);
            }
        }

        // Update projectiles
        let anyProjectilesActive = false;
        for (let i = this.projectiles.length - 1; i >= 0; i--) {
            const p = this.projectiles[i];
            p.update(delta);
            if (!p.isActive) {
                this.projectiles.splice(i, 1);
            } else {
                anyProjectilesActive = true;
            }
        }

        // Simple turn management: if we shot and all projectiles resolved, next turn
        if (this.waitingForTurnEnd && !anyProjectilesActive) {
            this.waitingForTurnEnd = false;
            // Delay next turn slightly
            this.time.delayedCall(1000, () => {
                this.nextTurn();
            });
        }
    }

    private waitingForTurnEnd: boolean = false;

    private nextTurn() {
        if (this.worms.length === 0) return;
        
        let found = false;
        let attempts = 0;
        
        while (!found && attempts < this.worms.length) {
            this.activeWormIndex = (this.activeWormIndex + 1) % this.worms.length;
            if (this.worms[this.activeWormIndex].health > 0) {
                found = true;
            }
            attempts++;
        }

        if (found) {
            this.cameras.main.startFollow(this.worms[this.activeWormIndex].sprite);
        } else {
            // Game over logic
        }
    }
}
