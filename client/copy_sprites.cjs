const fs = require('fs');
const path = require('path');

const sourceDir = path.join(__dirname, '../extracted/export/assets/37_FWP_ASSET_OBJ/sprites');
const targetDir = path.join(__dirname, 'public/sprites');

if (!fs.existsSync(targetDir)) {
    fs.mkdirSync(targetDir, { recursive: true });
}

const mappings = {
    'worm_walk': 'DefineSprite_321_obj_fla.worm_walk_normal_97',
    'worm_idle': 'DefineSprite_699_obj_fla.worm_idle_sprite_107',
    'bazooka': 'DefineSprite_3584_bazooka',
    'grenade': 'DefineSprite_3077_grenade',
    'dynamite': 'DefineSprite_3475_dynamite',
    'mine': 'DefineSprite_2989_mine',
    'holy_hand_grenade': 'DefineSprite_3053_holy_hand_grenade',
};

for (const [outName, inName] of Object.entries(mappings)) {
    const srcPath = path.join(sourceDir, inName);
    const dstPath = path.join(targetDir, outName);
    
    if (fs.existsSync(srcPath)) {
        if (!fs.existsSync(dstPath)) {
            fs.mkdirSync(dstPath, { recursive: true });
        }
        
        const files = fs.readdirSync(srcPath);
        for (const file of files) {
            fs.copyFileSync(path.join(srcPath, file), path.join(dstPath, file));
        }
        console.log(`Copied ${outName} (${files.length} frames)`);
    } else {
        console.error(`Source not found: ${srcPath}`);
    }
}
