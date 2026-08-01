import type { WeaponType } from '../entities/Projectile';

export interface WeaponConfig {
    damage: number;
    explosionRadius: number;
    timerMs: number;
    gravityMultiplier: number;
    affectedByWind: boolean;
    spriteKey: string;
    explodeOnImpact: boolean;
    stopOnImpact: boolean;
}

export const WEAPONS: Record<WeaponType, WeaponConfig> = {
    bazooka: { damage: 25, explosionRadius: 40, timerMs: 0, gravityMultiplier: 1, affectedByWind: true, spriteKey: 'bazooka', explodeOnImpact: true, stopOnImpact: false },
    grenade: { damage: 35, explosionRadius: 50, timerMs: 3000, gravityMultiplier: 1, affectedByWind: true, spriteKey: 'grenade', explodeOnImpact: false, stopOnImpact: false },
    dynamite: { damage: 50, explosionRadius: 70, timerMs: 3000, gravityMultiplier: 1, affectedByWind: false, spriteKey: 'dynamite', explodeOnImpact: false, stopOnImpact: true },
    mine: { damage: 40, explosionRadius: 40, timerMs: 5000, gravityMultiplier: 1, affectedByWind: false, spriteKey: 'mine', explodeOnImpact: false, stopOnImpact: true },
    holy_hand_grenade: { damage: 100, explosionRadius: 150, timerMs: 3000, gravityMultiplier: 1, affectedByWind: true, spriteKey: 'holy_hand_grenade', explodeOnImpact: false, stopOnImpact: false }
};
