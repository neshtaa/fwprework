import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';
import { WEAPONS } from '../data/weapons';
import type { WeaponConfig } from '../data/weapons';

import type { WeaponType } from '../data/weapons';
import type { Worm } from './Worm';

export interface ProjectileCallbacks {
    onExplode: (x: number, y: number, radius: number, damage: number) => void;
    onSpawnProjectile: (x: number, y: number, vx: number, vy: number, weaponType: string) => void;
    onSpawnFire: (x: number, y: number, amount: number, isNapalm: boolean) => void;
    onSpawnPoison: (x: number, y: number, amount: number, isRad: boolean) => void;
    getWorms?: () => Worm[];
}

export class Projectile {
    public sprite: Phaser.GameObjects.Sprite;
    public x: number;
    public y: number;
    public vx: number;
    public vy: number;
    public isActive: boolean = true;
    public weaponType: string;
    public wind: number = 0;
    
    private worldPhysics: WorldPhysics;
    private callbacks: ProjectileCallbacks;
    private config: WeaponConfig;
    private timer: number = 0;
    public isPlanted: boolean = false;
    private multiExplosionsLeft: number;

    // Mine logic
    private isMine: boolean = false;
    private mineArmingTimer: number = 0;
    private mineArmed: boolean = false;
    private mineTriggered: boolean = false;
    private mineFuseTimer: number = 0;

    // Shared physical constants
    public static readonly BASE_GRAVITY = 0.24;
    private static readonly FIXED_TIME_STEP = 1000 / 60; // 60 FPS target
    private physicsAccumulator: number = 0;

    constructor(
        scene: Phaser.Scene, 
        x: number, 
        y: number, 
        vx: number, 
        vy: number,
        weaponType: string,
        worldPhysics: WorldPhysics,
        wind: number,
        callbacks: ProjectileCallbacks
    ) {
        this.x = x;
        this.y = y;
        this.weaponType = weaponType;
        this.worldPhysics = worldPhysics;
        this.callbacks = callbacks;
        
        this.config = WEAPONS[weaponType as WeaponType];
        this.multiExplosionsLeft = this.config.multiplexplosions || 0;
        
        if (this.config.wptype === 'e' && !this.config.explodeOnImpact && !this.config.timingExplode && !this.config.restingExplode && !this.config.instantExplode) {
            this.isMine = true;
        }

        this.wind = this.config.affectedByWind ? wind : 0;

        // Use the weaponType as the texture key for now, fallback to bazooka_0
        const textureKey = `${weaponType}_0`;
        const hasTexture = scene.textures.exists(textureKey);
        this.sprite = scene.add.sprite(x, y, hasTexture ? textureKey : 'bazooka_0');
        this.sprite.setOrigin(0.5, 0.5);
        this.vx = vx;
        this.vy = vy;

        this.sprite.setScale(0.5);
    }

    public static simulateStep(x: number, y: number, vx: number, vy: number, wind: number, weaponType: string): { x: number, y: number, vx: number, vy: number } {
        const config = WEAPONS[weaponType as WeaponType];
        const currentWind = config.affectedByWind ? wind * (config.windMultiplier ?? 1.0) : 0;
        const newVy = vy + Projectile.BASE_GRAVITY * config.gravityMultiplier;
        const newVx = vx + currentWind;
        return { x: x + newVx, y: y + newVy, vx: newVx, vy: newVy };
    }

    public update(delta: number) {
        if (!this.isActive) return;

        // Timer logic
        if (this.config.timerMs !== undefined && this.config.timerMs > 0) {
            this.timer += delta;
            if (this.timer >= this.config.timerMs) {
                this.explode(this.x, this.y);
                return;
            }
        }

        if (!this.isPlanted) {
            this.physicsAccumulator += delta;
            
            // Cap accumulator to prevent spiral of death / freezing on large delta (e.g., resuming from background tab)
            if (this.physicsAccumulator > 1000) {
                this.physicsAccumulator = 1000;
            }

            while (this.physicsAccumulator >= Projectile.FIXED_TIME_STEP) {
                this.physicsAccumulator -= Projectile.FIXED_TIME_STEP;

                // Apply physics step
                const step = Projectile.simulateStep(this.x, this.y, this.vx, this.vy, this.wind, this.weaponType);
                this.vx = step.vx;
                this.vy = step.vy;

                const targetX = step.x;
                const targetY = step.y;

                const hitResult = this.worldPhysics.checkHitLine(this.x, this.y, targetX, targetY);

                if (hitResult.hit) {
                    if (this.config.explodeOnImpact) {
                        this.explode(hitResult.x, hitResult.y);
                        return;
                    } 
                    
                    if (this.config.reflect) {
                        this.x = hitResult.x;
                        this.y = hitResult.y;

                        const reflectAxis = this.worldPhysics.reflect(this.x, this.y, this.vx, this.vy);
                        if (reflectAxis === 0) {
                            this.vx *= -1;
                            this.vy *= -1;
                        } else if (reflectAxis === 1) {
                            this.vx *= -1;
                        } else {
                            this.vy *= -1;
                        }

                        this.vx = Math.abs(this.vx) < 0.1 ? 0 : this.vx * this.config.bounceX;
                        this.vy = Math.abs(this.vy) < 0.1 ? 0 : this.vy * this.config.bounceY;

                        // Ensure it's not stuck inside terrain
                        while (this.worldPhysics.isSolid(this.x, this.y) && this.y > 0) {
                            this.y -= 1;
                        }
                    } else {
                        // Not reflecting -> just stops moving
                        this.x = hitResult.x;
                        this.y = hitResult.y;
                        this.vx = 0;
                        this.vy = 0;
                        
                        while (this.worldPhysics.isSolid(this.x, this.y) && this.y > 0) {
                            this.y -= 1;
                        }
                    }

                    if (this.vx === 0 && this.vy === 0) {
                        if (this.config.restingExplode) {
                            this.explode(this.x, this.y);
                            return;
                        } else {
                            this.isPlanted = true;
                        }
                    }
                } else {
                    this.x = targetX;
                    this.y = targetY;
                }

                if (this.isPlanted || !this.isActive) {
                    break;
                }
            }
        }
        
        if (this.isMine && this.isPlanted && this.isActive) {
            if (!this.mineArmed) {
                this.mineArmingTimer += delta;
                if (this.mineArmingTimer >= 2800) { // 2.8s arming delay
                    this.mineArmed = true;
                }
            } else if (!this.mineTriggered) {
                // Check trigger radius
                if (this.callbacks.getWorms) {
                    const worms = this.callbacks.getWorms();
                    for (const worm of worms) {
                        if (worm.health > 0) {
                            const dist = Math.sqrt(Math.pow(worm.x - this.x, 2) + Math.pow(worm.y - this.y, 2));
                            if (dist <= 48) {
                                this.mineTriggered = true;
                                this.sprite.setTint(0xff0000); // Visual indicator for triggering (beeping)
                                break;
                            }
                        }
                    }
                }
            } else {
                this.mineFuseTimer += delta;
                // Beep effect: toggle tint every 250ms
                if (Math.floor(this.mineFuseTimer / 250) % 2 === 0) {
                    this.sprite.setTint(0xff0000);
                } else {
                    this.sprite.clearTint();
                }
                
                if (this.mineFuseTimer >= 3000) { // 3 second fuse
                    this.explode(this.x, this.y);
                    return;
                }
            }
        }
        
        this.sprite.setPosition(this.x, this.y);
        
        if (this.vx !== 0 || this.vy !== 0) {
             this.sprite.setRotation(Math.atan2(this.vy, this.vx));
        }

        // Out of bounds check
        if (this.y > 1500 || this.x < -500 || this.x > 2500) {
            this.destroy();
        }
    }

    private explode(x: number, y: number) {
        if (!this.isActive) return;
        
        this.callbacks.onExplode(x, y, this.config.explosionRadius, this.config.damage);

        if (this.multiExplosionsLeft > 0) {
            // Original Flash game does not use any timer for MULTIPLEXPLOSIONS.
            // If the projectile is inside terrain, it will trigger an explosion every frame
            // until multiExplosionsLeft reaches 0, which acts as a drilling mechanic.
            this.multiExplosionsLeft--;
            // Do not destroy, keep it active to explode again next tick!
        } else {
            // Apply special effects on the FINAL explosion
            if (this.config.fireOnExplode || this.config.poisonOnExplode || this.config.poisonOnExplodeRad || this.config.breaking) {
                if (this.config.fireOnExplode) {
                    this.callbacks.onSpawnFire(x, y, this.config.fireAmount || 0, false); // napalm_fire not supported directly yet
                }
                
                if (this.config.poisonOnExplode) {
                    this.callbacks.onSpawnPoison(x, y, this.config.poisonAmount || 0, false);
                }

                if (this.config.poisonOnExplodeRad) {
                    this.callbacks.onSpawnPoison(x, y, this.config.poisonAmount || 0, true);
                }

                if (this.config.breaking && this.config.breakingAmount) {
                    const amount = this.config.breakingAmount;
                    for (let i = 0; i < amount; i++) {
                        // Original flash logic distributes velocities differently per weapon type,
                        // but a general random explosion distribution works well for now:
                        const vTheta = Math.random() * Math.PI * 2;
                        const vMag = Math.random() * 5 + 2;
                        let vx = this.vx * 0.1 + Math.cos(vTheta) * vMag;
                        let vy = this.vy * 0.1 + Math.sin(vTheta) * vMag;
                        
                        // Slightly randomize positions
                        const spawnX = x + (Math.random() - 0.5) * 4;
                        const spawnY = y + (Math.random() - 0.5) * 4;

                        this.callbacks.onSpawnProjectile(spawnX, spawnY, vx, vy, this.config.breakingType || "");
                    }
                }
            }
            
            this.destroy();
        }
    }

    public destroy() {
        this.isActive = false;
        if (this.sprite) {
            this.sprite.destroy();
        }
    }
}
