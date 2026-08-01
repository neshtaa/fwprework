import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';
import { Worm } from '../entities/Worm';
import { Projectile } from '../entities/Projectile';
import type { WeaponType } from '../entities/Projectile';

// Global hooks for UI
declare global {
    interface Window {
        selectWeapon: (weapon: string) => void;
        restartGame: () => void;
        currentWeapon: WeaponType;
    }
}
window.currentWeapon = 'bazooka';
window.selectWeapon = (w: string) => { window.currentWeapon = w as WeaponType; };

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

    // Game state
    private turnTimeLeft: number = 60;
    private turnTimerEvent!: Phaser.Time.TimerEvent;
    private waitingForTurnEnd: boolean = false;
    private isGameOver: boolean = false;

    // Aiming
    private isAiming: boolean = false;
    private aimPower: number = 0;
    private aimCrosshair!: Phaser.GameObjects.Image;

    private trajectoryGraphics!: Phaser.GameObjects.Graphics;
    private currentWind: number = 0;

    constructor() {
        super('DestructibleTerrainScene');
    }

    preload() {
        this.load.image('map', '/1_dmap.png');
        this.load.json('levelsConfig', '/levels_config.json');
        
        // Load extracted assets
        this.load.image('worm', '/assets/worm.png');
        this.load.image('bazooka', '/assets/bazooka.png');
        this.load.image('grenade', '/assets/grenade.png');
        this.load.image('dynamite', '/assets/dynamite.png');
        this.load.image('mine', '/assets/mine.png');
        this.load.image('holy_hand_grenade', '/assets/holy_hand_grenade.png');
        this.load.image('crosshair', '/assets/crosshair.png');
        this.load.image('explosion', '/assets/explosion.png');
    }

    create() {
        window.restartGame = () => { this.scene.restart(); };
        document.getElementById('game-over-screen')!.style.display = 'none';

        const mapKey = 'map';
        const sourceImage = this.textures.get(mapKey).getSourceImage();
        const width = sourceImage.width as number;
        const height = sourceImage.height as number;

        this.canvasTexture = this.textures.createCanvas('terrain', width, height)!;
        this.canvasTexture.drawFrame(mapKey);

        this.mapImage = this.add.image(width / 2, height / 2, 'terrain');
        this.worldPhysics = new WorldPhysics(this.canvasTexture);

        this.trajectoryGraphics = this.add.graphics();

        if (this.input.keyboard) {
            this.cursors = this.input.keyboard.createCursorKeys();
            this.spaceKey = this.input.keyboard.addKey(Phaser.Input.Keyboard.KeyCodes.SPACE);
        }

        const levelsConfig = this.cache.json.get('levelsConfig');
        const assault1 = levelsConfig.WORM_ASSAULT_COORDS.assault1;

        const spawnWorms = (teamCoords: number[], color: number, team: number, teamName: string) => {
            if (!teamCoords) return;
            for (let i = 0; i < teamCoords.length; i += 2) {
                const x = teamCoords[i];
                const y = teamCoords[i + 1];
                const wormName = `${teamName} ${Math.floor(i/2) + 1}`;
                const worm = new Worm(this, x, y, color, team, this.worldPhysics, wormName);
                this.worms.push(worm);
            }
        };

        // Spawn teams (red, green, blue)
        spawnWorms(assault1.team1, 0xff5555, 1, 'Red');
        spawnWorms(assault1.team2, 0x55ff55, 2, 'Green');
        spawnWorms(assault1.team3, 0x5555ff, 3, 'Blue');

        this.aimCrosshair = this.add.image(0, 0, 'crosshair');
        this.aimCrosshair.setVisible(false);

        if (this.worms.length > 0) {
            this.worms[0].isActive = true;
            this.cameras.main.startFollow(this.worms[0].sprite);
            this.startTurnTimer();
            this.updateUI();
        }

        this.input.on('pointerdown', (_pointer: Phaser.Input.Pointer) => {
            if (this.waitingForTurnEnd || this.isGameOver || this.worms.length === 0) return;
            const activeWorm = this.worms[this.activeWormIndex];
            if (activeWorm.health <= 0) return;
            
            this.isAiming = true;
            this.aimPower = 0;
            this.aimCrosshair.setVisible(true);
            document.getElementById('aim-power')!.style.display = 'block';
        });

        this.input.on('pointerup', (pointer: Phaser.Input.Pointer) => {
            if (!this.isAiming) return;
            this.isAiming = false;
            this.aimCrosshair.setVisible(false);
            this.trajectoryGraphics.clear();
            document.getElementById('aim-power')!.style.display = 'none';

            const activeWorm = this.worms[this.activeWormIndex];
            
            const localX = pointer.worldX - (this.mapImage.x - width / 2);
            const localY = pointer.worldY - (this.mapImage.y - height / 2);
            
            const dx = localX - activeWorm.x;
            const dy = localY - activeWorm.y;
            const dist = Math.sqrt(dx * dx + dy * dy);
            
            // Speed based on charge (max speed 20)
            const speed = (this.aimPower / 100) * 20 + 2; 
            const vx = (dx / dist) * speed;
            const vy = (dy / dist) * speed;

            const proj = new Projectile(this, activeWorm.x, activeWorm.y, vx, vy, window.currentWeapon, this.worldPhysics, this.currentWind, (expX, expY, radius, damage) => {
                this.handleExplosion(expX, expY, radius, damage);
            });
            this.projectiles.push(proj);
            
            // Camera follow projectile
            this.cameras.main.startFollow(proj.sprite);

            this.waitingForTurnEnd = true;
            this.turnTimeLeft = 0; // End turn timer immediately
        });
    }

    private startTurnTimer() {
        if (this.turnTimerEvent) this.turnTimerEvent.destroy();
        this.turnTimeLeft = 60;
        this.turnTimerEvent = this.time.addEvent({
            delay: 1000,
            callback: () => {
                if (this.waitingForTurnEnd || this.isGameOver) return;
                this.turnTimeLeft--;
                if (this.turnTimeLeft <= 0) {
                    this.turnTimeLeft = 0;
                    this.waitingForTurnEnd = true;
                }
                this.updateUI();
            },
            loop: true
        });
    }

    private handleExplosion(x: number, y: number, radius: number, damage: number) {
        // Show explosion effect briefly
        const expSprite = this.add.sprite(
            x + (this.mapImage.x - this.canvasTexture.width / 2), 
            y + (this.mapImage.y - this.canvasTexture.height / 2), 
            'explosion'
        );
        expSprite.setScale(radius / 50);
        this.time.delayedCall(300, () => { expSprite.destroy(); });

        this.worldPhysics.eraseCircle(x, y, radius);

        for (const worm of this.worms) {
            if (worm.health <= 0) continue;
            
            const dx = worm.x - x;
            const dy = worm.y - y;
            const dist = Math.sqrt(dx * dx + dy * dy);

            if (dist < radius + 20) {
                worm.takeDamage(damage);
                
                const force = (radius + 20 - dist) / 5;
                worm.vx += (dx / dist) * force;
                worm.vy += (dy / dist) * force;
                worm.isGrounded = false;
            }
        }
        
        this.updateUI();
        this.checkWinCondition();
    }

    private updateUI() {
        document.getElementById('turn-timer')!.innerText = this.turnTimeLeft.toString();
        
        let t1h = 0, t2h = 0, t3h = 0;
        for (const w of this.worms) {
            if (w.health > 0) {
                if (w.team === 1) t1h += w.health;
                if (w.team === 2) t2h += w.health;
                if (w.team === 3) t3h += w.health;
            }
        }
        document.getElementById('team1-health')!.innerText = `Red Team: ${t1h}`;
        document.getElementById('team2-health')!.innerText = `Green Team: ${t2h}`;
        document.getElementById('team3-health')!.innerText = `Blue Team: ${t3h}`;

        if (this.worms.length > 0) {
            const currentWorm = this.worms[this.activeWormIndex];
            const teamNames = ['None', 'Red', 'Green', 'Blue'];
            document.getElementById('active-team-text')!.innerText = `${teamNames[currentWorm.team]} Turn`;
            document.getElementById('active-team-text')!.style.color = currentWorm.team === 1 ? '#ff5555' : currentWorm.team === 2 ? '#55ff55' : '#5555ff';
        }
        
        document.getElementById('wind-indicator')!.innerText = `Wind: ${(this.currentWind * 100).toFixed(0)}`;
    }

    private checkWinCondition() {
        if (this.isGameOver) return;
        const aliveTeams = new Set<number>();
        for (const w of this.worms) {
            if (w.health > 0) aliveTeams.add(w.team);
        }

        if (aliveTeams.size <= 1) {
            this.isGameOver = true;
            document.getElementById('game-over-screen')!.style.display = 'flex';
            if (aliveTeams.size === 1) {
                const winner = Array.from(aliveTeams)[0];
                const teamNames = ['None', 'Red', 'Green', 'Blue'];
                document.getElementById('winner-text')!.innerText = `${teamNames[winner]} Team Wins!`;
            } else {
                document.getElementById('winner-text')!.innerText = `Draw!`;
            }
        }
    }

    update(_time: number, delta: number) {
        if (this.isGameOver) return;
        
        if (this.worms.length > 0) {
            const activeWorm = this.worms[this.activeWormIndex];
            if (activeWorm.health > 0 && !this.waitingForTurnEnd) {
                if (this.cursors.left.isDown) activeWorm.moveLeft();
                else if (this.cursors.right.isDown) activeWorm.moveRight();
                
                if (Phaser.Input.Keyboard.JustDown(this.spaceKey)) activeWorm.jump();
            }

            if (this.isAiming) {
                this.aimPower = Math.min(100, this.aimPower + (delta / 10)); // Max out in 1 sec
                document.getElementById('power-val')!.innerText = Math.floor(this.aimPower).toString();
                
                const pointer = this.input.activePointer;
                const localX = pointer.worldX - (this.mapImage.x - this.canvasTexture.width / 2);
                const localY = pointer.worldY - (this.mapImage.y - this.canvasTexture.height / 2);
                
                const dx = localX - activeWorm.x;
                const dy = localY - activeWorm.y;
                const dist = Math.sqrt(dx * dx + dy * dy);
                
                this.aimCrosshair.setPosition(
                    activeWorm.x + (dx/dist)*50 + (this.mapImage.x - this.canvasTexture.width/2), 
                    activeWorm.y + (dy/dist)*50 + (this.mapImage.y - this.canvasTexture.height/2)
                );

                // Draw trajectory
                this.trajectoryGraphics.clear();
                this.trajectoryGraphics.lineStyle(2, 0xff0000, 0.5);
                
                const speed = (this.aimPower / 100) * 20 + 2; 
                let simVx = (dx / dist) * speed;
                let simVy = (dy / dist) * speed;
                let simX = activeWorm.x + (this.mapImage.x - this.canvasTexture.width/2);
                let simY = activeWorm.y + (this.mapImage.y - this.canvasTexture.height/2);

                this.trajectoryGraphics.beginPath();
                this.trajectoryGraphics.moveTo(simX, simY);

                // Simulate 30 frames
                for (let i=0; i<30; i++) {
                    simVy += 0.2; // Projectile gravity
                    if (window.currentWeapon !== 'dynamite' && window.currentWeapon !== 'mine') {
                        simVx += this.currentWind;
                    }
                    simX += simVx;
                    simY += simVy;
                    this.trajectoryGraphics.lineTo(simX, simY);
                }
                this.trajectoryGraphics.strokePath();
            }
        }

        for (const worm of this.worms) {
            if (worm.health > 0 || worm.sprite.active) {
                worm.update(delta);
            }
        }

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

        if (this.waitingForTurnEnd && !anyProjectilesActive) {
            // Check if all worms have stopped moving
            let anyWormsMoving = false;
            for (const worm of this.worms) {
                if (worm.health > 0 && (!worm.isGrounded || Math.abs(worm.vx) > 0.1 || Math.abs(worm.vy) > 0.1)) {
                    anyWormsMoving = true;
                }
            }

            if (!anyWormsMoving) {
                this.waitingForTurnEnd = false;
                this.time.delayedCall(1000, () => {
                    this.nextTurn();
                });
            }
        }
    }

    private nextTurn() {
        if (this.worms.length === 0 || this.isGameOver) return;
        
        this.worms[this.activeWormIndex].isActive = false;

        let found = false;
        let attempts = 0;
        while (!found && attempts < this.worms.length) {
            this.activeWormIndex = (this.activeWormIndex + 1) % this.worms.length;
            if (this.worms[this.activeWormIndex].health > 0) {
                found = true;
            }
            attempts++;
        }

        // Random wind between -0.2 and 0.2
        this.currentWind = (Math.random() - 0.5) * 0.4;

        if (found) {
            this.worms[this.activeWormIndex].isActive = true;
            this.cameras.main.startFollow(this.worms[this.activeWormIndex].sprite);
            this.startTurnTimer();
            this.updateUI();
        } else {
            this.checkWinCondition();
        }
    }
}
