import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';
import { Worm } from './Worm';

export class FireParticle {
    public sprite: Phaser.GameObjects.Sprite;
    public x: number;
    public y: number;
    public vx: number;
    public vy: number;
    public isActive: boolean = true;
    
    private worldPhysics: WorldPhysics;
    private timerMs: number = 0;
    private maxLifeMs: number = 2000;
    private isNapalm: boolean;
    
    constructor(scene: Phaser.Scene, x: number, y: number, vx: number, vy: number, isNapalm: boolean, worldPhysics: WorldPhysics) {
        this.x = x;
        this.y = y;
        this.vx = vx;
        this.vy = vy;
        this.isNapalm = isNapalm;
        this.worldPhysics = worldPhysics;
        
        // In the original Flash game, fire and poison were drawn directly via pixels to a BitmapData (FireMap).
        // Since we don't have dedicated PNG assets for them, we use a tinted fallback sprite.
        // Performance note: checkHitLine per frame is fast enough for ~100 particles, 
        // but if we ever implement full napalm strikes with 1000s of particles, 
        // we may need to optimize collision checks (e.g. check every N frames or use a grid).
        const textureKey = isNapalm ? 'napalm_fire' : 'fire';
        this.sprite = scene.add.sprite(x, y, scene.textures.exists(textureKey) ? textureKey : 'bazooka_0'); // fallback
        if (!scene.textures.exists(textureKey)) {
            this.sprite.setTint(0xff0000);
        }
        this.sprite.setScale(0.5);
        this.maxLifeMs = 2000 + Math.random() * 1000;
    }

    public update(delta: number, wind: number, worms: Worm[]) {
        if (!this.isActive) return;
        
        this.timerMs += delta;
        if (this.timerMs >= this.maxLifeMs) {
            this.destroy();
            return;
        }

        // Apply wind and gravity (fire falls slowly and moves with wind)
        this.vx += wind * 0.05;
        this.vy += 0.05; // Light gravity
        
        // Simple air friction
        this.vx *= 0.95;
        this.vy *= 0.95;

        // Collision
        const hitResult = this.worldPhysics.checkHitLine(this.x, this.y, this.x + this.vx, this.y + this.vy);
        if (hitResult.hit) {
            // Bounce or stop
            this.x = hitResult.x;
            this.y = hitResult.y;
            this.vx *= -0.5;
            this.vy *= -0.5;
            
            // Stop if velocity is very low
            if (Math.abs(this.vx) < 0.1) this.vx = 0;
            if (Math.abs(this.vy) < 0.1) this.vy = 0;
        } else {
            this.x += this.vx;
            this.y += this.vy;
        }

        this.sprite.setPosition(this.x, this.y);
        
        // Damage worms
        const damage = this.isNapalm ? 2.5 : 0.75;
        for (const worm of worms) {
            if (worm.health <= 0) continue;
            const dist = Math.sqrt(Math.pow(worm.x - this.x, 2) + Math.pow(worm.y - this.y, 2));
            if (dist < 10) { // arbitrary hit radius
                worm.takeDamage(damage);
            }
        }
        
        if (this.y > 1500) {
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
