package obj_fla
{
   import flash.display.MovieClip;
   
   public dynamic class worm_hpbox_border_83 extends MovieClip
   {
       
      
      public function worm_hpbox_border_83()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
         trace("lold " + parent.parent.parent.x);
      }
   }
}
