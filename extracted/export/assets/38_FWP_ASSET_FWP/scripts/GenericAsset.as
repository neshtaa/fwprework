package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.utils.getDefinitionByName;
   
   public class GenericAsset extends MovieClip
   {
       
      
      public var debug:TextField;
      
      public const BUILD_ID:Number = 6301;
      
      public function GenericAsset()
      {
         super();
      }
      
      public function get(param1:String, param2:Boolean = false) : *
      {
         var id:String = param1;
         var convertToBitmap:Boolean = param2;
         try
         {
            getDefinitionByName(id);
         }
         catch(e:Error)
         {
            throw new ArgumentError("Failed to get Object in " + this + ", id: " + id);
         }
         var rclass:Class = Object(getDefinitionByName(id)) as Class;
         var robject:* = new rclass();
         if(robject is BitmapData && convertToBitmap)
         {
            return new Bitmap(robject);
         }
         return robject;
      }
   }
}
