import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';

export class Projectile {
    public sprite: Phaser.GameObjects.Arc;
    public x: number;
    public y: number;
    public vx: number;
    public vy: number;
    public isActive: boolean = true;
    
    private worldPhysics: WorldPhysics;
    private gravity: number = 0.2;
    private radius: number = 3;
    private explosionRadius: number = 40;
    private damage: number = 25;

    // Callback when it explodes
    private onExplode: (x: number, y: number, radius: number, damage: number) => void;

    constructor(
        scene: Phaser.Scene, 
        x: number, 
        y: number, 
        vx: number, 
        vy: number, 
        worldPhysics: WorldPhysics,
        onExplode: (x: number, y: number, radius: number, damage: number) => void
    ) {
        this.x = x;
        this.y = y;
        this.vx = vx;
        this.vy = vy;
        this.worldPhysics = worldPhysics;
        this.onExplode = onExplode;
        
        // Small yellow circle for projectile
        this.sprite = scene.add.circle(x, y, this.radius, 0xffff00);
    }

    public update(_delta: number) {
        if (!this.isActive) return;

        // Gravity
        this.vy += this.gravity;

        const targetX = this.x + this.vx;
        const targetY = this.y + this.vy;

        const hitResult = this.worldPhysics.checkHitLine(this.x, this.y, targetX, targetY);

        if (hitResult.hit) {
            // Hit terrain, explode
            this.explode(hitResult.x, hitResult.y);
        } else {
            this.x = targetX;
            this.y = targetY;
            this.sprite.setPosition(this.x, this.y);
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
