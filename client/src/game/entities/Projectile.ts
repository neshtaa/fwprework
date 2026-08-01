import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';
import { WEAPONS } from '../data/weapons';
import type { WeaponConfig } from '../data/weapons';

export type WeaponType = 'bazooka' | 'grenade' | 'dynamite' | 'mine' | 'holy_hand_grenade';

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
    public static readonly BASE_GRAVITY = 0.2;

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

        // Use the weaponType as the texture key for now
        this.sprite = scene.add.sprite(x, y, `${weaponType}_0`);
        this.sprite.setOrigin(0.5, 0.5);
        
        if (this.config.stopOnImpact) {
            this.vx = 0;
            this.vy = 0;
        } else {
            this.vx = vx;
            this.vy = vy;
        }

        this.sprite.setScale(0.5);
    }

    public static simulateStep(x: number, y: number, vx: number, vy: number, wind: number, weaponType: string): { x: number, y: number, vx: number, vy: number } {
        const config = WEAPONS[weaponType];
        const currentWind = config.affectedByWind ? wind : 0;
        const newVy = vy + Projectile.BASE_GRAVITY * config.gravityMultiplier;
        const newVx = vx + currentWind;
        return { x: x + newVx, y: y + newVy, vx: newVx, vy: newVy };
    }

    public update(delta: number) {
        if (!this.isActive) return;

        if (!this.isPlanted) {
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
                } else if (this.config.stopOnImpact) {
                    this.x = hitResult.x;
                    this.y = hitResult.y;
                    this.vx = 0;
                    this.vy = 0;
                    this.isPlanted = true;
                    
                    while (this.worldPhysics.isSolid(this.x, this.y) && this.y > 0) {
                        this.y -= 1;
                    }
                } else {
                    // Bounce
                    this.x = hitResult.x;
                    this.y = hitResult.y;
                    
                    if (this.vy > 0) {
                        this.vy = -this.vy * 0.5;
                        this.vx = this.vx * 0.7;
                    } else {
                        this.vy = -this.vy * 0.5;
                    }
                    
                    while (this.worldPhysics.isSolid(this.x, this.y) && this.y > 0) {
                        this.y -= 1;
                    }
                }
            } else {
                this.x = targetX;
                this.y = targetY;
            }
        }
        
        this.sprite.setPosition(this.x, this.y);
        
        if (this.vx !== 0 || this.vy !== 0) {
             this.sprite.setRotation(Math.atan2(this.vy, this.vx));
        }

        // Timer logic
        if (this.config.timerMs !== undefined && this.config.timerMs > 0) {
            this.timer += delta;
            if (this.timer >= this.config.timerMs) {
                this.explode(this.x, this.y);
                return;
            }
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
