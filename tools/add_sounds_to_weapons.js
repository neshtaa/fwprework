const fs = require('fs');

const weaponsPath = './client/src/game/data/weapons.ts';
let weaponsContent = fs.readFileSync(weaponsPath, 'utf8');

const soundMapping = {
    "pneumatic_drill": "drill"
};

for (let key in soundMapping) {
    let soundStr = `sound: "${soundMapping[key]}",`;
    const regex = new RegExp(`("${key}":\\s*{[^}]*?)(wptype)`, 'm');
    if (regex.test(weaponsContent)) {
        weaponsContent = weaponsContent.replace(regex, `$1${soundStr}\n        $2`);
    } else {
        console.log("Could not find", key);
    }
}

fs.writeFileSync(weaponsPath, weaponsContent);
console.log("Updated weapons.ts with drill sound mapping.");
