import json
import re

def extract():
    with open('../extracted/export/scripts/FWP.as', 'r', encoding='utf-8') as f:
        content = f.read()

    start_idx = content.find('this.WEAPONS_DEF = {')
    if start_idx == -1:
        print("Not found")
        return
    
    start_idx = content.find('{', start_idx)
    brace_count = 0
    in_string = False
    escape = False
    
    for i in range(start_idx, len(content)):
        char = content[i]
        
        if escape:
            escape = False
            continue
            
        if char == '\\':
            escape = True
            continue
            
        if char == '"' or char == "'":
            if not in_string:
                in_string = char
            elif in_string == char:
                in_string = False
            continue
            
        if not in_string:
            if char == '{':
                brace_count += 1
            elif char == '}':
                brace_count -= 1
                if brace_count == 0:
                    json_str = content[start_idx:i+1]
                    
                    # Clean up ActionScript specific stuff (like 'new Array(1,2)')
                    json_str = re.sub(r'new Array\((.*?)\)', r'[\1]', json_str)
                    
                    try:
                        # Try to parse it to validate
                        # But wait, keys might not be quoted, and some might be numeric? 
                        # Actually AS3 JSON-like objects in decompiled code often have quoted keys if it was decompiled that way.
                        # We just dump the string.
                        with open('extracted_weapons.txt', 'w', encoding='utf-8') as out:
                            out.write(json_str)
                        print("Success")
                        return
                    except Exception as e:
                        print("Error saving:", e)
                        return

extract()
