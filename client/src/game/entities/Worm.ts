import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';
import { Projectile } from './Projectile';

export class Worm {
    public sprite: Phaser.GameObjects.Sprite; 
    private nameText: Phaser.GameObjects.Text;
    private healthBar: Phaser.GameObjects.Graphics;

    public health: number = 100;
    public maxHealth: number = 100;
    public team: number;
    public x: number;
    public y: number;
    
    // Physics properties
    public vx: number = 0;
    public vy: number = 0;
    public isGrounded: boolean = false;
    
    public get gravity(): number { return Projectile.BASE_GRAVITY; }
    private maxFallSpeed: number = 10;
    private moveSpeed: number = 1.5;
    private jumpForceY: number = -3;
    private jumpForceX: number = 2;
    
    // State
    public speedMultiplier: number = 1;
    public facingRight: boolean = true;
    private worldPhysics: WorldPhysics;
    public isActive: boolean = false;

    public isPoisoned: boolean = false;
    public poisonDamage: number = 0;
    public nextPoisonDamage: number = 0;

    // Jetpack State
    public isJetpacking: boolean = false;
    public jetpackType: string = '';
    public jetpackFuel: number = 0;
    public jetpackSoundPlayed: boolean = false;

    // Digging State (Blow Torch, Drill)
    public isDigging: boolean = false;
    public digType: string = '';
    public digTimer: number = 0;
    public digMaxTime: number = 0;
    private digAccumulator: number = 0;
    public digDirectionY: number = 0;
    public digSoundPlayed: boolean = false;
    
    // Parachute State
    public isParachuting: boolean = false;

    constructor(scene: Phaser.Scene, x: number, y: number, color: number, team: number, worldPhysics: WorldPhysics, name: string) {
        this.x = x;
        this.y = y;
        this.team = team;
        this.worldPhysics = worldPhysics;
        
        // Use real sprite and play idle animation
        this.sprite = scene.add.sprite(x, y, 'worm_idle_0');
        this.sprite.play('worm_idle');
        // Apply team color tint to distinguish them
        this.sprite.setTint(color);
        // Scale appropriately if the extracted sprite is big
        this.sprite.setScale(0.5);

        // Name text
        this.nameText = scene.add.text(x, y - 30, name, {
            fontSize: '10px',
            color: '#ffffff',
            stroke: '#000000',
            strokeThickness: 2
        }).setOrigin(0.5);

        // Health bar
        this.healthBar = scene.add.graphics();
        this.drawHealthBar();
    }

    public applyPoison(amount: number) {
        this.isPoisoned = true;
        this.nextPoisonDamage = amount; // overwrites if multiple hits, same as Flash
    }

    public applyPoisonTick() {
        if (this.nextPoisonDamage > 0 || this.poisonDamage > 0) {
            this.poisonDamage += this.nextPoisonDamage;
            this.nextPoisonDamage = 0;
            
            if (this.health > this.poisonDamage) {
                this.takeDamage(this.poisonDamage);
            } else if (this.health > 1) {
                this.takeDamage(this.health - 1); // Poison never kills, leaves at 1 HP
            }

            this.poisonDamage--;
            if (this.poisonDamage <= 0) {
                this.poisonDamage = 0;
                this.isPoisoned = false;
            }
        }
    }
    
    // --- Digging Methods ---
    
    public startDigging(type: string) {
        if (this.isDigging) return;
        this.isDigging = true;
        this.digType = type;
        this.digTimer = 0;
        this.digMaxTime = type === 'pneumatic_drill' ? 4000 : 5000; // 4-5 seconds
        this.digAccumulator = 0;
        this.digDirectionY = 0;
        this.digSoundPlayed = false;
        this.vx = 0;
        this.vy = 0;
        
        // Face correct way for blow torch
        if (type === 'blow_torch') {
            this.sprite.play('worm_walk');
        } else {
            this.sprite.play('worm_idle');
        }
    }
    
    public stopDigging() {
        this.isDigging = false;
        if (this.digSoundPlayed) {
            this.sprite.scene.sound.stopByKey(this.digType);
            this.digSoundPlayed = false;
        }
        this.sprite.play('worm_idle');
        
        // Notify scene to end turn
        if (this.sprite.scene && (this.sprite.scene as any).waitingForTurnEnd === false) {
            (this.sprite.scene as any).waitingForTurnEnd = true;
            (this.sprite.scene as any).turnTimeLeft = 0;
        }
    }
    
    public setDigDirectionY(dirY: number) {
        if (this.isDigging && this.digType === 'blow_torch') {
            this.digDirectionY = dirY;
        }
    }

    private updateDigging(delta: number) {
        this.digTimer += delta;
        if (this.digTimer >= this.digMaxTime) {
            this.stopDigging();
            return;
        }
        
        this.digAccumulator += delta;
        
        if (!this.digSoundPlayed) {
            if (this.sprite.scene.cache.audio.exists(this.digType)) {
                this.sprite.scene.sound.play(this.digType, { loop: true, volume: 0.6 });
            }
            this.digSoundPlayed = true;
        }
        
        // Burn terrain (roughly every 66ms, equivalent to 4 frames at 60fps)
        while (this.digAccumulator >= 66) {
            this.digAccumulator -= 66;
            const radius = this.digType === 'blow_torch' ? 15 : 12;
            let eraseX = this.x;
            let eraseY = this.y;
            
            if (this.digType === 'blow_torch') {
                eraseX += this.facingRight ? 15 : -15;
                eraseY += this.digDirectionY * 15;
                
                // Move worm slowly
                this.x += this.facingRight ? 0.5 : -0.5;
                this.y += this.digDirectionY * 0.5;
            } else {
                eraseY += 10;
                // Move worm down
                this.y += 0.5;
                this.vy = 0;
            }
            
            this.worldPhysics.eraseCircle(eraseX, eraseY, radius);
            
            // Push nearby enemies (Flash mimic)
            const scene = this.sprite.scene as any;
            if (scene.worms) {
                for (const w of scene.worms) {
                    if (w !== this && w.health > 0) {
                        const dist = Phaser.Math.Distance.Between(this.x, this.y, w.x, w.y);
                        if (dist < radius * 1.5) {
                            if (this.digType === 'blow_torch') {
                                w.vx += this.facingRight ? 1 : -1;
                                w.vy -= 2;
                                w.takeDamage(1);
                            } else {
                                w.vx += this.facingRight ? 0.5 : -0.5;
                                w.vy -= 1;
                                w.takeDamage(1);
                            }
                        }
                    }
                }
            }
        }
    }

    // --- Parachute Methods ---
    
    public startParachute() {
        if (this.isGrounded || this.isParachuting || this.isJetpacking || this.isDigging) return;
        this.isParachuting = true;
    }
    
    public stopParachute() {
        this.isParachuting = false;
        // Optionally notify scene to end turn here if dropping parachute ends turn? 
        // In Flash WMD it doesn't end turn immediately if you drop before landing, you just fall.
    }

    private drawHealthBar() {
        this.healthBar.clear();
        if (this.health <= 0) return;

        const width = 30;
        const height = 4;
        const x = this.x - width / 2;
        const y = this.y - 20;

        // Background
        this.healthBar.fillStyle(0x000000, 0.8);
        this.healthBar.fillRect(x, y, width, height);

        // Health
        const hpPercent = Math.max(0, this.health / this.maxHealth);
        let color = 0x00ff00;
        if (hpPercent < 0.5) color = 0xffff00;
        if (hpPercent < 0.2) color = 0xff0000;

        this.healthBar.fillStyle(color, 1);
        this.healthBar.fillRect(x, y, width * hpPercent, height);
    }

    public update(_delta: number, currentWind: number = 0) {
        if (this.health <= 0) {
            if (this.isGrounded && this.sprite && this.sprite.active) {
                this.sprite.destroy();
                this.nameText.destroy();
                this.healthBar.destroy();
            }
            if (!this.sprite || !this.sprite.active) return;
        }

        if (this.isJetpacking) {
            this.updateJetpack();
        } else if (this.isDigging) {
            this.updateDigging(_delta);
        } else {
            // Apply gravity if not grounded
            if (!this.isGrounded) {
                if (this.isParachuting) {
                    this.vy += this.gravity * 0.1;
                    if (this.vy > 1.5) this.vy = 1.5; // Max parachute fall speed
                    this.vx += currentWind * 0.1; // Wind effect
                    // Some air friction
                    this.vx *= 0.95;
                } else {
                    this.vy += this.gravity;
                    if (this.vy > this.maxFallSpeed) this.vy = this.maxFallSpeed;
                }
            } else {
                if (this.isParachuting) this.stopParachute();
                this.vx *= 0.8;
                if (Math.abs(this.vx) < 0.1) this.vx = 0;
            }
        }

        const targetX = this.x + this.vx;
        const targetY = this.y + this.vy;

        const hitResult = this.worldPhysics.checkHitLine(this.x, this.y, targetX, targetY);

        if (hitResult.hit) {
            this.x = hitResult.x;
            this.y = hitResult.y;

            if (Math.abs(this.vx) > 0.1) {
                if (this.sprite.anims.currentAnim?.key !== 'worm_walk') {
                    this.sprite.play('worm_walk');
                }
            } else {
                if (this.sprite.anims.currentAnim?.key !== 'worm_idle') {
                    this.sprite.play('worm_idle');
                }
            }

            if (!this.isGrounded && this.vy > 0 && !this.isJetpacking) {
                // Apply fall damage based on Flash logic (vx + vy) * 0.2
                const impactSpeed = Math.abs(this.vx) + Math.abs(this.vy);
                if (impactSpeed > 4) { // small threshold to avoid damage from tiny bumps
                    const fallDamage = Math.ceil(impactSpeed * 0.2);
                    if (fallDamage > 0) {
                        this.takeDamage(fallDamage);
                    }
                }
            }
            
            if (this.isJetpacking) {
                // Flash WMD bounce logic for jetpack
                this.vx *= 0.1;
                this.vy *= 0.1;
                this.isGrounded = false; // Cannot ground while jetpacking
            } else if (this.isDigging) {
                // If we hit solid terrain while digging, we erase it
                this.vx = 0;
                this.vy = 0;
                this.isGrounded = true;
            } else {
                this.vx = 0;
                this.vy = 0;
                this.isGrounded = true;
                
                // Pop out of ground slightly to prevent getting stuck
                while (this.worldPhysics.isSolid(this.x, this.y) && this.y > 0) {
                    this.y -= 1;
                }
            }
        } else {
            this.x = targetX;
            this.y = targetY;
            
            // Check if ground is just below to prevent oscillating between grounded/falling
            if (this.isGrounded && this.vy === 0 && this.worldPhysics.isSolid(this.x, this.y + 1)) {
                this.isGrounded = true;
            } else {
                this.isGrounded = false;
            }
            
            if (!this.isJetpacking && !this.isDigging) {
                if (this.isParachuting) {
                    // Could play a parachute deploy animation here if available
                } else if (this.sprite.anims.currentAnim?.key !== 'worm_idle') {
                    this.sprite.play('worm_idle');
                }
            }
        }

        // Keep inside bounds roughly
        if (this.x < 0) this.x = 0;
        if (this.x > this.worldPhysics.width) this.x = this.worldPhysics.width;
        if (this.y > this.worldPhysics.height) {
            // Fell off map (drowning)
            this.takeDamage(10000);
        }

        // Update sprite position
        this.sprite.setPosition(this.x, this.y);
        
        // Sync name and health bar
        if (this.health > 0) {
            this.nameText.setPosition(this.x, this.y - 30);
            this.drawHealthBar();
        }
    }

    public setFacing(facingRight: boolean) {
        this.facingRight = facingRight;
        // Assuming original sprites face left
        this.sprite.setFlipX(this.facingRight);
    }

    public moveLeft() {
        if (!this.isGrounded && !this.isParachuting) return;
        if (this.isParachuting) {
            this.vx -= 0.05;
        } else {
            this.vx = -this.moveSpeed * this.speedMultiplier;
            this.setFacing(false);
        }
    }

    public moveRight() {
        if (!this.isGrounded && !this.isParachuting) return;
        if (this.isParachuting) {
            this.vx += 0.05;
        } else {
            this.vx = this.moveSpeed * this.speedMultiplier;
            this.setFacing(true);
        }
    }

    public jump() {
        if (this.isGrounded) {
            this.vy = this.jumpForceY;
            this.vx = (this.facingRight ? 1 : -1) * this.jumpForceX;
            this.isGrounded = false;
        }
    }
    
    public takeDamage(amount: number) {
        if (amount === 0) return;
        this.health -= amount;
        
        // Match Flash behavior: no upper bound for overheal, but cap at 0 for death
        if (this.health <= 0) {
            this.health = 0;
            this.sprite.setVisible(false); // Dead
        }
    }
    
    // --- Jetpack Methods ---
    
    public startJetpack(type: string) {
        if (this.isJetpacking) return;
        this.isJetpacking = true;
        this.jetpackType = type;
        this.jetpackFuel = type === 'upg_jet_pack' ? 60 : (type === 'ag_pack' ? 40 : 30);
        this.isGrounded = false;
        this.jetpackSoundPlayed = false;
        // In Flash, there is a delay/startup animation. We'll simplify.
    }
    
    public stopJetpack() {
        this.isJetpacking = false;
        if (this.jetpackSoundPlayed) {
            this.sprite.scene.sound.stopByKey('jet_pack');
            this.jetpackSoundPlayed = false;
        }
    }

    private updateJetpack() {
        if (this.jetpackFuel <= 0) {
            this.stopJetpack();
            return;
        }
        
        // If not ag_pack, apply gravity
        if (this.jetpackType !== 'ag_pack') {
            this.vy += this.gravity;
        }
        
        // Speed cap
        const maxSpeed = 8;
        if (Math.abs(this.vx) > maxSpeed) this.vx = Math.sign(this.vx) * maxSpeed;
        if (Math.abs(this.vy) > maxSpeed) this.vy = Math.sign(this.vy) * maxSpeed;
    }
    
    public jetpackMove(up: boolean, down: boolean, left: boolean, right: boolean) {
        if (!this.isJetpacking || this.jetpackFuel <= 0) return;
        
        if (left) this.vx -= 0.07 * 2; // Increased slightly for TS delta frame scaling
        if (right) this.vx += 0.07 * 2;
        
        if (up) this.vy += this.vy > 0 ? -1 : -0.3;
        if (down) this.vy += 0.3;
        
        if (up || down || left || right) {
            this.jetpackFuel -= 0.12 * 2;
        }
        
        if (up || down || left || right || this.jetpackType === 'ag_pack') {
            if (!this.jetpackSoundPlayed) {
                if (this.sprite.scene.cache.audio.exists('jet_pack')) {
                    this.sprite.scene.sound.play('jet_pack', { loop: true, volume: 0.5 });
                }
                this.jetpackSoundPlayed = true;
            }
        } else if (this.jetpackSoundPlayed) {
            this.sprite.scene.sound.stopByKey('jet_pack');
            this.jetpackSoundPlayed = false;
        }
    }
}
