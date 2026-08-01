
function get_object_flags(param1) {
    var _loc2_ = {};
    var _this = { FWP: { player: { perks: {} }, chosen_map: "" } };
    // Replace 'this.' with '_this.'
    var execute = function() {
        
         var _loc2_ = {};
         _loc2_ = {
            "W":6,
            "H":6,
            "ADV_W":-1,
            "ADV_H":-1,
            "FLAT":false,
            "ULTRA":false,
            "GRAVITY":false,
            "WIND":false,
            "DIAMETER":0,
            "DAMAGE":0,
            "EXPLODEDISPLACE":0,
            "REFLECT":false,
            "ADVANCEDCALC":false,
            "GRAVITYMULTIPLY":1,
            "WINDMULTIPLY":1,
            "IMPACTMULTIPLY":1,
            "INITEXPLODE":false,
            "INSTANTEXPLODE":false,
            "TIMINGEXPLODE":false,
            "RESTINGEXPLODE":false,
            "FUSETIMEOUT":0,
            "TIMEOUT":0,
            "MULTIPLEXPLOSIONS":0,
            "VROTATING":false,
            "SROTATING":false,
            "DIRECTROTATING":false,
            "BOUNCE_X":0.7,
            "BOUNCE_Y":0.2,
            "SPEEDVX":0,
            "SPEEDVY":0,
            "CONSTANTSPEED":false,
            "LESSSPEEDDECREASE":false,
            "FLATPROJECTILE":false,
            "MOMENTAL":false,
            "SHOW_TIMER":false,
            "EXHAUST":false,
            "DOUBLEEXHAUST":false,
            "EXHAUSTONHIT":false,
            "EXHAUSTTYPE":"",
            "EXHAUSTTIME":1,
            "SPECIAL":"",
            "BASESPEED":0,
            "BREAKING":false,
            "BREAKINGTYPE":"",
            "BREAKINGAMOUNT":0,
            "POISONONEXPLODE":false,
            "POISONONEXPLODERAD":false,
            "POISONAMOUNT":10,
            "FIREONEXPLODE":false,
            "FIREGENRANDOMSPEED":false,
            "FIREAMOUNT":0,
            "NAPALMONEXPLODE":false,
            "MOVING":false,
            "MOVINGJUMP":false,
            "JUMPHEIGHT":-6,
            "NOEXPLODESOUND":false,
            "NOEXPLODEANIMATION":false,
            "NOLANDSCAPEMODIFY":false,
            "WAVEEXPLODE":false,
            "DAMAGEWAVE":false,
            "KENTONWAVE":false,
            "DAMAGEWAVEDMG":0,
            "PARALYZING":false,
            "PARATIME":0,
            "PUTTY":false,
            "ANNIHILATOR":false
         };
         if(param1 == "worm")
         {
            _loc2_.W = 6;
            _loc2_.H = 16;
            _loc2_.GRAVITY = true;
         }
         if(param1 == "fire" || param1 == "napalm_fire")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.NOEXPLODESOUND = true;
            _loc2_.NOEXPLODEANIMATION = true;
            _loc2_.NOLANDSCAPEMODIFY = true;
         }
         if(param1 == "bazooka" || param1 == "unfail_bazooka" || param1 == "fire_bazooka" || param1 == "poison_bazooka" || param1 == "ap_bazooka" || param1 == "howitzer" || param1 == "multi_bazooka" || param1 == "nuclear_bomb" || param1 == "nuclear_bomb2" || param1 == "ap_bazooka2" || param1 == "rj46" || param1 == "multip14" || param1 == "multip17" || param1 == "multip83" || param1 == "kenton_bazooka")
         {
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 50;
            _loc2_.GRAVITY = true;
            _loc2_.WIND = true;
            _loc2_.EXHAUST = true;
            _loc2_.EXHAUSTTYPE = "standard_exhaust";
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.VROTATING = true;
            if(param1 == "fire_bazooka")
            {
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
            }
            if(param1 == "poison_bazooka")
            {
               _loc2_.POISONONEXPLODE = true;
            }
            if(param1 == "ap_bazooka")
            {
               _loc2_.MULTIPLEXPLOSIONS = 3;
            }
            if(param1 == "ap_bazooka2")
            {
               _loc2_.MULTIPLEXPLOSIONS = 5;
               _loc2_.DAMAGE = 140;
            }
            if(param1 == "nuclear_bomb")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 600;
               _loc2_.POISONONEXPLODE = true;
            }
            if(param1 == "nuclear_bomb2")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 900;
               _loc2_.POISONONEXPLODERAD = true;
            }
            if(param1 == "howitzer")
            {
               _loc2_.DIAMETER = 100;
               _loc2_.DAMAGE = 3360;
            }
            if(param1 == "rj46")
            {
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.DIAMETER = 150;
               _loc2_.DAMAGE = 200;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 4;
            }
            if(param1 == "multip14")
            {
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.DIAMETER = 150;
               _loc2_.DAMAGE = 250;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 4;
               _loc2_.POISONONEXPLODERAD = true;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
            }
            if(param1 == "multip17")
            {
               _loc2_.NAPALMONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.DIAMETER = 150;
               _loc2_.DAMAGE = 300;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 4;
               _loc2_.POISONONEXPLODERAD = true;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
               _loc2_.MULTIPLEXPLOSIONS = 3;
               _loc2_.DAMAGEWAVE = true;
               _loc2_.DAMAGEWAVEDMG = 60;
            }
            if(param1 == "multip83")
            {
               _loc2_.NAPALMONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.DIAMETER = 150;
               _loc2_.DAMAGE = 600;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 6;
               _loc2_.POISONONEXPLODERAD = true;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 3;
               _loc2_.MULTIPLEXPLOSIONS = 4;
               _loc2_.DAMAGEWAVE = true;
               _loc2_.DAMAGEWAVEDMG = 70;
            }
            if(param1 == "kenton_bazooka")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 1200;
               _loc2_.KENTONWAVE = true;
               _loc2_.DAMAGEWAVEDMG = 50;
            }
            _loc2_.ADVANCEDCALC = true;
         }
         if(param1 == "grenade" || param1 == "unfail_grenade" || param1 == "plasma_grenade" || param1 == "pulse_grenade" || param1 == "cluster_bomb" || param1 == "unfail_cluster_bomb" || param1 == "putty_grenade" || param1 == "banana_bomb" || param1 == "unfail_banana_bomb" || param1 == "super_banana_bomb" || param1 == "mega_banana_bomb" || param1 == "dl19" || param1 == "rainbow_burst" || param1 == "infinity_rainbow" || param1 == "skyfire" || param1 == "kenton_grenade")
         {
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 50;
            if(param1 == "cluster_bomb" || param1 == "unfail_cluster_bomb")
            {
               _loc2_.DAMAGE = 15;
            }
            if(param1 == "banana_bomb" || param1 == "unfail_banana_bomb" || param1 == "super_banana_bomb" || param1 == "mega_banana_bomb")
            {
               _loc2_.DAMAGE = 75;
               _loc2_.DIAMETER = 150;
            }
            _loc2_.GRAVITY = true;
            _loc2_.REFLECT = true;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.SHOW_TIMER = true;
            if(param1 == "plasma_grenade")
            {
               _loc2_.DAMAGE = 110;
            }
            if(param1 == "pulse_grenade")
            {
               _loc2_.DAMAGE = 110;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
            }
            if(param1 == "dl19")
            {
               _loc2_.DAMAGE = 200;
               _loc2_.DIAMETER = 150;
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 4;
            }
            if(param1 == "rainbow_burst")
            {
               _loc2_.DAMAGE = 250;
               _loc2_.DIAMETER = 150;
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 4;
               _loc2_.POISONONEXPLODERAD = true;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
            }
            if(param1 == "infinity_rainbow")
            {
               _loc2_.DAMAGE = 300;
               _loc2_.DIAMETER = 150;
               _loc2_.NAPALMONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 4;
               _loc2_.POISONONEXPLODERAD = true;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
               _loc2_.DAMAGEWAVE = true;
               _loc2_.DAMAGEWAVEDMG = 50;
            }
            if(param1 == "skyfire")
            {
               _loc2_.DAMAGE = 800;
               _loc2_.DIAMETER = 150;
               _loc2_.NAPALMONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 6;
               _loc2_.POISONONEXPLODERAD = true;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 3;
               _loc2_.DAMAGEWAVE = true;
               _loc2_.DAMAGEWAVEDMG = 80;
            }
            if(param1 == "kenton_grenade")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 1200;
               _loc2_.KENTONWAVE = true;
               _loc2_.DAMAGEWAVEDMG = 50;
            }
            if(param1 == "cluster_bomb" || param1 == "unfail_cluster_bomb")
            {
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "bomblet";
               _loc2_.BREAKINGAMOUNT = 5;
            }
            if(param1 == "banana_bomb" || param1 == "unfail_banana_bomb" || param1 == "super_banana_bomb")
            {
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "banana";
               _loc2_.BREAKINGAMOUNT = 5;
               if(param1 == "banana_bomb" || param1 == "unfail_banana_bomb")
               {
                  _loc2_.BREAKINGAMOUNT = 3;
               }
            }
            if(param1 == "mega_banana_bomb")
            {
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "breaking_banana";
               _loc2_.BREAKINGAMOUNT = 4;
            }
            if(param1 == "putty_grenade")
            {
               _loc2_.DAMAGE = 100;
               _loc2_.PUTTY = true;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "putty_bomblet";
               _loc2_.BREAKINGAMOUNT = 8;
               _loc2_.TIMEOUT = 8000;
            }
         }
         if(param1 == "molotov")
         {
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 45;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.FIREONEXPLODE = true;
            _loc2_.FIREAMOUNT = 30;
         }
         if(param1 == "gravity_grenade")
         {
            _loc2_.DIAMETER = 600;
            _loc2_.DAMAGE = 1;
            _loc2_.GRAVITY = true;
            _loc2_.REFLECT = true;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.SHOW_TIMER = true;
            _loc2_.NOLANDSCAPEMODIFY = true;
            _loc2_.EXPLODEDISPLACE = 50;
            _loc2_.IMPACTMULTIPLY = 0.65;
            _loc2_.WAVEEXPLODE = true;
         }
         if(param1 == "holy_hand_grenade" || param1 == "super_hhg" || param1 == "holy_strike")
         {
            _loc2_.DIAMETER = 200;
            _loc2_.DAMAGE = 160;
            _loc2_.GRAVITY = true;
            _loc2_.SROTATING = true;
            if(param1 == "holy_strike")
            {
               _loc2_.INSTANTEXPLODE = true;
               _loc2_.ADVANCEDCALC = true;
            }
            else
            {
               _loc2_.REFLECT = true;
               _loc2_.RESTINGEXPLODE = true;
            }
            if(param1 == "super_hhg")
            {
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
            }
         }
         if(param1 == "mortar" || param1 == "upg_mortar")
         {
            _loc2_.DIAMETER = 50;
            _loc2_.DAMAGE = 15;
            if(param1 == "upg_mortar")
            {
               _loc2_.DAMAGE = 25;
            }
            _loc2_.GRAVITY = true;
            _loc2_.EXHAUST = true;
            _loc2_.EXHAUSTTYPE = "standard_exhaust";
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.VROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.BREAKING = true;
            _loc2_.BREAKINGTYPE = "bomblet";
            _loc2_.BREAKINGAMOUNT = 5;
         }
         if(param1 == "pistol" || param1 == "uzi" || param1 == "unfail_uzi" || param1 == "hunting_rifle" || param1 == "sniper_rifle" || param1 == "rad_rifle" || param1 == "peacemaker" || param1 == "shotgun" || param1 == "minigun" || param1 == "unfail_minigun" || param1 == "air_minigun" || param1 == "bozar" || param1 == "avenger" || param1 == "beretta" || param1 == "hearts_ace" || param1 == "bozar16" || param1 == "bozar24s")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            if(param1 == "pistol")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 6;
            }
            else if(param1 == "uzi" || param1 == "unfail_uzi")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 5;
            }
            else if(param1 == "sniper_rifle" || param1 == "peacemaker")
            {
               _loc2_.DIAMETER = 50;
               _loc2_.DAMAGE = 250;
            }
            else if(param1 == "hearts_ace")
            {
               _loc2_.DIAMETER = 50;
               _loc2_.DAMAGE = 300;
            }
            else if(param1 == "rad_rifle")
            {
               _loc2_.DIAMETER = 50;
               _loc2_.DAMAGE = 900;
            }
            else if(param1 == "shotgun")
            {
               _loc2_.DIAMETER = 50;
               _loc2_.DAMAGE = 25;
            }
            else if(param1 == "hunting_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 8;
            }
            else if(param1 == "minigun" || param1 == "unfail_minigun")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 4;
            }
            else if(param1 == "air_minigun")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 12;
            }
            else if(param1 == "bozar")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 26;
            }
            else if(param1 == "bozar16")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 100;
            }
            else if(param1 == "bozar24s")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 125;
            }
            else if(param1 == "avenger")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 40;
            }
            else if(param1 == "beretta")
            {
               _loc2_.DIAMETER = 50;
               _loc2_.DAMAGE = 75;
            }
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.VROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
            if(param1 == "hunting_rifle")
            {
               _loc2_.IMPACTMULTIPLY = 0.25;
            }
         }
         if(param1 == "air_strike")
         {
            _loc2_.DIAMETER = 50;
            _loc2_.DAMAGE = 25;
            _loc2_.GRAVITY = true;
            _loc2_.EXHAUST = true;
            _loc2_.EXHAUSTTYPE = "standard_exhaust";
            _loc2_.EXHAUSTTIME = 4;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.VROTATING = true;
            _loc2_.ADVANCEDCALC = true;
         }
         if(param1 == "mine_strike")
         {
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 50;
            _loc2_.GRAVITY = true;
            _loc2_.REFLECT = true;
            _loc2_.SROTATING = true;
            _loc2_.TIMEOUT = 3000;
            if(_this.player.perks["miner"])
            {
               _loc2_.TIMEOUT = 1000 * _this.get_perk_effect("miner",_this.player.perks.miner,"") + 1;
            }
         }
         if(param1 == "banana_strike")
         {
            _loc2_.DAMAGE = 75;
            _loc2_.DIAMETER = 150;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.SHOW_TIMER = true;
            _loc2_.BREAKING = true;
            _loc2_.BREAKINGTYPE = "banana";
            _loc2_.BREAKINGAMOUNT = 3;
            _loc2_.ADVANCEDCALC = true;
         }
         if(param1 == "mine" || param1 == "unfail_mine" || param1 == "fire_mine" || param1 == "plasma_mine" || param1 == "pulse_mine" || param1 == "nuclear_mine")
         {
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 50;
            _loc2_.GRAVITY = true;
            _loc2_.REFLECT = true;
            _loc2_.TIMEOUT = 3000;
            if(_this.player.perks["miner"])
            {
               _loc2_.TIMEOUT = 1000 * _this.get_perk_effect("miner",_this.player.perks.miner,"") + 1;
            }
            _loc2_.SROTATING = true;
            if(param1 == "fire_mine")
            {
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
            }
            if(param1 == "plasma_mine")
            {
               _loc2_.DAMAGE = 110;
            }
            if(param1 == "pulse_mine")
            {
               _loc2_.DAMAGE = 110;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
            }
            if(param1 == "nuclear_mine")
            {
               _loc2_.DIAMETER = 150;
               _loc2_.DAMAGE = 450;
               _loc2_.POISONONEXPLODE = true;
            }
         }
         if(param1 == "dynamite" || param1 == "unfail_dynamite" || param1 == "dynamite_bunch")
         {
            _loc2_.DIAMETER = 150;
            _loc2_.DAMAGE = 75;
            _loc2_.EXPLODEDISPLACE = 18;
            _loc2_.BOUNCE_X = 0;
            _loc2_.BOUNCE_Y = 0.4;
            _loc2_.GRAVITY = true;
            _loc2_.REFLECT = true;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.TIMEOUT = 5000;
            if(param1 == "dynamite_bunch")
            {
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "dynamite_bomblet";
               _loc2_.BREAKINGAMOUNT = 3;
            }
         }
         if(param1 == "sheep" || param1 == "unfail_sheep" || param1 == "fire_sheep" || param1 == "poison_sheep" || param1 == "mine_sheep" || param1 == "mine_sheep2")
         {
            _loc2_.W = 6;
            _loc2_.H = 16;
            _loc2_.DIAMETER = 150;
            _loc2_.DAMAGE = 75;
            _loc2_.EXPLODEDISPLACE = 18;
            _loc2_.GRAVITY = true;
            _loc2_.FUSETIMEOUT = 19000;
            _loc2_.TIMEOUT = 20000;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.CONTROLEXPLODE = true;
            _loc2_.MOVING = true;
            _loc2_.MOVINGJUMP = true;
            if(param1 == "fire_sheep")
            {
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
            }
            if(param1 == "poison_sheep")
            {
               _loc2_.POISONONEXPLODE = true;
            }
            if(param1 == "mine_sheep")
            {
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "mine";
               _loc2_.BREAKINGAMOUNT = 5;
            }
            if(param1 == "mine_sheep2")
            {
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "plasma_mine";
               _loc2_.BREAKINGAMOUNT = 8;
            }
         }
         if(param1 == "old_woman" || param1 == "unfail_old_woman")
         {
            _loc2_.W = 6;
            _loc2_.H = 16;
            _loc2_.DIAMETER = 150;
            _loc2_.DAMAGE = 75;
            _loc2_.EXPLODEDISPLACE = 18;
            _loc2_.GRAVITY = true;
            _loc2_.FUSETIMEOUT = 19000;
            _loc2_.TIMEOUT = 20000;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.CONTROLEXPLODE = true;
            _loc2_.MOVING = true;
         }
         if(param1 == "fireball")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.ADV_W = 20;
            _loc2_.ADV_H = 20;
            _loc2_.DIAMETER = 15;
            _loc2_.NOLANDSCAPEMODIFY = true;
            _loc2_.DAMAGE = 30;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.DIRECTROTATING = true;
            _loc2_.TIMEOUT = 1152;
            if(_this.player.perks["dragonball"])
            {
               _loc2_.TIMEOUT *= _this.get_perk_effect("dragonball",_this.player.perks.dragonball,"");
            }
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
            _loc2_.IMPACTMULTIPLY = 10;
         }
         if(param1 == "laser_pistol" || param1 == "laser_pistol2" || param1 == "laser_rifle" || param1 == "unfail_laser_rifle" || param1 == "laser_minigun" || param1 == "plasma_pistol" || param1 == "plasma_rifle" || param1 == "unfail_plasma_rifle" || param1 == "plasma_minigun" || param1 == "pulse_pistol" || param1 == "luiston" || param1 == "de_lameter" || param1 == "turbo_rifle" || param1 == "laser_at_rifle" || param1 == "plasma_at_rifle" || param1 == "orbit_strike" || param1 == "ultra_rifle" || param1 == "vindicator")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            if(param1 == "laser_pistol" || param1 == "laser_rifle" || param1 == "unfail_laser_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 24;
            }
            else if(param1 == "laser_pistol2")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 30;
            }
            else if(param1 == "laser_minigun")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 32;
            }
            else if(param1 == "laser_at_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 250;
            }
            else if(param1 == "plasma_pistol" || param1 == "plasma_rifle" || param1 == "unfail_plasma_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 35;
            }
            else if(param1 == "plasma_at_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 450;
            }
            else if(param1 == "plasma_minigun")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 60;
            }
            else if(param1 == "pulse_pistol")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 900;
            }
            else if(param1 == "luiston" || param1 == "orbit_strike")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 1300;
            }
            else if(param1 == "de_lameter")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 1300;
               if(_this._world.chosen_map != "mission7" && _this._world.chosen_map != "mission8" && _this._world.chosen_map != "mission9" && _this._world.chosen_map != "mission10")
               {
                  _loc2_.MULTIPLEXPLOSIONS = 3;
                  _loc2_.DAMAGE = 1850;
               }
            }
            else if(param1 == "turbo_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 1400;
            }
            else if(param1 == "ultra_rifle" || param1 == "vindicator")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 2000;
               _loc2_.ULTRA = true;
            }
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.VROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
         }
         if(param1 == "gauss_pistol" || param1 == "gauss_pistol2" || param1 == "gauss_rifle" || param1 == "unfail_gauss_rifle" || param1 == "gauss_minigun")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            _loc2_.DIAMETER = 24;
            if(param1 == "gauss_pistol")
            {
               _loc2_.DAMAGE = 350;
            }
            else if(param1 == "gauss_pistol2")
            {
               _loc2_.DAMAGE = 375;
            }
            else if(param1 == "gauss_minigun")
            {
               _loc2_.DAMAGE = 375;
            }
            else if(param1 == "gauss_rifle" || param1 == "unfail_gauss_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 600;
            }
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
         }
         if(param1 == "ec_caws" || param1 == "ec_panhammer")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 2000;
            if(param1 == "ec_panhammer")
            {
               _loc2_.DAMAGE = 2500;
            }
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
         }
         if(param1 == "void_melody")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 15000;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
            _loc2_.KENTONWAVE = true;
            _loc2_.DAMAGEWAVEDMG = 50;
         }
         if(param1 == "annihilator")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            _loc2_.DIAMETER = 300;
            _loc2_.DAMAGE = 12000;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.VROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
            _loc2_.ANNIHILATOR = true;
         }
         if(param1 == "bomblet")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 50;
            _loc2_.DAMAGE = 15;
            _loc2_.GRAVITY = true;
            _loc2_.EXHAUST = true;
            _loc2_.EXHAUSTTYPE = "standard_exhaust";
            _loc2_.EXHAUSTTIME = 4;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
         }
         if(param1 == "rj_bomblet")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 85;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
         }
         if(param1 == "banana")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 75;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
         }
         if(param1 == "breaking_banana")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 75;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.BREAKING = true;
            _loc2_.BREAKINGTYPE = "mini_banana";
            _loc2_.BREAKINGAMOUNT = 3;
         }
         if(param1 == "mini_banana")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 50;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
         }
         if(param1 == "dynamite_bomblet")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 150;
            _loc2_.DAMAGE = 75;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
         }
         if(param1 == "putty_bomblet")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 50;
            _loc2_.DAMAGE = 100;
            _loc2_.GRAVITY = true;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.REFLECT = true;
            _loc2_.PUTTY = true;
            _loc2_.TIMEOUT = 3000;
         }
         if(param1 == "worm_explode" || param1 == "worm_explode_100" || param1 == "worm_explode_150" || param1 == "worm_explode_200")
         {
            _loc2_.DIAMETER = 50;
            _loc2_.DAMAGE = 1;
            if(param1 == "worm_explode")
            {
               _loc2_.DAMAGE = 25;
            }
            if(param1 == "worm_explode_100")
            {
               _loc2_.DIAMETER = 100;
            }
            if(param1 == "worm_explode_150")
            {
               _loc2_.DIAMETER = 150;
            }
            if(param1 == "worm_explode_200")
            {
               _loc2_.DIAMETER = 200;
            }
            _loc2_.INITEXPLODE = true;
         }
         if(param1 == "howitzer_impact")
         {
            _loc2_.DIAMETER = 50;
            _loc2_.DAMAGE = 500;
            _loc2_.INITEXPLODE = true;
         }
         if(param1 == "turbo_rifle_fail")
         {
            _loc2_.DIAMETER = 24;
            _loc2_.DAMAGE = 7000;
            _loc2_.INITEXPLODE = true;
         }
         if(param1 == "vindicator_fail")
         {
            _loc2_.DIAMETER = 24;
            _loc2_.DAMAGE = 10000;
            _loc2_.INITEXPLODE = true;
         }
         if(param1 == "null_explode")
         {
            _loc2_.DIAMETER = 0;
            _loc2_.DAMAGE = 0;
            _loc2_.INITEXPLODE = true;
         }
         if(param1 == "drum")
         {
            _loc2_.DIAMETER = 25;
            _loc2_.DAMAGE = 50;
         }
         if(param1 == "crate")
         {
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 50;
            _loc2_.GRAVITY = true;
            _loc2_.REFLECT = true;
            _loc2_.W = 10;
            _loc2_.H = 10;
         }
         return _loc2_;
      
    };
    execute();
    return _loc2_;
}
module.exports = get_object_flags;
