const fs = require('fs');
const path = require('path');

const configPath = path.join(__dirname, '../levels_config.json');
const mapsDir = path.join(__dirname, '../client/public/maps');

const config = JSON.parse(fs.readFileSync(configPath, 'utf8'));
const mapFiles = fs.readdirSync(mapsDir).filter(f => f.endsWith('_dmap.png'));

let missing = 0;
mapFiles.forEach(file => {
    const mapName = file.replace('_dmap.png', '');
    if (!config[mapName]) {
        console.log(`Missing in config: ${mapName}`);
        missing++;
        config[mapName] = {
            dmap: `/maps/${mapName}_dmap.png`
        };
    }
});

fs.writeFileSync(configPath, JSON.stringify(config, null, 2));
console.log(`Added ${missing} missing maps to config.`);
