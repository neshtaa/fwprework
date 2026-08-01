const fs = require('fs');
const path = require('path');

const sourceDir = path.join(__dirname, '../extracted/export/assets');
const targetDir = path.join(__dirname, 'public/maps');

if (!fs.existsSync(targetDir)) {
    fs.mkdirSync(targetDir, { recursive: true });
}

const dirs = fs.readdirSync(sourceDir);
let mapCount = 0;
const levelsConfig = {};

for (const dir of dirs) {
    if (dir.includes('ASSET_MAP')) {
        const dmapPath = path.join(sourceDir, dir, 'images', '1_dmap.png');
        const fmapPath = path.join(sourceDir, dir, 'images', '1_fmap.png');
        
        const mapName = dir.replace(/^\d+_FWP_ASSET_MAP_/, '').toLowerCase();
        
        if (fs.existsSync(dmapPath)) {
            fs.copyFileSync(dmapPath, path.join(targetDir, `${mapName}_dmap.png`));
            mapCount++;
            levelsConfig[mapName] = {
                dmap: `/maps/${mapName}_dmap.png`
            };
            if (fs.existsSync(fmapPath)) {
                fs.copyFileSync(fmapPath, path.join(targetDir, `${mapName}_fmap.png`));
                levelsConfig[mapName].fmap = `/maps/${mapName}_fmap.png`;
            }
        }
    }
}

fs.writeFileSync(path.join(__dirname, 'public/levels_config.json'), JSON.stringify(levelsConfig, null, 2));

console.log(`Copied ${mapCount} maps and generated levels_config.json`);
