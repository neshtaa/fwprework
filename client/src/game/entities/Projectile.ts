import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';
import { WEAPONS } from '../data/weapons';
import type { WeaponConfig } from '../data/weapons';

import type { WeaponType } from '../data/weapons';

export class Projectile {
    public sprite: Phaser.GameObjects.Sprite;
    public x: number;
    public y: number;
    public vx: number;
    public vy: number;
    public isActive: boolean = true;
    public weaponType: WeaponType;
    public wind: number = 0;
    
    private worldPhysics: WorldPhysics;
    private config: WeaponConfig;
    private timer: number = 0;
    private isPlanted: boolean = false;

    // Shared physical constants
    // Shared physical constants
    public static readonly BASE_GRAVITY = 0.24;
    private static readonly FIXED_TIME_STEP = 1000 / 60; // 60 FPS target
    private physicsAccumulator: number = 0;

    private onExplode: (x: number, y: number, radius: number, damage: number) => void;

    constructor(
        scene: Phaser.Scene, 
        x: number, 
        y: number, 
        vx: number, 
        vy: number,
        weaponType: WeaponType,
        worldPhysics: WorldPhysics,
        wind: number,
        onExplode: (x: number, y: number, radius: number, damage: number) => void
    ) {
        this.x = x;
        this.y = y;
        this.weaponType = weaponType;
        this.worldPhysics = worldPhysics;
        this.onExplode = onExplode;
        
        this.config = WEAPONS[weaponType];
        
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
        this.isActive = false;
        
        this.onExplode(x, y, this.config.explosionRadius, this.config.damage);
        this.destroy();
    }

    public destroy() {
        this.isActive = false;
        this.sprite.destroy();
    }
}
