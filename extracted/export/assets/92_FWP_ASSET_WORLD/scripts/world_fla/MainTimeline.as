package world_fla
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
         if(param1 == "mission16_protect1")
         {
            return new mission16_protect1();
         }
         if(param1 == "mission16_protect2")
         {
            return new mission16_protect2();
         }
         if(param1 == "background_wormville")
         {
            return new background_wormville();
         }
         if(param1 == "background_molivand")
         {
            return new background_molivand();
         }
         if(param1 == "background_rolitrad")
         {
            return new background_rolitrad();
         }
         if(param1 == "background_traver")
         {
            return new background_traver();
         }
         if(param1 == "background_sheovar")
         {
            return new background_sheovar();
         }
         if(param1 == "background_forbidden1")
         {
            return new background_forbidden1();
         }
         if(param1 == "background_forbidden2")
         {
            return new background_forbidden2();
         }
         if(param1 == "background_cave_mission")
         {
            return new background_cave_mission();
         }
         if(param1 == "bg_caves_mc")
         {
            return new bg_caves_mc();
         }
         if(param1 == "bg_desert_mc")
         {
            return new bg_desert_mc();
         }
         if(param1 == "bg_dungeon_mc")
         {
            return new bg_dungeon_mc();
         }
         if(param1 == "bg_grass_mc")
         {
            return new bg_grass_mc();
         }
         if(param1 == "bg_gulf_mc")
         {
            return new bg_gulf_mc();
         }
         if(param1 == "bg_snow_mc")
         {
            return new bg_snow_mc();
         }
         if(param1 == "bg_kenton_mc")
         {
            return new bg_kenton_mc();
         }
         if(param1 == "water_part")
         {
            return new water_part();
         }
         if(param1 == "explode24border")
         {
            return new explode24border();
         }
         if(param1 == "explode50border")
         {
            return new explode50border();
         }
         if(param1 == "explode100border")
         {
            return new explode100border();
         }
         if(param1 == "explode150border")
         {
            return new explode150border();
         }
         if(param1 == "explode200border")
         {
            return new explode200border();
         }
         if(param1 == "explode300border")
         {
            return new explode300border();
         }
         if(param1 == "explode400border")
         {
            return new explode400border();
         }
         if(param1 == "explode24mask")
         {
            return new explode24mask();
         }
         if(param1 == "explode50mask")
         {
            return new explode50mask();
         }
         if(param1 == "explode100mask")
         {
            return new explode100mask();
         }
         if(param1 == "explode150mask")
         {
            return new explode150mask();
         }
         if(param1 == "explode200mask")
         {
            return new explode200mask();
         }
         if(param1 == "explode300mask")
         {
            return new explode300mask();
         }
         if(param1 == "explode400mask")
         {
            return new explode400mask();
         }
         return {};
      }
      
      function frame1() : *
      {
         Security.allowDomain("*");
      }
   }
}
