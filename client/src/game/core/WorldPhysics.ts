import Phaser from 'phaser';

export class WorldPhysics {
    private canvasTexture: Phaser.Textures.CanvasTexture;
    private ctx: CanvasRenderingContext2D;
    private width: number;
    private height: number;

    constructor(canvasTexture: Phaser.Textures.CanvasTexture) {
        this.canvasTexture = canvasTexture;
        this.ctx = canvasTexture.getContext();
        this.width = canvasTexture.width;
        this.height = canvasTexture.height;
    }

    public isSolid(x: number, y: number): boolean {
        // Keep bounds check
        if (x < 0 || x >= this.width || y < 0 || y >= this.height) {
            return false; // Out of bounds is empty (or we can make floor solid, but usually out is empty)
        }
        
        // Optimize pixel reading by checking 1x1 area
        const pixelData = this.ctx.getImageData(Math.floor(x), Math.floor(y), 1, 1).data;
        return pixelData[3] > 0; // If alpha > 0, it's solid
    }

    public checkHitLine(startX: number, startY: number, endX: number, endY: number): { hit: boolean, x: number, y: number } {
        const dx = endX - startX;
        const dy = endY - startY;
        const steps = Math.max(Math.abs(dx), Math.abs(dy));
        
        if (steps === 0) {
            return { hit: this.isSolid(startX, startY), x: startX, y: startY };
        }

        const xInc = dx / steps;
        const yInc = dy / steps;

        let curX = startX;
        let curY = startY;

        for (let i = 0; i <= steps; i++) {
            if (this.isSolid(curX, curY)) {
                return { hit: true, x: curX, y: curY };
            }
            curX += xInc;
            curY += yInc;
        }

        return { hit: false, x: endX, y: endY };
    }

    public eraseCircle(x: number, y: number, radius: number) {
        this.ctx.save();
        this.ctx.globalCompositeOperation = 'destination-out';
        this.ctx.beginPath();
        this.ctx.arc(x, y, radius, 0, Math.PI * 2);
        this.ctx.fill();
        this.ctx.restore();
        // Update the texture to reflect canvas changes
        this.canvasTexture.refresh();
    }
}
