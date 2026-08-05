package vk.events
{
   import flash.events.Event;
   
   public class CustomEvent extends Event
   {
      
      public static const CONN_INIT:String = "onConnectionInit";
      
      public static const WINDOW_BLUR:String = "onWindowBlur";
      
      public static const WINDOW_FOCUS:String = "onWindowFocus";
      
      public static const APP_ADDED:String = "onApplicationAdded";
      
      public static const WALL_SAVE:String = "onWallPostSave";
      
      public static const WALL_CANCEL:String = "onWallPostCancel";
      
      public static const PHOTO_SAVE:String = "onProfilePhotoSave";
      
      public static const PHOTO_CANCEL:String = "onProfilePhotoCancel";
       
      
      private var _data:Object;
      
      private var _params:Array;
      
      public function CustomEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this._data = new Object();
         this._params = new Array();
         super(param1,param2,param3);
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         this._data = param1;
      }
      
      public function get params() : Array
      {
         return this._params;
      }
      
      public function set params(param1:Array) : void
      {
         this._params = param1;
      }
   }
}
