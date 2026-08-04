import Phaser from 'phaser';

export class WorldPhysics {
    private canvasTexture: Phaser.Textures.CanvasTexture;
    private ctx: CanvasRenderingContext2D;
    public readonly width: number;
    public readonly height: number;
    private imageData!: ImageData;

    constructor(canvasTexture: Phaser.Textures.CanvasTexture) {
        this.canvasTexture = canvasTexture;
        this.ctx = canvasTexture.getContext();
        this.width = canvasTexture.width;
        this.height = canvasTexture.height;
        this.updateCache();
    }

    private updateCache() {
        this.imageData = this.ctx.getImageData(0, 0, this.width, this.height);
    }

    public isSolid(x: number, y: number): boolean {
        const floorX = Math.floor(x);
        const floorY = Math.floor(y);

        if (floorX < 0 || floorX >= this.width || floorY < 0 || floorY >= this.height) {
            return false;
        }
        
        const index = (floorY * this.width + floorX) * 4 + 3; // Alpha channel
        return this.imageData.data[index] > 0;
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
        
        // Update cached pixel data directly without getImageData stall
        const startX = Math.max(0, Math.floor(x - radius));
        const endX = Math.min(this.width - 1, Math.ceil(x + radius));
        const startY = Math.max(0, Math.floor(y - radius));
        const endY = Math.min(this.height - 1, Math.ceil(y + radius));
        const radiusSq = radius * radius;

        for (let py = startY; py <= endY; py++) {
            for (let px = startX; px <= endX; px++) {
                const dx = px - x;
                const dy = py - y;
                if (dx * dx + dy * dy <= radiusSq) {
                    const index = (py * this.width + px) * 4 + 3; // Alpha channel
                    this.imageData.data[index] = 0;
                }
            }
        }
    }
}
