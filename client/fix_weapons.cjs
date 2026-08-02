const fs = require('fs');

const weapons = JSON.parse(fs.readFileSync('src/game/data/extracted_weapons.json', 'utf8'));
const getFlags = require('../docs/extracted/extracted_func.cjs');

const combined = {};
for (const key in weapons) {
    try {
        const flags = getFlags(key);
        combined[key] = {
            ...weapons[key],
            ...flags
        };
    } catch(e) {
        console.error('Error on key', key, e.message);
    }
}

fs.writeFileSync('src/game/data/weapons_full.json', JSON.stringify(combined, null, 4));
console.log('Successfully merged weapons and flags into weapons_full.json!');

// Now generate TS
let tsContent = `// Auto-generated weapons configuration from extracted game data
export interface WeaponConfig {
    id: number;
    name: string;
    damage: number;
    explosionRadius: number; // calculated from DIAMETER / 2
    timerMs?: number;
    gravityMultiplier: number;
    affectedByWind: boolean;
    stopOnImpact: boolean;
    explodeOnImpact: boolean;
    limit: number;
    wptype: string;
    delay: number;
    gold: number;
    diam: number;
    shown: boolean;
}

export type WeaponType = string;

export const WEAPONS: Record<WeaponType, WeaponConfig> = {
`;

for (const key in combined) {
    const w = combined[key];
    const explosionRadius = (w.DIAMETER || 40) / 2;
    
    // Some types logic from FWP flags
    const explodeOnImpact = w.INSTANTEXPLODE || false;
    const stopOnImpact = w.RESTINGEXPLODE || false; // Or timer-based
    const timerMs = w.TIMINGEXPLODE ? (w.TIMEOUT || 3000) : undefined;
    const gravityMultiplier = w.GRAVITY ? (w.GRAVITYMULTIPLY || 1.0) : 0;
    const affectedByWind = w.WIND || false;
    
    tsContent += `    "${key}": {
        id: ${w.id},
        name: ${JSON.stringify(w.name || key)},
        damage: ${w.DAMAGE || w.damage || 0},
        explosionRadius: ${explosionRadius},
        ${timerMs ? `timerMs: ${timerMs},` : ''}
        gravityMultiplier: ${gravityMultiplier},
        affectedByWind: ${affectedByWind},
        stopOnImpact: ${stopOnImpact || (timerMs !== undefined && !explodeOnImpact)},
        explodeOnImpact: ${explodeOnImpact},
        limit: ${w.limit || 0},
        wptype: ${JSON.stringify(w.wptype || "p")},
        delay: ${w.delay || 0},
        gold: ${w.gold || 0},
        diam: ${w.diam || 0},
        shown: ${w.shown !== false}
    },
`;
}

tsContent += `};
`;

fs.writeFileSync('src/game/data/weapons.ts', tsContent);
console.log('Generated src/game/data/weapons.ts');
