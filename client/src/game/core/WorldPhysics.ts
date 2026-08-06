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

    public reflect(x: number, y: number, vx: number, vy: number): number {
        const px = Math.round(x);
        const py = Math.round(y);
        
        const m: number[][] = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]];
        m[1][1] = this.isSolid(px - 1, py - 1) ? 1 : 0;
        m[1][2] = this.isSolid(px, py - 1) ? 1 : 0;
        m[1][3] = this.isSolid(px + 1, py - 1) ? 1 : 0;
        m[2][1] = this.isSolid(px - 1, py) ? 1 : 0;
        m[2][2] = this.isSolid(px, py) ? 1 : 0;
        m[2][3] = this.isSolid(px + 1, py) ? 1 : 0;
        m[3][1] = this.isSolid(px - 1, py + 1) ? 1 : 0;
        m[3][2] = this.isSolid(px, py + 1) ? 1 : 0;
        m[3][3] = this.isSolid(px + 1, py + 1) ? 1 : 0;

        if (vx < 0 && vy >= 0) {
            if (m[3][1] >= 1 && m[2][3] >= 1 && m[1][1] <= 0 && m[1][2] <= 0) return 2;
            if (m[2][1] >= 1 && m[2][3] >= 1 && m[1][1] <= 0 && m[1][2] <= 0) return 2;
            if (m[2][3] >= 1 && m[2][1] <= 0 && m[1][1] <= 0 && m[1][2] <= 0) return 2;
            if (m[1][2] >= 1 && m[3][2] >= 1 && m[2][3] <= 0 && m[3][3] <= 0) return 1;
            if (m[1][2] >= 1 && m[3][2] <= 0 && m[2][3] <= 0 && m[3][3] <= 0) return 1;
            return 0;
        }
        if (vx >= 0 && vy >= 0) {
            if (m[3][3] >= 1 && m[2][1] >= 1 && m[1][3] <= 0 && m[1][2] <= 0) return 2;
            if (m[2][1] >= 1 && m[2][3] >= 1 && m[1][3] <= 0 && m[1][2] <= 0) return 2;
            if (m[2][1] >= 1 && m[2][3] <= 0 && m[1][3] <= 0 && m[1][2] <= 0) return 2;
            if (m[1][2] >= 1 && m[3][2] >= 1 && m[2][1] <= 0 && m[3][1] <= 0) return 1;
            if (m[1][2] >= 1 && m[3][2] <= 0 && m[2][1] <= 0 && m[3][1] <= 0) return 1;
            return 0;
        }
        if (vx < 0 && vy < 0) {
            if (m[1][1] >= 1 && m[3][2] >= 1 && m[1][3] <= 0 && m[2][3] <= 0) return 1;
            if (m[1][2] >= 1 && m[3][2] >= 1 && m[1][3] <= 0 && m[2][3] <= 0) return 1;
            if (m[3][2] >= 1 && m[1][2] <= 0 && m[1][3] <= 0 && m[2][3] <= 0) return 1;
            if (m[2][1] >= 1 && m[2][3] >= 1 && m[3][1] <= 0 && m[3][2] <= 0) return 2;
            if (m[2][1] >= 1 && m[2][3] <= 0 && m[3][1] <= 0 && m[3][2] <= 0) return 2;
            return 0;
        }
        if (vx >= 0 && vy < 0) {
            if (m[1][3] >= 1 && m[3][2] >= 1 && m[1][1] <= 0 && m[2][1] <= 0) return 1;
            if (m[1][2] >= 1 && m[3][2] >= 1 && m[1][1] <= 0 && m[2][1] <= 0) return 1;
            if (m[3][2] >= 1 && m[1][2] <= 0 && m[1][1] <= 0 && m[2][1] <= 0) return 1;
            if (m[2][3] >= 1 && m[2][1] >= 1 && m[3][3] <= 0 && m[3][2] <= 0) return 2;
            if (m[2][3] >= 1 && m[2][1] <= 0 && m[3][3] <= 0 && m[3][2] <= 0) return 2;
            return 0;
        }
        return 0;
    }
}
