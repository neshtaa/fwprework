import { Worm } from './Worm';
import { WorldPhysics } from '../core/WorldPhysics';
import { WEAPONS } from '../data/weapons';
import type { WeaponType } from '../data/weapons';

export class AIBot {
    private scene: Phaser.Scene;
    private worldPhysics: WorldPhysics;
    private worms: Worm[];

    constructor(scene: Phaser.Scene, worldPhysics: WorldPhysics, worms: Worm[]) {
        this.scene = scene;
        this.worldPhysics = worldPhysics;
        this.worms = worms;
    }

    public takeTurn(activeWorm: Worm, wind: number, inventory: Record<string, number>, callback: (weapon: WeaponType, angle: number, power: number) => void) {
        // Find valid targets (enemies)
        const targets = this.worms.filter(w => w.team !== activeWorm.team && w.health > 0);
        if (targets.length === 0) return;

        const target = targets[Math.floor(Math.random() * targets.length)];

        // Select a weapon
        // Prioritize bazooka or grenade if we have ammo
        let selectedWeapon: any = 'bazooka';
        const allowedAiWeapons = ['bazooka', 'grenade'];
        const weaponKeys = allowedAiWeapons.filter(k => inventory[k] > 0 || inventory[k] === -1);
        
        if (weaponKeys.length > 0) {
            // Let's just pick a random available weapon for now, could be smarter
            selectedWeapon = weaponKeys[Math.floor(Math.random() * weaponKeys.length)];
        }

        // Brute force search for best angle and power
        let bestScore = -Infinity;
        let bestAngle = -Math.PI / 2; // Up
        let bestPower = 50;

        for (let power = 20; power <= 100; power += 20) {
            for (let angleDeg = 0; angleDeg < 180; angleDeg += 10) {
                let angle = (angleDeg - 90) * Math.PI / 180;
                
                // If target is to the left, shoot left
                if (target.x < activeWorm.x) {
                    angle = -Math.PI - angle;
                }

                const score = this.simulateShot(activeWorm, target, angle, power, selectedWeapon as WeaponType, wind);
                if (score > bestScore) {
                    bestScore = score;
                    bestAngle = angle;
                    bestPower = power;
                }
            }
        }

        // Add some random fuzziness so the bot isn't perfectly accurate 100% of the time
        bestAngle += (Math.random() - 0.5) * 0.1;

        // Callback after a small delay to simulate "thinking"
        this.scene.time.delayedCall(1500, () => {
            callback(selectedWeapon, bestAngle, bestPower);
        });
    }

    private simulateShot(shooter: Worm, target: Worm, angle: number, power: number, weaponKey: WeaponType, wind: number): number {
        const config = WEAPONS[weaponKey];
        const powerNorm = power / 100;
        const speed = powerNorm * 15;
        
        let simX = shooter.x;
        let simY = shooter.y;
        let simVx = Math.cos(angle) * speed;
        let simVy = Math.sin(angle) * speed;
        
        const simGravity = 0.5 * config.gravityMultiplier;
        const simWind = config.affectedByWind ? wind : 0;
        
        let steps = 0;
        const maxSteps = 300;

        while (steps < maxSteps) {
            simVy += simGravity;
            simVx += simWind * 0.05;

            const nextX = simX + simVx;
            const nextY = simY + simVy;

            // Check hit terrain
            const hitResult = this.worldPhysics.checkHitLine(simX, simY, nextX, nextY);
            if (hitResult.hit) {
                // Determine distance to target from explosion
                simX = hitResult.x;
                simY = hitResult.y;
                break;
            }

            // Simple bounds check
            if (nextX < 0 || nextX > this.worldPhysics.width || nextY > this.worldPhysics.height) {
                return -Infinity; // Missed completely
            }
            
            simX = nextX;
            simY = nextY;
            steps++;
        }

        const dist = Math.sqrt(Math.pow(simX - target.x, 2) + Math.pow(simY - target.y, 2));
        
        if (dist < config.explosionRadius) {
            return 1000 - dist; // Good hit
        }
        
        return -dist; // Closer is better
    }
}
