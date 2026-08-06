import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';
import { Worm } from './Worm';

export class PoisonParticle {
    public sprite: Phaser.GameObjects.Sprite;
    public x: number;
    public y: number;
    public vx: number;
    public vy: number;
    public isActive: boolean = true;
    
    private worldPhysics: WorldPhysics;
    private timerMs: number = 0;
    private maxLifeMs: number = 2000;
    private isRad: boolean;
    
    constructor(scene: Phaser.Scene, x: number, y: number, vx: number, vy: number, isRad: boolean, worldPhysics: WorldPhysics) {
        this.x = x;
        this.y = y;
        this.vx = vx;
        this.vy = vy;
        this.isRad = isRad;
        this.worldPhysics = worldPhysics;
        
        // In the original Flash game, poison was drawn via pixels.
        // Since we don't have dedicated PNG assets for them, we use a tinted fallback sprite.
        // Performance note: checkHitLine per frame is fast enough for now.
        const textureKey = isRad ? 'poison_rad' : 'poison';
        this.sprite = scene.add.sprite(x, y, scene.textures.exists(textureKey) ? textureKey : 'bazooka_0'); // fallback
        if (!scene.textures.exists(textureKey)) {
            this.sprite.setTint(0x00ff00);
        }
        this.sprite.setScale(0.5);
    }

    public update(delta: number, wind: number, worms: Worm[]) {
        if (!this.isActive) return;
        
        this.timerMs += delta;
        if (this.timerMs >= this.maxLifeMs) {
            this.destroy();
            return;
        }

        // Apply wind and gravity (poison is slightly affected by wind and falls down)
        this.vx += wind * 0.1;
        this.vy += 0.08; 
        
        // Simple air friction
        this.vx *= 0.95;
        this.vy *= 0.95;

        // Collision
        const hitResult = this.worldPhysics.checkHitLine(this.x, this.y, this.x + this.vx, this.y + this.vy);
        if (hitResult.hit) {
            // Poison gas stops and fades? In original it bounces slightly or stays
            this.x = hitResult.x;
            this.y = hitResult.y;
            this.vx *= -0.2;
            this.vy *= -0.2;
        } else {
            this.x += this.vx;
            this.y += this.vy;
        }

        this.sprite.setPosition(this.x, this.y);
        this.sprite.setAlpha(1 - (this.timerMs / this.maxLifeMs));
        
        // Damage worms
        for (const worm of worms) {
            if (worm.health <= 0) continue;
            // The radius in original is 1.1 * (timeout/10)
            const rad = 1.1 * ((this.maxLifeMs - this.timerMs) / 10);
            const dist = Math.sqrt(Math.pow(worm.x - this.x, 2) + Math.pow(worm.y - this.y, 2));
            if (dist < Math.max(10, rad)) {
                // Apply poison condition to worm. In original sick_next is set to 5 or 15.
                // We'll just apply some direct damage to simulate poison for now or set a flag.
                // For a perfect parity, we should add sick_next to Worm class.
                worm.applyPoison(this.isRad ? 15 : 5);
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
