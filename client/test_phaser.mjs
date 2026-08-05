import Phaser from 'phaser';
import { JSDOM } from 'jsdom';

const dom = new JSDOM();
global.document = dom.window.document;
global.window = dom.window;
global.Image = dom.window.Image;
global.HTMLCanvasElement = dom.window.HTMLCanvasElement;

const game = new Phaser.Game({
    type: Phaser.HEADLESS,
    scene: {
        create: function() {
            try {
                let tex1 = this.textures.createCanvas('terrain', 100, 100);
                console.log('First create:', !!tex1);
                
                // simulate restart
                let tex2 = this.textures.createCanvas('terrain', 100, 100);
                console.log('Second create:', !!tex2);
            } catch (e) {
                console.error('ERROR:', e.message);
            }
            process.exit(0);
        }
    }
});
