const fs = require('fs');

const weapons = [
    'medikit', 'super_medikit', 'skip_go', 'laser_sight', 'low_gravity',
    'fast_walk', 'ultra_scaner', 'blow_torch', 'pneumatic_drill', 'parachute',
    'girder', 'girder_pack', 'jet_pack', 'teleport', 'upg_teleport',
    'upg_jet_pack', 'ag_pack', 'add_time', 'upg_teleport2', 'emg_teleport',
    'invisibility'
];

// 1x1 transparent PNG base64
const emptyPng = Buffer.from('iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=', 'base64');

weapons.forEach(w => {
    fs.writeFileSync(`client/public/weapons/icon_${w}.png`, emptyPng);
    console.log(`Created icon_${w}.png`);
});
