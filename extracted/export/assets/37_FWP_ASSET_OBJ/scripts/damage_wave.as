package
{
   import flash.display.MovieClip;
   
   public dynamic class damage_wave extends MovieClip
   {
       
      
      public function damage_wave()
      {
         super();
         addFrameScript(10,this.frame11);
      }
      
      function frame11() : *
      {
         stop();
      }
   }
}
