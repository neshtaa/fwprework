const fs = require('fs');

const weaponsFile = fs.readFileSync('./src/game/data/weapons.ts', 'utf-8');
const weaponsMatch = weaponsFile.match(/export const WEAPONS: Record<WeaponType, WeaponConfig> = ({[\s\S]+});/);

if (!weaponsMatch) {
    process.exit(1);
}

const keys = [];
const regex = /"([^"]+)": {/g;
let match;
while ((match = regex.exec(weaponsMatch[1])) !== null) {
    keys.push(match[1]);
}

const weaponDir = './public/weapons';
const files = fs.readdirSync(weaponDir);

const preloadLines = [];

for (const key of keys) {
    let searchKey = key;
    if (searchKey.startsWith('unfail_')) searchKey = searchKey.replace('unfail_', '');
    if (searchKey.startsWith('super_')) searchKey = searchKey.replace('super_', '');
    if (searchKey.startsWith('upg_')) searchKey = searchKey.replace('upg_', '');
    if (searchKey === 'pistol') searchKey = 'handgun';
    if (searchKey === 'banana_bomb' || searchKey === 'mega_banana_bomb') searchKey = 'banana';
    if (searchKey.includes('dynamite_bunch')) searchKey = 'dynamite_bunch';

    let iconFile = null;
    if (files.includes(`${searchKey}_proj.png`)) {
        iconFile = `${searchKey}_proj.png`;
    } else if (files.includes(`${searchKey}_held_0.png`)) {
        iconFile = `${searchKey}_held_0.png`;
    } else if (files.includes(`${searchKey}_0.png`)) {
        iconFile = `${searchKey}_0.png`;
    } else if (files.includes(`${searchKey}.png`)) {
        iconFile = `${searchKey}.png`;
    } else {
        const matching = files.find(f => f.startsWith(searchKey + '_'));
        if (matching) iconFile = matching;
    }

    if (!iconFile) {
        // Fallback to bazooka
        iconFile = 'bazooka_proj.png';
    }

    preloadLines.push(`        this.load.image('icon_${key}', '/weapons/${iconFile}');`);
}

fs.writeFileSync('src/game/data/weapon_preloads.ts', `import type Phaser from 'phaser';

export function preloadWeapons(scene: Phaser.Scene) {
${preloadLines.join('\n')}
}
`);
console.log('Done!');
