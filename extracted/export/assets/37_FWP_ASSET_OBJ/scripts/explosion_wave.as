package
{
   import flash.display.MovieClip;
   
   public dynamic class explosion_wave extends MovieClip
   {
       
      
      public function explosion_wave()
      {
         super();
         addFrameScript(13,this.frame14);
      }
      
      function frame14() : *
      {
         stop();
      }
   }
}
