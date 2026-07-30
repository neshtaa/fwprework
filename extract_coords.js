const fs = require('fs');

const worldPath = './extracted/export/scripts/classes/world.as';
const content = fs.readFileSync(worldPath, 'utf8');

const coords = {};

// Regex to find all initialization functions like:
// this.WORM_ASSAULT_COORDS = { ... };
const regex = /this\.([A-Z_]+_COORDS)\s*=\s*\{([\s\S]*?)\n\s*\};/g;

let match;
while ((match = regex.exec(content)) !== null) {
    const objectName = match[1];
    let block = match[2];

    // Clean up the block to make it valid JSON-like
    // Replace "team1":new Array(1,2,3) with "team1":[1,2,3]
    block = block.replace(/new Array\((.*?)\)/g, '[$1]');
    
    // Sometimes there are comments or weird trailing commas, but AS3 object literal syntax here is clean.
    // Wrap it in curly braces
    const jsonString = '{' + block + '}';
    
    try {
        // Evaluate the string as a JS object
        // Use Function to safely evaluate object literal
        const evalFunc = new Function('return ' + jsonString);
        const parsed = evalFunc();
        coords[objectName] = parsed;
    } catch (e) {
        console.error("Error parsing block for " + objectName, e.message);
    }
}

fs.writeFileSync('levels_config.json', JSON.stringify(coords, null, 2));
console.log('Successfully extracted coordinates to levels_config.json');
