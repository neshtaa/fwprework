package
{
   import flash.display.MovieClip;
   
   public dynamic class fire_mine extends MovieClip
   {
       
      
      public function fire_mine()
      {
         super();
         addFrameScript(0,this.frame1,26,this.frame27);
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame27() : *
      {
         gotoAndPlay(2);
      }
   }
}
