const fs = require('fs');

const weapons = JSON.parse(fs.readFileSync('src/game/data/weapons_full.json', 'utf8'));

let tsContent = `// Auto-generated weapons configuration from extracted game data
export interface WeaponConfig {
    id: number;
    name: string;
    damage: number;
    explosionRadius: number;
    timerMs?: number;
    gravityMultiplier: number;
    windMultiplier: number;
    affectedByWind: boolean;
    explodeOnImpact: boolean;
    timingExplode: boolean;
    instantExplode: boolean;
    restingExplode: boolean;
    bounceX: number;
    bounceY: number;
    reflect: boolean;
    limit: number;
    wptype: string;
    delay: number;
    gold: number;
    diam: number;
    shown: boolean;
    fireOnExplode: boolean;
    fireAmount: number;
    poisonOnExplode: boolean;
    poisonAmount: number;
    breaking: boolean;
    breakingType: string;
    breakingAmount: number;
    multiplexplosions: number;
    vrotating: boolean;
    exhaust: boolean;
    sound?: string;
}

export type WeaponType = string;

export const WEAPONS: Record<WeaponType, WeaponConfig> = {
`;

// Extract existing sound mappings
const soundMap = {};
if (fs.existsSync('src/game/data/weapons.ts')) {
    const lines = fs.readFileSync('src/game/data/weapons.ts', 'utf8').split('\n');
    let currentWeapon = null;
    for (const line of lines) {
        const wMatch = line.match(/^\s*"([^"]+)":\s*\{/);
        if (wMatch) {
            currentWeapon = wMatch[1];
        }
        const sMatch = line.match(/^\s*sound:\s*"([^"]+)"/);
        if (sMatch && currentWeapon) {
            soundMap[currentWeapon] = sMatch[1];
        }
    }
}

for (const key in weapons) {
    const w = weapons[key];
    const explosionRadius = (w.DIAMETER || 40) / 2;
    
    const explodeOnImpact = w.INSTANTEXPLODE || false;
    const stopOnImpact = w.RESTINGEXPLODE || false;
    const timingExplode = w.TIMINGEXPLODE || false;
    const instantExplode = w.INSTANTEXPLODE || false;
    const restingExplode = w.RESTINGEXPLODE || false;
    
    let timerMs = undefined;
    if (timingExplode) {
        timerMs = (w.TIMEOUT || 3) * 1000;
    } // Remove the else if (w.TIMEOUT > 0) to avoid false timers!
    
    const gravityMultiplier = w.GRAVITY ? (w.GRAVITYMULTIPLY || 1.0) : 0;
    const windMultiplier = w.WIND ? (w.WINDMULTIPLY || 1.0) : 0;
    const affectedByWind = w.WIND || false;
    
    const bounceX = w.BOUNCE_X !== undefined ? w.BOUNCE_X : 0.7;
    const bounceY = w.BOUNCE_Y !== undefined ? w.BOUNCE_Y : 0.2;
    const reflect = w.REFLECT || false;
    
    const shown = w.shown !== false && !key.startsWith('rez');
    
    tsContent += `    "${key}": {
        id: ${w.id},
        name: ${JSON.stringify(w.name || key)},
        damage: ${w.DAMAGE || w.damage || 0},
        explosionRadius: ${explosionRadius},
        ${timerMs ? `timerMs: ${timerMs},` : ''}
        gravityMultiplier: ${gravityMultiplier},
        windMultiplier: ${windMultiplier},
        affectedByWind: ${affectedByWind},
        explodeOnImpact: ${explodeOnImpact},
        timingExplode: ${timingExplode},
        instantExplode: ${instantExplode},
        restingExplode: ${restingExplode},
        bounceX: ${bounceX},
        bounceY: ${bounceY},
        reflect: ${reflect},
        limit: ${w.limit || 0},
        wptype: ${JSON.stringify(w.wptype || "p")},
        delay: ${w.delay || 0},
        gold: ${w.gold || 0},
        diam: ${w.diam || 0},
        shown: ${shown},
        fireOnExplode: ${w.FIREONEXPLODE || false},
        fireAmount: ${w.FIREAMOUNT || 0},
        poisonOnExplode: ${w.POISONONEXPLODE || w.POISONONEXPLODERAD || false},
        poisonAmount: ${w.POISONAMOUNT || 0},
        breaking: ${w.BREAKING || false},
        breakingType: ${JSON.stringify(w.BREAKINGTYPE || "")},
        breakingAmount: ${w.BREAKINGAMOUNT || 0},
        multiplexplosions: ${w.MULTIPLEXPLOSIONS || 0},
        vrotating: ${w.VROTATING || false},
        exhaust: ${w.EXHAUST || false}${soundMap[key] ? `,\n        sound: "${soundMap[key]}"` : ''}
    },
`;
}

tsContent += `};
`;

fs.writeFileSync('src/game/data/weapons.ts', tsContent);
console.log('Generated src/game/data/weapons.ts');
