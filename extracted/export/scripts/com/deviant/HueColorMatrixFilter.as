package com.deviant
{
   import flash.filters.*;
   
   public class HueColorMatrixFilter
   {
       
      
      private var matrix:Array;
      
      private var _h:Number = 0;
      
      public function HueColorMatrixFilter()
      {
         super();
         this.Identity();
      }
      
      private function Identity() : void
      {
         this.matrix = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
      }
      
      public function reset() : void
      {
         this.Identity();
      }
      
      public function set Saturation(param1:Number) : void
      {
         param1 = param1 > 1 ? Number(1) : (param1 < 0 ? Number(0) : Number(param1));
         var _loc2_:Array = [0.213,0.715,0.072,0.213,0.715,0.072,0.213,0.715,0.072];
         var _loc3_:Array = [0.787,-0.715,-0.072,-0.212,0.285,-0.072,-0.213,-0.715,0.928];
         var _loc4_:Array = this.add(_loc2_,this.multiply(param1,_loc3_));
         this.concat([_loc4_[0],_loc4_[1],_loc4_[2],0,0,_loc4_[3],_loc4_[4],_loc4_[5],0,0,_loc4_[6],_loc4_[7],_loc4_[8],0,0,0,0,0,1,0]);
      }
      
      public function set Hue(param1:Number) : void
      {
         this._h = param1;
         param1 = this._h * 0.0174532925;
         var _loc2_:Array = [0.213,0.715,0.072,0.213,0.715,0.072,0.213,0.715,0.072];
         var _loc3_:Array = [0.787,-0.715,-0.072,-0.212,0.285,-0.072,-0.213,-0.715,0.928];
         var _loc4_:Array = [-0.213,-0.715,0.928,0.143,0.14,-0.283,-0.787,0.715,0.072];
         var _loc5_:Array = this.add(_loc2_,this.add(this.multiply(Math.cos(param1),_loc3_),this.multiply(Math.sin(param1),_loc4_)));
         this.concat([_loc5_[0],_loc5_[1],_loc5_[2],0,0,_loc5_[3],_loc5_[4],_loc5_[5],0,0,_loc5_[6],_loc5_[7],_loc5_[8],0,0,0,0,0,1,0]);
      }
      
      public function get Hue() : Number
      {
         return this._h;
      }
      
      private function add(param1:Array, param2:Array) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:uint = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_.push(param1[_loc4_] + param2[_loc4_]);
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function multiply(param1:Number, param2:Array) : Array
      {
         var _loc4_:Number = NaN;
         var _loc3_:Array = [];
         for each(_loc4_ in param2)
         {
            if(_loc4_ == 0)
            {
               _loc3_.push(0);
            }
            else
            {
               _loc3_.push(param1 * _loc4_);
            }
         }
         return _loc3_;
      }
      
      private function concat(param1:Array) : void
      {
         var _loc2_:Array = [];
         var _loc3_:Array = this.matrix;
         _loc2_[0] = _loc3_[0] * param1[0] + _loc3_[1] * param1[5] + _loc3_[2] * param1[10];
         _loc2_[1] = _loc3_[0] * param1[1] + _loc3_[1] * param1[6] + _loc3_[2] * param1[11];
         _loc2_[2] = _loc3_[0] * param1[2] + _loc3_[1] * param1[7] + _loc3_[2] * param1[12];
         _loc2_[3] = 0;
         _loc2_[4] = 0;
         _loc2_[5] = _loc3_[5] * param1[0] + _loc3_[6] * param1[5] + _loc3_[7] * param1[10];
         _loc2_[6] = _loc3_[5] * param1[1] + _loc3_[6] * param1[6] + _loc3_[7] * param1[11];
         _loc2_[7] = _loc3_[5] * param1[2] + _loc3_[6] * param1[7] + _loc3_[7] * param1[12];
         _loc2_[8] = 0;
         _loc2_[9] = 0;
         _loc2_[10] = _loc3_[10] * param1[0] + _loc3_[11] * param1[5] + _loc3_[12] * param1[10];
         _loc2_[11] = _loc3_[10] * param1[1] + _loc3_[11] * param1[6] + _loc3_[12] * param1[11];
         _loc2_[12] = _loc3_[10] * param1[2] + _loc3_[11] * param1[7] + _loc3_[12] * param1[12];
         _loc2_[13] = 0;
         _loc2_[14] = 0;
         _loc2_[15] = 0;
         _loc2_[16] = 0;
         _loc2_[17] = 0;
         _loc2_[18] = 1;
         _loc2_[19] = 0;
         this.matrix = _loc2_;
      }
      
      public function get Filter() : ColorMatrixFilter
      {
         return new ColorMatrixFilter(this.matrix);
      }
   }
}
