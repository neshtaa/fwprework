package com
{
   public class ProtectedInt
   {
      
      private static const MIN_MIX:int = -48151;
      
      private static const MAX_MIX:int = 62342;
       
      
      private var val:int;
      
      private var mix:int;
      
      public function ProtectedInt(param1:int = 0)
      {
         super();
         this.mix = int(Math.floor(MIN_MIX + (MAX_MIX - MIN_MIX) * Math.random()));
         this.val = param1 ^ this.mix;
      }
      
      public function get value() : int
      {
         return this.val ^ this.mix;
      }
      
      public function set value(param1:int) : void
      {
         this.val = param1 ^ this.mix;
      }
   }
}
