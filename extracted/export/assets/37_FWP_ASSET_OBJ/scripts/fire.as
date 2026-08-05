package
{
   import flash.display.MovieClip;
   
   public dynamic class fire extends MovieClip
   {
       
      
      public var sprite:MovieClip;
      
      public function fire()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
      }
   }
}
