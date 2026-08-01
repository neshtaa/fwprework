import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';

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
    private gravity: number = 0.2;
    private explosionRadius: number = 40;
    private damage: number = 25;
    
    private timer: number = 0; // ms
    private maxTimer: number = 3000; // 3 seconds for grenade/dynamite

    // Callback when it explodes
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
        this.vx = vx;
        this.vy = vy;
        this.weaponType = weaponType;
        this.worldPhysics = worldPhysics;
        this.wind = wind;
        this.onExplode = onExplode;
        
        let spriteKey = 'bazooka';
        if (weaponType === 'grenade') spriteKey = 'grenade';
        if (weaponType === 'dynamite') spriteKey = 'dynamite';
        if (weaponType === 'mine') spriteKey = 'mine';
        if (weaponType === 'holy_hand_grenade') spriteKey = 'holy_hand_grenade';

        this.sprite = scene.add.sprite(x, y, spriteKey);
        this.sprite.setScale(0.5);
        
        if (weaponType === 'dynamite') {
            this.vx = 0;
            this.vy = 0; // Drops in place or very slight toss
            this.explosionRadius = 70;
            this.damage = 50;
            this.wind = 0; // Wind doesn't affect heavy dynamite
        } else if (weaponType === 'grenade') {
            this.explosionRadius = 50;
            this.damage = 35;
        } else if (weaponType === 'mine') {
            this.vx = 0;
            this.vy = 0;
            this.explosionRadius = 40;
            this.damage = 40;
            this.maxTimer = 5000;
            this.wind = 0;
        } else if (weaponType === 'holy_hand_grenade') {
            this.explosionRadius = 150;
            this.damage = 100;
            this.maxTimer = 3000;
        }
    }

    public update(delta: number) {
        if (!this.isActive) return;

        // Gravity and wind
        this.vy += this.gravity;
        this.vx += this.wind;

        const targetX = this.x + this.vx;
        const targetY = this.y + this.vy;

        const hitResult = this.worldPhysics.checkHitLine(this.x, this.y, targetX, targetY);

        if (hitResult.hit) {
            if (this.weaponType === 'bazooka') {
                this.explode(hitResult.x, hitResult.y);
            } else {
                // Bounce
                this.x = hitResult.x;
                this.y = hitResult.y;
                // Simple bounce reflection (assuming flat ground mostly for now, or just invert Y)
                // A true reflection requires normals, but we'll approximate
                if (this.vy > 0) {
                    this.vy = -this.vy * 0.5; // bounce up
                    this.vx = this.vx * 0.7; // friction
                } else {
                    this.vy = -this.vy * 0.5;
                }
                
                // Prevent falling through if stuck
                while (this.worldPhysics.isSolid(this.x, this.y) && this.y > 0) {
                    this.y -= 1;
                }
            }
        } else {
            this.x = targetX;
            this.y = targetY;
        }
        
        this.sprite.setPosition(this.x, this.y);
        
        if (this.vx !== 0 || this.vy !== 0) {
             this.sprite.setRotation(Math.atan2(this.vy, this.vx));
        }

        // Timers
        if (this.weaponType === 'grenade' || this.weaponType === 'dynamite' || this.weaponType === 'mine' || this.weaponType === 'holy_hand_grenade') {
            this.timer += delta;
            if (this.timer >= this.maxTimer) {
                this.explode(this.x, this.y);
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
        
        this.onExplode(x, y, this.explosionRadius, this.damage);
        this.destroy();
    }

    public destroy() {
        this.isActive = false;
        this.sprite.destroy();
    }
}
