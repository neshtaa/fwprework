package obj_fla
{
   import flash.display.MovieClip;
   import flash.system.Security;
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function get_object(param1:String) : *
      {
         var _loc2_:* = undefined;
         if(param1 == "worm")
         {
            _loc2_ = new worm();
         }
         if(param1 == "bazooka")
         {
            _loc2_ = new bazooka();
         }
         if(param1 == "unfail_bazooka")
         {
            _loc2_ = new bazooka();
         }
         if(param1 == "fire_bazooka")
         {
            _loc2_ = new fire_bazooka();
         }
         if(param1 == "poison_bazooka")
         {
            _loc2_ = new poison_bazooka();
         }
         if(param1 == "ap_bazooka")
         {
            _loc2_ = new ap_bazooka();
         }
         if(param1 == "howitzer")
         {
            _loc2_ = new howitzer();
         }
         if(param1 == "grenade")
         {
            _loc2_ = new grenade();
         }
         if(param1 == "unfail_grenade")
         {
            _loc2_ = new grenade();
         }
         if(param1 == "plasma_grenade")
         {
            _loc2_ = new plasma_grenade();
         }
         if(param1 == "pulse_grenade")
         {
            _loc2_ = new pulse_grenade();
         }
         if(param1 == "cluster_bomb")
         {
            _loc2_ = new cluster_bomb();
         }
         if(param1 == "unfail_cluster_bomb")
         {
            _loc2_ = new cluster_bomb();
         }
         if(param1 == "putty_grenade")
         {
            _loc2_ = new putty_grenade();
         }
         if(param1 == "molotov")
         {
            _loc2_ = new molotov();
         }
         if(param1 == "mortar")
         {
            _loc2_ = new mortar();
         }
         if(param1 == "upg_mortar")
         {
            _loc2_ = new upg_mortar();
         }
         if(param1 == "banana_bomb")
         {
            _loc2_ = new banana();
         }
         if(param1 == "unfail_banana_bomb")
         {
            _loc2_ = new banana();
         }
         if(param1 == "super_banana_bomb")
         {
            _loc2_ = new banana();
         }
         if(param1 == "nuclear_bomb")
         {
            _loc2_ = new nuclear_bomb();
         }
         if(param1 == "nuclear_bomb2")
         {
            _loc2_ = new nuclear_bomb2();
         }
         if(param1 == "multi_bazooka")
         {
            _loc2_ = new bazooka();
         }
         if(param1 == "holy_hand_grenade")
         {
            _loc2_ = new holy_hand_grenade();
         }
         if(param1 == "super_hhg")
         {
            _loc2_ = new super_hhg();
         }
         if(param1 == "dl19")
         {
            _loc2_ = new dl19();
         }
         if(param1 == "rj46")
         {
            _loc2_ = new rj46();
         }
         if(param1 == "ap_bazooka2")
         {
            _loc2_ = new ap_bazooka2();
         }
         if(param1 == "mega_banana_bomb")
         {
            _loc2_ = new banana();
         }
         if(param1 == "gravity_grenade")
         {
            _loc2_ = new gravity_grenade();
         }
         if(param1 == "pistol")
         {
            _loc2_ = new bullet_standard();
         }
         if(param1 == "uzi")
         {
            _loc2_ = new bullet_standard();
         }
         if(param1 == "unfail_uzi")
         {
            _loc2_ = new bullet_standard();
         }
         if(param1 == "hunting_rifle")
         {
            _loc2_ = new bullet_shotgun();
         }
         if(param1 == "sniper_rifle")
         {
            _loc2_ = new bullet_shotgun();
         }
         if(param1 == "peacemaker")
         {
            _loc2_ = new bullet_shotgun();
         }
         if(param1 == "hearts_ace")
         {
            _loc2_ = new bullet_shotgun();
         }
         if(param1 == "rad_rifle")
         {
            _loc2_ = new bullet_shotgun();
         }
         if(param1 == "shotgun")
         {
            _loc2_ = new bullet_shotgun();
         }
         if(param1 == "minigun")
         {
            _loc2_ = new bullet_minigun();
         }
         if(param1 == "unfail_minigun")
         {
            _loc2_ = new bullet_minigun();
         }
         if(param1 == "air_minigun")
         {
            _loc2_ = new bullet_minigun();
         }
         if(param1 == "bozar")
         {
            _loc2_ = new bullet_shotgun();
         }
         if(param1 == "bozar16")
         {
            _loc2_ = new bullet_shotgun();
         }
         if(param1 == "bozar24s")
         {
            _loc2_ = new bullet_shotgun();
         }
         if(param1 == "avenger")
         {
            _loc2_ = new bullet_shotgun();
         }
         if(param1 == "air_strike")
         {
            _loc2_ = new air_strike();
         }
         if(param1 == "mine_strike")
         {
            _loc2_ = new mine();
         }
         if(param1 == "banana_strike")
         {
            _loc2_ = new banana();
         }
         if(param1 == "holy_strike")
         {
            _loc2_ = new holy_hand_grenade();
         }
         if(param1 == "mine")
         {
            _loc2_ = new mine();
         }
         if(param1 == "unfail_mine")
         {
            _loc2_ = new mine();
         }
         if(param1 == "fire_mine")
         {
            _loc2_ = new fire_mine();
         }
         if(param1 == "plasma_mine")
         {
            _loc2_ = new plasma_mine();
         }
         if(param1 == "pulse_mine")
         {
            _loc2_ = new pulse_mine();
         }
         if(param1 == "nuclear_mine")
         {
            _loc2_ = new nuclear_mine();
         }
         if(param1 == "dynamite")
         {
            _loc2_ = new dynamite();
         }
         if(param1 == "unfail_dynamite")
         {
            _loc2_ = new dynamite();
         }
         if(param1 == "dynamite_bunch")
         {
            _loc2_ = new dynamite_bunch();
         }
         if(param1 == "old_woman")
         {
            _loc2_ = new old_woman();
         }
         if(param1 == "unfail_old_woman")
         {
            _loc2_ = new old_woman();
         }
         if(param1 == "sheep")
         {
            _loc2_ = new sheep();
         }
         if(param1 == "unfail_sheep")
         {
            _loc2_ = new sheep();
         }
         if(param1 == "fire_sheep")
         {
            _loc2_ = new sheep();
         }
         if(param1 == "poison_sheep")
         {
            _loc2_ = new sheep();
         }
         if(param1 == "mine_sheep")
         {
            _loc2_ = new mine_sheep();
         }
         if(param1 == "mine_sheep2")
         {
            _loc2_ = new mine_sheep2();
         }
         if(param1 == "fireball")
         {
            _loc2_ = new fireball();
         }
         if(param1 == "laser_pistol")
         {
            _loc2_ = new laser();
         }
         if(param1 == "laser_pistol2")
         {
            _loc2_ = new laser();
         }
         if(param1 == "laser_rifle")
         {
            _loc2_ = new laser();
         }
         if(param1 == "unfail_laser_rifle")
         {
            _loc2_ = new laser();
         }
         if(param1 == "laser_minigun")
         {
            _loc2_ = new laser();
         }
         if(param1 == "pulse_pistol")
         {
            _loc2_ = new pulse();
         }
         if(param1 == "plasma_pistol")
         {
            _loc2_ = new plasma();
         }
         if(param1 == "plasma_rifle")
         {
            _loc2_ = new plasma();
         }
         if(param1 == "unfail_plasma_rifle")
         {
            _loc2_ = new plasma();
         }
         if(param1 == "plasma_minigun")
         {
            _loc2_ = new plasma();
         }
         if(param1 == "luiston")
         {
            _loc2_ = new pulse();
         }
         if(param1 == "gauss_pistol")
         {
            _loc2_ = new gauss();
         }
         if(param1 == "gauss_pistol2")
         {
            _loc2_ = new gauss();
         }
         if(param1 == "gauss_rifle")
         {
            _loc2_ = new gauss();
         }
         if(param1 == "unfail_gauss_rifle")
         {
            _loc2_ = new gauss();
         }
         if(param1 == "gauss_minigun")
         {
            _loc2_ = new gauss();
         }
         if(param1 == "de_lameter")
         {
            _loc2_ = new de_lameter();
         }
         if(param1 == "turbo_rifle")
         {
            _loc2_ = new pulse();
         }
         if(param1 == "orbit_strike")
         {
            _loc2_ = new pulse();
         }
         if(param1 == "ultra_rifle")
         {
            _loc2_ = new ultra();
         }
         if(param1 == "vindicator")
         {
            _loc2_ = new ultra();
         }
         if(param1 == "beretta")
         {
            _loc2_ = new bullet_minigun();
         }
         if(param1 == "laser_at_rifle")
         {
            _loc2_ = new laser();
         }
         if(param1 == "plasma_at_rifle")
         {
            _loc2_ = new plasma();
         }
         if(param1 == "multip14")
         {
            _loc2_ = new multip14();
         }
         if(param1 == "multip17")
         {
            _loc2_ = new multip17();
         }
         if(param1 == "multip83")
         {
            _loc2_ = new multip17();
         }
         if(param1 == "rainbow_burst")
         {
            _loc2_ = new rainbow_burst();
         }
         if(param1 == "infinity_rainbow")
         {
            _loc2_ = new infinity_rainbow();
         }
         if(param1 == "skyfire")
         {
            _loc2_ = new infinity_rainbow();
         }
         if(param1 == "ec_caws")
         {
            _loc2_ = new gauss();
         }
         if(param1 == "ec_panhammer")
         {
            _loc2_ = new gauss();
         }
         if(param1 == "kenton_bazooka")
         {
            _loc2_ = new kenton_bazooka();
         }
         if(param1 == "kenton_grenade")
         {
            _loc2_ = new kenton_grenade();
         }
         if(param1 == "void_melody")
         {
            _loc2_ = new gauss();
         }
         if(param1 == "annihilator")
         {
            _loc2_ = new annihilator();
         }
         if(param1 == "bomblet")
         {
            _loc2_ = new bomblet();
         }
         if(param1 == "rj_bomblet")
         {
            _loc2_ = new rj_bomblet();
         }
         if(param1 == "banana")
         {
            _loc2_ = new banana();
         }
         if(param1 == "breaking_banana")
         {
            _loc2_ = new banana();
         }
         if(param1 == "mini_banana")
         {
            _loc2_ = new banana();
         }
         if(param1 == "dynamite_bomblet")
         {
            _loc2_ = new dynamite();
         }
         if(param1 == "putty_bomblet")
         {
            _loc2_ = new putty_bomblet();
         }
         if(param1 == "fire")
         {
            _loc2_ = new fire();
         }
         if(param1 == "napalm_fire")
         {
            _loc2_ = new fire();
         }
         if(param1 == "drum")
         {
            _loc2_ = new drum();
         }
         if(param1 == "crate")
         {
            _loc2_ = new crate();
         }
         if(param1 == "explosion50")
         {
            _loc2_ = new explosion50();
         }
         if(param1 == "explosion100")
         {
            _loc2_ = new explosion100();
         }
         if(param1 == "explosion150")
         {
            _loc2_ = new explosion150();
         }
         if(param1 == "explosion200")
         {
            _loc2_ = new explosion200();
         }
         if(param1 == "explosion_annihilator")
         {
            _loc2_ = new explosion_annihilator();
         }
         if(param1 == "explosion_wave")
         {
            _loc2_ = new explosion_wave();
         }
         if(param1 == "damage_wave")
         {
            _loc2_ = new damage_wave();
         }
         if(param1 == "kenton_wave")
         {
            _loc2_ = new kenton_wave();
         }
         if(param1 == "explosion_pulse")
         {
            _loc2_ = new explosion_pulse();
         }
         if(param1 == "standard_exhaust")
         {
            _loc2_ = new standard_exhaust();
         }
         if(param1 == "damage_clip")
         {
            _loc2_ = new damage_clip();
         }
         if(param1 == "choose_worm")
         {
            _loc2_ = new choose_worm();
         }
         if(param1 == "luck")
         {
            _loc2_ = new luck();
         }
         if(param1 == "poison")
         {
            _loc2_ = new poison();
         }
         if(param1 == "poison_rad")
         {
            _loc2_ = new poison_rad();
         }
         if(param1 == "virtual")
         {
            _loc2_ = new MovieClip();
         }
         if(param1 == "worm_explode")
         {
            _loc2_ = new MovieClip();
         }
         if(param1 == "worm_explode_100")
         {
            _loc2_ = new MovieClip();
         }
         if(param1 == "worm_explode_150")
         {
            _loc2_ = new MovieClip();
         }
         if(param1 == "worm_explode_200")
         {
            _loc2_ = new MovieClip();
         }
         if(param1 == "howitzer_impact")
         {
            _loc2_ = new MovieClip();
         }
         if(param1 == "turbo_rifle_fail")
         {
            _loc2_ = new MovieClip();
         }
         if(param1 == "vindicator_fail")
         {
            _loc2_ = new MovieClip();
         }
         if(param1 == "null_explode")
         {
            _loc2_ = new MovieClip();
         }
         if(param1 == "mad_cow")
         {
            _loc2_ = new mad_cow();
         }
         return _loc2_;
      }
      
      function frame1() : *
      {
         Security.allowDomain("*");
      }
   }
}
