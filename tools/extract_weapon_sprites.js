const fs = require('fs');
const path = require('path');

const spritesDir = path.join(__dirname, '../extracted/export/assets/37_FWP_ASSET_OBJ/sprites');
const targetDir = path.join(__dirname, '../client/public/weapons');

if (!fs.existsSync(targetDir)) {
    fs.mkdirSync(targetDir, { recursive: true });
}

const dirs = fs.readdirSync(spritesDir);
let count = 0;

// Regular expressions to match new_weapon (held) and projectile sprites
const heldRegex = /new_weapon_([a-zA-Z0-9_]+)_\d+/;
// Many projectiles are named DefineSprite_XXXX_<weapon_name>
const projRegex = /^DefineSprite_\d+_([a-zA-Z0-9_]+)$/;

dirs.forEach(dir => {
    const fullPath = path.join(spritesDir, dir);
    if (!fs.statSync(fullPath).isDirectory()) return;

    let weaponName = null;
    let suffix = '';

    const heldMatch = dir.match(heldRegex);
    if (heldMatch) {
        weaponName = heldMatch[1];
        suffix = '_held';
    } else {
        const projMatch = dir.match(projRegex);
        if (projMatch) {
            weaponName = projMatch[1];
            suffix = '_proj';
        }
    }

    if (weaponName) {
        const files = fs.readdirSync(fullPath).filter(f => f.endsWith('.png'));
        files.forEach((file, index) => {
            // Some might have multiple frames
            const destName = `${weaponName}${suffix}${files.length > 1 ? `_${index}` : ''}.png`;
            fs.copyFileSync(path.join(fullPath, file), path.join(targetDir, destName));
            count++;
        });
    }
});

console.log(`Copied ${count} weapon sprites.`);
