package sound_fla
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
         if(param1 == "new_level")
         {
            return new new_level();
         }
         if(param1 == "air_strike")
         {
            return new air_strike();
         }
         if(param1 == "backflip")
         {
            return new backflip();
         }
         if(param1 == "banana")
         {
            return new banana();
         }
         if(param1 == "baseball_bat")
         {
            return new baseball_bat();
         }
         if(param1 == "blow_torch")
         {
            return new blow_torch();
         }
         if(param1 == "dragon_ball")
         {
            return new dragon_ball();
         }
         if(param1 == "drill")
         {
            return new drill();
         }
         if(param1 == "explosion1")
         {
            return new explosion1();
         }
         if(param1 == "explosion2")
         {
            return new explosion2();
         }
         if(param1 == "explosion3")
         {
            return new explosion3();
         }
         if(param1 == "fire")
         {
            return new fire();
         }
         if(param1 == "firing")
         {
            return new firing();
         }
         if(param1 == "fuse")
         {
            return new fuse();
         }
         if(param1 == "gauss")
         {
            return new gauss();
         }
         if(param1 == "grenade")
         {
            return new grenade();
         }
         if(param1 == "girder")
         {
            return new girder();
         }
         if(param1 == "holy_hand_grenade")
         {
            return new holy_hand_grenade();
         }
         if(param1 == "jet_pack_finish")
         {
            return new jet_pack_finish();
         }
         if(param1 == "jet_pack")
         {
            return new jet_pack();
         }
         if(param1 == "jet_pack_start")
         {
            return new jet_pack_start();
         }
         if(param1 == "laser")
         {
            return new laser();
         }
         if(param1 == "mine_activate")
         {
            return new mine_activate();
         }
         if(param1 == "mine")
         {
            return new mine();
         }
         if(param1 == "mine_tick")
         {
            return new mine_tick();
         }
         if(param1 == "old_woman")
         {
            return new old_woman();
         }
         if(param1 == "petrol_bomb")
         {
            return new petrol_bomb();
         }
         if(param1 == "pistol")
         {
            return new pistol();
         }
         if(param1 == "plasma")
         {
            return new plasma();
         }
         if(param1 == "sheep")
         {
            return new sheep();
         }
         if(param1 == "shotgun")
         {
            return new shotgun();
         }
         if(param1 == "select_worm")
         {
            return new select_worm();
         }
         if(param1 == "sniper")
         {
            return new sniper();
         }
         if(param1 == "splash")
         {
            return new splash();
         }
         if(param1 == "teleport")
         {
            return new teleport();
         }
         if(param1 == "baseball_bat")
         {
            return new baseball_bat();
         }
         if(param1 == "thunder1")
         {
            return new thunder1();
         }
         if(param1 == "thunder2")
         {
            return new thunder2();
         }
         if(param1 == "walk1")
         {
            return new walk1();
         }
         if(param1 == "walk2")
         {
            return new walk2();
         }
         if(param1 == "_music")
         {
            return new _music();
         }
         return {};
      }
      
      function frame1() : *
      {
         Security.allowDomain("*");
      }
   }
}
