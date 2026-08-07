import type { WeaponType } from './weapons';

export interface GunConfig {
    bulletAmount: number; // Bullets per single trigger pull (burst)
    bulletIntervalMs: number; // Delay between bullets in a burst
    spreadDegrees: number; // Inaccuracy spread
    speed: number;
    shotsPerTurn?: number; // How many times you can pull the trigger in one turn (e.g. shotgun = 2)
}

export const GUNS_CONFIG: Partial<Record<WeaponType, GunConfig>> = {
    "pistol": { bulletAmount: 5, bulletIntervalMs: 64, spreadDegrees: 2, speed: 40 },
    "uzi": { bulletAmount: 10, bulletIntervalMs: 30, spreadDegrees: 3, speed: 40 },
    "unfail_uzi": { bulletAmount: 10, bulletIntervalMs: 30, spreadDegrees: 3, speed: 40 },
    "minigun": { bulletAmount: 20, bulletIntervalMs: 16, spreadDegrees: 3, speed: 40 },
    "unfail_minigun": { bulletAmount: 20, bulletIntervalMs: 16, spreadDegrees: 3, speed: 40 },
    "air_minigun": { bulletAmount: 30, bulletIntervalMs: 10, spreadDegrees: 3, speed: 40 },
    "bozar": { bulletAmount: 20, bulletIntervalMs: 10, spreadDegrees: 1, speed: 40 },
    "bozar16": { bulletAmount: 20, bulletIntervalMs: 10, spreadDegrees: 1, speed: 40 },
    "bozar24s": { bulletAmount: 20, bulletIntervalMs: 10, spreadDegrees: 1, speed: 40 },
    "peacemaker": { bulletAmount: 2, bulletIntervalMs: 64, spreadDegrees: 2, speed: 40 },
    "hearts_ace": { bulletAmount: 2, bulletIntervalMs: 64, spreadDegrees: 2, speed: 40 },
    "avenger": { bulletAmount: 30, bulletIntervalMs: 10, spreadDegrees: 1.5, speed: 40 },
    "sniper_rifle": { bulletAmount: 1, bulletIntervalMs: 64, spreadDegrees: 0, speed: 60 },
    "rad_rifle": { bulletAmount: 1, bulletIntervalMs: 64, spreadDegrees: 0, speed: 60 },
    "hunting_rifle": { bulletAmount: 1, bulletIntervalMs: 64, spreadDegrees: 1, speed: 50, shotsPerTurn: 2 },
    "shotgun": { bulletAmount: 1, bulletIntervalMs: 0, spreadDegrees: 0, speed: 40, shotsPerTurn: 2 }
};
