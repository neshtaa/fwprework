import Phaser from 'phaser';

class DestructibleTerrainScene extends Phaser.Scene {
    private canvasTexture!: Phaser.Textures.CanvasTexture;
    private mapImage!: Phaser.GameObjects.Image;
    private worms: Phaser.GameObjects.Arc[] = [];
    private ctx!: CanvasRenderingContext2D;

    constructor() {
        super('DestructibleTerrainScene');
    }

    preload() {
        this.load.image('map', '/1_dmap.png');
        this.load.json('levelsConfig', '/levels_config.json');
    }

    create() {
        const mapKey = 'map';
        const sourceImage = this.textures.get(mapKey).getSourceImage();
        const width = sourceImage.width as number;
        const height = sourceImage.height as number;

        // Create a CanvasTexture for destructible terrain
        this.canvasTexture = this.textures.createCanvas('terrain', width, height)!;
        this.canvasTexture.drawFrame(mapKey);
        this.ctx = this.canvasTexture.getContext();

        // Display the CanvasTexture
        this.mapImage = this.add.image(width / 2, height / 2, 'terrain');

        // Extract spawn coords for assault1
        const levelsConfig = this.cache.json.get('levelsConfig');
        const assault1 = levelsConfig.WORM_ASSAULT_COORDS.assault1;

        const spawnWorms = (teamCoords: number[], color: number) => {
            for (let i = 0; i < teamCoords.length; i += 2) {
                const x = teamCoords[i];
                const y = teamCoords[i + 1];
                // Create a small circle for the worm
                const worm = this.add.circle(x, y, 4, color);
                this.worms.push(worm);
            }
        };

        // Spawn teams
        if (assault1.team1) spawnWorms(assault1.team1, 0xff0000); // Red
        if (assault1.team2) spawnWorms(assault1.team2, 0x00ff00); // Green
        if (assault1.team3) spawnWorms(assault1.team3, 0x0000ff); // Blue

        // Add input listener for destruction
        this.input.on('pointerdown', (pointer: Phaser.Input.Pointer) => {
            const localX = pointer.worldX - (this.mapImage.x - width / 2);
            const localY = pointer.worldY - (this.mapImage.y - height / 2);

            this.eraseCircle(localX, localY, 30);
        });

        // Add instructions text
        this.add.text(10, 10, 'Click to destroy terrain.\nWorms fall where terrain is missing.', {
            fontSize: '16px',
            color: '#ffffff',
            backgroundColor: '#000000'
        });
    }

    private eraseCircle(x: number, y: number, radius: number) {
        this.ctx.save();
        this.ctx.globalCompositeOperation = 'destination-out';
        this.ctx.beginPath();
        this.ctx.arc(x, y, radius, 0, Math.PI * 2);
        this.ctx.fill();
        this.ctx.restore();
        // Update the texture to reflect canvas changes
        this.canvasTexture.refresh();
    }

    private checkSolid(x: number, y: number): boolean {
        // Keep bounds check
        if (x < 0 || x >= this.canvasTexture.width || y < 0 || y >= this.canvasTexture.height) {
            return false; // Out of bounds is empty
        }
        
        // Read the alpha channel of the pixel
        const pixelData = this.ctx.getImageData(Math.floor(x), Math.floor(y), 1, 1).data;
        return pixelData[3] > 0; // If alpha > 0, it's solid
    }

    update(time: number, delta: number) {
        // Apply very simple gravity
        for (const worm of this.worms) {
            // Check the pixel slightly below the worm
            const isSolid = this.checkSolid(worm.x, worm.y + 5);

            if (!isSolid) {
                worm.y += 2; // Fall
            }
        }
    }
}

const config: Phaser.Types.Core.GameConfig = {
    type: Phaser.AUTO,
    width: 1300,
    height: 700,
    parent: 'game-container',
    backgroundColor: '#87CEEB', // Sky blue
    scene: DestructibleTerrainScene,
    physics: {
        default: 'arcade',
        arcade: {
            debug: false
        }
    }
};

new Phaser.Game(config);
