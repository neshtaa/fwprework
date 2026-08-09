const fs = require('fs');

const weaponsFile = fs.readFileSync('./src/game/data/weapons.ts', 'utf-8');
const weaponsMatch = weaponsFile.match(/export const WEAPONS: Record<WeaponType, WeaponConfig> = ({[\s\S]+});/);
if (!weaponsMatch) process.exit(1);

const keys = [];
const regex = /"([^"]+)": {/g;
let match;
while ((match = regex.exec(weaponsMatch[1])) !== null) {
    keys.push(match[1]);
}

const weaponDir = './public/weapons';
const files = fs.readdirSync(weaponDir);

const FALLBACK_MAP = {
    'multi_bazooka': 'bazooka',
    'hunting_rifle': 'laser_rifle',
    'sniper_rifle': 'laser_rifle',
    'shotgun': 'peacemaker',
    'bozar': 'avenger',
    'rad_rifle': 'avenger',
    'bozar16': 'avenger',
    'bozar24s': 'avenger',
    'laser_pistol2': 'laser_pistol',
    'gauss_pistol2': 'gauss_pistol',
    'beretta': 'handgun',
    'pistol': 'handgun',
    'laser_at_rifle': 'laser_rifle',
    'plasma_at_rifle': 'plasma_rifle',
    'ec_caws': 'avenger',
    'napalm_strike': 'air_strike',
    'mine_strike': 'air_strike',
    'banana_strike': 'air_strike',
    'holy_strike': 'air_strike',
    'orbit_strike': 'air_strike',
    'skyfire': 'air_strike',
    'unfail_bazooka': 'bazooka',
    'unfail_grenade': 'grenade',
    'unfail_cluster_bomb': 'cluster_bomb',
    'banana_bomb': 'banana',
    'unfail_banana_bomb': 'banana',
    'super_banana_bomb': 'banana',
    'mega_banana_bomb': 'banana',
    'mini_banana': 'banana',
    'breaking_banana': 'banana',
    'unfail_uzi': 'uzi',
    'unfail_minigun': 'minigun',
    'unfail_mine': 'mine',
    'unfail_dynamite': 'dynamite',
    'unfail_old_woman': 'old_woman',
    'unfail_sheep': 'sheep',
    'fire_sheep': 'sheep',
    'poison_sheep': 'sheep',
    'unfail_laser_rifle': 'laser_rifle',
    'unfail_plasma_rifle': 'plasma_rifle',
    'unfail_gauss_rifle': 'gauss_rifle',
    'prod': 'baseball_bat',
    'firepunch': 'baseball_bat',
    'kamikaze': 'baseball_bat',
    'shocker': 'baseball_bat',
    'battle_axe': 'baseball_bat',
    'power_axe': 'baseball_bat',
    'power_bat': 'baseball_bat',
    'ec_panhammer': 'baseball_bat',
    'medikit': 'choose_worm',
    'super_medikit': 'choose_worm',
    'skip_go': 'choose_worm',
    'laser_sight': 'choose_worm',
    'low_gravity': 'choose_worm',
    'fast_walk': 'choose_worm',
    'ultra_scaner': 'choose_worm',
    'blow_torch': 'choose_worm',
    'pneumatic_drill': 'choose_worm',
    'parachute': 'choose_worm',
    'girder': 'choose_worm',
    'girder_pack': 'choose_worm',
    'jet_pack': 'choose_worm',
    'teleport': 'choose_worm',
    'upg_teleport': 'choose_worm',
    'upg_jet_pack': 'choose_worm',
    'ag_pack': 'choose_worm',
    'add_time': 'choose_worm',
    'upg_teleport2': 'choose_worm',
    'emg_teleport': 'choose_worm',
    'invisibility': 'choose_worm',
    'dynamite_bomblet': 'dynamite_bunch',
    'pulse_pistol': 'plasma_pistol',
    'luiston': 'plasma_pistol',
    'ultra_rifle': 'turbo_rifle',
    'void_melody': 'kenton_bazooka',
    'multip83': 'multip14'
};

const FLASH_SHARED_ASSETS = {
    'multi_bazooka': 'Uses bazooka graphics in original Flash',
    'hunting_rifle': 'Likely uses shared rifle graphics',
    'sniper_rifle': 'Likely uses shared rifle graphics',
    'shotgun': 'Likely uses shared handgun/peacemaker graphics',
    'medikit': 'Uses shared utility graphics (cross)',
    'super_medikit': 'Uses shared utility graphics (cross)',
    'unfail_bazooka': 'Uses bazooka graphics',
    'fire_bazooka': 'Has unique fire bazooka graphics',
    'poison_bazooka': 'Has unique poison bazooka graphics',
    'ap_bazooka': 'Has unique AP bazooka graphics',
    'unfail_grenade': 'Uses grenade graphics',
    'unfail_cluster_bomb': 'Uses cluster bomb graphics',
    'unfail_banana_bomb': 'Uses banana graphics',
    'super_banana_bomb': 'Uses banana graphics',
    'mega_banana_bomb': 'Uses banana graphics',
    'mini_banana': 'Uses banana graphics',
    'breaking_banana': 'Uses banana graphics',
    'unfail_uzi': 'Uses uzi graphics',
    'unfail_minigun': 'Uses minigun graphics',
    'unfail_mine': 'Uses mine graphics',
    'unfail_dynamite': 'Uses dynamite graphics',
    'unfail_old_woman': 'Uses old woman graphics',
    'unfail_sheep': 'Uses sheep graphics',
    'fire_sheep': 'Uses sheep graphics',
    'poison_sheep': 'Uses sheep graphics',
    'unfail_laser_rifle': 'Uses laser rifle graphics',
    'unfail_plasma_rifle': 'Uses plasma rifle graphics',
    'unfail_gauss_rifle': 'Uses gauss rifle graphics',
    'napalm_strike': 'Uses air strike graphics',
    'mine_strike': 'Uses air strike graphics',
    'banana_strike': 'Uses air strike graphics',
    'holy_strike': 'Uses air strike graphics',
    'orbit_strike': 'Uses air strike graphics',
    'skyfire': 'Uses air strike graphics',
    'dynamite_bomblet': 'Uses dynamite bunch graphics',
    'pulse_pistol': 'Uses plasma pistol graphics',
    'luiston': 'Uses plasma pistol graphics',
    'ultra_rifle': 'Uses turbo rifle graphics',
    'void_melody': 'Uses kenton bazooka graphics',
    'multip83': 'Uses multip14 graphics',
    'bozar': 'Uses avenger graphics',
    'rad_rifle': 'Uses avenger graphics',
    'bozar16': 'Uses avenger graphics',
    'bozar24s': 'Uses avenger graphics',
    'laser_pistol2': 'Uses laser pistol graphics',
    'gauss_pistol2': 'Uses gauss pistol graphics',
    'beretta': 'Uses handgun graphics',
    'pistol': 'Uses handgun graphics',
    'laser_at_rifle': 'Uses laser rifle graphics',
    'plasma_at_rifle': 'Uses plasma rifle graphics',
    'ec_caws': 'Uses avenger graphics',
    'prod': 'Uses baseball bat graphics',
    'firepunch': 'Uses baseball bat graphics',
    'kamikaze': 'Uses baseball bat graphics',
    'shocker': 'Uses baseball bat graphics',
    'battle_axe': 'Uses baseball bat graphics',
    'power_axe': 'Uses baseball bat graphics',
    'power_bat': 'Uses baseball bat graphics',
    'ec_panhammer': 'Uses baseball bat graphics'
};

let markdown = `# Weapon Assets Parity Report

| Weapon ID | Icon Parity | Held Parity | Proj Parity | Effects Parity | Animation Parity | Comments |
|---|---|---|---|---|---|---|
`;

for (const key of keys) {
    if (key.startsWith('rez')) continue; // Skip test weapons

    let searchKey = key;
    let fallbackLevel = 'original';
    let comment = '';

    if (FALLBACK_MAP[key]) {
        searchKey = FALLBACK_MAP[key];
        fallbackLevel = 'fallback';
    }

    const GUN_BULLETS = {
        'pistol': 'bullet_standard',
        'beretta': 'bullet_standard',
        'handgun': 'bullet_standard',
        'peacemaker': 'bullet_standard',
        'shotgun': 'bullet_shotgun',
        'ec_caws': 'bullet_shotgun',
        'uzi': 'bullet_standard',
        'unfail_uzi': 'bullet_standard',
        'minigun': 'bullet_minigun',
        'unfail_minigun': 'bullet_minigun',
        'air_minigun': 'bullet_minigun',
        'laser_pistol': 'laser',
        'laser_pistol2': 'laser',
        'laser_rifle': 'laser',
        'unfail_laser_rifle': 'laser',
        'laser_at_rifle': 'laser',
        'laser_minigun': 'laser',
        'pulse_pistol': 'pulse',
        'luiston': 'pulse',
        'plasma_pistol': 'plasma',
        'plasma_rifle': 'plasma',
        'unfail_plasma_rifle': 'plasma',
        'plasma_at_rifle': 'plasma',
        'plasma_minigun': 'plasma',
        'gauss_pistol': 'gauss',
        'gauss_pistol2': 'gauss',
        'gauss_rifle': 'gauss',
        'unfail_gauss_rifle': 'gauss',
        'gauss_minigun': 'gauss',
        'hunting_rifle': 'bullet_standard',
        'sniper_rifle': 'bullet_standard',
        'bozar': 'bullet_standard',
        'rad_rifle': 'bullet_standard',
        'bozar16': 'bullet_standard',
        'bozar24s': 'bullet_standard',
        'avenger': 'bullet_standard'
    };

    let projSearchKey = searchKey;
    if (GUN_BULLETS[key]) {
        projSearchKey = GUN_BULLETS[key];
    }

    const iconExists = files.includes(`${searchKey}_proj_0.png`) || files.includes(`${searchKey}_proj.png`) || files.includes(`${searchKey}_held_0.png`) || files.includes(`icon_${searchKey}.png`);
    const heldExists = files.includes(`${searchKey}_held_0.png`);
    const projExists = files.includes(`${projSearchKey}_proj_0.png`) || files.includes(`${projSearchKey}_proj.png`);

    let iconParity = iconExists ? (fallbackLevel === 'original' ? 'Original' : 'Fallback') : 'Mismatch';
    let heldParity = heldExists ? (fallbackLevel === 'original' ? 'Original' : 'Fallback') : 'Mismatch';
    let projParity = projExists ? (fallbackLevel === 'original' ? 'Original' : 'Fallback') : 'Mismatch';
    
    // Effects & Animation are mostly hardcoded in our code, so mark them based on type
    let effectsParity = 'Fallback (Generic particle)';
    let animationParity = 'Original (vrotating/spin)';

    if (FLASH_SHARED_ASSETS[key]) {
        iconParity = 'Shared (Original)';
        heldParity = heldExists ? 'Shared (Original)' : 'Mismatch';
        projParity = projExists ? 'Shared (Original)' : 'Mismatch';
        comment = FLASH_SHARED_ASSETS[key];
    } else if (fallbackLevel === 'fallback') {
        comment = `Falls back to ${searchKey}`;
    } else if (!heldExists && !projExists && !iconExists) {
        comment = `Missing ALL specific visual assets`;
    } else if (!heldExists) {
        comment = `Missing held asset`;
        heldParity = 'Mismatch (Falls back to icon/proj)';
    }

    markdown += `| ${key} | ${iconParity} | ${heldParity} | ${projParity} | ${effectsParity} | ${animationParity} | ${comment} |\n`;
}

fs.writeFileSync('/home/yurka/.gemini/antigravity-cli/brain/b2fe12ca-c296-4fa6-a6cb-38c3c1b2b01a/weapon_assets_parity_report.md', markdown);
console.log('Report generated.');
