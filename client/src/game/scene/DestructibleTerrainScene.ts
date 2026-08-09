import Phaser from 'phaser';
import { WorldPhysics } from '../core/WorldPhysics';
import { Worm } from '../entities/Worm';
import { Projectile } from '../entities/Projectile';
import { WEAPONS } from '../data/weapons';
import type { WeaponType } from '../data/weapons';
import { GUNS_CONFIG } from '../data/GunsConfig';
import { AIBot } from '../entities/AIBot';
import { FireParticle } from '../entities/FireParticle';
import { PoisonParticle } from '../entities/PoisonParticle';

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
    private fireParticles: FireParticle[] = [];
    private poisonParticles: PoisonParticle[] = [];
    private activeWormIndex: number = 0;

    // Keys
    private cursors!: Phaser.Types.Input.Keyboard.CursorKeys;
    private spaceKey!: Phaser.Input.Keyboard.Key;

    private isLaserSightActive: boolean = false;
    
    // Game state
    private turnTimeLeft: number = 60;
    private turnTimerEvent!: Phaser.Time.TimerEvent;
    private turnEndTimerEvent?: Phaser.Time.TimerEvent;
    private waitingForTurnEnd: boolean = false;
    private isGameOver: boolean = false;

    // Aiming
    private isAiming: boolean = false;
    private aimPower: number = 0;
    private aimCrosshair!: Phaser.GameObjects.Image;

    private trajectoryGraphics!: Phaser.GameObjects.Graphics;
    private currentWind: number = 0;
    
    // Inventory: teamId -> { weaponKey -> count }
    private teamInventories: Record<number, Record<string, number>> = {};
    private aiBot!: AIBot;

    private activeBurst: {
        vx: number, vy: number,
        weaponType: string,
        bulletsLeft: number,
        intervalMs: number,
        spreadDegrees: number,
        speed: number,
        timer: number,
        x: number, y: number
    } | null = null;
    private remainingShots: number = 0;
    private airStrikeDirection: number = 1; // 1 = right, -1 = left

    // Girder
    private girderPreviewGraphics!: Phaser.GameObjects.Graphics;
    private girderAngle: number = 0;
    private girderPackLeft: number = 0;

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
        this.sound.stopAll();
        this.sound.play('_music', { loop: true, volume: 0.3 });
        // Reset state for restart
        this.worms = [];
        this.projectiles = [];
        this.activeWormIndex = 0;
        this.turnTimeLeft = 60;
        this.waitingForTurnEnd = false;
        this.isGameOver = false;
        this.isAiming = false;
        this.isLaserSightActive = false;
        Projectile.BASE_GRAVITY = 0.24;
        this.teamInventories = {};
        this.currentWind = 0;

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

        if (this.textures.exists('terrain')) {
            this.textures.remove('terrain');
        }
        this.canvasTexture = this.textures.createCanvas('terrain', width, height)!;
        this.canvasTexture.drawFrame(mapKey);
        this.canvasTexture.refresh();

        this.mapImage = this.add.image(width / 2, height / 2, 'terrain');
        this.worldPhysics = new WorldPhysics(this.canvasTexture);

        this.trajectoryGraphics = this.add.graphics();
        this.trajectoryGraphics.setDepth(10);
        
        this.girderPreviewGraphics = this.add.graphics();
        this.girderPreviewGraphics.setDepth(11);

        if (this.input.keyboard) {
            this.cursors = this.input.keyboard.createCursorKeys();
            this.spaceKey = this.input.keyboard.addKey(Phaser.Input.Keyboard.KeyCodes.SPACE);
        }

        const levelsConfig = this.registry.get('levelsConfig') || {};
        const mapName = this.registry.get('currentMapName') || 'assault_1';
        
        let coordsData: any = null;
        if (levelsConfig.WORM_ASSAULT_COORDS && levelsConfig.WORM_ASSAULT_COORDS[mapName]) {
            coordsData = levelsConfig.WORM_ASSAULT_COORDS[mapName];
        } else if (levelsConfig.WORM_BOSS_COORDS && levelsConfig.WORM_BOSS_COORDS[mapName]) {
            coordsData = levelsConfig.WORM_BOSS_COORDS[mapName];
        } else {
            const altName = mapName.replace('_', '');
            if (levelsConfig.WORM_ASSAULT_COORDS && levelsConfig.WORM_ASSAULT_COORDS[altName]) {
                coordsData = levelsConfig.WORM_ASSAULT_COORDS[altName];
            } else if (levelsConfig.WORM_BOSS_COORDS && levelsConfig.WORM_BOSS_COORDS[altName]) {
                coordsData = levelsConfig.WORM_BOSS_COORDS[altName];
            }
        }
        
        if (!coordsData) {
            console.warn(`No spawn coordinates found for map '${mapName}'. Using fallback coordinates.`);
            const w = this.canvasTexture.width;
            coordsData = { team1: [], team2: [], team3: [] };
            
            const margin = 100;
            const availableW = w - margin * 2;
            const totalWorms = 8;
            const step = availableW / totalWorms;
            
            const findGroundY = (x: number): number => {
                const ctx = this.canvasTexture.getContext();
                const idata = ctx.getImageData(x, 0, 1, this.canvasTexture.height);
                for (let y = 0; y < this.canvasTexture.height; y++) {
                    const alpha = idata.data[y * 4 + 3];
                    if (alpha > 50) return Math.max(20, y - 10);
                }
                return 20;
            };

            for (let i = 0; i < 4; i++) {
                const x1 = Math.floor(margin + (i * 2) * step);
                const x2 = Math.floor(margin + (i * 2 + 1) * step);
                coordsData.team1.push(x1, findGroundY(x1));
                coordsData.team2.push(x2, findGroundY(x2));
            }
        }

        const spawnWorms = (teamCoords: number[], color: number, team: number, teamName: string) => {
            if (!teamCoords) return;
            for (let i = 0; i < teamCoords.length; i += 2) {
                const x = teamCoords[i];
                const y = teamCoords[i + 1];
                const wormName = `${teamName} ${Math.floor(i/2) + 1}`;
                const worm = new Worm(this, x, y, color, team, this.worldPhysics, wormName);
                this.worms.push(worm);
            }
            
            // Init inventory for this team
            this.teamInventories[team] = {};
            for (const [key, config] of Object.entries(WEAPONS)) {
                if (config.shown) {
                    this.teamInventories[team][key] = config.limit > 0 ? config.limit : -1;
                }
            }
        };

        spawnWorms(coordsData.team1, 0xff5555, 1, 'Red');
        spawnWorms(coordsData.team2, 0x55ff55, 2, 'Green');
        spawnWorms(coordsData.team3, 0x5555ff, 3, 'Blue');

        this.updateWeaponUI();

        this.aiBot = new AIBot(this, this.worldPhysics, this.worms);

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
        
        this.events.once('shutdown', this.cleanup, this);
    }

    private cleanup() {
        if (this.turnTimerEvent) {
            this.turnTimerEvent.destroy();
        }
        if (this.turnEndTimerEvent) {
            this.turnEndTimerEvent.destroy();
            this.turnEndTimerEvent = undefined;
        }
        
        // Stop any looping audio from worms
        if (this.worms) {
            for (const w of this.worms) {
                if (w.isJetpacking) w.stopJetpack();
                if (w.isDigging) w.stopDigging();
            }
        }
    }

    private setupUIBindings() {
        const weaponSelect = getRequiredElement('weaponSelect') as HTMLSelectElement;
        weaponSelect.onchange = (e) => {
            const val = (e.target as HTMLSelectElement).value;
            this.registry.set('currentWeapon', val);
        };
        
        if (!this.anims.exists('worm_idle')) {
            this.anims.create({
                key: 'worm_idle',
                frames: Array.from({ length: 60 }, (_, i) => ({ key: `worm_idle_${i}` })),
                frameRate: 30,
                repeat: -1
            });
        }

        if (!this.anims.exists('worm_walk')) {
            this.anims.create({
                key: 'worm_walk',
                frames: Array.from({ length: 9 }, (_, i) => ({ key: `worm_walk_${i}` })),
                frameRate: 15,
                repeat: -1
            });
        }

        // Initial setup
        this.registry.set('currentWeapon', weaponSelect.value);
        getRequiredElement('btn-restart').onclick = () => this.scene.restart();
    }
    
    private updateWeaponUI() {
        const weaponSelect = getRequiredElement('weaponSelect') as HTMLSelectElement;
        const currentVal = weaponSelect.value;
        weaponSelect.innerHTML = '';
        
        const activeTeam = this.worms[this.activeWormIndex]?.team || 1;
        const inventory = this.teamInventories[activeTeam];
        
        weaponSelect.disabled = activeTeam !== 1;
        
        for (const [key, config] of Object.entries(WEAPONS)) {
            if (config.shown) {
                const count = inventory[key];
                if (count === 0) continue; // Out of ammo
                
                const option = document.createElement('option');
                option.value = key;
                const countText = count === -1 ? '∞' : count;
                option.text = `${config.name || key} (${countText})`;
                weaponSelect.appendChild(option);
            }
        }
        
        // Restore selection if still available, else pick first
        if (inventory[currentVal] !== 0 && weaponSelect.querySelector(`option[value="${currentVal}"]`)) {
            weaponSelect.value = currentVal;
            this.registry.set('currentWeapon', currentVal);
        } else if (weaponSelect.options.length > 0) {
            weaponSelect.value = weaponSelect.options[0].value;
            this.registry.set('currentWeapon', weaponSelect.value);
        }
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
        if (activeWorm.health <= 0 || activeWorm.team !== 1) return;
        
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
        
        const currentWeapon = this.registry.get('currentWeapon') as WeaponType;
        
        if (currentWeapon) {
            const activeTeam = activeWorm.team;
            const inventory = this.teamInventories[activeTeam];
            if (inventory[currentWeapon] === 0) return; // Out of ammo, can't shoot
            
            const config = WEAPONS[currentWeapon];
            if (config.wptype === 'a') {
                const sndKey = config.sound || currentWeapon;
                if (this.cache.audio.exists(sndKey)) this.sound.play(sndKey, { volume: 0.6 });
                this.fireWeapon(0, 0, worldCoords.x, worldCoords.y);
                return;
            }
            if (config.wptype === 'u') { // Utilities like Teleport, Medikit, etc.
                const isTeleport = currentWeapon === 'teleport' || currentWeapon === 'upg_teleport' || currentWeapon === 'upg_teleport2';
                const isGirder = currentWeapon === 'girder' || currentWeapon === 'girder_pack';
                
                if (isTeleport) {
                    if (this.worldPhysics.checkTeleport(worldCoords.x, worldCoords.y)) {
                        this.fireWeapon(0, 0, worldCoords.x, worldCoords.y);
                    }
                } else if (isGirder) {
                    this.fireWeapon(0, 0, worldCoords.x, worldCoords.y);
                } else {
                    // Non-targeted utilities (skip_go, medikit, etc)
                    this.fireWeapon(0, 0);
                }
                return;
            }
        }

        const dx = worldCoords.x - activeWorm.x;
        const dy = worldCoords.y - activeWorm.y;
        const dist = Math.sqrt(dx * dx + dy * dy);
        
        const speed = (this.aimPower / 100) * 20 + 2; 
        const vx = (dx / dist) * speed;
        const vy = (dy / dist) * speed;

        const config = WEAPONS[currentWeapon];
        const sndKey = config.sound || currentWeapon;
        if (this.cache.audio.exists(sndKey)) this.sound.play(sndKey, { volume: 0.6 });
        
        activeWorm.setFacing(vx > 0);
        this.fireWeapon(vx, vy);
    }
    
    public fireWeapon(vx: number, vy: number, targetX?: number, targetY?: number) {
        if (this.waitingForTurnEnd || this.isGameOver || this.worms.length === 0) {
            return;
        }
        
        const activeWorm = this.worms[this.activeWormIndex];
        const currentWeapon = this.registry.get('currentWeapon') as WeaponType;
        
        const activeTeam = activeWorm.team;
        const inventory = this.teamInventories[activeTeam];
        
        if (inventory[currentWeapon] === 0) return; // Cannot fire if out of ammo
        if (currentWeapon === 'girder_pack' && this.girderPackLeft > 0) {
            // Already consumed a pack this turn, use internal pack counter
        } else if (inventory[currentWeapon] > 0) {
            inventory[currentWeapon]--;
        }
        this.updateWeaponUI();
        
        const config = WEAPONS[currentWeapon];
        
        if (config.wptype === 'a' && targetX !== undefined && targetY !== undefined) {
            let strikeAmount = 5;
            if (currentWeapon === 'banana_strike' || currentWeapon === 'holy_strike') strikeAmount = 3;
            const isOrbit = currentWeapon === 'orbit_strike';
            
            const startY = isOrbit ? -149 : -200;
            const gravity = Projectile.BASE_GRAVITY * config.gravityMultiplier;
            const dir = this.airStrikeDirection === 1 ? 1 : -1;
            const vxBase = dir * 6;
            const vyBase = isOrbit ? 42 : 0;
            
            let simXOffset = 0;
            let simY = startY;
            let simVy = vyBase;
            
            // Simulate falling to find horizontal drift
            while (simY < targetY) {
                if (!isOrbit) simVy += gravity;
                simY += simVy;
                simXOffset += vxBase;
            }
            
            const centerSpawnX = targetX - simXOffset;
            const spread = isOrbit ? 50 : 30;
            const halfAmount = Math.ceil(strikeAmount / 2);

            for (let i = 1; i <= strikeAmount; i++) {
                const px = centerSpawnX + spread * (i - halfAmount);
                const py = startY;
                const projType = currentWeapon === 'mine_strike' ? 'mine' : currentWeapon;
                const proj = this.spawnProjectile(px, py, vxBase, vyBase, projType);
                if (proj) {
                    if (i === halfAmount) {
                        this.cameras.main.startFollow(proj.sprite);
                    }
                }
            }
            this.waitingForTurnEnd = true;
            this.turnTimeLeft = 0; 
            return;
        }

        if (config.wptype === 'u') {
            if (currentWeapon === 'skip_go') {
                this.waitingForTurnEnd = true;
                this.turnTimeLeft = 0;
                return;
            } else if (currentWeapon === 'low_gravity') {
                Projectile.BASE_GRAVITY = 0.12; 
                const sndKey = config.sound || currentWeapon;
                if (this.cache.audio.exists(sndKey)) this.sound.play(sndKey, { volume: 0.6 });
                return;
            } else if (currentWeapon === 'fast_walk') {
                activeWorm.speedMultiplier = 2; 
                const sndKey = config.sound || currentWeapon;
                if (this.cache.audio.exists(sndKey)) this.sound.play(sndKey, { volume: 0.6 });
                return;
            } else if (currentWeapon === 'medikit') {
                activeWorm.takeDamage(-50); // Heals 50
                const sndKey = config.sound || currentWeapon;
                if (this.cache.audio.exists(sndKey)) this.sound.play(sndKey, { volume: 0.6 });
                return;
            } else if (currentWeapon === 'super_medikit') {
                activeWorm.takeDamage(-100); // Heals 100
                activeWorm.isPoisoned = false;
                activeWorm.poisonDamage = 0;
                activeWorm.nextPoisonDamage = 0;
                const sndKey = config.sound || currentWeapon;
                if (this.cache.audio.exists(sndKey)) this.sound.play(sndKey, { volume: 0.6 });
                return;
            } else if (currentWeapon === 'jet_pack' || currentWeapon === 'upg_jet_pack' || currentWeapon === 'ag_pack') {
                activeWorm.startJetpack(currentWeapon);
                const sndKey = 'jet_pack_start';
                if (this.cache.audio.exists(sndKey)) this.sound.play(sndKey, { volume: 0.6 });
                // Do not end turn, allow flying
                return;
            } else if (currentWeapon === 'blow_torch' || currentWeapon === 'pneumatic_drill') {
                activeWorm.startDigging(currentWeapon);
                return;
            } else if (currentWeapon === 'laser_sight') {
                this.isLaserSightActive = true;
                const sndKey = config.sound || currentWeapon;
                if (this.cache.audio.exists(sndKey)) this.sound.play(sndKey, { volume: 0.6 });
                return;
            } else if (currentWeapon === 'parachute') {
                activeWorm.startParachute();
                return;
            } else if (targetX !== undefined && targetY !== undefined && (currentWeapon === 'girder' || currentWeapon === 'girder_pack')) {
                if (this.placeGirder(targetX, targetY, this.girderAngle)) {
                    if (currentWeapon === 'girder_pack') {
                        if (this.girderPackLeft === 0) {
                            this.girderPackLeft = 4; // 1 used, 4 left (total 5 uses per pack)
                        } else {
                            this.girderPackLeft--;
                        }
                        if (this.girderPackLeft <= 0) {
                            this.waitingForTurnEnd = true;
                            this.turnTimeLeft = 0;
                        }
                    } else {
                        this.waitingForTurnEnd = true;
                        this.turnTimeLeft = 0;
                    }
                }
                return;
            } else if (targetX !== undefined && targetY !== undefined && (currentWeapon === 'teleport' || currentWeapon === 'upg_teleport' || currentWeapon === 'upg_teleport2')) {
                // Teleport execution
                activeWorm.x = targetX;
                activeWorm.y = targetY;
                activeWorm.vx = 0;
                activeWorm.vy = 0;
                activeWorm.isGrounded = false;
                
                // Wait for end of turn
                this.waitingForTurnEnd = true;
                this.turnTimeLeft = 0;
                return;
            }
        }

        if (config.wptype === 'c' && currentWeapon !== 'fireball') {
            // Melee attack
            const dir = activeWorm.facingRight ? 1 : -1;
            
            // Adjust hit distance based on weapon
            let offsetX = 0;
            if (currentWeapon === 'baseball_bat' || currentWeapon === 'power_bat') offsetX = activeWorm.facingRight ? 23 : -18;
            else if (currentWeapon === 'battle_axe' || currentWeapon === 'power_axe') offsetX = activeWorm.facingRight ? 25 : -22;
            else if (currentWeapon === 'prod' || currentWeapon === 'shocker') offsetX = activeWorm.facingRight ? 15 : -12;
            else offsetX = activeWorm.facingRight ? 20 : -20; // default for others like firepunch
            
            const hitX = activeWorm.x + offsetX;
            const hitY = activeWorm.y;

            let hitSomething = false;
            
            // Calculate aim vectors (for bat)
            const dist = Math.sqrt(vx * vx + vy * vy);
            const dirX = dist > 0 ? (vx / dist) : dir;
            const dirY = dist > 0 ? (vy / dist) : 0;
            
            for (const worm of this.worms) {
                if (worm.health > 0 && worm !== activeWorm) {
                    if (Math.abs(worm.x - hitX) <= 30 && Math.abs(worm.y - hitY) <= 36) {
                        
                        let damage = config.damage;
                        let pushVx = 0;
                        let pushVy = 0;

                        if (currentWeapon === 'baseball_bat') {
                            pushVx = dirX * 9.2;
                            pushVy = dirY * 9.2;
                        } else if (currentWeapon === 'power_bat') {
                            damage = 60;
                            pushVx = dirX * 9.2;
                            pushVy = dirY * 9.2;
                        } else if (currentWeapon === 'battle_axe') {
                            damage = worm.health > 400 ? 200 : Math.floor(worm.health / 2);
                            pushVy = 10;
                        } else if (currentWeapon === 'power_axe') {
                            damage = worm.health > 600 ? 300 : Math.floor(worm.health / 2);
                            pushVy = 10;
                        } else if (currentWeapon === 'prod') {
                            pushVx = dir * 2.3;
                            pushVy = -2.3;
                        } else if (currentWeapon === 'shocker') {
                            pushVx = dir * 2.3;
                            pushVy = -2.3;
                        } else if (currentWeapon === 'firepunch' || currentWeapon === 'kamikaze') {
                            pushVx = dir * 2;
                            pushVy = -4;
                        }
                        
                        worm.takeDamage(damage);
                        if (pushVx !== 0 || pushVy !== 0) {
                            worm.vx += pushVx;
                            worm.vy += pushVy;
                            worm.isGrounded = false;
                        }
                        hitSomething = true;
                    }
                }
            }
            
            // Firepunch actually moves the worm too
            if (currentWeapon === 'firepunch') {
                activeWorm.vy = -4.4;
                activeWorm.isGrounded = false;
            } else if (currentWeapon === 'kamikaze') {
                // Kamikaze is complex, we just deal damage and let the active worm die
                activeWorm.takeDamage(activeWorm.health);
            }

            if (hitSomething) {
                this.sound.play('baseball_bat', { volume: 0.6 });
            } else if (currentWeapon === 'baseball_bat' || currentWeapon === 'power_bat') {
                this.sound.play('baseball_bat', { volume: 0.6 });
            }
            
            this.waitingForTurnEnd = true;
            this.turnTimeLeft = 0;
            return;
        }
        
        const gunConfig = GUNS_CONFIG[currentWeapon];

        if (gunConfig) {
            this.activeBurst = {
                vx, vy,
                weaponType: currentWeapon,
                bulletsLeft: gunConfig.bulletAmount,
                intervalMs: gunConfig.bulletIntervalMs,
                spreadDegrees: gunConfig.spreadDegrees,
                speed: gunConfig.speed,
                timer: 0,
                x: activeWorm.x,
                y: activeWorm.y
            };
            
            if (gunConfig.shotsPerTurn && gunConfig.shotsPerTurn > 1 && this.remainingShots === 0) {
                 this.remainingShots = gunConfig.shotsPerTurn;
            }
            if (this.remainingShots > 0) {
                 this.remainingShots--;
            }
            if (this.remainingShots <= 0) {
                 this.waitingForTurnEnd = true;
                 this.turnTimeLeft = 0; 
            } else {
                 this.turnTimeLeft = 5; // Give 5 seconds for the next shot
                 this.startTurnTimer(); // restart timer internally
                 this.turnTimeLeft = 5; // override length
            }
        } else {
            const proj = this.spawnProjectile(activeWorm.x, activeWorm.y, vx, vy, currentWeapon);
            if (proj) {
                this.cameras.main.startFollow(proj.sprite);
            }
            this.waitingForTurnEnd = true;
            this.turnTimeLeft = 0; 
        }
    }

    private spawnProjectile(x: number, y: number, vx: number, vy: number, weaponType: string): Projectile | null {
        if (!WEAPONS[weaponType as any]) {
            console.warn(`[DestructibleTerrainScene] Cannot spawn projectile: missing config for '${weaponType}'.`);
            return null;
        }
        
        const proj = new Projectile(this, x, y, vx, vy, weaponType, this.worldPhysics, this.currentWind, {
            getWorms: () => this.worms,
            onExplode: (expX, expY, radius, damage) => {
                const expSounds = ['explosion1', 'explosion2', 'explosion3'];
                const snd = expSounds[Math.floor(Math.random() * expSounds.length)];
                this.sound.play(snd, { volume: 0.5 });
                
                this.handleExplosion(expX, expY, radius, damage);
            },
            onSpawnProjectile: (spX, spY, spVx, spVy, type) => {
                this.spawnProjectile(spX, spY, spVx, spVy, type);
            },
            onSpawnFire: (fx, fy, amount, isNapalm) => {
                for (let i = 0; i < amount; i++) {
                    const fvx = (Math.random() - 0.5) * 14 * 0.8;
                    const fvy = (Math.random() - 0.5) * 14 * 0.85;
                    const fire = new FireParticle(this, fx, fy, fvx, fvy, isNapalm, this.worldPhysics);
                    this.fireParticles.push(fire);
                }
            },
            onSpawnPoison: (px, py, amount, isRad) => {
                for (let i = 0; i < amount; i++) {
                    const pvx = (Math.random() - 0.5) * 10;
                    const pvy = (Math.random() - 0.5) * 10;
                    const poison = new PoisonParticle(this, px, py, pvx, pvy, isRad, this.worldPhysics);
                    this.poisonParticles.push(poison);
                }
            }
        });
        
        this.projectiles.push(proj);
        return proj;
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

        const diameter = radius * 2;
        
        for (const worm of this.worms) {
            if (worm.health <= 0) continue;
            
            const dx = worm.x - x;
            const dy = worm.y - y;
            const dist = Math.sqrt(dx * dx + dy * dy);

            if (dist <= diameter) {
                let actualDamage = 0;
                if (dist < 6.5) {
                    actualDamage = damage;
                } else {
                    actualDamage = Math.ceil(damage * ((diameter - dist) / diameter));
                }
                
                if (actualDamage > 0) {
                    worm.takeDamage(actualDamage);
                }
                
                // Impulse calculation mirroring Flash AS3 logic
                let normX = dx;
                let normY = dy;
                const maxMod = Math.max(Math.abs(normX), Math.abs(normY));
                
                if (maxMod > 0) {
                    normX /= maxMod;
                    normY /= maxMod;
                }
                
                const impactMultiply = 1; // Default from Flash
                const dvx = impactMultiply * normX * (diameter - dist) / 15;
                const dvy = impactMultiply * normY * (diameter - dist) / 15;
                
                worm.vx += dvx;
                worm.vy += dvy;
                worm.isGrounded = false;
            }
        }
        
        this.updateUI();
        this.checkWinCondition();
    }

    private updateUI() {
        getRequiredElement('turn-timer').innerText = this.turnTimeLeft.toString();
        
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

    private placeGirder(x: number, y: number, angle: number): boolean {
        const gW = 120;
        const gH = 16;
        const cosA = Math.cos(-angle);
        const sinA = Math.sin(-angle);
        
        // Check intersection with worms
        for (const worm of this.worms) {
            if (worm.health <= 0) continue;
            const tx = worm.x - x;
            const ty = worm.y - y;
            const rx = tx * cosA - ty * sinA;
            const ry = tx * sinA + ty * cosA;
            if (rx >= -gW/2 - 12 && rx <= gW/2 + 12 && ry >= -gH/2 - 12 && ry <= gH/2 + 12) {
                return false; // Cannot place on top of a worm
            }
        }
        
        // Draw to canvasTexture
        const ctx = this.canvasTexture.context;
        ctx.save();
        ctx.translate(x, y);
        ctx.rotate(angle);
        ctx.fillStyle = '#888888';
        ctx.fillRect(-gW/2, -gH/2, gW, gH);
        ctx.strokeStyle = '#ffff00';
        ctx.lineWidth = 2;
        ctx.strokeRect(-gW/2, -gH/2, gW, gH);
        ctx.restore();
        this.canvasTexture.refresh();

        // Update WorldPhysics
        const boundsRadius = Math.ceil(Math.sqrt(gW*gW + gH*gH) / 2);
        const startX = Math.max(0, Math.floor(x - boundsRadius));
        const endX = Math.min(this.worldPhysics.width - 1, Math.ceil(x + boundsRadius));
        const startY = Math.max(0, Math.floor(y - boundsRadius));
        const endY = Math.min(this.worldPhysics.height - 1, Math.ceil(y + boundsRadius));
        
        for (let py = startY; py <= endY; py++) {
            for (let px = startX; px <= endX; px++) {
                const tx = px - x;
                const ty = py - y;
                const rx = tx * cosA - ty * sinA;
                const ry = tx * sinA + ty * cosA;
                if (rx >= -gW/2 - 1 && rx <= gW/2 + 1 && ry >= -gH/2 - 1 && ry <= gH/2 + 1) {
                    this.worldPhysics.addSolidPixel(px, py);
                }
            }
        }
        
        const sndKey = WEAPONS['girder']?.sound || 'girder';
        if (this.cache.audio.exists(sndKey)) this.sound.play(sndKey, { volume: 0.6 });
        return true;
    }

    private handlePlayerInput() {
        const activeWorm = this.worms[this.activeWormIndex];
        if (activeWorm.team !== 1) return;

        if (Phaser.Input.Keyboard.JustDown(this.spaceKey)) {
            let detonatedAnimal = false;
            for (const proj of this.projectiles) {
                if (proj.isActive && proj.isAnimal) {
                    proj.explode(proj.x, proj.y);
                    detonatedAnimal = true;
                }
            }
            if (detonatedAnimal) return;
        }

        if (activeWorm.health > 0 && !this.waitingForTurnEnd) {
            const currentWeapon = this.registry.get('currentWeapon') as WeaponType;
            const config = currentWeapon ? WEAPONS[currentWeapon] : null;

            if (activeWorm.isJetpacking) {
                activeWorm.jetpackMove(
                    this.cursors.up.isDown,
                    this.cursors.down.isDown,
                    this.cursors.left.isDown,
                    this.cursors.right.isDown
                );
                if (Phaser.Input.Keyboard.JustDown(this.spaceKey)) {
                    activeWorm.stopJetpack();
                }
            } else if (activeWorm.isDigging) {
                if (activeWorm.digType === 'blow_torch') {
                    if (this.cursors.up.isDown) activeWorm.setDigDirectionY(-1);
                    else if (this.cursors.down.isDown) activeWorm.setDigDirectionY(1);
                    else activeWorm.setDigDirectionY(0);
                }
                if (Phaser.Input.Keyboard.JustDown(this.spaceKey)) {
                    activeWorm.stopDigging();
                }
            } else if (this.isAiming) {
                if (config?.wptype === 'a') {
                    if (this.cursors.left.isDown) this.airStrikeDirection = -1;
                    if (this.cursors.right.isDown) this.airStrikeDirection = 1;
                }
            } else if (currentWeapon === 'girder' || currentWeapon === 'girder_pack') {
                if (this.cursors.left.isDown) this.girderAngle -= 0.05;
                if (this.cursors.right.isDown) this.girderAngle += 0.05;
            } else {
                if (this.cursors.left.isDown) activeWorm.moveLeft();
                else if (this.cursors.right.isDown) activeWorm.moveRight();
            }
            
            if (!activeWorm.isJetpacking && !activeWorm.isDigging && Phaser.Input.Keyboard.JustDown(this.spaceKey)) activeWorm.jump();
        }
    }

    private updateAiming(delta: number) {
        if (!this.isAiming) return;
        
        const activeWorm = this.worms[this.activeWormIndex];
        const pointer = this.input.activePointer;
        const worldCoords = this.screenToWorld(pointer.worldX, pointer.worldY);
        
        const currentWeapon = this.registry.get('currentWeapon') as WeaponType;
        const config = currentWeapon ? WEAPONS[currentWeapon] : null;

        if (config?.wptype === 'a') {
            this.aimCrosshair.setPosition(pointer.worldX, pointer.worldY);
            this.trajectoryGraphics.clear();
            
            // Draw direction indicators
            this.trajectoryGraphics.lineStyle(2, 0xff0000, 1);
            this.trajectoryGraphics.beginPath();
            const dirX = this.airStrikeDirection === 1 ? 50 : -50;
            this.trajectoryGraphics.moveTo(pointer.worldX, pointer.worldY);
            this.trajectoryGraphics.lineTo(pointer.worldX + dirX, pointer.worldY);
            
            // arrow head
            this.trajectoryGraphics.lineTo(pointer.worldX + dirX - (this.airStrikeDirection === 1 ? 10 : -10), pointer.worldY - 10);
            this.trajectoryGraphics.moveTo(pointer.worldX + dirX, pointer.worldY);
            this.trajectoryGraphics.lineTo(pointer.worldX + dirX - (this.airStrikeDirection === 1 ? 10 : -10), pointer.worldY + 10);
            this.trajectoryGraphics.strokePath();
            return;
        }

        this.aimPower = Math.min(100, this.aimPower + (delta / 10)); // Max out in 1 sec
        getRequiredElement('power-val').innerText = Math.floor(this.aimPower).toString();
        
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

        const maxFrames = this.isLaserSightActive ? 200 : 30;

        for (let i=0; i<maxFrames; i++) {
            const step = Projectile.simulateStep(simX, simY, simVx, simVy, this.currentWind, currentWeapon);
            const hitResult = this.worldPhysics.checkHitLine(simX, simY, step.x, step.y);
            
            if (hitResult.hit) {
                this.trajectoryGraphics.lineTo(hitResult.x + offsetX, hitResult.y + offsetY);
                break;
            }

            simX = step.x;
            simY = step.y;
            simVx = step.vx;
            simVy = step.vy;
            
            if (this.isLaserSightActive) {
                this.trajectoryGraphics.lineTo(simX + offsetX, simY + offsetY);
            } else if (i % 3 === 0) {
                this.trajectoryGraphics.fillStyle(0xff0000, 1 - (i / maxFrames));
                this.trajectoryGraphics.fillCircle(simX + offsetX, simY + offsetY, 2);
            }
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

        if (this.waitingForTurnEnd) {
            if (anyProjectilesActive) {
                // waiting for projectiles
            } else {
                let anyWormsMoving = false;
                for (const worm of this.worms) {
                    if (worm.health > 0 && (!worm.isGrounded || Math.abs(worm.vx) > 0.1 || Math.abs(worm.vy) > 0.1)) {
                        anyWormsMoving = true;
                        // console.log(`TURN STATE: Worm ${worm.team} is moving (grounded: ${worm.isGrounded}, vx: ${worm.vx.toFixed(2)}, vy: ${worm.vy.toFixed(2)})`);
                    }
                }

                if (!anyWormsMoving && !this.isGameOver) {
                    if (!this.turnEndTimerEvent) {
                        this.turnEndTimerEvent = this.time.delayedCall(1000, () => {
                            this.waitingForTurnEnd = false;
                            this.turnEndTimerEvent = undefined;
                            this.nextTurn();
                        });
                    }
                } else if (anyWormsMoving) {
                    if (this.turnEndTimerEvent) {
                        this.turnEndTimerEvent.destroy();
                        this.turnEndTimerEvent = undefined;
                    }
                }
            }
        }
    }

    update(_time: number, delta: number) {
        if (this.isGameOver) return;
        
        if (this.activeBurst) {
            this.activeBurst.timer -= delta;
            while (this.activeBurst.timer <= 0 && this.activeBurst.bulletsLeft > 0) {
                this.activeBurst.bulletsLeft--;
                this.activeBurst.timer += this.activeBurst.intervalMs;
                
                // Calculate spread
                let fireVx = this.activeBurst.vx;
                let fireVy = this.activeBurst.vy;
                const speed = Math.sqrt(fireVx * fireVx + fireVy * fireVy);
                
                if (this.activeBurst.spreadDegrees > 0) {
                    const currentAngle = Math.atan2(fireVy, fireVx);
                    const spreadRad = this.activeBurst.spreadDegrees * (Math.PI / 180);
                    const newAngle = currentAngle + (Math.random() - 0.5) * spreadRad;
                    fireVx = Math.cos(newAngle) * Math.max(speed, this.activeBurst.speed);
                    fireVy = Math.sin(newAngle) * Math.max(speed, this.activeBurst.speed);
                }
                
                // Adjust speed
                if (this.activeBurst.speed > 0 && speed > 0 && this.activeBurst.spreadDegrees === 0) {
                    fireVx = (fireVx / speed) * this.activeBurst.speed;
                    fireVy = (fireVy / speed) * this.activeBurst.speed;
                }

                const proj = this.spawnProjectile(this.activeBurst.x, this.activeBurst.y, fireVx, fireVy, this.activeBurst.weaponType);
                if (proj) {
                    this.cameras.main.startFollow(proj.sprite);
                }
                const config = WEAPONS[this.activeBurst.weaponType];
                const sndKey = config && config.sound ? config.sound : this.activeBurst.weaponType;
                if (this.cache.audio.exists(sndKey)) this.sound.play(sndKey, { volume: 0.3 });
            }
            
            if (this.activeBurst.bulletsLeft <= 0) {
                this.activeBurst = null;
            }
        }

        if (this.worms.length > 0) {
            const activeWorm = this.worms[this.activeWormIndex];
            
            // End turn immediately if active worm died (e.g. fell off map) and we aren't already waiting
            if (activeWorm.health <= 0 && !this.waitingForTurnEnd) {
                this.waitingForTurnEnd = true;
                this.turnTimeLeft = 0;
            }

            this.handlePlayerInput();
            this.updateAiming(delta);
        }

        for (const worm of this.worms) {
            if (worm.health > 0 || worm.sprite.active) {
                worm.update(delta, this.currentWind);
            }
        }

        for (const p of this.projectiles) {
            p.update(delta);
        }

        // Update fire particles
        for (let i = this.fireParticles.length - 1; i >= 0; i--) {
            const f = this.fireParticles[i];
            f.update(delta, this.currentWind, this.worms);
            if (!f.isActive) {
                this.fireParticles.splice(i, 1);
            }
        }

        // Update poison particles
        for (let i = this.poisonParticles.length - 1; i >= 0; i--) {
            const p = this.poisonParticles[i];
            p.update(delta, this.currentWind, this.worms);
            if (!p.isActive) {
                this.poisonParticles.splice(i, 1);
            }
        }

        // Draw Girder Preview
        this.girderPreviewGraphics.clear();
        const currentWeapon = this.registry.get('currentWeapon') as WeaponType;
        if ((currentWeapon === 'girder' || currentWeapon === 'girder_pack') && !this.waitingForTurnEnd) {
            const activeWorm = this.worms[this.activeWormIndex];
            if (activeWorm && activeWorm.team === 1 && activeWorm.health > 0) {
                const pointer = this.input.activePointer;
                const worldCoords = this.screenToWorld(pointer.worldX, pointer.worldY);
                this.girderPreviewGraphics.lineStyle(2, 0xffff00, 0.8);
                this.girderPreviewGraphics.fillStyle(0x888888, 0.5);
                const gW = 120;
                const gH = 16;
                this.girderPreviewGraphics.save();
                this.girderPreviewGraphics.translateCanvas(worldCoords.x + (this.mapImage.x - this.canvasTexture.width / 2), worldCoords.y + (this.mapImage.y - this.canvasTexture.height / 2));
                this.girderPreviewGraphics.rotateCanvas(this.girderAngle);
                this.girderPreviewGraphics.fillRect(-gW/2, -gH/2, gW, gH);
                this.girderPreviewGraphics.strokeRect(-gW/2, -gH/2, gW, gH);
                this.girderPreviewGraphics.restore();
            }
        }

        this.updateTurnState();
    }

    private lastWormIndexPerTeam: Record<number, number> = {};

    private nextTurn() {
        if (this.worms.length === 0 || this.isGameOver) return;
        this.girderPackLeft = 0;
        
        // Reset utilities from previous turn
        Projectile.BASE_GRAVITY = 0.24;
        this.isLaserSightActive = false;
        
        // Apply poison DoT on turn boundary
        for (const w of this.worms) {
            w.speedMultiplier = 1; // Reset fast walk
            if (w.health > 0) w.applyPoisonTick();
        }

        const currentWorm = this.worms[this.activeWormIndex];
        currentWorm.isActive = false;

        // Save last played worm for this team
        this.lastWormIndexPerTeam[currentWorm.team] = this.activeWormIndex;

        // Get list of teams that have at least one alive worm
        const aliveTeams = [...new Set(this.worms.filter(w => w.health > 0).map(w => w.team))].sort((a, b) => a - b);
        
        if (aliveTeams.length === 0) {
            this.checkWinCondition();
            return;
        }

        let nextTeam = currentWorm.team;
        if (aliveTeams.length > 1) {
            // Find next team
            let idx = aliveTeams.indexOf(currentWorm.team);
            if (idx === -1) idx = 0;
            else idx = (idx + 1) % aliveTeams.length;
            nextTeam = aliveTeams[idx];
        }

        // Find the next alive worm for nextTeam
        let found = false;
        let attempts = 0;
        
        // Start searching from the last played worm of this team, or 0
        let searchIndex = this.lastWormIndexPerTeam[nextTeam] !== undefined ? this.lastWormIndexPerTeam[nextTeam] : -1;
        
        while (!found && attempts < this.worms.length) {
            searchIndex = (searchIndex + 1) % this.worms.length;
            const w = this.worms[searchIndex];
            if (w.team === nextTeam && w.health > 0) {
                found = true;
                this.activeWormIndex = searchIndex;
            }
            attempts++;
        }

        this.currentWind = (Math.random() - 0.5) * 0.4;
        
        this.updateWeaponUI();

        if (found) {
            const activeWorm = this.worms[this.activeWormIndex];
            activeWorm.isActive = true;
            this.cameras.main.startFollow(activeWorm.sprite);
            this.startTurnTimer();
            this.remainingShots = 0;
            this.updateUI();

            // Let AI take turn if team != 1
            if (activeWorm.team !== 1) {
                const currentTurnWorm = activeWorm;
                this.aiBot.takeTurn(activeWorm, this.currentWind, this.teamInventories[activeWorm.team], (weapon, angle, power) => {
                    if (this.isGameOver) return;
                    if (this.worms[this.activeWormIndex] !== currentTurnWorm) return; // Turn changed while thinking
                    this.registry.set('currentWeapon', weapon);
                    
                    const powerNorm = power / 100;
                    const speed = powerNorm * 15;
                    const vx = Math.cos(angle) * speed;
                    const vy = Math.sin(angle) * speed;
                    
                    // Switch facing direction based on angle
                    activeWorm.setFacing(Math.cos(angle) > 0);
                    const config = WEAPONS[weapon];
                    const sndKey = config && config.sound ? config.sound : weapon;
                    if (this.cache.audio.exists(sndKey)) this.sound.play(sndKey, { volume: 0.6 });
                    
                    this.fireWeapon(vx, vy);
                });
            }

        } else {
            this.checkWinCondition();
        }
    }
}
