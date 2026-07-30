import struct
import sys
import os
import hashlib

def extract_swf(exe_path, output_path):
    if not os.path.exists(exe_path):
        print(f"Error: {exe_path} not found.")
        sys.exit(1)

    with open(exe_path, 'rb') as f:
        data = f.read()
        
    if len(data) < 8:
        print("Error: File too small.")
        sys.exit(1)
        
    footer = data[-8:]
    stub_size, magic = struct.unpack('<II', footer)
    
    # 0xFA123456 in little endian is \x56\x34\x12\xFA
    if magic != 0xFA123456:
        print(f"Warning: Magic signature 0xFA123456 not found at end of file. Found: 0x{magic:08X}")
        # fallback to known sizes from forensics
        stub_size = 9350816
        
    print(f"Projector stub size (offset): {stub_size}")
    
    # Optional footer size is 8 bytes.
    # So SWF size = total_size - stub_size - 8
    swf_size = len(data) - stub_size - 8
    
    if stub_size + swf_size + 8 != len(data):
        print("Warning: Size mismatch.")
        
    swf_data = data[stub_size:stub_size+swf_size]
    
    if len(swf_data) < 8:
        print("Error: Extracted SWF too small to have a header.")
        sys.exit(1)
        
    sig = swf_data[:3].decode('ascii', errors='ignore')
    version = swf_data[3]
    header_size = struct.unpack('<I', swf_data[4:8])[0]
    
    print(f"SWF Signature: {sig}")
    print(f"SWF Version: {version}")
    print(f"SWF Size from header: {header_size}")
    print(f"Extracted SWF actual size: {len(swf_data)}")
    
    if sig not in ('FWS', 'CWS', 'ZWS'):
        print("Warning: SWF Signature is not standard (FWS/CWS/ZWS).")
        
    if header_size != len(swf_data):
        print(f"Warning: Header size ({header_size}) does not match actual size ({len(swf_data)}).")
        
    with open(output_path, 'wb') as out_f:
        out_f.write(swf_data)
        
    print(f"Successfully extracted SWF to {output_path}")

    # Calculate hash of extracted file
    sha256 = hashlib.sha256(swf_data).hexdigest()
    print(f"SWF SHA256: {sha256}")

if __name__ == '__main__':
    extract_swf('original/fwp(1).exe', 'extracted/game.swf')
