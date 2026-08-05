const fs = require('fs');
const path = require('path');

const rootConfigPath = path.join(__dirname, 'levels_config.json');
const publicConfigPath = path.join(__dirname, 'client', 'public', 'levels_config.json');

const rootConfig = JSON.parse(fs.readFileSync(rootConfigPath, 'utf8'));
const publicConfig = JSON.parse(fs.readFileSync(publicConfigPath, 'utf8'));

publicConfig.WORM_ASSAULT_COORDS = rootConfig.WORM_ASSAULT_COORDS || {};
publicConfig.WORM_BOSS_COORDS = rootConfig.WORM_BOSS_COORDS || {};

fs.writeFileSync(publicConfigPath, JSON.stringify(publicConfig, null, 2));
console.log('Successfully merged root levels_config.json into client/public/levels_config.json');
