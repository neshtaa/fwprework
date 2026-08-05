package vk
{
   import flash.events.EventDispatcher;
   import flash.external.*;
   import vk.events.*;
   
   public class EIApiConnection extends EventDispatcher
   {
       
      
      private var _apiOnComplete:Function;
      
      private var _apiOnError:Function;
      
      public function EIApiConnection()
      {
         super();
         if(ExternalInterface && ExternalInterface.available)
         {
            ExternalInterface.addCallback("apiCallback",this.apiCallback);
            ExternalInterface.addCallback("onWindowFocus",this.onWindowFocus);
            ExternalInterface.addCallback("onSettingsChanged",this.onSettingsChanged);
            ExternalInterface.addCallback("onOrderSuccess",this.onOrderSuccess);
            ExternalInterface.addCallback("onOrderCancel",this.onOrderCancel);
            ExternalInterface.addCallback("onOrderFail",this.onOrderFail);
            ExternalInterface.addCallback("onSubscriptionSuccess",this.onSubscriptionSuccess);
            ExternalInterface.addCallback("onSubscriptionCancel",this.onSubscriptionCancel);
            ExternalInterface.addCallback("onSubscriptionFail",this.onSubscriptionFail);
         }
      }
      
      public function callMethod(... rest) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Array = rest as Array;
         var _loc3_:String = _loc2_[0];
         var _loc5_:String = "";
         if(_loc2_.length == 2)
         {
            if((_loc4_ = _loc2_[1]) != null)
            {
               _loc5_ = JSON.stringify(_loc4_);
            }
            if(ExternalInterface && ExternalInterface.available)
            {
               ExternalInterface.call("callMethod",_loc3_,_loc5_);
            }
         }
         else if(_loc2_.length == 3)
         {
            if((_loc4_ = _loc2_[2]) != null)
            {
               _loc5_ = JSON.stringify(_loc4_);
            }
            if(ExternalInterface && ExternalInterface.available)
            {
               ExternalInterface.call("callMethod3p",_loc3_,_loc2_[1],_loc5_);
            }
         }
      }
      
      public function api(param1:String, param2:Object, param3:Function = null, param4:Function = null) : void
      {
         this._apiOnComplete = param3;
         this._apiOnError = param4;
         if(ExternalInterface && ExternalInterface.available)
         {
            ExternalInterface.call("api",param1,JSON.stringify(param2));
         }
      }
      
      private function apiCallback(param1:String) : void
      {
         var _loc2_:Object = JSON.parse(param1);
         if(_loc2_ && _loc2_["response"])
         {
            this._apiOnComplete(_loc2_["response"]);
         }
         else
         {
            this._apiOnError(_loc2_);
         }
      }
      
      private function onWindowFocus(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onWindowFocus");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onSettingsChanged(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onSettingsChanged");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onOrderSuccess(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onOrderSuccess");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onOrderCancel(... rest) : void
      {
         this.debug("onOrderCancel");
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onOrderCancel");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onOrderFail(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onOrderFail");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onSubscriptionSuccess(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onSubscriptionSuccess");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onSubscriptionCancel(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onSubscriptionCancel");
         this.customEvent.apply(this,_loc2_);
      }
      
      private function onSubscriptionFail(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         _loc2_.unshift("onSubscriptionFail");
         this.customEvent.apply(this,_loc2_);
      }
      
      public function customEvent(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         var _loc3_:String = _loc2_.shift();
         this.debug(_loc3_);
         var _loc4_:CustomEvent;
         (_loc4_ = new CustomEvent(_loc3_)).params = _loc2_;
         dispatchEvent(_loc4_);
      }
      
      public function debug(param1:*) : void
      {
         if(!param1 || !param1.toString)
         {
            return;
         }
         if(ExternalInterface && ExternalInterface.available)
         {
            ExternalInterface.call("debug","Debug EIApiConnection: " + param1.toString());
         }
      }
   }
}
