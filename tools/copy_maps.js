const fs = require('fs');
const path = require('path');

const extractedDir = path.join(__dirname, '../extracted/export/assets');
const targetDir = path.join(__dirname, '../client/public/maps');

if (!fs.existsSync(targetDir)) {
    fs.mkdirSync(targetDir, { recursive: true });
}

const dirs = fs.readdirSync(extractedDir);
let count = 0;

dirs.forEach(dir => {
    if (dir.includes('_MAP_')) {
        const parts = dir.split('_MAP_');
        const mapName = parts[1].toLowerCase();
        const imagesDir = path.join(extractedDir, dir, 'images');
        
        if (fs.existsSync(imagesDir)) {
            const images = fs.readdirSync(imagesDir).filter(f => f.endsWith('.png'));
            if (images.length > 0) {
                // Usually 1_dmap.png or 1_fmap.png
                let imgToCopy = images.find(i => i.includes('dmap')) || images.find(i => i.includes('fmap')) || images[0];
                const srcPath = path.join(imagesDir, imgToCopy);
                const destPath = path.join(targetDir, `${mapName}_dmap.png`);
                fs.copyFileSync(srcPath, destPath);
                count++;
            }
        }
    }
});

console.log(`Copied ${count} maps.`);
