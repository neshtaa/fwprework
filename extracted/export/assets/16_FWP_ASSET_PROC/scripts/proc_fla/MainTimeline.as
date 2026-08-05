package proc_fla
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
         if(param1 == "ag_all")
         {
            return new ag_all();
         }
         return {};
      }
      
      function frame1() : *
      {
         Security.allowDomain("*");
      }
   }
}
