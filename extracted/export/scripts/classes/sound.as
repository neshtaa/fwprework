package classes
{
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.media.*;
   
   public class sound extends MovieClip
   {
       
      
      public var FWP;
      
      public var sounds:Object;
      
      public var sound_channels:Object;
      
      public function sound(param1:*)
      {
         this.sounds = {};
         this.sound_channels = {};
         super();
         this.FWP = param1;
         this.sounds.new_level = this.FWP.container_sound.get_object("new_level");
         this.sounds.air_strike = this.FWP.container_sound.get_object("air_strike");
         this.sounds.backflip = this.FWP.container_sound.get_object("backflip");
         this.sounds.banana = this.FWP.container_sound.get_object("banana");
         this.sounds.baseball_bat = this.FWP.container_sound.get_object("baseball_bat");
         this.sounds.blow_torch = this.FWP.container_sound.get_object("blow_torch");
         this.sounds.dragon_ball = this.FWP.container_sound.get_object("dragon_ball");
         this.sounds.drill = this.FWP.container_sound.get_object("drill");
         this.sounds.explosion1 = this.FWP.container_sound.get_object("explosion1");
         this.sounds.explosion2 = this.FWP.container_sound.get_object("explosion2");
         this.sounds.explosion3 = this.FWP.container_sound.get_object("explosion3");
         this.sounds.fire = this.FWP.container_sound.get_object("fire");
         this.sounds.firing = this.FWP.container_sound.get_object("firing");
         this.sounds.fuse = this.FWP.container_sound.get_object("fuse");
         this.sounds.gauss = this.FWP.container_sound.get_object("gauss");
         this.sounds.girder = this.FWP.container_sound.get_object("girder");
         this.sounds.grenade = this.FWP.container_sound.get_object("grenade");
         this.sounds.holy_hand_grenade = this.FWP.container_sound.get_object("holy_hand_grenade");
         this.sounds.jet_pack_finish = this.FWP.container_sound.get_object("jet_pack_finish");
         this.sounds.jet_pack = this.FWP.container_sound.get_object("jet_pack");
         this.sounds.jet_pack_start = this.FWP.container_sound.get_object("jet_pack_start");
         this.sounds.laser = this.FWP.container_sound.get_object("laser");
         this.sounds.mine_activate = this.FWP.container_sound.get_object("mine_activate");
         this.sounds.mine = this.FWP.container_sound.get_object("mine");
         this.sounds.mine_tick = this.FWP.container_sound.get_object("mine_tick");
         this.sounds.old_woman = this.FWP.container_sound.get_object("old_woman");
         this.sounds.petrol_bomb = this.FWP.container_sound.get_object("petrol_bomb");
         this.sounds.pistol = this.FWP.container_sound.get_object("pistol");
         this.sounds.plasma = this.FWP.container_sound.get_object("plasma");
         this.sounds.sheep = this.FWP.container_sound.get_object("sheep");
         this.sounds.shotgun = this.FWP.container_sound.get_object("shotgun");
         this.sounds.select_worm = this.FWP.container_sound.get_object("select_worm");
         this.sounds.sniper = this.FWP.container_sound.get_object("sniper");
         this.sounds.splash = this.FWP.container_sound.get_object("splash");
         this.sounds.teleport = this.FWP.container_sound.get_object("teleport");
         this.sounds.throwing = this.FWP.container_sound.get_object("baseball_bat");
         this.sounds.thunder1 = this.FWP.container_sound.get_object("thunder1");
         this.sounds.thunder2 = this.FWP.container_sound.get_object("thunder2");
         this.sounds.walk1 = this.FWP.container_sound.get_object("walk1");
         this.sounds.walk2 = this.FWP.container_sound.get_object("walk2");
         this.sounds.music = this.FWP.container_sound.get_object("_music");
         this.sound_channels["firing"] = this.sounds["firing"].play(0,0,new SoundTransform(0));
         this.sound_channels["blow_torch"] = this.sounds["blow_torch"].play(0,0,new SoundTransform(0));
         this.sound_channels["drill"] = this.sounds["drill"].play(0,0,new SoundTransform(0));
      }
      
      public function play_sound(param1:String, param2:Number = 1, param3:Boolean = false, param4:Boolean = false) : *
      {
         if(!this.FWP.SOUND && !param4)
         {
            return;
         }
         if(param1 == "explosion")
         {
            param1 = "explosion" + String(this.true_random(1,3));
         }
         if(param1 == "orbit")
         {
            this.play_sound("laser");
            this.play_sound("laser");
            this.play_sound("laser");
            this.play_sound("plasma");
            return;
         }
         if(param1 == "gauss_pistol" || param1 == "gauss_pistol2")
         {
            this.play_sound("gauss",0.5);
            return;
         }
         if(param1 == "gauss_rifle" || param1 == "unfail_gauss_rifle")
         {
            this.play_sound("gauss");
            return;
         }
         if(param1 == "ec")
         {
            this.play_sound("gauss");
            this.play_sound("sniper");
            return;
         }
         if(param1 == "pulse_pistol")
         {
            this.play_sound("laser",0.9);
            this.play_sound("plasma",0.6);
            this.play_sound("gauss",0.6);
            return;
         }
         if(param1 == "luiston")
         {
            this.play_sound("laser",0.6);
            this.play_sound("plasma",0.9);
            this.play_sound("gauss",0.6);
            return;
         }
         if(param1 == "de_lameter" || param1 == "turbo_rifle")
         {
            this.play_sound("laser",0.6);
            this.play_sound("plasma",0.6);
            this.play_sound("gauss",0.9);
            return;
         }
         if(param1 == "laser_at_rifle")
         {
            this.play_sound("laser");
            this.play_sound("laser");
            this.play_sound("laser");
            return;
         }
         if(param1 == "plasma_at_rifle")
         {
            this.play_sound("plasma");
            this.play_sound("plasma");
            this.play_sound("plasma");
            return;
         }
         if(param1 == "ultra_rifle" || param1 == "vindicator")
         {
            this.play_sound("plasma");
            this.play_sound("laser");
            this.play_sound("plasma");
            return;
         }
         if(param1 == "shotgun_3x")
         {
            this.play_sound("shotgun");
            this.play_sound("shotgun");
            this.play_sound("shotgun");
            return;
         }
         if(param1 == "uzi" || param1 == "unfail_uzi")
         {
            param1 = "pistol";
         }
         if(param1 == "peacemaker" || param1 == "hearts_ace" || param1 == "sniper_rifle" || param1 == "rad_rifle")
         {
            this.play_sound("sniper");
            return;
         }
         if(param1 == "minigun" || param1 == "unfail_minigun" || param1 == "air_minigun" || param1 == "avenger")
         {
            this.play_sound("shotgun");
            this.play_sound("pistol");
            return;
         }
         if(param1 == "bozar" || param1 == "bozar16" || param1 == "bozar24s")
         {
            this.play_sound("shotgun");
            this.play_sound("shotgun");
            this.play_sound("pistol");
            if(this.true_random(1,10) < 2)
            {
               this.play_sound("thunder" + String(this.true_random(1,2)));
            }
            return;
         }
         if(param1 == "laser_pistol" || param1 == "laser_pistol2")
         {
            param1 = "laser";
         }
         if(param1 == "plasma_pistol")
         {
            param1 = "plasma";
         }
         if(param1 == "laser_rifle" || param1 == "unfail_laser_rifle")
         {
            this.play_sound("laser");
            return;
         }
         if(param1 == "plasma_rifle" || param1 == "unfail_plasma_rifle")
         {
            this.play_sound("plasma");
            return;
         }
         if(param1 == "laser_minigun")
         {
            this.play_sound("laser");
            if(this.true_random(1,10) < 2)
            {
               this.play_sound("thunder" + String(this.true_random(1,2)));
            }
            return;
         }
         if(param1 == "plasma_minigun")
         {
            this.play_sound("plasma");
            if(this.true_random(1,10) < 2)
            {
               this.play_sound("thunder" + String(this.true_random(1,2)));
            }
            return;
         }
         if(param1 == "gauss_minigun")
         {
            this.play_sound("gauss");
            if(this.true_random(1,10) < 2)
            {
               this.play_sound("thunder" + String(this.true_random(1,2)));
            }
            return;
         }
         if(param1 == "blow_torch")
         {
            param3 = true;
         }
         if(param1 == "drill")
         {
            param3 = true;
         }
         if(param1 == "laser" || param1 == "plasma" || param1 == "gauss")
         {
            param2 *= 0.6;
         }
         this.sound_channels[param1] = this.sounds[param1].play(0,!!param3 ? 9999 : 0,new SoundTransform(param2));
         if(param1 == "jet_pack")
         {
            this.play_sound("jet_pack_start");
         }
         if(param1 == "fire" || param1 == "throwing")
         {
            this.stop_sound("firing");
         }
      }
      
      public function stop_sound(param1:String) : *
      {
         if(!this.FWP.SOUND)
         {
            return;
         }
         this.sound_channels[param1].stop();
         if(param1 == "jet_pack")
         {
            this.play_sound("jet_pack_finish");
         }
      }
      
      public function on_change(param1:String) : *
      {
         var _loc2_:* = undefined;
         if(param1 == "music")
         {
            if(this.FWP.MUSIC)
            {
               this.sound_channels.music = this.sounds.music.play(0,9999);
            }
            else
            {
               this.sound_channels.music.stop();
            }
         }
         if(param1 == "sound")
         {
            if(!this.FWP.SOUND)
            {
               for(_loc2_ in this.sound_channels)
               {
                  if(_loc2_ != "music")
                  {
                     this.sound_channels[_loc2_].stop();
                  }
               }
            }
         }
      }
      
      public function true_random(param1:Number, param2:Number) : Number
      {
         return Number(Math.floor(Math.random() * (param2 - param1 + 1)) + param1);
      }
   }
}
