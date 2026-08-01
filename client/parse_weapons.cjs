const fs = require('fs');

try {
    let content = fs.readFileSync('extracted_weapons.txt', 'utf8');
    content = content.replace(/_loc1_/g, '0');
    // Using eval to parse the JS/AS3 object string
    const weaponsDef = eval('(' + content + ')');
    
    fs.writeFileSync('src/game/data/extracted_weapons.json', JSON.stringify(weaponsDef, null, 4));
    
    const keys = Object.keys(weaponsDef);
    console.log(`Total weapons found: ${keys.length}`);
    
    const types = {};
    keys.forEach(k => {
        const type = weaponsDef[k].wptype || 'unknown';
        types[type] = (types[type] || 0) + 1;
    });
    
    console.log('Weapon types distribution:', types);
} catch (e) {
    console.error('Failed to parse:', e);
}
