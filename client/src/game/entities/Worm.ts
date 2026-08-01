import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';

export class Worm {
    public sprite: Phaser.GameObjects.Arc; // For now using Arc (circle) instead of proper sprite
    public health: number = 100;
    public team: number;
    public x: number;
    public y: number;
    
    // Physics properties
    public vx: number = 0;
    public vy: number = 0;
    public isGrounded: boolean = false;
    
    // Constants matching the game
    private gravity: number = 0.5;
    private maxFallSpeed: number = 10;
    private moveSpeed: number = 1.5;
    private jumpForceY: number = -6;
    private jumpForceX: number = 3;
    
    // State
    public facingRight: boolean = true;
    private worldPhysics: WorldPhysics;
    public isActive: boolean = false;

    constructor(scene: Phaser.Scene, x: number, y: number, color: number, team: number, worldPhysics: WorldPhysics) {
        this.x = x;
        this.y = y;
        this.team = team;
        this.worldPhysics = worldPhysics;
        
        this.sprite = scene.add.circle(x, y, 6, color);
        // Add a small indicator for facing direction
        // Normally this would be a proper sprite
    }

    public update(_delta: number) {
        // Apply gravity
        this.vy += this.gravity;
        if (this.vy > this.maxFallSpeed) {
            this.vy = this.maxFallSpeed;
        }

        // Apply movement vector with collision checks
        const targetX = this.x + this.vx;
        const targetY = this.y + this.vy;

        const hitResult = this.worldPhysics.checkHitLine(this.x, this.y, targetX, targetY);

        if (hitResult.hit) {
            // We hit something. Need to resolve collision.
            // Simplified resolution: stop movement
            this.x = hitResult.x;
            this.y = hitResult.y;
            
            // If moving down and hit something, we are grounded
            if (this.vy > 0) {
                this.isGrounded = true;
                this.vy = 0;
                // Add friction if on ground
                this.vx *= 0.8;
                if (Math.abs(this.vx) < 0.1) this.vx = 0;
            } else if (this.vy < 0) {
                // Hit ceiling
                this.vy = 0;
            }
            
            // Wall collision
            if (this.worldPhysics.isSolid(this.x + Math.sign(this.vx) * 3, this.y)) {
                this.vx = 0;
            }

            // Pop out of ground slightly to prevent getting stuck
            while (this.worldPhysics.isSolid(this.x, this.y) && this.y > 0) {
                this.y -= 1;
            }
        } else {
            this.isGrounded = false;
            this.x = targetX;
            this.y = targetY;
        }

        // Keep inside bounds roughly
        if (this.x < 0) this.x = 0;
        if (this.x > 2000) this.x = 2000; // Will be limited by actual map width
        if (this.y > 1500) {
            // Fell off map
            this.health = 0;
        }

        // Update sprite position
        this.sprite.setPosition(this.x, this.y);
    }

    public moveLeft() {
        if (this.isGrounded) {
            this.vx = -this.moveSpeed;
            this.facingRight = false;
        }
    }

    public moveRight() {
        if (this.isGrounded) {
            this.vx = this.moveSpeed;
            this.facingRight = true;
        }
    }

    public jump() {
        if (this.isGrounded) {
            this.vy = this.jumpForceY;
            this.vx = this.facingRight ? this.jumpForceX : -this.jumpForceX;
            this.isGrounded = false;
        }
    }
    
    public takeDamage(amount: number) {
        this.health -= amount;
        if (this.health <= 0) {
            this.health = 0;
            this.sprite.setVisible(false); // Dead
        }
    }
}
