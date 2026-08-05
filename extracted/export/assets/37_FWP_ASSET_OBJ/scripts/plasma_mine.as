package
{
   import flash.display.MovieClip;
   
   public dynamic class plasma_mine extends MovieClip
   {
       
      
      public function plasma_mine()
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
