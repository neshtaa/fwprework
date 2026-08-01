import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';
import { Worm } from '../entities/Worm';
import { Projectile } from '../entities/Projectile';
import { WEAPONS } from '../data/weapons';
import type { WeaponType } from '../entities/Projectile';

function getRequiredElement(id: string): HTMLElement {
    const el = document.getElementById(id);
    if (!el) {
        throw new Error(`Required DOM element not found: ${id}`);
    }
    return el;
}

export class DestructibleTerrainScene extends Phaser.Scene {
    private canvasTexture!: Phaser.Textures.CanvasTexture;
    private mapImage!: Phaser.GameObjects.Image;
    private worldPhysics!: WorldPhysics;
    private worms: Worm[] = [];
    private projectiles: Projectile[] = [];
    private activeWormIndex: number = 0;

    // Keys
    private cursors!: Phaser.Types.Input.Keyboard.CursorKeys;
    private spaceKey!: Phaser.Input.Keyboard.Key;

    // Game state
    private turnTimeLeft: number = 60;
    private turnTimerEvent!: Phaser.Time.TimerEvent;
    private waitingForTurnEnd: boolean = false;
    private isGameOver: boolean = false;

    // Aiming
    private isAiming: boolean = false;
    private aimPower: number = 0;
    private aimCrosshair!: Phaser.GameObjects.Image;

    private trajectoryGraphics!: Phaser.GameObjects.Graphics;
    private currentWind: number = 0;


    constructor() {
        super('DestructibleTerrainScene');
    }

    preload() {
        const currentMapPath = this.registry.get('currentMap') || '/1_dmap.png';
        this.load.image('map', currentMapPath);
        
        for (let i = 0; i < 60; i++) this.load.image(`worm_idle_${i}`, `/sprites/worm_idle/${i + 1}.png`);
        for (let i = 0; i < 9; i++) this.load.image(`worm_walk_${i}`, `/sprites/worm_walk/${i + 1}.png`);
        this.load.image('bazooka_0', '/sprites/bazooka/1.png');
        this.load.image('grenade_0', '/sprites/grenade/1.png');
        this.load.image('dynamite_0', '/sprites/dynamite/1.png');
        this.load.image('mine_0', '/sprites/mine/1.png');
        this.load.image('holy_hand_grenade_0', '/sprites/holy_hand_grenade/1.png');

        this.load.image('crosshair', '/assets/crosshair.png');
        this.load.image('explosion', '/assets/explosion.png');

        // Sounds
        this.load.audio("sniper", "/sounds/10_sniper.wav");
        this.load.audio("shotgun", "/sounds/11_shotgun.wav");
        this.load.audio("sheep", "/sounds/12_sheep.wav");
        this.load.audio("fire", "/sounds/13_fire.wav");
        this.load.audio("firing", "/sounds/14_firing.wav");
        this.load.audio("plasma", "/sounds/15_plasma.wav");
        this.load.audio("petrol_bomb", "/sounds/16_petrol_bomb.wav");
        this.load.audio("old_woman", "/sounds/17_old_woman.wav");
        this.load.audio("mine_tick", "/sounds/18_mine_tick.wav");
        this.load.audio("mine", "/sounds/19_mine.wav");
        this.load.audio("backflip", "/sounds/1_backflip.wav");
        this.load.audio("mine_activate", "/sounds/20_mine_activate.wav");
        this.load.audio("laser", "/sounds/21_laser.wav");
        this.load.audio("jet_pack_start", "/sounds/22_jet_pack_start.wav");
        this.load.audio("jet_pack", "/sounds/23_jet_pack.wav");
        this.load.audio("jet_pack_finish", "/sounds/24_jet_pack_finish.wav");
        this.load.audio("holy_hand_grenade", "/sounds/25_holy_hand_grenade.mp3");
        this.load.audio("pistol", "/sounds/26_pistol.wav");
        this.load.audio("grenade", "/sounds/27_grenade.wav");
        this.load.audio("girder", "/sounds/28_girder.wav");
        this.load.audio("gauss", "/sounds/29_gauss.wav");
        this.load.audio("select_worm", "/sounds/2_select_worm.wav");
        this.load.audio("fuse", "/sounds/30_fuse.wav");
        this.load.audio("new_level", "/sounds/31_new_level.wav");
        this.load.audio("explosion3", "/sounds/32_explosion3.wav");
        this.load.audio("explosion2", "/sounds/33_explosion2.wav");
        this.load.audio("explosion1", "/sounds/34_explosion1.wav");
        this.load.audio("drill", "/sounds/35_drill.wav");
        this.load.audio("dragon_ball", "/sounds/36_dragon_ball.wav");
        this.load.audio("blow_torch", "/sounds/37_blow_torch.wav");
        this.load.audio("baseball_bat", "/sounds/38_baseball_bat.wav");
        this.load.audio("banana", "/sounds/39_banana.wav");
        this.load.audio("walk1", "/sounds/3_walk1.wav");
        this.load.audio("air_strike", "/sounds/40_air_strike.wav");
        this.load.audio("_music", "/sounds/41__music.wav");
        this.load.audio("walk2", "/sounds/4_walk2.wav");
        this.load.audio("thunder2", "/sounds/5_thunder2.wav");
        this.load.audio("thunder1", "/sounds/6_thunder1.wav");
        this.load.audio("throwing", "/sounds/7_throwing.wav");
        this.load.audio("teleport", "/sounds/8_teleport.wav");
        this.load.audio("splash", "/sounds/9_splash.wav");
    }

    create() {
        this.setupUIBindings();
        getRequiredElement('game-over-screen').style.display = 'none';

        const weaponSelect = getRequiredElement('weaponSelect') as HTMLSelectElement;
        weaponSelect.innerHTML = '';
        for (const [key, config] of Object.entries(WEAPONS)) {
            if (config.shown) {
                const option = document.createElement('option');
                option.value = key;
                option.text = config.name || key;
                weaponSelect.appendChild(option);
            }
        }
        weaponSelect.value = 'bazooka';

        const mapKey = 'map';
        const sourceImage = this.textures.get(mapKey).getSourceImage();
        const width = sourceImage.width as number;
        const height = sourceImage.height as number;

        this.canvasTexture = this.textures.createCanvas('terrain', width, height)!;
        this.canvasTexture.drawFrame(mapKey);

        this.mapImage = this.add.image(width / 2, height / 2, 'terrain');
        this.worldPhysics = new WorldPhysics(this.canvasTexture);

        this.trajectoryGraphics = this.add.graphics();

        if (this.input.keyboard) {
            this.cursors = this.input.keyboard.createCursorKeys();
            this.spaceKey = this.input.keyboard.addKey(Phaser.Input.Keyboard.KeyCodes.SPACE);
        }

        const levelsConfig = this.cache.json.get('levelsConfig');
        const assault1 = levelsConfig.WORM_ASSAULT_COORDS.assault1;

        const spawnWorms = (teamCoords: number[], color: number, team: number, teamName: string) => {
            if (!teamCoords) return;
            for (let i = 0; i < teamCoords.length; i += 2) {
                const x = teamCoords[i];
                const y = teamCoords[i + 1];
                const wormName = `${teamName} ${Math.floor(i/2) + 1}`;
                const worm = new Worm(this, x, y, color, team, this.worldPhysics, wormName);
                this.worms.push(worm);
            }
        };

        spawnWorms(assault1.team1, 0xff5555, 1, 'Red');
        spawnWorms(assault1.team2, 0x55ff55, 2, 'Green');
        spawnWorms(assault1.team3, 0x5555ff, 3, 'Blue');

        this.aimCrosshair = this.add.image(0, 0, 'crosshair');
        this.aimCrosshair.setVisible(false);

        if (this.worms.length > 0) {
            this.worms[0].isActive = true;
            this.cameras.main.startFollow(this.worms[0].sprite);
            this.startTurnTimer();
            this.updateUI();
        }

        this.input.on('pointerdown', () => this.handlePointerDown());
        this.input.on('pointerup', (pointer: Phaser.Input.Pointer) => this.handlePointerUp(pointer));
    }

    private setupUIBindings() {
        const weaponSelect = getRequiredElement('weaponSelect') as HTMLSelectElement;
        weaponSelect.addEventListener('change', (e) => {
            this.registry.set('currentWeapon', (e.target as HTMLSelectElement).value);
        });
        
        this.anims.create({
            key: 'worm_idle',
            frames: Array.from({ length: 60 }, (_, i) => ({ key: `worm_idle_${i}` })),
            frameRate: 30,
            repeat: -1
        });
        this.anims.create({
            key: 'worm_walk',
            frames: Array.from({ length: 9 }, (_, i) => ({ key: `worm_walk_${i}` })),
            frameRate: 15,
            repeat: -1
        });

        // Initial setup
        this.registry.set('currentWeapon', weaponSelect.value);
        getRequiredElement('btn-restart').onclick = () => this.scene.restart();
    }

    private screenToWorld(pointerX: number, pointerY: number): { x: number, y: number } {
        return {
            x: pointerX - (this.mapImage.x - this.canvasTexture.width / 2),
            y: pointerY - (this.mapImage.y - this.canvasTexture.height / 2)
        };
    }

    private handlePointerDown() {
        if (this.waitingForTurnEnd || this.isGameOver || this.worms.length === 0) return;
        const activeWorm = this.worms[this.activeWormIndex];
        if (activeWorm.health <= 0) return;
        
        this.isAiming = true;
        this.aimPower = 0;
        this.aimCrosshair.setVisible(true);
        getRequiredElement('aim-power').style.display = 'block';
    }

    private handlePointerUp(pointer: Phaser.Input.Pointer) {
        if (!this.isAiming) return;
        this.isAiming = false;
        this.aimCrosshair.setVisible(false);
        this.trajectoryGraphics.clear();
        getRequiredElement('aim-power').style.display = 'none';

        const activeWorm = this.worms[this.activeWormIndex];
        const worldCoords = this.screenToWorld(pointer.worldX, pointer.worldY);
        
        const dx = worldCoords.x - activeWorm.x;
        const dy = worldCoords.y - activeWorm.y;
        const dist = Math.sqrt(dx * dx + dy * dy);
        
        const speed = (this.aimPower / 100) * 20 + 2; 
        const vx = (dx / dist) * speed;
        const vy = (dy / dist) * speed;

        const currentWeapon = this.registry.get('currentWeapon') as WeaponType;

        this.sound.play('throwing', { volume: 0.6 });

        const proj = new Projectile(this, activeWorm.x, activeWorm.y, vx, vy, currentWeapon, this.worldPhysics, this.currentWind, (expX, expY, radius, damage) => {
            // Play explosion sound
            const expSounds = ['explosion1', 'explosion2', 'explosion3'];
            const snd = expSounds[Math.floor(Math.random() * expSounds.length)];
            this.sound.play(snd, { volume: 0.5 });
            
            this.handleExplosion(expX, expY, radius, damage);
        });
        this.projectiles.push(proj);
        
        this.cameras.main.startFollow(proj.sprite);

        this.waitingForTurnEnd = true;
        this.turnTimeLeft = 0; 
    }

    private startTurnTimer() {
        if (this.turnTimerEvent) this.turnTimerEvent.destroy();
        this.turnTimeLeft = 60;
        this.turnTimerEvent = this.time.addEvent({
            delay: 1000,
            callback: () => {
                if (this.waitingForTurnEnd || this.isGameOver) return;
                this.turnTimeLeft--;
                if (this.turnTimeLeft <= 0) {
                    this.turnTimeLeft = 0;
                    this.waitingForTurnEnd = true;
                }
                this.updateUI();
            },
            loop: true
        });
    }

    private handleExplosion(x: number, y: number, radius: number, damage: number) {
        const expSprite = this.add.sprite(
            x + (this.mapImage.x - this.canvasTexture.width / 2), 
            y + (this.mapImage.y - this.canvasTexture.height / 2), 
            'explosion'
        );
        expSprite.setScale(radius / 50);
        this.time.delayedCall(300, () => { expSprite.destroy(); });

        this.worldPhysics.eraseCircle(x, y, radius);

        for (const worm of this.worms) {
            if (worm.health <= 0) continue;
            
            const dx = worm.x - x;
            const dy = worm.y - y;
            const dist = Math.sqrt(dx * dx + dy * dy);

            if (dist < radius + 20) {
                worm.takeDamage(damage);
                
                const force = (radius + 20 - dist) / 5;
                worm.vx += (dx / dist) * force;
                worm.vy += (dy / dist) * force;
                worm.isGrounded = false;
            }
        }
        
        this.updateUI();
        this.checkWinCondition();
    }

    private updateUI() {
        getRequiredElement('turn-timer').innerText = this.turnTimeLeft.toString();
        
        let t1h = 0, t2h = 0, t3h = 0;
        for (const w of this.worms) {
            if (w.health > 0) {
                if (w.team === 1) t1h += w.health;
                if (w.team === 2) t2h += w.health;
                if (w.team === 3) t3h += w.health;
            }
        }
        getRequiredElement('team1-health').innerText = `Red Team: ${t1h}`;
        getRequiredElement('team2-health').innerText = `Green Team: ${t2h}`;
        getRequiredElement('team3-health').innerText = `Blue Team: ${t3h}`;

        if (this.worms.length > 0) {
            const currentWorm = this.worms[this.activeWormIndex];
            const teamNames = ['None', 'Red', 'Green', 'Blue'];
            getRequiredElement('active-team-text').innerText = `${teamNames[currentWorm.team]} Turn`;
            getRequiredElement('active-team-text').style.color = currentWorm.team === 1 ? '#ff5555' : currentWorm.team === 2 ? '#55ff55' : '#5555ff';
        }
        
        getRequiredElement('wind-indicator').innerText = `Wind: ${(this.currentWind * 100).toFixed(0)}`;
    }

    private checkWinCondition() {
        if (this.isGameOver) return;
        const aliveTeams = new Set<number>();
        for (const w of this.worms) {
            if (w.health > 0) aliveTeams.add(w.team);
        }

        if (aliveTeams.size <= 1) {
            this.isGameOver = true;
            getRequiredElement('game-over-screen').style.display = 'flex';
            if (aliveTeams.size === 1) {
                const winner = Array.from(aliveTeams)[0];
                const teamNames = ['None', 'Red', 'Green', 'Blue'];
                getRequiredElement('winner-text').innerText = `${teamNames[winner]} Team Wins!`;
            } else {
                getRequiredElement('winner-text').innerText = `Draw!`;
            }
        }
    }

    private handlePlayerInput() {
        const activeWorm = this.worms[this.activeWormIndex];
        if (activeWorm.health > 0 && !this.waitingForTurnEnd) {
            if (this.cursors.left.isDown) activeWorm.moveLeft();
            else if (this.cursors.right.isDown) activeWorm.moveRight();
            
            if (Phaser.Input.Keyboard.JustDown(this.spaceKey)) activeWorm.jump();
        }
    }

    private updateAiming(delta: number) {
        if (!this.isAiming) return;
        
        this.aimPower = Math.min(100, this.aimPower + (delta / 10)); // Max out in 1 sec
        getRequiredElement('power-val').innerText = Math.floor(this.aimPower).toString();
        
        const activeWorm = this.worms[this.activeWormIndex];
        const pointer = this.input.activePointer;
        const worldCoords = this.screenToWorld(pointer.worldX, pointer.worldY);
        
        const dx = worldCoords.x - activeWorm.x;
        const dy = worldCoords.y - activeWorm.y;
        const dist = Math.sqrt(dx * dx + dy * dy);
        
        this.aimCrosshair.setPosition(
            activeWorm.x + (dx/dist)*50 + (this.mapImage.x - this.canvasTexture.width/2), 
            activeWorm.y + (dy/dist)*50 + (this.mapImage.y - this.canvasTexture.height/2)
        );

        this.updateTrajectoryPreview(dx, dy, dist, activeWorm.x, activeWorm.y);
    }

    private updateTrajectoryPreview(dx: number, dy: number, dist: number, startX: number, startY: number) {
        this.trajectoryGraphics.clear();
        this.trajectoryGraphics.lineStyle(2, 0xff0000, 0.5);
        
        const speed = (this.aimPower / 100) * 20 + 2; 
        let simVx = (dx / dist) * speed;
        let simVy = (dy / dist) * speed;
        let simX = startX;
        let simY = startY;

        const currentWeapon = this.registry.get('currentWeapon') as WeaponType;

        const offsetX = this.mapImage.x - this.canvasTexture.width/2;
        const offsetY = this.mapImage.y - this.canvasTexture.height/2;

        this.trajectoryGraphics.beginPath();
        this.trajectoryGraphics.moveTo(simX + offsetX, simY + offsetY);

        // Simulate 30 frames
        for (let i=0; i<30; i++) {
            const step = Projectile.simulateStep(simX, simY, simVx, simVy, this.currentWind, currentWeapon);
            simX = step.x;
            simY = step.y;
            simVx = step.vx;
            simVy = step.vy;
            this.trajectoryGraphics.lineTo(simX + offsetX, simY + offsetY);
        }
        this.trajectoryGraphics.strokePath();
    }

    private updateTurnState() {
        let anyProjectilesActive = false;
        for (let i = this.projectiles.length - 1; i >= 0; i--) {
            const p = this.projectiles[i];
            if (!p.isActive) {
                this.projectiles.splice(i, 1);
            } else {
                anyProjectilesActive = true;
            }
        }

        if (this.waitingForTurnEnd && !anyProjectilesActive) {
            let anyWormsMoving = false;
            for (const worm of this.worms) {
                if (worm.health > 0 && (!worm.isGrounded || Math.abs(worm.vx) > 0.1 || Math.abs(worm.vy) > 0.1)) {
                    anyWormsMoving = true;
                }
            }

            if (!anyWormsMoving) {
                this.waitingForTurnEnd = false;
                this.time.delayedCall(1000, () => {
                    this.nextTurn();
                });
            }
        }
    }

    update(_time: number, delta: number) {
        if (this.isGameOver) return;
        
        if (this.worms.length > 0) {
            this.handlePlayerInput();
            this.updateAiming(delta);
        }

        for (const worm of this.worms) {
            if (worm.health > 0 || worm.sprite.active) {
                worm.update(delta);
            }
        }

        for (const p of this.projectiles) {
            p.update(delta);
        }

        this.updateTurnState();
    }

    private nextTurn() {
        if (this.worms.length === 0 || this.isGameOver) return;
        
        this.worms[this.activeWormIndex].isActive = false;

        let found = false;
        let attempts = 0;
        while (!found && attempts < this.worms.length) {
            this.activeWormIndex = (this.activeWormIndex + 1) % this.worms.length;
            if (this.worms[this.activeWormIndex].health > 0) {
                found = true;
            }
            attempts++;
        }

        this.currentWind = (Math.random() - 0.5) * 0.4;

        if (found) {
            this.worms[this.activeWormIndex].isActive = true;
            this.cameras.main.startFollow(this.worms[this.activeWormIndex].sprite);
            this.startTurnTimer();
            this.updateUI();
        } else {
            this.checkWinCondition();
        }
    }
}
