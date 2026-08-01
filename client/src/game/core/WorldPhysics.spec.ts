import { describe, it, expect, vi } from 'vitest';
import { WorldPhysics } from './WorldPhysics';

vi.mock('phaser', () => ({
    default: {
        Textures: {
            CanvasTexture: class {}
        }
    }
}));

// Mock Phaser.Textures.CanvasTexture
class MockCanvasTexture {
    public width: number;
    public height: number;
    private ctx: unknown;
    
    constructor(width: number, height: number, mockData: Uint8ClampedArray) {
        this.width = width;
        this.height = height;
        this.ctx = {
            getImageData: () => ({
                data: mockData
            }),
            save: () => {},
            restore: () => {},
            beginPath: () => {},
            arc: () => {},
            fill: () => {}
        };
    }
    
    getContext() {
        return this.ctx;
    }
    
    refresh() {}
}

describe('WorldPhysics', () => {
    it('isSolid returns true when alpha > 0', () => {
        // 2x2 texture, all transparent except bottom-right
        const width = 2;
        const height = 2;
        const data = new Uint8ClampedArray(16);
        // data[15] is alpha of (1,1)
        data[15] = 255;
        
        const mockTexture = new MockCanvasTexture(width, height, data);
        // @ts-ignore
        const wp = new WorldPhysics(mockTexture);
        
        expect(wp.isSolid(0, 0)).toBe(false);
        expect(wp.isSolid(1, 0)).toBe(false);
        expect(wp.isSolid(0, 1)).toBe(false);
        expect(wp.isSolid(1, 1)).toBe(true); // Should be solid
    });
    
    it('isSolid returns false for out of bounds', () => {
        const width = 2;
        const height = 2;
        const data = new Uint8ClampedArray(16);
        const mockTexture = new MockCanvasTexture(width, height, data);
        // @ts-ignore
        const wp = new WorldPhysics(mockTexture);
        
        expect(wp.isSolid(-1, 0)).toBe(false);
        expect(wp.isSolid(0, -1)).toBe(false);
        expect(wp.isSolid(2, 0)).toBe(false);
        expect(wp.isSolid(0, 2)).toBe(false);
    });

    it('checkHitLine detects collision', () => {
        // 5x5 area, center pixel is solid
        const width = 5;
        const height = 5;
        const data = new Uint8ClampedArray(5 * 5 * 4);
        data[(2 * 5 + 2) * 4 + 3] = 255; // x=2, y=2 is solid
        
        const mockTexture = new MockCanvasTexture(width, height, data);
        // @ts-ignore
        const wp = new WorldPhysics(mockTexture);
        
        // Raycast from (0,0) to (4,4)
        const hit = wp.checkHitLine(0, 0, 4, 4);
        expect(hit.hit).toBe(true);
        expect(Math.floor(hit.x)).toBe(2);
        expect(Math.floor(hit.y)).toBe(2);
    });

    it('checkHitLine returns false if no collision', () => {
        const width = 5;
        const height = 5;
        const data = new Uint8ClampedArray(5 * 5 * 4);
        // Empty texture
        
        const mockTexture = new MockCanvasTexture(width, height, data);
        // @ts-ignore
        const wp = new WorldPhysics(mockTexture);
        
        const hit = wp.checkHitLine(0, 0, 4, 4);
        expect(hit.hit).toBe(false);
        expect(hit.x).toBe(4);
        expect(hit.y).toBe(4);
    });
});
