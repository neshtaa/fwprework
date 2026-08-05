import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';

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
    
    // Constants matching the game
    private gravity: number = 0.24;
    private maxFallSpeed: number = 10;
    private moveSpeed: number = 1.5;
    private jumpForceY: number = -3;
    private jumpForceX: number = 2;
    private backflipForceY: number = -5;
    private backflipForceX: number = -0.8;
    
    // State
    public facingRight: boolean = true;
    private worldPhysics: WorldPhysics;
    public isActive: boolean = false;

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

    public update(_delta: number) {
        if (this.health <= 0) {
            if (this.isGrounded && this.sprite && this.sprite.active) {
                this.sprite.destroy();
                this.nameText.destroy();
                this.healthBar.destroy();
            }
            if (!this.sprite || !this.sprite.active) return;
        }

        // Apply gravity if not grounded
        if (!this.isGrounded) {
            this.vy += this.gravity;
            if (this.vy > this.maxFallSpeed) this.vy = this.maxFallSpeed;
            // Removed horizontal air friction to preserve explosion knockback
        } else {
            this.vx *= this.friction;
            if (Math.abs(this.vx) < 0.1) this.vx = 0;
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

            if (!this.isGrounded && this.vy > 0) {
                // Apply fall damage based on Flash logic (vx + vy) * 0.2
                const impactSpeed = Math.abs(this.vx) + Math.abs(this.vy);
                if (impactSpeed > 4) { // small threshold to avoid damage from tiny bumps
                    const fallDamage = Math.ceil(impactSpeed * 0.2);
                    if (fallDamage > 0) {
                        this.takeDamage(fallDamage);
                    }
                }
            }
            
            this.vy = 0;
            this.isGrounded = true;
            
            // Pop out of ground slightly to prevent getting stuck
            while (this.worldPhysics.isSolid(this.x, this.y) && this.y > 0) {
                this.y -= 1;
            }
        } else {
            const groundCheck = this.worldPhysics.checkHitLine(this.x, this.y, this.x, this.y + 2);
            if (!groundCheck.hit) {
                this.isGrounded = false;
            }
            this.x = targetX;
            this.y = targetY;
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
        
        // Friction
        if (this.isGrounded) {
            this.vx *= 0.8;
            if (Math.abs(this.vx) < 0.1) this.vx = 0;
        }
    }

    public moveLeft() {
        if (this.isGrounded) {
            this.vx = -this.moveSpeed;
            this.facingRight = false;
            this.sprite.setFlipX(false); // Adjust based on how original sprite faces
        }
    }

    public moveRight() {
        if (this.isGrounded) {
            this.vx = this.moveSpeed;
            this.facingRight = true;
            this.sprite.setFlipX(true);
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
