const fs = require('fs');

let fwp = fs.readFileSync('../extracted/export/scripts/FWP.as', 'utf8');

// Find the function start
let startIdx = fwp.indexOf('public function get_object_flags(param1:String) : Object');
let bodyStart = fwp.indexOf('{', startIdx);

// Extract the function body by matching braces
let braceCount = 0;
let bodyEnd = -1;
for (let i = bodyStart; i < fwp.length; i++) {
    if (fwp[i] === '{') braceCount++;
    else if (fwp[i] === '}') {
        braceCount--;
        if (braceCount === 0) {
            bodyEnd = i;
            break;
        }
    }
}

let funcBody = fwp.substring(bodyStart, bodyEnd + 1);

// We need to convert AS3 to JS. 
// "var _loc2_:* = undefined;" -> "var _loc2_ = {};"
funcBody = funcBody.replace(/var _loc2_:.*= undefined;/g, 'var _loc2_ = {};');
// "var _loc3_:* = undefined;"
funcBody = funcBody.replace(/var _loc\d+:.*?=.*?;/g, ''); 
// Some ActionScript might have strong typing or loops, but get_object_flags is mostly if statements.
// Actually, let's just make a JS function:
let jsFunc = `
function get_object_flags(param1) {
    var _loc2_ = {};
    var _this = { FWP: { player: { perks: {} }, chosen_map: "" } };
    // Replace 'this.' with '_this.'
    var execute = function() {
        ${funcBody.substring(1, funcBody.length - 1).replace(/this\./g, '_this.')}
    };
    execute();
    return _loc2_;
}
module.exports = get_object_flags;
`;

fs.writeFileSync('extracted_func.cjs', jsFunc);

// Now load the weapons def and map it
const weapons = JSON.parse(fs.readFileSync('src/game/data/extracted_weapons.json', 'utf8'));
const getFlags = require('./extracted_func.cjs');

const combined = {};
for (const key in weapons) {
    try {
        const flags = getFlags(key);
        combined[key] = {
            ...weapons[key],
            ...flags
        };
    } catch(e) {
        console.error('Error on key', key, e.message);
    }
}

fs.writeFileSync('src/game/data/weapons_full.json', JSON.stringify(combined, null, 4));
console.log('Successfully merged weapons and flags!');
