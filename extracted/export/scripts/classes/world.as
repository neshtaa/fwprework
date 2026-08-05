package classes
{
   import com.deviant.*;
   import flash.display.*;
   import flash.geom.*;
   
   public class world extends MovieClip
   {
       
      
      public var FWP;
      
      public var objects;
      
      public var chosen_map = "";
      
      public var temp_bitmap;
      
      public var temp_bitmap_2;
      
      public var map_bitmap;
      
      public var map_bitmap_container;
      
      public var mission16_protect_1;
      
      public var mission16_protect_2;
      
      public var FireMap:BitmapData;
      
      public var MAX_UPSTAIR:Number = 5;
      
      public var MIN_HSPACE:Number = 16;
      
      public var LIMIT_LEFT:Number = -800;
      
      public var LIMIT_RIGHT:Number = 0;
      
      public var LIMIT_UP:Number = -150;
      
      public var LIMIT_DOWN:Number = 640;
      
      public var BORDER_COLOR = 4.281235478E9;
      
      public var WORM_COORDS;
      
      public var WORM_MISSION_COORDS;
      
      public var WORM_BOSS_COORDS;
      
      public var WORM_ASSAULT_COORDS;
      
      public var red_water_filter;
      
      public function world(param1:*, param2:String, param3:String, param4:String, param5:String)
      {
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         this.objects = {
            "background":0,
            "bg_art":0,
            "water_back":0,
            "map":0,
            "water_front":0
         };
         this.WORM_COORDS = new Array();
         this.WORM_MISSION_COORDS = {};
         this.WORM_BOSS_COORDS = {};
         this.WORM_ASSAULT_COORDS = {};
         this.red_water_filter = new HueColorMatrixFilter();
         super();
         this.init_common_coords();
         this.init_mission_coords();
         this.init_boss_coords();
         this.init_assault_coords();
         this.FWP = param1;
         this.chosen_map = param2;
         this.red_water_filter.Hue = 120;
         this.mission16_protect_1 = this.FWP.container_world.get_object("mission16_protect1");
         this.mission16_protect_2 = this.FWP.container_world.get_object("mission16_protect2");
         if(param5 == "background_wormville")
         {
            this.objects.background = this.addChild(this.FWP.container_world.get_object("background_wormville"));
         }
         if(param5 == "background_molivand")
         {
            this.objects.background = this.addChild(this.FWP.container_world.get_object("background_molivand"));
         }
         if(param5 == "background_rolitrad")
         {
            this.objects.background = this.addChild(this.FWP.container_world.get_object("background_rolitrad"));
         }
         if(param5 == "background_traver")
         {
            this.objects.background = this.addChild(this.FWP.container_world.get_object("background_traver"));
         }
         if(param5 == "background_sheovar")
         {
            this.objects.background = this.addChild(this.FWP.container_world.get_object("background_sheovar"));
         }
         if(param5 == "background_forbidden1")
         {
            this.objects.background = this.addChild(this.FWP.container_world.get_object("background_forbidden1"));
         }
         if(param5 == "background_forbidden2")
         {
            this.objects.background = this.addChild(this.FWP.container_world.get_object("background_forbidden2"));
         }
         if(param5 == "background_cave_mission")
         {
            this.objects.background = this.addChild(this.FWP.container_world.get_object("background_cave_mission"));
         }
         if(param4 == "caves")
         {
            this.objects.bg_art = this.addChild(this.FWP.container_world.get_object("bg_caves_mc"));
         }
         if(param4 == "desert")
         {
            this.objects.bg_art = this.addChild(this.FWP.container_world.get_object("bg_desert_mc"));
         }
         if(param4 == "dungeon")
         {
            this.objects.bg_art = this.addChild(this.FWP.container_world.get_object("bg_dungeon_mc"));
         }
         if(param4 == "grass")
         {
            this.objects.bg_art = this.addChild(this.FWP.container_world.get_object("bg_grass_mc"));
         }
         if(param4 == "gulf")
         {
            this.objects.bg_art = this.addChild(this.FWP.container_world.get_object("bg_gulf_mc"));
         }
         if(param4 == "snow")
         {
            this.objects.bg_art = this.addChild(this.FWP.container_world.get_object("bg_snow_mc"));
         }
         if(param4 == "kenton")
         {
            this.objects.bg_art = this.addChild(this.FWP.container_world.get_object("bg_kenton_mc"));
         }
         this.objects.bg_art.y = this.FWP.WINDOW_HEIGHT - this.objects.bg_art.height;
         this.objects.water_back = this.addChild(new MovieClip());
         this.objects.water_back.x = 0;
         this.objects.water_back.y = 610;
         this.temp_bitmap = this.FWP.LoadedBitmap;
         this.map_bitmap = new BitmapData(this.temp_bitmap.width,Math.max(650,this.temp_bitmap.height),true,0);
         this.map_bitmap.copyPixels(this.temp_bitmap,new Rectangle(0,0,this.temp_bitmap.width,this.temp_bitmap.height),new Point(0,650 - this.temp_bitmap.height));
         this.map_bitmap_container = new Bitmap();
         this.map_bitmap_container.bitmapData = this.map_bitmap;
         this.objects.map = this.addChild(this.map_bitmap_container);
         this.temp_bitmap.dispose();
         this.temp_bitmap = null;
         this.FireMap = new BitmapData(this.map_bitmap.width,this.map_bitmap.height,true,0);
         if(param2 == "mission13" || param2 == "mission14" || param2 == "mission15" || param2 == "mission16")
         {
            this.LIMIT_LEFT = 0;
            this.LIMIT_RIGHT = this.map_bitmap.width;
            this.LIMIT_UP = -150;
            this.LIMIT_DOWN = 640;
         }
         else if(param2 == "mission11" || param2 == "mission12")
         {
            this.LIMIT_LEFT = -800;
            this.LIMIT_RIGHT = this.map_bitmap.width;
            this.LIMIT_UP = -150;
            this.LIMIT_DOWN = 640;
         }
         else if(param2 == "mission7" || param2 == "mission8" || param2 == "mission9" || param2 == "mission10")
         {
            this.LIMIT_LEFT = 0;
            this.LIMIT_RIGHT = this.map_bitmap.width;
            this.LIMIT_UP = 0;
            this.LIMIT_DOWN = 640;
         }
         else
         {
            this.LIMIT_LEFT = -800;
            this.LIMIT_RIGHT = this.map_bitmap.width + 800;
            this.LIMIT_UP = -150;
            this.LIMIT_DOWN = 640;
         }
         this.objects.water_front = this.addChild(new MovieClip());
         this.objects.water_front.x = 0;
         this.objects.water_front.y = 610;
         if(param3 == "normal" || param3 == "red")
         {
            _loc6_ = 1;
            while(_loc6_ <= 5)
            {
               _loc7_ = 1;
               while(_loc7_ <= 5)
               {
                  _loc8_ = this.FWP.container_world.get_object("water_part");
                  if(_loc6_ <= 2)
                  {
                     this.objects.water_back.addChild(_loc8_);
                  }
                  else
                  {
                     this.objects.water_front.addChild(_loc8_);
                  }
                  _loc8_.x = 256 * (_loc7_ - 1);
                  _loc8_.y = -4 + 20 * (_loc6_ - 1);
                  if(_loc6_ % 2 == 0)
                  {
                     _loc8_.gotoAndPlay(11);
                  }
                  if(param3 == "red")
                  {
                     _loc8_.filters = [this.red_water_filter.Filter];
                  }
                  _loc7_++;
               }
               _loc6_++;
            }
         }
      }
      
      public function is_land(param1:Number, param2:Number) : Boolean
      {
         param1 = Math.round(param1);
         param2 = Math.round(param2);
         if(param1 < 0 || param1 > this.map_bitmap.width || param2 < 0 || param2 > this.map_bitmap.height)
         {
            return false;
         }
         if(this.map_bitmap.getPixel(param1,param2).toString(16) != "0")
         {
            return true;
         }
         return false;
      }
      
      public function explode(param1:Number, param2:Number, param3:Number) : void
      {
         param1 = Math.round(param1);
         param2 = Math.round(param2);
         if(param3 == 0)
         {
            return;
         }
         if(param3 <= 24)
         {
            this.temp_bitmap = this.FWP.container_world.get_object("explode24mask");
            this.temp_bitmap_2 = this.FWP.container_world.get_object("explode24border");
         }
         else if(param3 <= 50)
         {
            this.temp_bitmap = this.FWP.container_world.get_object("explode50mask");
            this.temp_bitmap_2 = this.FWP.container_world.get_object("explode50border");
         }
         else if(param3 <= 100)
         {
            this.temp_bitmap = this.FWP.container_world.get_object("explode100mask");
            this.temp_bitmap_2 = this.FWP.container_world.get_object("explode100border");
         }
         else if(param3 <= 150)
         {
            this.temp_bitmap = this.FWP.container_world.get_object("explode150mask");
            this.temp_bitmap_2 = this.FWP.container_world.get_object("explode150border");
         }
         else if(param3 <= 200)
         {
            this.temp_bitmap = this.FWP.container_world.get_object("explode200mask");
            this.temp_bitmap_2 = this.FWP.container_world.get_object("explode200border");
         }
         else if(param3 <= 300)
         {
            this.temp_bitmap = this.FWP.container_world.get_object("explode300mask");
            this.temp_bitmap_2 = this.FWP.container_world.get_object("explode300border");
         }
         else if(param3 <= 400)
         {
            this.temp_bitmap = this.FWP.container_world.get_object("explode400mask");
            this.temp_bitmap_2 = this.FWP.container_world.get_object("explode400border");
         }
         this.map_bitmap.copyPixels(this.temp_bitmap,new Rectangle(0,0,param3,param3),new Point(param1 - param3 / 2,param2 - param3 / 2),this.temp_bitmap,new Point(0,0),true);
         if(param1 >= 0 && param1 <= this.map_bitmap.width - 1 && param2 >= 0)
         {
            this.map_bitmap.floodFill(param1,param2,0);
         }
         this.map_bitmap.copyPixels(this.temp_bitmap_2,new Rectangle(0,0,param3,param3),new Point(param1 - param3 / 2,param2 - param3 / 2),this.map_bitmap,new Point(param1 - param3 / 2,param2 - param3 / 2),true);
         this.temp_bitmap.dispose();
         this.temp_bitmap = null;
         this.temp_bitmap_2.dispose();
         this.temp_bitmap_2 = null;
         if(this.FWP._proc._play_type == "missions" && this.FWP._proc._play_id == 16 && this.FWP._proc.my_turn < this.FWP._proc.mission16_turn)
         {
            this.map_bitmap.copyPixels(this.mission16_protect_2,new Rectangle(0,0,111,111),new Point(897,433),this.mission16_protect_2,new Point(0,0),true);
         }
      }
      
      public function check_hit(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Array
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc11_:* = undefined;
         var _loc12_:Number = NaN;
         param1 = Math.round(param1);
         param2 = Math.round(param2);
         var _loc9_:* = new Array(3);
         var _loc10_:Boolean = false;
         var _loc13_:* = param3 >= 0 ? param5 / 2 : -param5 / 2;
         var _loc14_:* = param4 > 0 ? param6 / 2 : -param6 / 2;
         if(param4 != 0)
         {
            if(param3 >= 0)
            {
               _loc7_ = param1 + this.mod(_loc13_) - 1;
               while(_loc7_ > param1 - this.mod(_loc13_))
               {
                  if(this.is_land(_loc7_,param2 + _loc14_))
                  {
                     if(!_loc10_)
                     {
                        _loc10_ = true;
                        _loc11_ = _loc7_;
                        _loc12_ = param2 + _loc14_;
                     }
                     break;
                  }
                  _loc7_--;
               }
            }
            if(param3 < 0)
            {
               _loc7_ = param1 - this.mod(_loc13_);
               while(_loc7_ < param1 + this.mod(_loc13_))
               {
                  if(this.is_land(_loc7_,param2 + _loc14_))
                  {
                     if(!_loc10_)
                     {
                        _loc10_ = true;
                        _loc11_ = _loc7_;
                        _loc12_ = param2 + _loc14_;
                     }
                     break;
                  }
                  _loc7_++;
               }
            }
         }
         if(param3 != 0)
         {
            if(param4 >= 0)
            {
               _loc7_ = param2 + this.mod(_loc14_);
               while(_loc7_ > param2 - this.mod(_loc14_))
               {
                  if(this.is_land(param1 + _loc13_,_loc7_))
                  {
                     if(!_loc10_)
                     {
                        _loc10_ = true;
                        _loc11_ = param1 + _loc13_;
                        _loc12_ = _loc7_;
                     }
                     break;
                  }
                  _loc7_--;
               }
            }
            if(param4 < 0)
            {
               _loc7_ = param2 - this.mod(_loc14_);
               while(_loc7_ < param2 + this.mod(_loc14_))
               {
                  if(this.is_land(param1 + _loc13_,_loc7_))
                  {
                     if(!_loc10_)
                     {
                        _loc10_ = true;
                        _loc11_ = param1 + _loc13_;
                        _loc12_ = _loc7_;
                     }
                     break;
                  }
                  _loc7_++;
               }
            }
         }
         _loc9_[0] = _loc10_;
         if(_loc10_)
         {
            _loc9_[1] = _loc11_;
            _loc9_[2] = _loc12_;
         }
         return _loc9_;
      }
      
      public function reflect(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:* = undefined;
         var _loc6_:Number = NaN;
         var _loc7_:*;
         (_loc7_ = new Array(4))[1] = new Array(4);
         _loc7_[2] = new Array(4);
         _loc7_[3] = new Array(4);
         param1 = Math.round(param1);
         param2 = Math.round(param2);
         _loc7_[1][1] = !!this.is_land(param1 - 1,param2 - 1) ? 1 : 0;
         _loc7_[1][2] = !!this.is_land(param1,param2 - 1) ? 1 : 0;
         _loc7_[1][3] = !!this.is_land(param1 + 1,param2 - 1) ? 1 : 0;
         _loc7_[2][1] = !!this.is_land(param1 - 1,param2) ? 1 : 0;
         _loc7_[2][2] = !!this.is_land(param1,param2) ? 1 : 0;
         _loc7_[2][3] = !!this.is_land(param1 + 1,param2) ? 1 : 0;
         _loc7_[3][1] = !!this.is_land(param1 - 1,param2 + 1) ? 1 : 0;
         _loc7_[3][2] = !!this.is_land(param1,param2 + 1) ? 1 : 0;
         _loc7_[3][3] = !!this.is_land(param1 + 1,param2 + 1) ? 1 : 0;
         if(param3 < 0 && param4 >= 0)
         {
            if(_loc7_[3][1] >= 1 && _loc7_[2][3] >= 1 && _loc7_[1][1] <= 0 && _loc7_[1][2] <= 0)
            {
               return 2;
            }
            if(_loc7_[2][1] >= 1 && _loc7_[2][3] >= 1 && _loc7_[1][1] <= 0 && _loc7_[1][2] <= 0)
            {
               return 2;
            }
            if(_loc7_[2][3] >= 1 && _loc7_[2][1] <= 0 && _loc7_[1][1] <= 0 && _loc7_[1][2] <= 0)
            {
               return 2;
            }
            if(_loc7_[1][2] >= 1 && _loc7_[3][2] >= 1 && _loc7_[2][3] <= 0 && _loc7_[3][3] <= 0)
            {
               return 1;
            }
            if(_loc7_[1][2] >= 1 && _loc7_[3][2] <= 0 && _loc7_[2][3] <= 0 && _loc7_[3][3] <= 0)
            {
               return 1;
            }
            return 0;
         }
         if(param3 >= 0 && param4 >= 0)
         {
            if(_loc7_[3][3] >= 1 && _loc7_[2][1] >= 1 && _loc7_[1][3] <= 0 && _loc7_[1][2] <= 0)
            {
               return 2;
            }
            if(_loc7_[2][1] >= 1 && _loc7_[2][3] >= 1 && _loc7_[1][3] <= 0 && _loc7_[1][2] <= 0)
            {
               return 2;
            }
            if(_loc7_[2][1] >= 1 && _loc7_[2][3] <= 0 && _loc7_[1][3] <= 0 && _loc7_[1][2] <= 0)
            {
               return 2;
            }
            if(_loc7_[1][2] >= 1 && _loc7_[3][2] >= 1 && _loc7_[2][1] <= 0 && _loc7_[3][1] <= 0)
            {
               return 1;
            }
            if(_loc7_[1][2] >= 1 && _loc7_[3][2] <= 0 && _loc7_[2][1] <= 0 && _loc7_[3][1] <= 0)
            {
               return 1;
            }
            return 0;
         }
         if(param3 < 0 && param4 < 0)
         {
            if(_loc7_[1][1] >= 1 && _loc7_[3][2] >= 1 && _loc7_[1][3] <= 0 && _loc7_[2][3] <= 0)
            {
               return 1;
            }
            if(_loc7_[1][2] >= 1 && _loc7_[3][2] >= 1 && _loc7_[1][3] <= 0 && _loc7_[2][3] <= 0)
            {
               return 1;
            }
            if(_loc7_[3][2] >= 1 && _loc7_[1][2] <= 0 && _loc7_[1][3] <= 0 && _loc7_[2][3] <= 0)
            {
               return 1;
            }
            if(_loc7_[2][3] >= 1 && _loc7_[1][1] >= 1 && _loc7_[3][1] <= 0 && _loc7_[3][2] <= 0)
            {
               return 2;
            }
            if(_loc7_[2][1] >= 1 && _loc7_[2][3] >= 1 && _loc7_[3][1] <= 0 && _loc7_[3][2] <= 0)
            {
               return 2;
            }
            if(_loc7_[2][3] >= 1 && _loc7_[2][1] <= 0 && _loc7_[3][1] <= 0 && _loc7_[3][2] <= 0)
            {
               return 2;
            }
            return 0;
         }
         if(param3 >= 0 && param4 < 0)
         {
            if(_loc7_[1][3] >= 1 && _loc7_[3][2] >= 1 && _loc7_[1][1] <= 0 && _loc7_[2][1] <= 0)
            {
               return 1;
            }
            if(_loc7_[1][2] >= 1 && _loc7_[3][2] >= 1 && _loc7_[1][1] <= 0 && _loc7_[2][1] <= 0)
            {
               return 1;
            }
            if(_loc7_[3][2] >= 1 && _loc7_[1][2] <= 0 && _loc7_[1][1] <= 0 && _loc7_[2][1] <= 0)
            {
               return 1;
            }
            if(_loc7_[2][1] >= 1 && _loc7_[1][3] >= 1 && _loc7_[3][3] <= 0 && _loc7_[3][2] <= 0)
            {
               return 2;
            }
            if(_loc7_[2][1] >= 1 && _loc7_[2][3] >= 1 && _loc7_[3][3] <= 0 && _loc7_[3][2] <= 0)
            {
               return 2;
            }
            if(_loc7_[2][1] >= 1 && _loc7_[2][3] <= 0 && _loc7_[3][3] <= 0 && _loc7_[3][2] <= 0)
            {
               return 2;
            }
            return 0;
         }
         return 0;
      }
      
      public function allow_goto(param1:Number, param2:Number, param3:Number, param4:Number, param5:String) : Array
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc6_:Array = new Array(3);
         var _loc7_:Number = Math.round(param1);
         var _loc8_:Number = Math.round(param2) + param4 / 2;
         _loc11_ = 0;
         _loc12_ = 0;
         _loc13_ = 100;
         if(param5 == "right")
         {
            _loc7_ += param3 / 2 + 1 - 1;
         }
         if(param5 == "left")
         {
            _loc7_ -= param3 / 2 + 1;
         }
         _loc9_ = this.MAX_UPSTAIR;
         while(_loc9_ >= 0)
         {
            if(this.is_land(_loc7_,_loc8_ - _loc9_))
            {
               _loc11_ = _loc9_;
               break;
            }
            _loc9_--;
         }
         _loc10_ = param5 == "left" ? Number(-1) : Number(1);
         while(_loc10_ < param3 + (param5 == "right" ? 1 : -1))
         {
            if(_loc12_ != 0)
            {
               break;
            }
            _loc9_ = param4 / 2;
            while(_loc9_ <= this.MIN_HSPACE)
            {
               if(this.is_land(Math.round(param1) - param3 / 2 + _loc10_,_loc8_ - _loc11_ - _loc9_))
               {
                  _loc12_ = _loc9_;
                  break;
               }
               _loc9_++;
            }
            _loc10_++;
         }
         if(_loc11_ == 0)
         {
            _loc10_ = param5 == "left" ? Number(-1) : Number(1);
            while(_loc10_ < param3 + (param5 == "right" ? 1 : -1))
            {
               _loc9_ = 0;
               while(_loc9_ <= this.MAX_UPSTAIR)
               {
                  if(this.is_land(Math.round(param1) - param3 / 2 + _loc10_,_loc8_ + _loc9_))
                  {
                     if(_loc13_ > _loc9_)
                     {
                        _loc13_ = _loc9_;
                     }
                     break;
                  }
                  _loc9_++;
               }
               _loc10_++;
            }
         }
         _loc6_[0] = _loc11_ <= this.MAX_UPSTAIR && _loc12_ == 0;
         _loc6_[1] = _loc11_;
         _loc6_[2] = _loc13_;
         return _loc6_;
      }
      
      public function game_displace() : *
      {
         var _loc1_:* = this.FWP._proc.position_x;
         var _loc2_:* = this.FWP._proc.position_y;
         this.objects.map.x = _loc1_;
         this.objects.map.y = _loc2_;
         this.objects.water_front.y = 610 + _loc2_;
         this.objects.water_back.y = 610 + _loc2_;
         var _loc3_:* = _loc1_;
         while(_loc3_ > 0)
         {
            _loc3_ -= 256;
         }
         while(_loc3_ < -256)
         {
            _loc3_ += 256;
         }
         this.objects.water_front.x = _loc3_;
         this.objects.water_back.x = _loc3_;
         var _loc4_:* = this.FWP.calc_bg_art(this.LIMIT_LEFT,this.LIMIT_RIGHT,this.objects.bg_art.width,this.objects.bg_art.height,_loc1_,_loc2_);
         this.objects.bg_art.x = _loc4_.x;
         this.objects.bg_art.y = _loc4_.y;
      }
      
      public function mission_scripts(param1:Number) : *
      {
         this.map_bitmap.copyPixels(this.mission16_protect_1,new Rectangle(0,0,111,111),new Point(897,433),this.mission16_protect_1,new Point(0,0),true);
      }
      
      public function set_land_mask(param1:Number, param2:Number, param3:Number) : *
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         _loc7_ = param3 == -1 ? Number(1) : Number(0);
         var _loc8_:* = param1 - 11 + 5 + _loc7_;
         var _loc9_:* = param2 - 13 + 3;
         _loc4_ = 1;
         while(_loc4_ <= 9)
         {
            if(_loc4_ <= 5)
            {
               _loc6_ = _loc4_ * 4;
            }
            else
            {
               _loc6_ = (10 - _loc4_) * 4;
            }
            _loc6_ = 20 - _loc6_;
            _loc5_ = 20;
            while(_loc5_ >= _loc6_)
            {
               if(this.map_bitmap.getPixel(_loc8_ + _loc4_,_loc9_ + _loc5_).toString(16) == 0)
               {
                  this.map_bitmap.setPixel32(_loc8_ + _loc4_,_loc9_ + _loc5_,4294967295);
               }
               _loc5_--;
            }
            _loc4_++;
         }
      }
      
      public function clear_land_mask(param1:Number, param2:Number) : *
      {
         var _loc6_:* = undefined;
         var _loc3_:* = param1 - 11 + 5;
         var _loc4_:* = param2 - 13 + 3;
         var _loc5_:* = 0;
         while(_loc5_ <= 10)
         {
            _loc6_ = 20;
            while(_loc6_ >= 0)
            {
               if(this.map_bitmap.getPixel(_loc3_ + _loc5_,_loc4_ + _loc6_).toString(16) == "ffffff")
               {
                  this.map_bitmap.setPixel32(_loc3_ + _loc5_,_loc4_ + _loc6_,0);
               }
               _loc6_--;
            }
            _loc5_++;
         }
      }
      
      public function destructor() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         _loc1_ = 0;
         while(_loc1_ <= this.objects.water_back.numChildren - 1)
         {
            _loc2_ = this.objects.water_back.getChildAt(0);
            this.objects.water_back.removeChildAt(0);
            _loc2_ = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= this.objects.water_front.numChildren - 1)
         {
            _loc2_ = this.objects.water_front.getChildAt(0);
            this.objects.water_front.removeChildAt(0);
            _loc2_ = null;
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ <= this.objects.bg_art.numChildren - 1)
         {
            _loc2_ = this.objects.bg_art.getChildAt(0);
            this.objects.bg_art.removeChildAt(0);
            _loc2_ = null;
            _loc1_++;
         }
         this.map_bitmap_container = null;
         this.map_bitmap.dispose();
         this.map_bitmap = null;
         _loc1_ = 0;
         while(_loc1_ <= numChildren - 1)
         {
            _loc2_ = getChildAt(0);
            removeChildAt(0);
            _loc2_ = null;
            _loc1_++;
         }
      }
      
      public function get_coord_shift() : Number
      {
         var _loc1_:* = 0;
         if(this.chosen_map == "wormville1")
         {
            _loc1_ = 0;
         }
         if(this.chosen_map == "wormville2")
         {
            _loc1_ = 100;
         }
         if(this.chosen_map == "wormville3")
         {
            _loc1_ = 200;
         }
         if(this.chosen_map == "wormville4")
         {
            _loc1_ = 300;
         }
         if(this.chosen_map == "wormville5")
         {
            _loc1_ = 400;
         }
         if(this.chosen_map == "molivand1")
         {
            _loc1_ = 500;
         }
         if(this.chosen_map == "molivand2")
         {
            _loc1_ = 600;
         }
         if(this.chosen_map == "molivand3")
         {
            _loc1_ = 700;
         }
         if(this.chosen_map == "molivand4")
         {
            _loc1_ = 800;
         }
         if(this.chosen_map == "molivand5")
         {
            _loc1_ = 900;
         }
         if(this.chosen_map == "rolitrad1")
         {
            _loc1_ = 1000;
         }
         if(this.chosen_map == "rolitrad2")
         {
            _loc1_ = 1100;
         }
         if(this.chosen_map == "rolitrad3")
         {
            _loc1_ = 1200;
         }
         if(this.chosen_map == "rolitrad4")
         {
            _loc1_ = 1300;
         }
         if(this.chosen_map == "rolitrad5")
         {
            _loc1_ = 1400;
         }
         if(this.chosen_map == "traver1")
         {
            _loc1_ = 1500;
         }
         if(this.chosen_map == "traver2")
         {
            _loc1_ = 1600;
         }
         if(this.chosen_map == "traver3")
         {
            _loc1_ = 1700;
         }
         if(this.chosen_map == "traver4")
         {
            _loc1_ = 1800;
         }
         if(this.chosen_map == "traver5")
         {
            _loc1_ = 1900;
         }
         if(this.chosen_map == "sheovar1")
         {
            _loc1_ = 2000;
         }
         if(this.chosen_map == "sheovar2")
         {
            _loc1_ = 2100;
         }
         if(this.chosen_map == "sheovar3")
         {
            _loc1_ = 2200;
         }
         if(this.chosen_map == "sheovar4")
         {
            _loc1_ = 2300;
         }
         if(this.chosen_map == "sheovar5")
         {
            _loc1_ = 2400;
         }
         if(this.chosen_map == "forbidden1")
         {
            _loc1_ = 2500;
         }
         if(this.chosen_map == "forbidden2")
         {
            _loc1_ = 2600;
         }
         if(this.chosen_map == "forbidden3")
         {
            _loc1_ = 2700;
         }
         if(this.chosen_map == "forbidden4")
         {
            _loc1_ = 2800;
         }
         if(this.chosen_map == "forbidden5")
         {
            _loc1_ = 2900;
         }
         if(this.chosen_map == "forbidden6")
         {
            _loc1_ = 3000;
         }
         if(this.chosen_map == "forbidden7")
         {
            _loc1_ = 3100;
         }
         if(this.chosen_map == "forbidden8")
         {
            _loc1_ = 3200;
         }
         if(this.chosen_map == "forbidden9")
         {
            _loc1_ = 3300;
         }
         if(this.chosen_map == "forbidden10")
         {
            _loc1_ = 3400;
         }
         return _loc1_;
      }
      
      public function init_mission_coords() : *
      {
         this.WORM_MISSION_COORDS = {
            "mission1":{
               "team1":new Array(32,613,70,613,120,611,166,610,244,574),
               "team2":new Array(974,358,1158,323)
            },
            "mission2":{
               "team1":new Array(220,279,277,301,340,314,177,104,100,114),
               "team2":new Array(771,405,1197,401),
               "team3":new Array(958,295)
            },
            "mission3":{
               "team1":new Array(71,365,287,244,415,426,221,353,130,384),
               "team2":new Array(920,452,1098,193,1040,361),
               "team3":new Array(981,313,1215,247)
            },
            "mission4":{
               "team1":new Array(240,275,174,268,301,488,106,319),
               "team2":new Array(774,549,871,546),
               "team3":new Array(1050,133,984,244,1275,548),
               "team4":new Array(865,50,754,242,660,436)
            },
            "mission5":{
               "team1":new Array(250,432,397,420,171,321,319,422),
               "team2":new Array(937,242),
               "team3":new Array(763,360,1038,236,1099,364,894,367,576,336,694,334,1300,511)
            },
            "mission6":{
               "team1":new Array(304,397,582,338,102,394,172,247,22,617),
               "team2":new Array(793,251,615,520)
            },
            "mission7":{
               "team1":new Array(87,286,421,373,232,389,336,376,610,376),
               "team2":new Array(687,351,1140,448,385,630,855,579,621,597)
            },
            "mission8":{
               "team1":new Array(1215,301,1116,544,1012,441,1003,594,850,476),
               "team2":new Array(504,460,495,597,718,592),
               "team3":new Array(882,605,319,504,175,374,253,622)
            },
            "mission9":{
               "team1":new Array(165,318,241,464,642,349,363,583,480,326),
               "team2":new Array(1023,583,922,459,631,592,822,416,1128,507)
            },
            "mission10":{
               "team1":new Array(984,628,1087,638,1194,586,909,629,816,628),
               "team2":new Array(486,495),
               "team3":new Array(255,609,688,388,595,611,136,542)
            },
            "mission11":{
               "team1":new Array(405,384,520,294,301,477,115,573,232,542),
               "team2":new Array(777,298,1056,183,892,249,642,376,1173,210,570,299)
            },
            "mission12":{
               "team1":new Array(256,453,168,587,358,417,430,292,96,630),
               "team2":new Array(708,455,630,319,870,517),
               "team3":new Array(1065,363,1227,270,756,565)
            },
            "mission13":{
               "team1":new Array(121,185,232,203,312,234,148,182),
               "team2":new Array(906,157,673,306,772,346,885,286),
               "team3":new Array(1090,224,1002,123,1209,206)
            },
            "mission14":{
               "team1":new Array(75,384,183,508,301,457),
               "team2":new Array(595,143,507,432),
               "team3":new Array(916,468,1017,289,775,456,1177,262,1081,485,677,366)
            },
            "mission15":{
               "team1":new Array(211,245,70,376,399,550),
               "team2":new Array(1096,590),
               "team3":new Array(868,445,930,216,1102,108,1228,208,844,592,1270,341)
            },
            "mission16":{
               "team1":new Array(109,398,55,498),
               "team2":new Array(949,495),
               "team3":new Array(819,387,1098,327,954,81,566,310,1245,393)
            }
         };
      }
      
      public function init_boss_coords() : *
      {
         this.WORM_BOSS_COORDS = {
            "boss1":{
               "team1":new Array(300,268,735,257,1259,349,533,403,787,547),
               "team2":new Array(650,50)
            },
            "boss2":{
               "team1":new Array(195,525,1212,183,1013,391,699,480,960,534),
               "team2":new Array(650,50)
            },
            "boss3":{
               "team1":new Array(308,386,975,388,614,352,687,448,79,445),
               "team2":new Array(650,50)
            },
            "boss4":{
               "team1":new Array(314,307,864,324,1160,397,725,472,91,421),
               "team2":new Array(650,50)
            },
            "boss5":{
               "team1":new Array(767,273,347,326,1177,358,114,451,752,450),
               "team2":new Array(650,50)
            },
            "boss6":{
               "team1":new Array(151,426,1074,197,566,482,1038,497,415,271),
               "team2":new Array(650,50)
            },
            "boss7":{
               "team1":new Array(151,354,1068,374,617,460,926,409,523,538),
               "team2":new Array(650,50)
            },
            "boss8":{
               "team1":new Array(308,349,1069,406,515,402,108,387,942,577),
               "team2":new Array(650,50)
            },
            "boss9":{
               "team1":new Array(197,155,823,173,626,480,70,407,1069,516),
               "team2":new Array(650,50)
            },
            "boss10":{
               "team1":new Array(354,254,897,240,793,389,1237,406,178,486),
               "team2":new Array(650,50)
            },
            "boss11":{
               "team1":new Array(1007,348,109,194,622,319,560,616,62,499),
               "team2":new Array(650,50)
            },
            "boss12":{
               "team1":new Array(137,405,655,265,992,174,563,589,1208,515),
               "team2":new Array(650,50)
            },
            "boss13":{
               "team1":new Array(630,218,868,324,1088,400,267,174,202,563),
               "team2":new Array(650,50)
            },
            "boss14":{
               "team1":new Array(137,405,655,265,992,174,563,589,1208,515),
               "team2":new Array(650,50)
            },
            "boss15":{
               "team1":new Array(630,218,868,324,1088,400,267,174,202,563),
               "team2":new Array(650,50)
            },
            "boss16":{
               "team1":new Array(137,405,655,265,992,174,563,589,1208,515),
               "team2":new Array(650,50)
            },
            "boss17":{
               "team1":new Array(630,218,868,324,1088,400,267,174,202,563),
               "team2":new Array(650,50)
            },
            "boss18":{
               "team1":new Array(137,405,655,265,992,174,563,589,1208,515),
               "team2":new Array(650,50)
            },
            "boss19":{
               "team1":new Array(630,218,868,324,1088,400,267,174,202,563),
               "team2":new Array(650,50)
            }
         };
      }
      
      public function init_assault_coords() : *
      {
         this.WORM_ASSAULT_COORDS = {
            "assault1":{
               "team1":new Array(805,471,258,167,923,155,22,451,535,308),
               "team2":new Array(650,50),
               "team3":new Array(311,345,620,567,1154,253,169,497,461,221)
            },
            "assault2":{
               "team1":new Array(297,473,252,193,965,310,664,430,1251,380),
               "team2":new Array(650,50),
               "team3":new Array(529,203,80,373,1176,261,452,336,155,549)
            },
            "assault3":{
               "team1":new Array(1123,186,215,277,737,434,128,502,1227,562),
               "team2":new Array(650,50),
               "team3":new Array(545,258,1032,550,500,486,794,235,346,451)
            },
            "assault4":{
               "team1":new Array(1188,340,201,239,521,307,1089,589,84,606),
               "team2":new Array(650,50),
               "team3":new Array(923,318,314,408,77,417,658,204,333,553)
            },
            "assault5":{
               "team1":new Array(763,569,210,225,987,306,297,611,1183,474),
               "team2":new Array(650,50),
               "team3":new Array(486,468,847,330,1160,346,107,372,413,355)
            },
            "assault6":{
               "team1":new Array(335,504,717,254,249,185,1189,512,1012,593),
               "team2":new Array(650,50),
               "team3":new Array(325,302,49,404,1007,231,173,583,123,280)
            },
            "assault7":{
               "team1":new Array(206,235,1135,184,815,270,44,472,1267,499),
               "team2":new Array(650,50),
               "team3":new Array(1035,392,680,348,317,422,753,578,138,351)
            },
            "assault8":{
               "team1":new Array(1108,310,108,292,744,326,56,476,499,513),
               "team2":new Array(650,50),
               "team3":new Array(1119,496,515,220,313,321,802,597,979,178)
            },
            "assault9":{
               "team1":new Array(1117,254,380,432,132,215,1254,469,893,474),
               "team2":new Array(650,50),
               "team3":new Array(534,176,246,301,728,407,927,210,542,620)
            },
            "assault10":{
               "team1":new Array(1180,362,73,293,825,173,123,497,990,636),
               "team2":new Array(650,50),
               "team3":new Array(850,431,367,170,427,361,972,152,207,315)
            },
            "assault11":{
               "team1":new Array(133,166,1154,185,159,447,457,243,965,559),
               "team2":new Array(650,50),
               "team3":new Array(701,135,346,132,554,549,1209,338,369,476)
            },
            "assault12":{
               "team1":new Array(865,154,1190,374,373,184,377,539,1243,520),
               "team2":new Array(650,50),
               "team3":new Array(763,337,129,185,179,465,995,600,846,427)
            },
            "assault13":{
               "team1":new Array(1100,261,144,197,540,594,74,434,859,335),
               "team2":new Array(650,50),
               "team3":new Array(537,292,994,531,334,193,1152,584,412,439)
            },
            "assault14":{
               "team1":new Array(346,609,68,161,895,468,1137,320,461,419),
               "team2":new Array(650,50),
               "team3":new Array(822,580,674,172,324,175,967,407,99,420)
            },
            "assault15":{
               "team1":new Array(177,355,827,183,1033,446,1182,513,454,548),
               "team2":new Array(650,50),
               "team3":new Array(793,599,284,220,569,343,1115,215,102,521)
            },
            "assault16":{
               "team1":new Array(276,203,413,331,120,426,355,517,219,415),
               "team2":new Array(650,50),
               "team3":new Array(746,375,825,273,1135,183,1264,342,1069,640)
            },
            "assault17":{
               "team1":new Array(370,191,1051,237,47,508,750,462,1229,629),
               "team2":new Array(650,50),
               "team3":new Array(628,410,990,405,450,312,262,75,1211,496)
            }
         };
      }
      
      public function init_common_coords() : *
      {
         this.init_coords_wormville();
         this.init_coords_molivand();
         this.init_coords_rolitrad();
         this.init_coords_traver();
         this.init_coords_sheovar();
         this.init_coords_forbidden();
      }
      
      public function init_coords_wormville() : *
      {
         this.WORM_COORDS[0] = new Array(854,579,1132,289,320,241,711,335,236,178,166,317,999,515,960,289,470,488,1299,591,1256,535,1184,334,15,615,1054,471,1184,589,604,479,196,243,877,480,1207,445,352,189);
         this.WORM_COORDS[1] = new Array(471,489,329,214,553,381,745,354,39,584,752,498,1280,599,136,295,125,473,1242,500,1060,312,633,430,933,311,1093,434,875,480,864,583,1148,260,1209,449,688,375,590,480);
         this.WORM_COORDS[2] = new Array(385,406,371,199,818,617,563,435,259,196,426,485,512,460,311,250,679,361,28,597,907,463,1121,348,196,278,1258,613,1202,435,597,486,1052,473,974,286,747,385,44,491);
         this.WORM_COORDS[3] = new Array(8,626,66,366,1108,430,1288,594,851,579,584,472,429,484,227,184,1256,535,899,386,556,388,759,498,274,345,59,485,510,463,921,461,1010,255,300,255,711,335,1119,350);
         this.WORM_COORDS[4] = new Array(363,190,246,182,692,380,503,479,72,281,882,474,1170,288,627,440,22,606,297,256,1083,437,991,281,855,579,1296,591,1237,493,187,290,747,385,802,614,1194,421,941,305);
         this.WORM_COORDS[5] = new Array(1027,256,500,482,391,227,134,293,1187,341,241,178,807,614,559,418,83,267,316,247,14,617,598,485,438,153,927,317,869,490,712,333,1235,489,1048,479,875,587,752,498);
         this.WORM_COORDS[6] = new Array(583,471,1254,526,1074,446,758,498,474,493,911,339,228,182,331,211,1017,251,872,486,534,410,1260,611,813,616,265,469,411,197,102,251,1060,312,652,385,1,636,185,293);
         this.WORM_COORDS[7] = new Array(1010,255,1091,434,699,359,298,480,579,465,866,499,858,579,1220,465,1253,618,632,433,454,487,1253,520,28,597,526,427,80,268,446,178,209,207,60,318,794,614,979,411);
         this.WORM_COORDS[8] = new Array(49,487,74,281,595,485,209,207,794,614,747,385,1144,270,1260,611,41,584,850,579,327,217,273,227,989,281,1047,292,177,302,873,484,665,355,487,491,636,424,409,200);
         this.WORM_COORDS[9] = new Array(724,480,1193,416,319,245,1081,438,106,251,1186,337,1135,287,1232,484,817,617,512,460,775,499,1023,253,443,478,389,490,887,472,17,612,1298,591,976,318,59,485,1146,605);
         this.WORM_COORDS[10] = new Array(483,492,559,418,849,578,958,293,414,191,1106,430,3,634,82,267,279,238,1181,331,1013,526,174,308,744,353,304,482,331,211,1267,607,895,396,600,485,1125,316,1223,469);
         this.WORM_COORDS[11] = new Array(233,178,734,337,22,606,565,441,1127,314,184,295,836,578,647,402,1294,591,1059,312,470,488,87,262,60,318,307,253,376,207,924,317,869,490,988,281,750,397,387,418);
         this.WORM_COORDS[12] = new Array(814,617,998,513,1247,509,733,335,1079,440,1197,427,1042,279,397,490,1150,255,208,207,1296,591,182,297,593,483,866,499,897,390,10,624,539,396,643,413,339,200,486,492);
         this.WORM_COORDS[13] = new Array(1298,591,724,313,31,593,914,328,561,430,498,484,89,259,647,402,1240,614,1079,440,834,581,1222,469,1028,258,435,153,312,249,415,491,703,488,898,387,55,486,153,332);
         this.WORM_COORDS[14] = new Array(2,634,360,190,1128,299,1006,257,1266,608,1034,505,1093,434,812,615,632,433,464,488,1239,496,392,490,910,464,922,320,416,189,681,365,275,229,139,302,759,498,387,418);
         this.WORM_COORDS[15] = new Array(820,617,644,410,674,548,1251,516,868,492,1020,251,568,448,205,211,666,354,897,390,511,462,7,626,1260,611,416,491,723,313,1213,453,1033,507,939,308,1184,334,112,258);
         this.WORM_COORDS[16] = new Array(128,282,1288,594,695,377,826,619,887,472,973,286,617,457,1226,477,1115,427,507,469,9,624,771,498,1165,276,731,320,217,193,1058,307,59,485,301,254,66,293,552,381);
         this.WORM_COORDS[17] = new Array(853,579,312,249,174,308,517,449,454,192,951,297,1296,591,1246,508,1159,614,1123,318,656,370,21,607,892,468,462,488,381,214,572,455,89,259,895,396,59,485,310,335);
         this.WORM_COORDS[18] = new Array(1047,292,1300,592,472,490,852,579,1116,427,978,317,89,259,556,388,247,435,568,448,38,586,64,315,621,449,456,194,406,491,1227,479,868,492,298,256,55,486,1054,471);
         this.WORM_COORDS[19] = new Array(1181,331,1298,591,756,498,823,617,22,606,1199,429,1045,486,385,222,405,491,673,354,520,440,630,435,900,383,1157,251,300,339,457,488,962,286,600,485,1109,429,154,332);
         this.WORM_COORDS[20] = new Array(997,267,882,474,403,491,1233,486,103,478,1168,286,687,375,775,499,814,617,526,427,587,478,334,205,467,488,182,297,432,156,1108,430,1052,295,1280,599,742,351,928,316);
         this.WORM_COORDS[21] = new Array(570,453,1264,610,516,451,113,475,210,207,1067,453,622,448,463,488,375,370,1251,516,551,381,775,499,1217,460,71,283,819,617,49,487,959,291,1130,295,679,490,390,490);
         this.WORM_COORDS[22] = new Array(1069,451,396,490,978,484,864,583,148,314,931,312,234,178,85,481,510,463,439,153,199,242,595,485,290,256,648,400,1232,484,350,330,752,498,811,614,1285,596,887,472);
         this.WORM_COORDS[23] = new Array(960,289,1255,528,869,490,1017,251,1267,607,590,480,10,624,856,579,326,474,1159,614,1081,438,116,259,64,315,904,372,537,401,1149,258,224,185,382,216,1020,525,452,190);
         this.WORM_COORDS[24] = new Array(1087,435,426,168,1178,323,1206,442,936,309,37,588,508,468,266,469,769,498,54,487,904,372,650,395,140,303,1296,591,875,480,717,322,860,580,193,283,619,453,806,614);
         this.WORM_COORDS[25] = new Array(2,634,1182,332,938,309,517,449,1255,528,1259,612,60,485,188,290,1043,281,107,253,798,614,1156,610,419,177,427,485,64,315,1090,434,682,365,584,472,636,424,1045,486);
         this.WORM_COORDS[26] = new Array(693,379,749,385,77,280,1135,287,466,488,882,474,1213,453,576,459,1032,260,300,255,459,225,752,498,387,222,900,383,68,483,640,418,294,480,2,634,834,581,242,179);
         this.WORM_COORDS[27] = new Array(815,617,582,470,209,411,31,593,58,485,880,476,175,306,248,185,1049,292,1192,413,394,490,956,293,483,492,1160,256,711,335,1126,315,1107,430,648,400,1254,526,446,178);
         this.WORM_COORDS[28] = new Array(899,386,698,360,538,399,1281,599,1196,426,1069,451,1053,300,9,624,133,292,323,232,398,228,44,491,505,474,1169,287,107,477,221,191,609,469,848,577,283,476,995,269);
         this.WORM_COORDS[29] = new Array(903,464,833,620,962,429,1239,496,135,294,269,219,1300,592,753,498,510,463,600,485,749,385,62,316,733,335,282,475,218,193,902,378,1175,293,179,406,1073,446,1153,607);
         this.WORM_COORDS[30] = new Array(1184,334,625,444,165,318,22,606,1248,511,450,482,756,498,994,506,268,470,1104,430,945,450,721,315,541,392,880,476,103,251,671,354,864,583,362,190,999,266,195,244);
         this.WORM_COORDS[31] = new Array(455,487,1158,251,804,614,1197,427,911,339,1247,509,56,485,894,397,1262,611,1013,526,323,232,890,470,322,480,761,498,13,618,742,351,112,258,62,316,432,156,1080,439);
         this.WORM_COORDS[32] = new Array(894,397,879,478,156,330,632,433,393,227,1106,430,62,316,1050,476,515,454,679,361,821,617,262,207,573,456,1267,607,455,487,316,247,204,211,52,487,1160,256,100,251);
         this.WORM_COORDS[33] = new Array(234,178,968,284,1050,293,462,488,111,256,5,629,1296,591,746,495,1243,622,344,194,825,618,1179,323,1158,251,1245,508,607,473,44,491,750,397,902,378,275,229,687,375);
         this.WORM_COORDS[34] = new Array(445,177,981,297,663,357,1201,433,527,426,748,498,84,265,1185,336,1059,312,17,612,1114,427,202,219,627,440,807,614,885,472,270,471,1281,599,157,330,463,488,863,583);
         this.WORM_COORDS[35] = new Array(1137,603,490,489,601,485,1128,299,863,583,374,367,190,289,1104,430,713,332,111,256,1252,518,1284,596,549,381,769,498,1117,360,273,474,62,381,651,391,460,225,1208,447);
         this.WORM_COORDS[36] = new Array(182,297,349,330,1108,430,327,217,41,584,809,614,558,411,424,485,1,636,647,402,1155,251,402,229,593,483,507,469,982,293,1049,477,275,229,212,206,1169,613,58,485);
         this.WORM_COORDS[37] = new Array(42,584,158,330,607,473,836,578,684,369,430,483,538,399,865,508,1232,484,1001,265,300,255,737,485,65,483,745,354,349,191,1290,594,220,191,77,280,1097,431,413,191);
         this.WORM_COORDS[38] = new Array(1236,491,995,269,343,195,1094,433,150,319,776,499,1178,323,510,463,617,457,1125,316,921,322,21,607,95,254,444,478,48,488,1160,256,859,580,888,472,1029,514,903,375);
         this.WORM_COORDS[39] = new Array(814,617,733,485,173,309,999,266,1144,604,634,428,401,229,258,196,37,588,553,381,494,488,1160,256,1189,400,866,499,918,324,1282,599,687,375,598,485,1080,439,721,315);
         this.WORM_COORDS[40] = new Array(116,474,350,330,887,472,1270,607,73,281,476,493,831,620,1012,526,348,193,560,424,1251,516,751,498,1062,458,1139,275,416,189,205,211,1060,312,55,486,265,469,17,612);
         this.WORM_COORDS[41] = new Array(909,354,578,463,510,463,414,491,823,617,1083,437,1217,460,989,501,735,338,768,498,1269,607,1046,292,1184,334,292,341,365,191,909,463,125,271,226,184,7,626,305,482);
         this.WORM_COORDS[42] = new Array(1074,446,208,207,1260,611,325,224,311,335,274,228,617,457,762,498,14,617,44,491,1236,491,411,491,827,620,72,281,423,174,479,493,668,354,969,284,561,430,866,499);
         this.WORM_COORDS[43] = new Array(1292,592,909,463,1070,448,836,578,10,624,1216,457,276,230,503,479,185,293,1066,319,1036,267,641,416,1129,298,935,310,755,498,65,298,901,380,571,453,678,360,986,403);
         this.WORM_COORDS[44] = new Array(1244,504,1059,312,610,469,963,285,1284,596,487,491,1164,275,288,343,1133,339,40,584,235,178,722,313,1089,434,437,479,694,378,755,498,367,192,166,317,552,381,63,316);
         this.WORM_COORDS[45] = new Array(240,178,729,483,799,614,1255,528,471,489,381,386,676,486,57,485,186,292,439,153,110,255,1288,594,1053,300,1189,400,298,480,712,333,1108,430,1149,258,374,205,1123,318);
         this.WORM_COORDS[46] = new Array(1285,596,814,617,595,485,31,593,480,493,997,267,776,499,452,190,120,267,365,191,559,418,265,469,639,419,1187,341,1202,435,722,313,391,490,668,354,1078,441,48,488);
         this.WORM_COORDS[47] = new Array(1264,610,1103,430,1029,259,635,425,519,443,76,482,660,360,92,257,746,495,9,624,343,195,904,372,553,381,825,618,712,333,1217,460,414,491,278,234,142,307,468,488);
         this.WORM_COORDS[48] = new Array(1058,307,134,293,752,498,856,579,258,463,418,491,1290,594,544,388,7,626,583,471,322,236,376,207,801,614,1185,336,740,349,236,178,933,311,1105,430,480,493,52,487);
         this.WORM_COORDS[49] = new Array(176,304,1031,510,300,255,629,436,1111,428,419,177,1240,497,1208,447,64,315,985,284,851,579,40,584,564,438,101,251,872,486,895,396,656,370,503,479,1187,341,918,324);
         this.WORM_COORDS[50] = new Array(555,384,989,398,0,637,1137,275,384,220,415,491,654,379,869,490,1030,259,1023,521,1277,600,608,471,846,577,1074,446,726,481,222,188,38,586,55,486,131,292,922,461);
         this.WORM_COORDS[51] = new Array(895,468,46,488,1148,260,664,356,1109,429,321,238,1288,594,436,480,591,481,1117,360,151,336,969,284,745,354,76,281,762,498,797,614,1228,479,380,213,1192,413,1256,535);
         this.WORM_COORDS[52] = new Array(31,593,1251,516,1068,452,568,448,1269,607,1219,464,650,395,870,489,716,323,1061,312,483,492,1135,287,430,483,289,256,411,197,937,309,843,577,547,382,1026,520,141,304);
         this.WORM_COORDS[53] = new Array(503,479,828,620,644,410,759,498,277,233,1261,611,914,328,142,307,358,335,1045,486,1036,267,610,469,66,293,1159,252,1093,434,738,347,530,417,435,153,1194,421,981,297);
         this.WORM_COORDS[54] = new Array(1,636,1240,497,1100,430,827,620,468,488,961,287,873,484,1203,437,44,491,586,475,642,414,259,196,257,462,1272,605,381,386,1019,526,731,320,393,227,44,580,1034,264);
         this.WORM_COORDS[55] = new Array(1152,607,6,628,303,338,1219,464,818,617,175,306,699,490,1110,429,1015,526,609,469,399,229,688,375,306,482,923,319,49,575,877,480,1185,336,953,439,768,498,467,488);
         this.WORM_COORDS[56] = new Array(1003,262,184,295,718,478,101,251,201,220,1202,435,449,187,670,354,845,577,43,582,464,488,306,254,887,472,530,417,1101,430,584,472,271,472,1239,496,1126,315,934,310);
         this.WORM_COORDS[57] = new Array(3,634,270,220,1089,434,1287,594,1231,599,929,458,982,293,55,486,801,614,1229,480,191,285,538,399,755,498,455,487,219,191,738,347,455,193,105,477,1198,428,894,397);
         this.WORM_COORDS[58] = new Array(888,472,825,618,581,469,25,602,158,330,1073,446,1258,613,1186,337,301,254,950,297,460,489,536,404,513,457,399,229,631,435,661,359,63,316,1028,258,98,251,1221,468);
         this.WORM_COORDS[59] = new Array(1265,610,1109,429,89,259,904,372,626,443,864,583,1014,526,464,488,370,197,696,376,1197,427,743,492,574,457,50,487,1,636,982,293,386,411,540,394,312,249,1184,334);
         this.WORM_COORDS[60] = new Array(904,372,211,412,1275,602,6,628,452,487,544,388,427,164,702,350,625,444,759,498,802,614,213,197,1008,257,1116,427,1015,526,922,320,925,459,60,318,389,225,1248,511);
         this.WORM_COORDS[61] = new Array(305,482,368,194,808,614,1243,502,632,433,1159,252,1127,314,580,467,662,357,886,472,1034,505,1067,453,85,264,706,487,495,488,772,498,749,385,954,294,24,606,531,415);
         this.WORM_COORDS[62] = new Array(72,557,1062,312,260,466,231,179,385,406,376,207,1,636,1198,428,835,580,518,446,900,383,438,478,632,433,1232,484,742,351,735,485,1263,610,1062,458,1184,334,1122,420);
         this.WORM_COORDS[63] = new Array(238,178,156,330,818,617,1260,611,405,491,1118,356,672,354,598,485,1053,300,1211,451,1087,435,865,508,229,415,1243,502,562,432,496,486,914,328,299,256,971,284,387,222);
         this.WORM_COORDS[64] = new Array(1041,278,382,392,584,472,701,488,157,330,376,207,39,584,535,408,259,465,1281,599,80,268,363,340,902,378,824,618,877,480,1206,442,719,319,638,421,1067,453,662,357);
         this.WORM_COORDS[65] = new Array(455,193,1037,268,282,239,1173,611,1202,435,105,251,601,485,466,488,78,481,815,617,1257,614,1099,431,735,338,16,614,938,309,212,206,899,386,667,354,394,227,1137,275);
         this.WORM_COORDS[66] = new Array(248,185,141,304,76,281,1253,520,944,304,808,614,724,313,13,618,633,430,1060,312,952,439,238,356,1091,434,893,468,403,229,692,380,1029,259,562,432,105,477,1284,596);
         this.WORM_COORDS[67] = new Array(885,472,410,491,1133,289,628,438,1071,447,768,498,45,489,988,281,845,577,1178,605,30,595,1252,518,476,493,565,441,105,251,222,188,659,362,975,331,1185,336,1266,608);
         this.WORM_COORDS[68] = new Array(697,361,298,480,1212,452,870,489,469,488,75,483,617,457,905,370,1261,611,776,499,1180,331,349,191,123,270,928,316,3,634,338,329,60,318,836,578,213,197,1021,251);
         this.WORM_COORDS[69] = new Array(19,609,321,238,1025,255,312,484,586,475,132,292,236,420,672,354,468,488,74,483,451,189,856,579,1245,508,379,381,971,284,1117,360,917,325,551,381,518,446,1205,441);
         this.WORM_COORDS[70] = new Array(1073,446,230,416,662,357,1262,611,907,362,45,489,524,432,12,620,402,229,1140,274,301,254,886,472,818,617,70,284,1011,254,481,492,1201,433,635,425,1153,607,731,320);
         this.WORM_COORDS[71] = new Array(402,491,40,584,630,435,1006,257,404,220,813,616,314,248,1091,434,766,498,50,487,85,264,468,488,1288,594,1248,511,522,436,864,583,717,322,888,472,338,329,221,191);
         this.WORM_COORDS[72] = new Array(6,628,576,459,550,381,485,492,1205,441,970,284,1172,613,141,304,829,620,1081,438,662,357,743,492,1125,316,303,254,1238,496,1258,613,740,349,234,418,1159,252,324,476);
         this.WORM_COORDS[73] = new Array(1130,295,1045,288,191,285,412,491,1081,438,43,582,624,446,835,580,1275,602,522,436,683,366,123,270,247,184,739,348,463,488,961,287,2,634,93,480,369,196,879,478);
         this.WORM_COORDS[74] = new Array(1268,607,576,459,794,614,89,259,517,449,55,486,331,211,968,284,775,499,1102,430,1194,421,142,307,319,483,906,368,891,468,720,316,664,356,1118,356,32,593,1175,293);
         this.WORM_COORDS[75] = new Array(1253,520,831,620,649,397,220,191,508,468,448,187,893,468,1122,348,307,253,31,593,51,487,1078,441,746,357,962,286,195,409,196,243,600,485,83,267,530,417,1187,341);
         this.WORM_COORDS[76] = new Array(458,225,1151,606,876,480,912,335,275,229,669,354,529,420,1247,509,211,207,1112,428,722,313,396,228,841,578,326,220,104,251,608,471,477,493,2,634,395,490,978,317);
         this.WORM_COORDS[77] = new Array(1243,502,997,267,400,491,1170,613,295,340,452,487,698,489,246,182,1271,607,282,239,26,601,434,153,877,480,802,614,859,580,1131,295,1050,293,1101,430,114,259,921,322);
         this.WORM_COORDS[78] = new Array(1052,473,3,634,1002,263,92,257,1200,431,628,438,831,620,392,490,466,488,739,348,1232,484,519,443,1105,430,752,498,1062,312,387,418,201,220,176,304,1263,610,263,469);
         this.WORM_COORDS[79] = new Array(3,634,197,243,498,484,710,335,231,179,765,498,296,256,604,479,1201,433,412,197,362,338,854,579,1183,332,110,255,1096,432,950,297,634,428,163,321,1249,512,658,365);
         this.WORM_COORDS[80] = new Array(480,493,425,172,903,375,74,483,862,582,1123,318,1110,429,101,251,875,480,1181,331,19,609,253,190,621,449,1291,593,1215,456,156,330,948,300,319,245,200,224,1012,526);
         this.WORM_COORDS[81] = new Array(888,472,24,606,325,224,1165,276,324,331,700,356,1272,605,78,481,60,318,978,317,601,485,262,207,517,449,1105,430,1004,259,794,614,775,499,1235,489,176,304,102,251);
         this.WORM_COORDS[82] = new Array(12,620,629,436,990,502,773,498,1261,611,813,616,521,438,318,245,864,583,382,392,392,490,672,354,343,195,172,311,1060,312,256,193,1123,318,726,313,897,390,1251,516);
         this.WORM_COORDS[83] = new Array(1050,293,635,425,432,483,52,487,231,179,30,595,550,381,300,255,1277,600,1231,483,750,397,752,498,443,161,1038,498,484,492,602,482,1076,443,865,508,120,474,241,356);
         this.WORM_COORDS[84] = new Array(228,182,1118,426,940,306,886,472,170,313,1203,437,1178,605,410,491,1263,610,739,348,560,424,1000,265,798,614,859,580,106,251,428,163,197,243,53,573,377,208,1126,315);
         this.WORM_COORDS[85] = new Array(1286,594,395,490,150,319,823,617,761,498,485,492,929,314,999,266,36,590,890,470,558,411,681,365,726,313,418,177,602,482,206,209,304,254,57,485,1099,431,1255,528);
         this.WORM_COORDS[86] = new Array(201,220,598,485,983,286,1011,526,53,487,89,259,910,348,706,345,411,491,1213,453,264,214,1065,319,417,185,1,636,1068,452,64,315,181,298,1288,594,1127,314,1152,252);
         this.WORM_COORDS[87] = new Array(1252,518,1122,348,1289,594,1219,464,843,577,878,479,1071,447,1144,270,113,259,683,366,412,197,291,256,1025,255,901,380,592,482,746,357,486,492,548,381,7,626,762,498);
         this.WORM_COORDS[88] = new Array(406,491,924,459,309,252,881,588,1078,441,387,222,39,584,818,617,968,284,509,465,683,366,434,153,121,474,1276,601,578,463,1151,606,631,435,1009,524,1148,260,151,336);
         this.WORM_COORDS[89] = new Array(1258,613,167,316,621,449,301,254,952,439,757,498,1233,486,651,391,950,297,1020,251,1183,590,526,427,235,178,850,579,6,628,352,189,1008,523,458,225,1129,298,389,490);
         this.WORM_COORDS[90] = new Array(1164,275,472,490,658,365,1220,465,535,408,1188,351,28,597,320,241,750,397,1253,618,147,313,814,617,611,468,97,252,1061,312,271,347,968,284,1117,360,228,182,1071,447);
         this.WORM_COORDS[91] = new Array(1222,469,1275,602,48,488,429,484,850,579,138,301,77,280,1085,437,867,496,224,185,5,629,908,359,530,417,936,309,411,197,314,248,598,485,1020,525,1045,288,769,498);
         this.WORM_COORDS[92] = new Array(459,225,799,614,528,424,468,488,769,498,1003,262,1258,613,196,243,147,313,14,617,1124,317,54,487,983,493,984,405,1186,337,279,238,1215,456,673,354,1161,259,937,309);
         this.WORM_COORDS[93] = new Array(643,413,351,189,1000,265,851,579,427,485,1050,293,1088,434,887,472,65,298,775,499,659,362,903,375,299,480,1199,429,229,356,8,626,1281,599,1122,348,489,490,150,319);
         this.WORM_COORDS[94] = new Array(37,588,602,482,418,491,893,468,1294,591,854,579,1188,351,184,295,49,487,546,383,939,308,287,256,206,209,996,509,426,168,107,253,1130,295,749,385,1172,613,1026,255);
         this.WORM_COORDS[95] = new Array(327,217,407,492,829,620,525,430,1098,431,670,354,906,368,27,600,200,224,81,267,1153,251,735,338,597,486,966,424,771,498,269,219,58,485,979,316,473,493,163,321);
         this.WORM_COORDS[96] = new Array(369,196,1105,430,46,578,656,370,486,492,841,578,458,225,1186,337,397,490,945,304,194,281,1281,599,1022,522,2,634,584,472,1060,312,546,383,77,280,1129,298,1162,615);
         this.WORM_COORDS[97] = new Array(1024,253,424,485,1151,254,656,370,913,332,602,482,676,486,763,498,298,256,76,281,885,472,831,620,37,588,1289,594,136,295,1235,489,723,313,256,352,1117,360,511,462);
         this.WORM_COORDS[98] = new Array(1221,468,1050,293,417,185,496,486,663,357,550,381,860,580,1107,430,749,385,8,626,1279,600,176,304,879,478,611,468,1253,520,714,332,238,178,977,414,296,256,51,487);
         this.WORM_COORDS[99] = new Array(1075,445,215,195,697,361,1246,508,75,281,595,485,1061,312,325,224,550,381,1162,259,1292,592,437,479,756,498,964,284,872,486,563,435,811,614,1003,518,1120,349,16,614);
         this.WORM_COORDS[100] = new Array(439,282,1225,464,471,224,45,462,920,472,1007,230,689,335,744,637,641,417,713,584,1271,585,551,320,1149,260,89,584,219,377,1205,368,278,443,153,176,1064,206,204,448);
         this.WORM_COORDS[101] = new Array(1205,368,914,319,472,222,208,368,19,492,733,214,1017,255,1218,605,374,239,719,587,84,526,967,225,733,639,162,314,1251,491,798,320,95,593,1131,220,670,356,882,456);
         this.WORM_COORDS[102] = new Array(190,364,1093,193,135,584,890,258,31,469,912,318,391,257,552,324,147,171,494,185,773,615,843,425,1230,591,670,356,759,196,1175,200,124,355,368,517,440,517,555,492);
         this.WORM_COORDS[103] = new Array(171,181,650,393,872,233,418,259,53,467,1060,371,681,340,106,461,395,552,322,260,609,480,949,231,254,418,95,593,1232,467,755,196,1084,192,0,522,1270,582,1162,219);
         this.WORM_COORDS[104] = new Array(8,512,756,638,496,183,800,320,1021,315,680,342,262,426,399,257,1008,230,1045,378,573,442,105,462,872,621,781,212,1170,211,1220,462,937,453,707,579,931,260,456,299);
         this.WORM_COORDS[105] = new Array(1243,477,892,260,1277,632,129,175,365,232,1162,219,539,403,228,386,517,181,1095,348,488,385,797,369,13,502,965,435,1034,311,624,543,596,463,847,430,1211,415,101,463);
         this.WORM_COORDS[106] = new Array(565,441,268,435,402,257,435,517,1247,484,341,258,613,561,86,578,839,423,548,312,911,318,932,260,153,176,22,481,1074,205,85,527,227,385,698,325,278,264,1044,363);
         this.WORM_COORDS[107] = new Array(797,319,82,525,698,325,207,367,98,599,267,270,659,375,846,429,61,475,539,219,1048,379,787,223,926,323,1118,207,616,558,461,471,1198,236,269,437,573,442,952,231);
         this.WORM_COORDS[108] = new Array(667,359,407,546,874,450,34,468,611,486,172,538,274,265,1106,206,509,390,895,263,465,473,714,226,1236,469,954,232,639,422,189,363,153,176,768,209,438,281,261,424);
         this.WORM_COORDS[109] = new Array(894,262,631,510,501,179,3,520,77,495,469,309,923,322,314,262,1029,312,555,492,941,450,865,445,96,595,364,232,1046,379,1127,221,243,404,418,527,1237,469,146,591);
         this.WORM_COORDS[110] = new Array(465,304,873,232,1246,482,216,373,124,179,41,462,733,214,590,457,288,263,625,543,127,458,982,214,919,472,541,223,3,520,793,237,266,431,1220,604,425,519,1121,207);
         this.WORM_COORDS[111] = new Array(1246,482,410,439,1017,255,908,317,745,637,121,587,308,261,437,517,489,191,818,417,13,502,650,393,1197,235,594,461,956,232,1036,311,444,287,1276,627,550,317,158,366);
         this.WORM_COORDS[112] = new Array(816,417,307,261,166,364,570,441,1085,191,1233,467,1049,377,218,376,9,511,1145,274,944,242,451,293,1025,312,546,310,666,360,1264,571,808,322,165,180,484,385,362,232);
         this.WORM_COORDS[113] = new Array(346,238,1175,200,194,364,619,556,1200,265,558,491,678,345,405,548,104,463,608,476,643,411,945,231,707,579,1268,575,997,229,1222,463,161,179,120,360,826,419,500,387);
         this.WORM_COORDS[114] = new Array(435,275,32,469,126,584,676,348,334,260,239,402,509,390,398,416,793,317,623,556,919,321,427,517,803,636,1060,206,1038,311,818,417,1182,196,885,456,580,450,794,237);
         this.WORM_COORDS[115] = new Array(1007,230,762,198,169,181,630,511,613,561,582,625,1185,202,1239,472,262,426,481,212,1058,211,106,178,345,241,681,340,553,493,1206,413,149,455,480,306,447,520,814,417);
         this.WORM_COORDS[116] = new Array(1041,360,805,322,1235,586,711,584,560,488,7,513,123,180,246,408,1156,238,449,292,957,442,95,593,132,457,333,260,69,491,610,482,448,465,845,428,854,268,789,223);
         this.WORM_COORDS[117] = new Array(1220,462,829,419,1181,196,9,511,804,638,758,196,109,461,472,478,920,472,544,405,434,273,118,180,900,295,449,374,776,305,268,269,712,584,1014,246,1131,220,203,366);
         this.WORM_COORDS[118] = new Array(1270,582,601,468,332,261,274,265,1160,231,843,425,9,511,920,321,539,219,713,584,732,214,940,244,1222,463,213,371,452,294,1204,568,259,423,93,590,910,469,804,321);
         this.WORM_COORDS[119] = new Array(593,460,1226,464,273,265,902,315,749,201,1050,232,361,232,12,503,470,229,261,424,184,521,169,181,1115,208,817,417,100,463,649,394,416,259,95,274,204,366,1277,632);
         this.WORM_COORDS[120] = new Array(291,263,862,249,702,322,205,366,1051,231,1149,260,1244,478,716,226,491,188,371,236,945,231,549,413,847,430,60,474,127,176,259,423,1205,586,1040,313,613,561,556,492);
         this.WORM_COORDS[121] = new Array(575,443,150,175,750,638,793,237,1254,497,207,367,687,566,899,464,930,260,849,430,90,585,1146,274,657,377,1040,360,1196,234,326,261,113,460,1210,612,997,229,430,269);
         this.WORM_COORDS[122] = new Array(1249,489,217,374,488,269,1210,415,895,263,1194,232,6,515,59,473,1036,356,827,419,431,270,568,441,483,211,148,171,1270,582,493,492,898,462,759,639,353,232,697,326);
         this.WORM_COORDS[123] = new Array(277,265,1211,415,384,253,610,482,79,503,191,364,1086,191,1035,311,117,589,711,226,22,481,249,413,658,376,112,179,618,557,442,466,423,521,496,493,1276,627,1250,489);
         this.WORM_COORDS[124] = new Array(124,179,1119,207,268,435,707,242,1024,312,391,257,730,639,23,480,1223,463,267,270,460,302,96,595,1274,615,479,214,473,382,158,599,209,370,957,231,862,249,173,452);
         this.WORM_COORDS[125] = new Array(701,324,429,269,1215,417,281,264,93,590,892,260,860,625,477,218,228,386,847,430,1090,191,630,511,1254,570,587,457,709,580,187,520,985,216,646,401,164,179,1255,498);
         this.WORM_COORDS[126] = new Array(839,423,1056,217,1051,377,264,428,497,387,1001,230,422,263,79,503,430,370,617,557,556,492,97,274,696,326,18,497,351,233,292,263,574,442,176,230,723,213,484,210);
         this.WORM_COORDS[127] = new Array(395,257,182,247,502,179,1274,615,570,441,1116,208,692,331,805,322,151,175,491,491,717,227,43,462,441,467,845,428,410,366,84,526,1234,467,926,323,1204,367,272,438);
         this.WORM_COORDS[128] = new Array(43,462,104,178,277,265,86,578,614,559,1030,312,499,179,1206,413,1233,467,921,321,651,390,1196,234,755,638,241,403,1055,217,751,199,574,442,480,383,702,322,1123,207);
         this.WORM_COORDS[129] = new Array(1173,203,650,393,280,441,329,261,1055,288,910,318,174,230,394,257,1228,464,746,637,528,192,785,217,105,603,136,457,714,226,1144,274,993,227,371,518,841,424,199,365);
         this.WORM_COORDS[130] = new Array(238,401,542,307,191,514,71,491,778,306,1215,417,1254,497,1278,635,642,415,506,179,272,265,744,208,185,363,1137,236,947,328,847,430,617,557,1265,571,932,260,17,501);
         this.WORM_COORDS[131] = new Array(889,254,285,263,795,317,548,312,1250,489,75,494,227,385,1166,218,644,408,938,451,360,232,623,556,547,409,1064,206,390,553,141,167,696,326,86,578,740,639,1269,577);
         this.WORM_COORDS[132] = new Array(805,414,1071,206,255,419,118,589,813,324,940,244,669,357,175,451,1251,491,442,285,1169,212,796,260,572,442,112,179,31,469,688,566,359,232,1213,417,416,531,554,492);
         this.WORM_COORDS[133] = new Array(1208,413,920,321,930,260,571,441,620,556,781,212,140,167,11,504,808,322,749,638,225,383,715,584,370,236,451,293,1142,275,98,222,670,356,478,383,1244,478,554,492);
         this.WORM_COORDS[134] = new Array(666,360,633,508,906,315,484,210,200,365,141,167,851,433,794,237,1188,218,1242,476,86,578,550,317,464,303,1275,619,326,261,580,450,959,442,1014,246,1099,201,433,517);
         this.WORM_COORDS[135] = new Array(516,180,699,324,4,520,367,233,920,321,1083,192,160,179,69,491,183,363,649,394,285,263,414,445,1039,359,792,237,955,233,838,423,91,588,1278,635,1271,585,850,288);
         this.WORM_COORDS[136] = new Array(197,364,975,217,1075,205,910,318,1211,611,439,282,858,262,566,441,36,466,1174,202,147,171,495,185,1247,484,522,501,718,227,1036,311,323,261,111,461,655,381,1275,619);
         this.WORM_COORDS[137] = new Array(636,506,12,503,72,491,546,310,904,465,828,419,746,637,433,517,454,297,895,263,249,413,550,418,769,210,656,379,912,318,171,453,1206,413,413,444,182,247,709,227);
         this.WORM_COORDS[138] = new Array(1231,467,275,265,198,364,521,395,450,292,880,226,416,531,662,367,81,524,1216,417,594,461,127,584,1097,199,630,511,728,214,50,464,801,320,906,466,507,179,137,167);
         this.WORM_COORDS[139] = new Array(353,232,910,318,189,363,261,424,760,639,459,301,569,441,1028,312,807,322,985,216,835,423,885,233,448,374,166,181,1169,212,773,212,388,554,1085,356,96,595,3,520);
         this.WORM_COORDS[140] = new Array(38,464,604,470,342,256,467,475,286,386,799,320,1171,207,738,212,95,593,669,357,974,218,519,183,1218,461,147,171,917,321,498,387,1038,311,431,370,727,641,1140,275);
         this.WORM_COORDS[141] = new Array(124,586,401,257,740,639,830,419,250,414,1074,362,148,171,632,509,531,194,1139,275,740,209,177,230,70,491,1275,619,16,501,1256,502,414,445,853,271,1208,413,576,444);
         this.WORM_COORDS[142] = new Array(153,455,7,513,88,582,514,179,922,321,220,378,60,474,818,417,436,517,999,230,931,260,651,390,556,492,1067,206,308,261,264,428,808,322,774,212,720,588,1262,517);
         this.WORM_COORDS[143] = new Array(233,394,1180,549,603,470,697,326,410,259,1249,489,545,309,319,260,532,195,809,322,24,480,521,395,432,370,1046,379,115,459,964,227,1159,233,1009,317,654,385,1056,217);
         this.WORM_COORDS[144] = new Array(32,469,904,315,1273,609,1214,417,106,178,590,457,1055,217,851,433,206,367,364,232,1250,489,631,510,1130,220,435,517,701,324,428,268,794,237,734,214,471,381,497,180);
         this.WORM_COORDS[145] = new Array(79,503,1158,233,635,506,809,322,1278,635,543,308,106,602,150,455,940,450,279,443,860,257,197,364,468,308,616,558,1068,206,1203,563,664,363,330,261,412,539,1201,413);
         this.WORM_COORDS[146] = new Array(26,477,992,227,120,181,380,248,1274,615,819,418,653,387,1159,233,1220,462,922,321,266,431,531,194,794,626,153,455,179,230,197,364,685,337,78,502,623,556,575,443);
         this.WORM_COORDS[147] = new Array(348,235,753,197,239,402,873,232,1052,377,504,390,1265,571,977,215,686,336,586,456,88,582,1243,477,468,308,116,459,787,316,1136,236,928,325,274,265,832,421,174,230);
         this.WORM_COORDS[148] = new Array(182,363,418,259,663,365,102,224,608,476,333,260,261,424,145,170,1206,413,496,183,30,471,420,524,554,492,1195,233,1047,379,913,318,185,450,1118,207,750,200,1145,274);
         this.WORM_COORDS[149] = new Array(658,376,44,462,89,584,488,191,822,419,602,469,431,270,1150,259,324,261,1006,230,421,522,247,410,881,226,110,461,102,273,764,200,1057,373,552,324,921,321,1097,199);
         this.WORM_COORDS[150] = new Array(925,323,637,431,440,517,357,232,502,496,54,468,91,588,665,361,280,264,1079,197,190,364,858,262,97,222,612,561,851,433,1009,230,246,408,1216,606,414,259,554,492);
         this.WORM_COORDS[151] = new Array(612,561,225,383,1202,266,1237,469,637,431,66,479,533,206,282,432,454,297,911,318,1278,635,1074,205,12,503,855,436,934,244,402,257,446,465,748,637,571,441,792,237);
         this.WORM_COORDS[152] = new Array(6,515,543,308,622,556,466,306,947,447,743,208,247,410,1275,619,841,424,411,441,674,349,1073,205,1225,464,1024,312,181,526,949,231,538,209,1186,204,638,425,635,506);
         this.WORM_COORDS[153] = new Array(1056,217,508,498,899,294,613,561,173,230,1189,221,719,225,28,474,698,325,183,363,567,613,1249,571,1253,495,600,468,516,180,256,421,113,179,935,244,90,585,429,517);
         this.WORM_COORDS[154] = new Array(668,358,897,265,31,469,1257,504,717,585,427,370,821,419,626,543,338,260,526,189,574,442,929,326,1205,368,403,257,1156,238,638,425,282,264,800,633,90,585,158,178);
         this.WORM_COORDS[155] = new Array(852,435,168,181,9,511,702,575,1165,218,336,260,612,561,927,465,260,424,914,319,674,349,432,517,428,268,144,591,801,320,564,441,1265,571,1236,469,190,364,487,488);
         this.WORM_COORDS[156] = new Array(355,232,757,196,1015,247,134,169,1126,220,651,390,907,466,819,418,1029,312,587,457,1211,415,265,429,9,511,736,453,958,231,1250,489,748,637,107,461,1268,575,440,517);
         this.WORM_COORDS[157] = new Array(92,274,1041,360,946,231,18,497,1238,470,1135,221,1205,368,188,363,332,261,627,516,903,465,538,209,111,598,653,387,705,320,435,275,1141,275,768,617,575,443,751,199);
         this.WORM_COORDS[158] = new Array(747,637,1144,274,293,263,720,214,575,443,1082,192,783,212,371,236,240,403,917,321,106,178,622,556,0,522,430,517,826,419,794,317,138,586,186,363,51,465,468,308);
         this.WORM_COORDS[159] = new Array(194,512,750,200,628,513,141,167,414,259,555,492,1185,202,1097,199,242,404,912,318,1217,417,1243,477,1146,274,160,601,64,477,86,578,422,522,821,419,1222,600,186,363);
         this.WORM_COORDS[160] = new Array(336,260,1092,192,268,435,171,453,893,461,445,289,198,364,145,591,58,472,916,320,1265,571,535,206,630,511,1012,241,893,261,430,517,271,265,135,167,493,492,1209,413);
         this.WORM_COORDS[161] = new Array(614,559,373,239,673,350,862,249,304,261,505,390,902,315,796,260,538,209,265,429,1024,312,533,301,1204,367,816,417,94,222,801,320,1241,475,1068,206,1277,632,87,579);
         this.WORM_COORDS[162] = new Array(798,320,1273,609,39,463,609,480,344,243,679,344,455,297,859,261,534,206,841,424,485,385,106,602,1244,478,250,414,713,226,174,230,771,210,1070,365,624,543,729,640);
         this.WORM_COORDS[163] = new Array(191,364,745,207,1029,312,130,584,1077,202,116,179,263,427,451,293,586,456,871,235,690,334,487,197,327,261,125,354,949,327,381,250,796,260,531,298,781,615,67,480);
         this.WORM_COORDS[164] = new Array(177,450,48,462,242,404,478,218,1063,206,437,278,189,363,1218,461,1273,609,818,417,170,543,1162,219,654,385,104,272,538,209,968,225,691,569,596,463,898,266,431,517);
         this.WORM_COORDS[165] = new Array(65,477,694,328,929,326,148,592,92,590,824,419,541,223,800,320,629,512,583,451,941,244,508,498,1091,191,1056,375,910,469,450,292,7,513,1216,417,1004,230,327,261);
         this.WORM_COORDS[166] = new Array(1274,615,708,317,523,186,441,283,194,364,29,474,114,179,590,457,1106,206,917,321,342,256,1218,461,993,227,728,214,614,559,837,423,79,503,1035,311,440,517,125,585);
         this.WORM_COORDS[167] = new Array(564,441,663,365,60,474,128,175,783,212,215,372,1253,495,94,591,726,641,5,516,124,459,419,260,343,244,1267,573,1156,238,778,615,827,419,804,321,149,593,1059,372);
         this.WORM_COORDS[168] = new Array(1273,609,1216,417,188,363,829,419,696,326,558,491,271,265,124,459,626,543,644,408,116,179,457,300,864,247,1194,232,334,260,797,319,490,386,511,179,942,450,906,315);
         this.WORM_COORDS[169] = new Array(104,463,368,233,277,265,175,363,904,315,53,467,614,559,494,185,564,441,699,324,1145,274,1225,464,85,527,456,299,527,291,836,423,703,576,786,217,1017,255,757,639);
         this.WORM_COORDS[170] = new Array(1053,231,720,588,597,464,371,236,294,262,208,368,925,323,106,461,488,488,1190,225,953,232,78,566,1271,585,267,433,454,297,670,356,164,552,770,615,25,478,643,411);
         this.WORM_COORDS[171] = new Array(1175,200,361,232,1224,464,1240,580,976,216,434,273,189,363,81,524,831,420,903,315,531,194,481,212,565,441,26,477,256,421,307,261,1020,277,1152,257,718,308,932,455);
         this.WORM_COORDS[172] = new Array(200,365,605,471,401,257,140,587,614,559,964,227,690,334,1197,235,503,179,1141,275,422,522,306,261,1025,312,65,477,164,273,1207,413,643,411,832,632,545,309,426,370);
         this.WORM_COORDS[173] = new Array(901,464,1050,288,976,216,492,250,523,186,1,521,808,322,197,364,1207,610,781,212,84,526,1140,275,1199,237,818,417,418,259,146,171,496,493,1222,463,556,492,1057,217);
         this.WORM_COORDS[174] = new Array(842,424,966,225,1201,266,89,584,437,278,1249,571,1258,506,29,474,341,258,1179,196,771,210,633,508,257,423,702,575,716,309,139,457,1107,207,211,370,650,393,1206,413);
         this.WORM_COORDS[175] = new Array(495,185,287,263,78,502,867,447,125,178,722,304,633,508,426,518,644,408,128,458,151,594,802,320,468,381,1043,363,244,405,1260,512,87,579,1168,215,858,262,1064,206);
         this.WORM_COORDS[176] = new Array(1168,547,1023,314,121,181,185,363,531,194,37,465,93,274,135,457,728,640,620,556,916,320,361,232,876,226,1112,208,448,291,714,584,237,398,390,553,835,423,960,231);
         this.WORM_COORDS[177] = new Array(1100,202,690,334,287,263,1076,362,549,413,1256,502,436,276,1231,590,734,639,484,385,1035,311,858,439,281,438,866,246,208,368,775,212,104,603,182,450,994,228,71,491);
         this.WORM_COORDS[178] = new Array(554,492,625,543,795,368,1273,609,247,410,649,394,0,522,301,262,1090,191,837,423,1219,462,105,462,495,185,187,363,177,230,924,470,788,223,447,291,102,601,604,470);
         this.WORM_COORDS[179] = new Array(837,423,1072,205,305,261,1254,497,477,309,1214,417,727,214,646,401,525,396,495,185,856,262,632,509,193,364,802,320,43,462,560,488,387,258,1268,575,549,315,106,178);
         this.WORM_COORDS[180] = new Array(1236,469,1205,368,201,365,1049,289,977,215,718,227,1113,208,93,274,168,181,264,428,591,458,820,418,106,602,26,477,274,265,616,558,770,210,923,322,1138,275,514,179);
         this.WORM_COORDS[181] = new Array(973,219,86,578,210,370,31,469,1247,484,100,222,650,393,298,262,588,457,728,640,615,558,1272,590,828,419,1031,312,287,379,479,214,1,521,351,233,177,230,686,336);
         this.WORM_COORDS[182] = new Array(1168,215,638,425,261,424,388,258,486,281,135,457,122,587,1007,230,271,265,1229,466,326,261,779,212,153,366,692,331,563,441,27,477,430,517,904,465,852,272,797,319);
         this.WORM_COORDS[183] = new Array(424,263,677,347,957,231,619,556,1266,572,374,239,74,492,89,584,306,261,567,441,164,179,195,364,929,326,815,417,539,219,811,323,1220,462,422,522,783,212,731,639);
         this.WORM_COORDS[184] = new Array(730,216,564,441,642,415,1061,206,274,265,79,503,197,364,1193,231,375,242,698,325,616,558,125,585,154,176,951,231,15,501,1206,607,1119,207,1257,504,764,625,463,303);
         this.WORM_COORDS[185] = new Array(711,313,25,478,1252,493,1264,571,485,198,430,269,1200,265,1097,199,430,517,372,238,158,178,632,509,1277,632,540,307,1025,312,654,385,698,573,411,441,811,323,582,450);
         this.WORM_COORDS[186] = new Array(981,421,263,427,1270,582,393,257,686,336,33,469,1262,517,615,558,559,490,827,419,1005,317,91,588,97,464,759,196,1188,218,865,247,640,419,212,370,138,167,1057,373);
         this.WORM_COORDS[187] = new Array(859,261,460,302,845,428,986,216,1134,220,312,261,561,485,922,321,1252,493,194,364,94,222,679,344,811,323,255,419,117,363,11,504,620,556,1213,417,164,552,731,639);
         this.WORM_COORDS[188] = new Array(1262,517,781,212,1182,196,645,405,635,506,17,501,925,323,252,415,821,419,946,231,873,232,1017,255,288,263,615,558,712,226,571,441,138,167,812,323,732,639,542,224);
         this.WORM_COORDS[189] = new Array(870,236,1220,462,57,469,213,371,659,375,790,620,484,487,884,456,135,167,1278,635,472,222,771,210,266,431,269,267,922,321,81,524,810,323,629,512,1189,221,1262,517);
         this.WORM_COORDS[190] = new Array(502,496,698,325,1149,260,1218,461,954,232,847,430,766,204,1050,232,431,517,565,441,519,183,408,258,17,501,283,264,649,394,1179,196,77,495,614,559,1064,370,461,302);
         this.WORM_COORDS[191] = new Array(73,491,251,414,662,367,634,507,1263,571,722,213,150,175,940,244,582,450,839,423,1151,258,178,230,1006,230,853,271,1233,467,1048,379,431,270,492,387,183,363,323,261);
         this.WORM_COORDS[192] = new Array(764,200,1276,627,1219,462,592,458,1055,217,791,621,34,468,249,413,881,226,819,418,79,568,122,459,626,543,1260,512,324,261,1149,260,453,295,538,209,1211,611,433,517);
         this.WORM_COORDS[193] = new Array(123,180,1114,210,787,316,410,259,106,461,850,288,600,468,1033,312,85,527,986,216,721,213,523,501,221,380,275,440,15,501,1192,230,268,269,1266,572,616,558,732,639);
         this.WORM_COORDS[194] = new Array(198,364,38,464,92,274,441,373,645,405,502,389,951,231,837,423,1227,464,255,419,163,179,803,320,285,263,1067,206,691,333,106,461,919,321,575,443,90,585,1174,202);
         this.WORM_COORDS[195] = new Array(439,282,32,469,1216,417,533,206,1104,203,745,207,295,262,607,475,809,322,1045,378,856,262,648,397,1154,241,1263,571,916,320,135,457,3,520,613,561,857,438,366,233);
         this.WORM_COORDS[196] = new Array(720,214,526,189,668,358,169,181,569,441,127,584,335,260,231,391,838,423,4,520,103,463,1182,411,433,517,905,315,952,231,789,223,1043,363,1228,464,1106,206,52,466);
         this.WORM_COORDS[197] = new Array(599,467,129,584,862,624,832,421,800,320,1077,202,387,258,672,351,752,198,115,179,1267,573,546,310,482,212,1190,225,874,229,745,637,439,282,237,398,402,425,1033,312);
         this.WORM_COORDS[198] = new Array(1049,253,1226,598,163,452,251,414,358,232,111,461,861,249,31,469,188,363,392,553,721,213,1232,467,728,640,812,323,946,231,616,558,908,317,1190,225,818,417,140,167);
         this.WORM_COORDS[199] = new Array(49,463,675,349,407,433,811,323,928,462,191,364,1185,550,763,199,2,520,587,457,1025,312,269,267,1215,607,1271,585,902,315,343,244,1063,206,445,289,841,424,1227,464);
         this.WORM_COORDS[200] = new Array(109,498,1171,278,583,455,677,534,38,487,306,247,1095,269,313,342,1154,224,776,276,1184,576,853,331,1266,391,216,483,703,165,983,470,749,523,587,225,839,543,522,259);
         this.WORM_COORDS[201] = new Array(545,274,675,269,612,259,389,177,428,229,1253,381,988,470,1049,429,938,565,8,548,1107,224,148,458,754,163,298,255,1175,277,909,449,1219,446,223,493,848,328,1170,557);
         this.WORM_COORDS[202] = new Array(608,257,282,256,813,302,986,470,1286,392,655,413,60,444,1068,409,857,401,1165,227,698,164,170,600,546,274,661,229,765,519,1175,277,122,466,168,546,574,412,762,168);
         this.WORM_COORDS[203] = new Array(640,263,749,523,980,469,682,539,224,495,1218,445,400,187,305,248,1064,415,1173,277,3,556,361,335,828,310,863,396,126,462,272,402,1233,393,541,275,963,550,859,537);
         this.WORM_COORDS[204] = new Array(329,215,82,480,833,314,195,490,1286,392,715,161,1159,226,1187,577,775,275,1008,471,172,600,676,269,413,407,435,251,166,542,1231,394,880,401,139,457,471,201,582,225);
         this.WORM_COORDS[205] = new Array(251,462,127,461,534,273,18,517,274,256,907,501,85,511,1180,294,641,262,1138,213,1033,459,707,588,708,165,328,214,856,401,390,178,1287,392,789,462,1192,579,926,565);
         this.WORM_COORDS[206] = new Array(980,469,159,534,820,306,1226,395,1055,424,860,397,735,147,344,223,183,587,1175,277,670,223,605,243,433,245,614,403,929,565,1077,358,368,165,1283,393,294,255,540,275);
         this.WORM_COORDS[207] = new Array(162,536,1280,394,260,475,261,253,118,472,54,456,791,291,89,527,531,273,844,323,0,562,470,204,663,228,898,406,919,562,596,230,767,180,1114,226,316,210,724,551);
         this.WORM_COORDS[208] = new Array(446,261,963,550,490,492,1290,393,206,478,1226,395,665,527,10,542,1300,490,868,393,1207,555,412,198,991,471,716,565,53,460,839,317,109,498,1149,534,830,457,914,449);
         this.WORM_COORDS[209] = new Array(593,225,652,245,1069,407,541,275,1142,529,856,401,974,471,1269,394,153,522,1156,366,927,565,829,312,1026,467,265,255,84,482,660,525,28,518,442,523,228,497,151,458);
         this.WORM_COORDS[210] = new Array(908,450,272,256,118,472,497,200,42,478,1183,573,547,274,256,468,795,295,418,459,1233,393,583,455,1011,470,1294,437,676,269,442,258,711,165,1066,414,328,214,358,160);
         this.WORM_COORDS[211] = new Array(36,503,794,295,58,447,1202,564,579,225,661,525,366,162,419,459,1179,294,377,338,1020,470,139,457,823,484,1246,385,261,253,911,449,854,403,209,478,481,195,346,225);
         this.WORM_COORDS[212] = new Array(685,545,557,253,851,329,653,243,169,599,1020,470,166,542,1144,530,203,478,457,230,1132,216,393,180,46,472,317,337,941,565,749,523,1287,433,890,407,616,401,139,457);
         this.WORM_COORDS[213] = new Array(822,306,299,398,1146,532,858,401,973,471,104,515,1210,462,336,219,183,587,1281,394,611,259,126,462,29,518,283,256,1166,227,1175,408,1049,429,226,496,936,565,459,229);
         this.WORM_COORDS[214] = new Array(1178,331,776,487,3,556,1181,571,765,174,708,589,954,557,1047,434,995,471,92,527,630,281,418,459,451,236,298,508,1253,381,1076,361,697,164,858,401,564,404,1108,225);
         this.WORM_COORDS[215] = new Array(1044,436,1167,554,942,564,817,304,250,253,286,398,319,210,556,254,33,506,118,472,167,544,486,195,885,406,1151,221,685,545,176,601,1074,364,1300,490,231,500,1093,269);
         this.WORM_COORDS[216] = new Array(80,478,1027,466,691,177,475,197,1174,561,843,323,574,228,291,256,836,407,975,470,1292,438,820,479,1181,294,760,163,316,517,1218,445,188,546,1122,520,710,591,953,557);
         this.WORM_COORDS[217] = new Array(673,229,342,223,143,458,711,591,1093,269,183,587,90,527,889,407,1185,577,547,274,1056,422,785,289,288,256,199,479,948,561,723,155,424,216,597,231,7,550,483,495);
         this.WORM_COORDS[218] = new Array(1028,466,346,225,1241,389,9,546,727,550,783,476,504,205,151,458,810,301,1132,216,705,165,43,478,889,407,553,265,202,478,180,598,958,556,273,256,377,170,106,511);
         this.WORM_COORDS[219] = new Array(775,488,798,296,841,585,1251,382,615,265,179,599,338,222,1179,294,160,534,1137,528,971,473,919,562,1106,224,262,253,1059,418,914,449,1195,576,78,476,143,458,468,511);
         this.WORM_COORDS[220] = new Array(122,466,815,474,236,254,1265,390,34,505,538,274,1146,217,94,527,745,160,1206,556,623,293,963,550,1045,435,472,506,203,478,345,224,177,601,367,164,294,507,1219,446);
         this.WORM_COORDS[221] = new Array(28,518,116,475,1175,277,1029,465,1189,578,174,601,275,256,831,314,891,406,438,255,377,170,60,444,1236,392,731,147,934,565,15,638,566,235,165,540,1165,227,676,269);
         this.WORM_COORDS[222] = new Array(1098,269,972,472,681,194,613,405,585,225,1283,393,790,291,879,401,487,195,957,556,1184,576,64,441,292,255,102,518,189,541,646,255,465,512,771,189,783,476,1053,427);
         this.WORM_COORDS[223] = new Array(678,269,452,236,1046,434,939,565,622,275,971,473,1100,272,217,485,236,254,187,558,688,177,566,235,695,563,1186,577,842,407,793,294,347,226,294,255,285,503,17,637);
         this.WORM_COORDS[224] = new Array(301,399,175,601,433,245,29,518,397,185,158,533,1191,579,79,477,989,470,1264,389,259,253,789,290,755,163,1173,277,133,459,1160,226,527,267,748,524,1130,524,686,269);
         this.WORM_COORDS[225] = new Array(704,584,978,469,223,493,86,511,1142,216,556,400,841,321,676,269,917,502,1281,394,580,225,1054,426,624,291,315,210,1088,340,698,164,413,199,442,258,870,393,174,601);
         this.WORM_COORDS[226] = new Array(876,397,590,225,357,160,268,408,511,223,419,459,23,517,295,255,112,486,767,180,180,598,1156,540,646,255,747,525,349,324,961,552,820,479,1244,385,334,514,1123,225);
         this.WORM_COORDS[227] = new Array(662,228,1214,445,78,476,435,251,701,576,1178,568,183,587,344,223,866,395,922,562,595,227,1022,469,1078,357,285,398,676,441,227,496,236,254,845,323,795,295,159,534);
         this.WORM_COORDS[228] = new Array(280,398,389,177,1174,277,1288,392,71,449,671,441,436,460,643,259,732,147,1060,417,795,295,1013,470,1133,213,492,195,311,515,542,275,189,541,214,480,15,518,138,457);
         this.WORM_COORDS[229] = new Array(657,426,558,253,1297,437,1229,394,1184,576,1115,226,103,516,263,255,936,565,345,224,32,520,72,463,865,396,688,177,186,563,442,258,1056,422,311,515,832,314,1003,471);
         this.WORM_COORDS[230] = new Array(1230,394,940,565,756,520,441,464,70,448,556,254,424,216,580,423,902,404,286,256,1144,530,836,316,1115,226,655,238,104,515,1014,470,27,518,150,585,1061,416,1199,571);
         this.WORM_COORDS[231] = new Array(195,490,124,465,959,554,1010,470,304,513,40,484,1088,340,596,230,281,256,1107,224,1194,577,857,401,478,195,376,168,1276,394,827,474,528,269,776,276,833,314,730,550);
         this.WORM_COORDS[232] = new Array(1251,382,47,464,521,257,1097,269,781,285,1029,465,346,225,935,565,601,234,182,592,479,501,1210,462,1156,224,754,163,600,434,219,488,1203,562,1064,415,882,403,457,230);
         this.WORM_COORDS[233] = new Array(713,580,989,470,474,199,1104,224,241,253,178,600,1224,395,921,562,385,175,559,253,60,444,916,502,21,517,653,243,1154,539,348,226,218,487,1211,462,189,541,1169,227);
         this.WORM_COORDS[234] = new Array(918,562,95,525,917,502,161,535,576,226,1268,393,697,569,1056,422,915,449,24,518,626,393,792,460,309,217,284,398,268,490,403,189,1174,561,52,461,1210,462,739,149);
         this.WORM_COORDS[235] = new Array(943,563,147,458,1150,534,1052,427,634,276,211,478,678,535,1244,385,1130,218,256,253,561,240,2,557,837,316,751,163,613,405,295,507,756,520,302,399,440,256,73,465);
         this.WORM_COORDS[236] = new Array(602,235,1109,226,199,479,1008,471,124,465,427,226,959,554,839,317,1241,389,319,520,706,166,1297,437,1150,534,283,256,163,537,872,393,473,506,266,488,676,269,1294,490);
         this.WORM_COORDS[237] = new Array(187,558,1064,415,779,484,361,161,1156,224,724,551,1157,540,874,395,77,475,247,253,1101,320,548,274,1289,392,914,449,682,193,1007,471,963,550,1229,394,738,148,128,460);
         this.WORM_COORDS[238] = new Array(573,411,1030,465,112,486,294,255,541,275,1255,381,24,518,202,478,1216,445,839,317,705,586,1168,556,751,163,951,560,863,396,610,259,762,519,190,533,236,254,382,172);
         this.WORM_COORDS[239] = new Array(302,252,600,434,600,234,16,517,500,482,888,407,741,153,968,473,651,248,460,229,1031,463,1137,213,1082,348,249,253,944,562,1068,409,805,298,803,441,142,457,1274,395);
         this.WORM_COORDS[240] = new Array(154,459,727,150,290,256,771,518,804,298,1017,470,558,253,177,601,616,401,494,487,791,460,839,407,320,520,1298,437,1219,446,708,589,237,254,926,565,665,527,1199,571);
         this.WORM_COORDS[241] = new Array(947,561,718,158,64,441,555,255,693,559,403,402,333,217,629,282,1037,451,207,478,1228,394,673,229,396,183,821,306,1113,226,1164,274,887,407,1218,445,86,511,413,460);
         this.WORM_COORDS[242] = new Array(51,461,176,601,1040,443,21,517,544,274,971,473,149,458,654,241,400,402,1257,381,474,199,1196,576,205,478,839,317,1215,445,931,565,1293,437,854,403,391,178,1122,520);
         this.WORM_COORDS[243] = new Array(774,273,265,255,1098,269,20,517,655,238,364,162,1042,440,340,222,603,237,126,462,735,147,1199,571,459,229,708,589,946,561,214,480,1280,394,560,404,105,513,67,441);
         this.WORM_COORDS[244] = new Array(94,527,259,473,251,253,1057,421,560,241,1250,383,162,536,63,441,443,259,1102,224,925,565,376,338,492,195,12,520,843,323,169,599,1001,472,757,520,384,175,791,291);
         this.WORM_COORDS[245] = new Array(960,553,7,550,202,478,1255,381,1192,579,578,225,103,516,418,207,490,195,1080,351,694,176,249,253,678,535,1295,437,1006,471,910,449,189,541,331,217,1122,520,463,514);
         this.WORM_COORDS[246] = new Array(289,256,46,472,1173,277,1205,558,426,223,1001,472,910,449,628,284,1276,394,296,397,847,325,872,393,1219,446,94,527,246,461,721,553,437,522,577,225,1071,374,481,195);
         this.WORM_COORDS[247] = new Array(536,273,354,160,957,556,839,317,1177,277,325,211,1015,470,289,398,1212,462,94,527,432,242,70,448,1271,395,206,478,783,476,653,243,428,459,190,533,17,517,890,407);
         this.WORM_COORDS[248] = new Array(606,421,1014,470,307,244,33,506,128,460,165,540,96,524,768,211,429,232,227,496,1125,223,1187,577,879,401,583,225,60,444,1174,405,378,338,1296,437,1229,394,971,547);
         this.WORM_COORDS[249] = new Array(456,231,230,499,1213,445,55,455,844,454,1091,269,801,298,165,540,291,256,690,554,1190,579,927,565,686,269,688,177,395,403,397,185,1238,391,671,441,1001,472,232,256);
         this.WORM_COORDS[250] = new Array(951,560,335,218,888,407,560,241,91,527,154,459,162,536,1178,568,499,202,415,202,764,174,654,241,173,601,1175,408,583,455,1172,277,1149,221,821,306,440,461,1287,392);
         this.WORM_COORDS[251] = new Array(593,225,1280,394,324,337,835,316,142,457,654,241,17,637,81,479,170,600,1185,577,251,253,737,554,1086,343,881,402,406,459,680,537,938,565,307,244,1150,221,1018,470);
         this.WORM_COORDS[252] = new Array(1294,437,469,204,988,470,1125,223,328,520,142,457,761,163,1075,363,816,303,67,441,1207,555,282,256,604,237,680,270,756,520,2,557,862,397,1048,431,200,478,709,165);
         this.WORM_COORDS[253] = new Array(713,164,679,269,95,525,903,404,177,601,846,406,1052,427,17,517,1275,395,465,213,56,451,818,306,1075,363,286,256,978,469,351,163,146,458,613,405,1094,269,916,502);
         this.WORM_COORDS[254] = new Array(906,452,833,314,1017,470,698,570,43,478,492,489,511,223,1107,224,187,558,396,183,119,469,584,225,805,441,409,405,1081,349,257,253,694,176,1208,553,1254,381,199,479);
         this.WORM_COORDS[255] = new Array(596,455,1023,468,35,504,796,295,858,401,243,253,68,442,1288,392,1118,227,680,537,354,160,715,161,178,600,678,269,103,516,1119,519,970,473,240,488,560,241,925,565);
         this.WORM_COORDS[256] = new Array(227,496,952,558,311,211,155,462,687,177,518,236,1005,471,614,264,1187,577,5,552,444,260,804,298,903,404,63,441,441,464,752,521,375,338,352,161,416,205,1131,524);
         this.WORM_COORDS[257] = new Array(1159,542,777,278,952,558,788,463,527,267,328,214,405,403,186,563,709,590,837,407,1264,389,1154,224,895,406,194,495,138,457,92,527,49,464,601,433,646,524,1017,470);
         this.WORM_COORDS[258] = new Array(131,459,832,314,1298,437,1096,269,687,177,24,518,271,403,781,285,422,213,916,502,310,214,1042,440,653,243,958,556,352,161,1139,528,1244,385,104,515,845,585,612,406);
         this.WORM_COORDS[259] = new Array(321,211,1018,470,434,250,663,228,1271,395,613,260,895,406,168,598,561,240,223,493,71,449,601,433,978,540,695,563,1135,213,248,253,16,517,399,187,779,281,148,458);
         this.WORM_COORDS[260] = new Array(924,564,825,308,438,255,902,404,513,471,546,274,256,253,386,177,155,527,775,275,617,266,22,517,1086,343,150,458,1060,417,1167,227,372,338,85,511,1173,401,1018,470);
         this.WORM_COORDS[261] = new Array(1214,445,10,542,228,497,644,258,72,463,327,212,140,457,1180,294,527,267,1197,575,589,225,494,487,253,254,1110,226,160,534,966,548,1027,466,439,255,1295,437,1167,227);
         this.WORM_COORDS[262] = new Array(472,201,270,255,99,521,1157,224,925,565,575,227,397,185,880,401,145,458,73,465,1181,294,741,555,1086,343,1289,392,1040,443,1225,490,809,301,1200,569,698,164,279,500);
         this.WORM_COORDS[263] = new Array(832,314,181,595,219,488,819,478,284,503,1184,576,1057,421,116,475,879,401,861,534,258,253,1122,226,962,551,1245,385,779,281,297,397,448,522,977,469,1300,490,679,536);
         this.WORM_COORDS[264] = new Array(1120,227,1007,471,1180,570,721,553,1086,343,941,565,792,460,642,260,544,274,263,255,506,208,172,600,142,457,1255,381,67,441,188,546,763,168,377,170,881,402,1216,499);
         this.WORM_COORDS[265] = new Array(757,520,540,275,1057,421,1118,227,98,522,133,459,1248,384,198,479,448,522,44,476,800,298,937,565,279,256,973,471,175,601,601,234,1197,575,420,209,499,482,352,161);
         this.WORM_COORDS[266] = new Array(362,162,704,584,1060,417,1075,363,271,256,564,238,1155,224,232,501,764,519,436,460,1240,389,788,290,996,471,489,195,13,519,1190,579,898,406,1099,271,674,441,116,475);
         this.WORM_COORDS[267] = new Array(533,273,256,468,937,565,978,469,453,236,1157,224,52,461,1052,427,879,401,170,600,754,163,154,459,90,527,607,245,1208,553,259,253,310,214,1081,349,1262,389,368,339);
         this.WORM_COORDS[268] = new Array(262,253,1126,222,862,397,1203,562,1009,471,438,255,182,592,642,260,3,556,923,563,48,464,797,295,588,225,156,463,1240,389,353,329,97,523,510,211,415,459,1072,371);
         this.WORM_COORDS[269] = new Array(58,447,921,562,21,517,1190,579,831,314,184,581,668,435,1000,471,477,195,711,591,100,519,367,164,1267,392,469,510,214,480,1063,416,713,164,905,404,759,520,595,455);
         this.WORM_COORDS[270] = new Array(236,254,93,527,564,238,186,563,771,189,937,565,911,449,268,490,447,246,1260,385,622,275,30,519,1057,421,1194,577,837,588,677,269,777,278,838,460,501,202,598,439);
         this.WORM_COORDS[271] = new Array(157,530,327,212,86,511,718,559,206,478,929,565,420,209,838,460,1160,543,1244,385,982,469,360,161,702,258,547,274,145,458,621,270,914,449,850,587,1176,277,800,298);
         this.WORM_COORDS[272] = new Array(104,515,425,459,182,592,1202,564,546,274,422,213,218,487,131,459,1270,395,281,398,1139,528,644,258,923,563,791,460,367,164,1216,499,1013,470,42,478,256,253,916,502);
         this.WORM_COORDS[273] = new Array(523,261,898,406,1118,227,595,227,353,160,793,294,1241,389,968,473,1291,439,213,479,704,584,1051,427,466,207,342,223,718,158,673,229,447,522,29,518,772,506,74,466);
         this.WORM_COORDS[274] = new Array(386,351,123,466,992,529,1016,470,1224,395,41,478,190,533,572,232,331,217,1212,462,935,565,633,277,743,158,727,550,1198,574,388,177,242,253,1112,226,208,478,452,521);
         this.WORM_COORDS[275] = new Array(1192,579,363,162,1053,427,901,404,925,565,438,522,1118,227,77,475,797,295,1215,445,148,458,608,257,235,254,692,178,1272,395,338,222,549,272,339,322,764,519,204,478);
         this.WORM_COORDS[276] = new Array(631,279,173,601,1218,445,1185,577,893,406,48,464,1102,224,1082,348,595,227,1286,392,994,471,437,253,1168,392,1174,277,121,466,26,518,346,225,715,569,426,459,227,496);
         this.WORM_COORDS[277] = new Array(180,598,990,471,1264,389,722,551,799,297,210,478,640,263,37,488,158,533,587,225,2,557,1162,545,439,255,156,463,254,254,1043,437,882,403,467,512,932,565,519,237);
         this.WORM_COORDS[278] = new Array(1296,490,1233,393,265,255,1203,562,175,601,411,406,321,211,1057,421,896,406,471,201,1075,363,435,251,112,486,568,233,657,426,189,541,731,147,398,186,685,545,805,298);
         this.WORM_COORDS[279] = new Array(694,561,186,563,685,178,892,406,233,254,334,217,1018,470,1245,385,937,565,1075,363,415,459,243,467,84,482,768,188,497,483,905,500,387,177,8,548,541,275,1190,579);
         this.WORM_COORDS[280] = new Array(938,565,167,544,1141,216,65,441,92,527,7,550,269,490,979,469,262,253,1032,460,908,502,1254,381,484,195,629,393,1085,344,727,550,790,291,294,397,138,457,632,279);
         this.WORM_COORDS[281] = new Array(12,520,227,496,854,403,779,281,547,274,424,459,68,442,275,256,706,166,728,550,460,518,181,595,128,460,1005,471,947,561,634,276,502,203,317,517,1100,272,851,329);
         this.WORM_COORDS[282] = new Array(837,316,306,513,422,213,654,241,697,164,1171,322,1243,386,34,505,1165,227,866,395,173,601,447,522,1025,467,968,473,191,520,329,215,919,562,105,513,359,160,534,273);
         this.WORM_COORDS[283] = new Array(1071,374,180,598,45,476,1211,462,705,586,1281,394,254,254,842,322,347,226,118,472,439,255,1054,426,857,401,539,274,678,269,469,204,499,482,946,561,1171,278,1208,553);
         this.WORM_COORDS[284] = new Array(127,461,997,471,22,517,1172,559,322,211,1173,277,230,499,962,551,385,175,270,255,96,524,704,584,434,460,630,281,687,267,770,188,910,502,1288,392,75,470,1222,395);
         this.WORM_COORDS[285] = new Array(1238,391,424,216,737,554,940,565,834,315,1043,437,1079,353,1121,520,661,428,311,211,139,457,1175,562,37,488,738,148,582,225,281,502,777,278,558,401,851,404,1287,487);
         this.WORM_COORDS[286] = new Array(82,480,227,496,382,172,784,473,939,565,1290,393,1086,343,312,210,629,282,896,406,661,229,152,458,706,587,187,558,1003,471,250,253,570,232,1126,222,363,338,1186,577);
         this.WORM_COORDS[287] = new Array(882,403,632,279,947,561,673,229,1173,331,141,457,1028,466,1224,395,586,225,255,253,168,546,273,496,1128,221,1198,574,1215,445,311,211,741,153,356,160,421,459,791,291);
         this.WORM_COORDS[288] = new Array(245,461,985,470,644,258,79,477,1130,218,695,563,467,512,865,396,1286,392,959,554,807,299,280,256,692,178,1235,392,182,592,744,160,1081,349,407,403,7,550,520,241);
         this.WORM_COORDS[289] = new Array(64,441,20,517,157,530,322,211,477,195,1184,576,834,457,105,513,533,273,1047,434,732,147,417,206,1162,226,769,519,1098,269,252,254,275,497,170,600,585,455,995,471);
         this.WORM_COORDS[290] = new Array(292,255,722,155,1116,227,92,527,962,551,909,449,531,273,991,471,680,537,184,581,21,637,1061,416,67,441,608,409,780,283,653,243,221,489,1241,389,441,464,1074,364);
         this.WORM_COORDS[291] = new Array(1060,417,1219,446,817,304,521,257,930,565,859,398,1093,269,967,474,1175,562,194,495,25,518,177,601,824,511,265,486,188,546,634,393,1160,226,1299,437,772,506,640,263);
         this.WORM_COORDS[292] = new Array(277,256,642,260,588,225,898,406,405,190,1263,389,798,444,289,398,661,525,1135,213,1147,533,177,601,742,154,92,527,936,565,875,595,442,523,1040,443,742,555,485,195);
         this.WORM_COORDS[293] = new Array(1224,395,194,495,245,253,180,598,1295,437,123,466,991,471,1126,222,287,504,363,162,504,205,188,546,957,556,692,178,7,550,49,464,1064,415,740,554,635,274,397,403);
         this.WORM_COORDS[294] = new Array(1100,272,1248,384,491,195,382,172,272,402,1182,572,205,478,600,234,50,463,105,513,751,163,321,211,910,449,1053,427,19,517,1073,367,929,565,675,269,699,574,189,541);
         this.WORM_COORDS[295] = new Array(313,210,1015,470,783,289,899,405,1299,437,1077,358,770,188,406,459,555,255,955,556,122,466,746,526,21,517,1095,269,199,479,376,168,1200,569,259,473,617,266,51,461);
         this.WORM_COORDS[296] = new Array(175,601,247,253,1084,346,954,557,639,265,415,202,308,221,162,536,1125,223,308,513,134,459,799,297,665,434,1182,572,769,188,1299,437,1254,381,387,351,762,519,10,542);
         this.WORM_COORDS[297] = new Array(808,299,324,211,754,520,765,174,1169,556,442,258,59,445,868,393,211,478,262,479,186,563,952,558,139,457,1274,395,1095,269,13,519,1009,471,542,275,1163,226,490,195);
         this.WORM_COORDS[298] = new Array(848,328,784,473,702,578,63,441,1092,269,481,195,185,570,966,548,209,478,719,158,318,210,1270,395,153,459,435,251,746,526,551,267,840,407,711,251,98,522,1020,470);
         this.WORM_COORDS[299] = new Array(692,557,1066,414,929,565,900,404,235,254,1150,221,33,506,837,316,1098,269,627,285,422,459,317,210,578,225,157,530,1012,470,1258,381,498,202,1217,445,311,348,1195,576);
         this.WORM_COORDS[300] = new Array(650,258,1236,387,157,283,1206,625,395,524,987,369,1025,447,929,348,765,443,819,414,731,393,1091,622,48,233,416,241,1291,511,1126,207,827,330,1175,279,248,371,370,595);
         this.WORM_COORDS[301] = new Array(21,332,912,335,363,599,348,481,454,417,453,250,1064,411,1001,511,1261,476,767,443,174,300,291,341,1216,254,419,569,627,152,645,258,75,150,235,356,1244,398,54,460);
         this.WORM_COORDS[302] = new Array(852,299,60,326,1165,287,710,361,1092,210,120,579,811,418,118,147,196,319,457,232,759,446,1165,569,956,300,928,363,1270,476,263,383,320,333,1030,442,377,561,602,166);
         this.WORM_COORDS[303] = new Array(690,359,784,432,1260,476,1141,210,340,338,1197,246,464,228,486,560,383,552,871,294,605,166,260,382,1065,619,966,575,916,385,34,608,1064,411,46,233,985,370,1241,393);
         this.WORM_COORDS[304] = new Array(758,446,97,131,656,268,1228,275,980,371,334,457,1169,286,823,352,222,344,927,364,431,243,1044,427,858,290,543,255,695,361,40,231,60,181,959,300,143,269,9,335);
         this.WORM_COORDS[305] = new Array(1020,453,145,271,670,295,1176,266,318,333,834,304,88,583,175,556,972,337,450,253,370,595,203,325,898,305,688,359,567,191,120,149,266,384,972,566,621,155,1250,403);
         this.WORM_COORDS[306] = new Array(290,341,914,335,862,288,1232,287,174,300,1246,400,136,195,686,358,1021,451,946,604,354,491,780,433,617,157,1255,476,983,372,234,355,402,256,1136,625,1144,210,136,546);
         this.WORM_COORDS[307] = new Array(1251,404,731,393,429,605,1130,624,109,633,121,159,595,172,431,243,352,486,1081,212,941,607,1262,476,521,248,743,443,323,333,228,350,16,334,878,299,827,330,1132,212);
         this.WORM_COORDS[308] = new Array(388,529,245,367,450,422,697,361,369,607,843,304,999,518,337,466,938,332,738,422,836,406,673,303,1259,476,325,333,1152,626,33,332,422,587,67,171,1077,623,86,581);
         this.WORM_COORDS[309] = new Array(1089,367,1197,246,550,265,434,438,200,324,977,561,1039,433,1282,488,1171,575,884,306,272,389,363,599,53,191,107,137,345,478,144,271,992,369,767,443,729,381,562,199);
         this.WORM_COORDS[310] = new Array(11,335,969,334,1035,435,932,609,29,232,376,562,738,422,667,293,1275,481,795,426,535,250,632,153,1209,248,1196,612,437,567,22,627,184,309,355,493,827,330,250,371);
         this.WORM_COORDS[311] = new Array(475,229,1179,264,360,504,903,319,410,244,1088,211,817,415,628,152,690,359,125,160,1272,476,282,390,1203,619,139,259,1063,411,44,232,1242,394,761,445,831,315,450,555);
         this.WORM_COORDS[312] = new Array(368,607,105,631,402,534,996,527,287,389,444,250,338,336,516,250,1292,512,1143,210,825,330,952,304,1016,463,894,305,216,337,13,335,925,366,734,403,673,303,1068,405);
         this.WORM_COORDS[313] = new Array(599,253,1126,207,914,384,415,561,971,568,1175,462,431,243,294,338,581,183,1258,476,128,563,22,332,863,288,781,433,210,332,715,361,1166,287,1037,433,631,152,535,250);
         this.WORM_COORDS[314] = new Array(321,333,730,388,549,263,1022,450,998,523,418,567,358,500,1138,210,208,330,987,369,913,335,1190,247,756,448,658,273,919,606,424,241,480,558,820,414,6,337,1265,476);
         this.WORM_COORDS[315] = new Array(1052,420,791,428,979,371,170,295,1054,611,694,362,1298,517,267,384,489,250,1010,480,1246,400,1186,252,951,306,314,333,624,326,891,306,628,152,136,546,358,500,476,556);
         this.WORM_COORDS[316] = new Array(117,585,1126,207,815,417,977,561,497,254,1297,517,401,533,297,336,923,387,1238,492,1041,432,77,148,1073,622,1179,264,466,553,613,161,184,309,734,403,411,244,1229,379);
         this.WORM_COORDS[317] = new Array(373,593,210,332,984,552,1088,211,942,607,1021,451,522,248,672,301,945,319,792,427,32,232,59,326,858,290,1206,625,345,478,1213,253,578,184,1082,624,299,336,278,391);
         this.WORM_COORDS[318] = new Array(168,294,561,199,313,333,226,347,1178,264,1297,517,42,475,1056,418,501,253,919,385,1191,473,1209,628,1236,387,426,241,987,369,710,361,995,531,670,295,19,332,783,432);
         this.WORM_COORDS[319] = new Array(960,300,1060,413,931,609,200,324,490,250,292,340,118,579,833,309,780,433,19,633,724,368,1178,264,401,533,107,632,348,481,1118,198,1227,523,838,535,280,390,365,602);
         this.WORM_COORDS[320] = new Array(1226,569,890,307,406,247,1164,288,1086,623,791,428,651,259,1231,286,531,248,1051,421,1209,628,189,314,1282,488,141,264,988,369,946,604,119,148,427,606,599,168,19,332);
         this.WORM_COORDS[321] = new Array(240,363,966,575,754,448,935,337,11,335,350,484,830,315,40,231,732,395,523,248,822,414,1269,476,668,295,424,241,1120,201,515,385,313,333,1068,405,1102,612,1187,598);
         this.WORM_COORDS[322] = new Array(1103,206,586,177,1295,516,799,426,1,345,1009,485,935,337,1164,288,248,371,383,552,415,241,1133,624,853,295,1045,427,1073,262,941,607,745,445,359,502,1220,613,680,355);
         this.WORM_COORDS[323] = new Array(912,603,1056,418,308,334,223,346,778,435,45,232,18,332,1193,246,1258,476,417,241,909,318,95,596,132,173,389,528,366,603,885,383,1198,614,828,322,170,295,698,361);
         this.WORM_COORDS[324] = new Array(146,272,1169,573,764,443,993,536,946,316,551,266,271,388,404,539,221,342,673,303,879,299,62,179,583,180,819,414,1273,477,990,369,1087,623,501,388,1170,282,1227,274);
         this.WORM_COORDS[325] = new Array(3,340,1204,246,1074,262,88,583,279,391,742,439,432,597,647,258,1006,494,459,415,1047,427,169,576,514,250,1246,484,174,300,1169,573,451,252,302,336,362,597,816,416);
         this.WORM_COORDS[326] = new Array(876,299,650,258,485,559,977,343,307,335,377,561,47,233,1130,211,1169,286,548,262,921,608,417,241,1272,476,172,297,1073,400,272,389,496,253,1226,274,794,426,631,152);
         this.WORM_COORDS[327] = new Array(966,575,977,343,741,433,398,527,1226,569,559,202,508,252,1266,476,1059,414,1010,480,2,342,226,347,826,330,32,489,424,589,715,361,1133,212,1215,253,794,426,653,264);
         this.WORM_COORDS[328] = new Array(732,395,955,300,1215,253,105,135,596,171,676,321,271,388,856,291,202,324,335,334,1235,386,1153,255,374,564,353,489,1067,406,1102,612,84,580,140,262,1251,480,971,568);
         this.WORM_COORDS[329] = new Array(962,305,23,332,1225,274,903,319,925,609,1024,447,197,321,1287,508,550,265,98,131,395,524,1201,617,822,414,467,409,439,248,579,184,319,333,993,369,1081,212,1001,511);
         this.WORM_COORDS[330] = new Array(1033,437,385,546,141,264,822,414,1200,616,265,383,558,205,367,605,1139,210,43,473,1229,379,749,447,645,258,1268,476,1160,561,1228,275,989,545,190,314,696,361,827,330);
         this.WORM_COORDS[331] = new Array(1043,428,938,608,867,290,314,333,1134,212,551,266,788,431,969,334,923,387,1054,611,1259,476,162,290,698,361,736,412,523,382,643,259,472,228,48,468,112,144,402,256);
         this.WORM_COORDS[332] = new Array(1102,612,1079,262,1219,619,964,308,1253,408,229,352,422,587,806,422,753,448,1194,246,94,131,892,306,956,591,603,166,644,258,439,431,1050,422,1284,494,332,333,413,243);
         this.WORM_COORDS[333] = new Array(1128,621,417,561,957,300,1279,485,845,304,667,293,904,561,919,385,1191,605,305,336,736,412,688,359,1218,256,60,326,1051,421,520,248,791,428,361,508,161,585,632,153);
         this.WORM_COORDS[334] = new Array(520,248,237,358,830,315,64,173,1061,412,387,531,723,365,927,364,175,302,1220,259,771,439,1121,202,671,301,1299,520,1161,297,92,596,1199,615,423,241,953,596,1237,389);
         this.WORM_COORDS[335] = new Array(350,484,753,448,160,583,497,254,183,309,457,553,977,343,1215,632,1070,279,1170,282,52,192,712,361,652,261,405,543,927,609,1060,413,233,354,614,160,818,414,1293,516);
         this.WORM_COORDS[336] = new Array(528,248,31,232,721,363,944,321,1082,212,7,336,264,383,74,570,1034,436,1136,625,763,443,154,577,364,601,1225,573,665,281,577,184,395,524,482,559,917,385,828,322);
         this.WORM_COORDS[337] = new Array(860,288,206,327,370,595,924,387,312,333,1272,476,150,278,1121,607,984,552,260,382,722,364,1196,246,398,527,1214,633,1016,463,953,301,989,369,776,437,1094,209,665,281);
         this.WORM_COORDS[338] = new Array(930,347,1163,291,190,314,748,447,123,160,535,250,395,524,718,361,980,559,805,423,368,607,1098,208,438,247,1287,508,13,335,622,155,1135,625,930,609,277,391,1151,552);
         this.WORM_COORDS[339] = new Array(777,436,1091,622,1143,627,941,607,858,290,1190,247,554,268,482,238,668,295,286,389,719,361,357,499,418,567,22,332,339,336,418,241,61,180,985,550,1293,516,116,586);
         this.WORM_COORDS[340] = new Array(361,508,885,306,81,143,1075,398,1239,392,1211,630,663,281,162,290,283,390,972,337,1272,476,364,601,791,428,47,469,513,385,293,339,619,156,1133,212,480,237,554,268);
         this.WORM_COORDS[341] = new Array(913,335,376,562,925,609,337,336,1229,276,801,423,711,361,411,244,1054,419,1149,552,997,526,285,390,750,448,0,346,648,258,107,632,594,173,140,262,121,578,1086,212);
         this.WORM_COORDS[342] = new Array(253,373,419,569,11,335,192,317,856,291,787,432,953,596,926,365,343,346,476,231,36,606,996,527,529,248,708,361,1185,252,1187,598,1079,262,369,607,409,244,1257,476);
         this.WORM_COORDS[343] = new Array(1288,509,871,294,496,253,1021,451,786,432,457,553,679,324,946,316,309,334,991,369,440,430,382,557,132,173,191,315,728,377,165,623,941,607,917,385,1222,260,25,240);
         this.WORM_COORDS[344] = new Array(1133,624,706,361,173,299,374,564,999,518,445,250,1274,480,106,137,352,486,286,389,743,443,45,232,1151,257,109,633,663,281,825,330,1046,427,938,332,469,554,916,385);
         this.WORM_COORDS[345] = new Array(1200,246,223,346,803,423,24,243,1242,394,92,131,365,602,845,304,672,301,425,590,1080,263,1144,210,943,607,987,369,1048,425,1221,601,1257,476,1011,475,444,250,728,377);
         this.WORM_COORDS[346] = new Array(1239,392,943,321,683,358,1058,415,533,248,1193,246,1087,212,1275,481,342,343,176,302,399,528,1002,506,849,302,88,135,790,429,448,251,600,167,250,371,662,280,34,231);
         this.WORM_COORDS[347] = new Array(838,304,453,250,988,545,697,361,591,175,941,324,125,160,247,370,190,314,1271,476,1235,293,1079,262,779,434,525,248,1110,201,409,547,954,595,1202,618,465,553,1048,425);
         this.WORM_COORDS[348] = new Array(1298,517,1027,445,522,248,143,269,711,361,461,553,144,542,266,384,396,524,975,340,1194,607,811,418,6,337,1078,262,61,180,755,448,1134,212,1228,522,462,228,1175,279);
         this.WORM_COORDS[349] = new Array(306,335,1105,605,1225,374,762,444,1011,475,239,361,404,252,608,163,843,304,909,318,1056,418,416,561,12,335,512,250,975,340,361,508,951,600,1235,293,62,179,21,628);
         this.WORM_COORDS[350] = new Array(1037,433,792,427,949,603,495,253,912,335,1101,614,594,173,1086,380,1268,476,272,389,66,566,1073,262,985,370,1252,406,398,527,221,342,1098,208,368,607,700,361,91,133);
         this.WORM_COORDS[351] = new Array(1198,614,367,605,677,322,1268,476,795,426,57,186,1216,254,139,259,882,305,196,319,300,336,438,247,1128,621,439,431,932,343,543,255,1029,444,1079,394,1005,496,615,158);
         this.WORM_COORDS[352] = new Array(374,564,221,342,1071,402,958,300,696,361,546,258,81,143,49,198,1082,264,823,352,1099,207,642,263,788,431,279,391,494,252,606,165,1289,510,1079,624,922,609,157,283);
         this.WORM_COORDS[353] = new Array(748,447,1181,591,390,524,994,371,823,352,696,361,977,561,121,159,555,268,441,559,405,248,253,373,662,280,804,423,938,332,1269,476,856,291,1056,418,371,595,913,383);
         this.WORM_COORDS[354] = new Array(461,228,269,387,842,304,344,478,742,439,1069,404,37,231,302,336,447,425,989,369,1245,399,443,557,932,343,1213,253,636,290,584,179,996,527,1113,198,167,622,134,550);
         this.WORM_COORDS[355] = new Array(925,609,686,358,942,322,27,621,810,418,1279,485,755,448,1239,392,478,234,295,337,830,315,1070,403,13,335,232,354,136,195,1160,307,1090,210,347,480,539,253,1159,254);
         this.WORM_COORDS[356] = new Array(1052,420,177,302,42,231,298,336,1142,210,1252,406,1061,617,511,250,23,332,826,330,801,423,1294,516,413,243,1169,286,997,526,672,301,85,139,972,337,450,555,377,561);
         this.WORM_COORDS[357] = new Array(230,353,481,237,396,524,957,590,846,304,565,194,1272,476,1228,560,1187,251,32,232,933,338,805,423,371,595,1082,624,1036,434,443,427,723,365,310,333,1208,627,474,556);
         this.WORM_COORDS[358] = new Array(1038,433,1187,251,930,609,785,432,997,526,254,374,715,361,629,152,347,480,947,315,512,250,182,309,29,492,664,281,418,567,1266,476,11,335,437,247,1190,603,133,177);
         this.WORM_COORDS[359] = new Array(537,252,713,361,832,309,151,280,1053,420,1108,201,790,429,7,336,162,612,390,524,1166,287,111,142,1037,586,1295,516,1078,262,294,338,993,369,239,361,629,152,905,318);
         this.WORM_COORDS[360] = new Array(375,563,1252,406,468,228,172,297,1181,257,832,309,1045,427,711,361,427,606,349,482,54,191,959,586,18,332,406,247,948,311,611,163,452,419,539,253,1286,496,276,390);
         this.WORM_COORDS[361] = new Array(958,300,351,485,968,573,528,248,380,558,237,358,678,323,175,302,1292,512,103,133,67,241,1044,427,890,307,1071,279,656,268,776,437,430,243,585,178,43,593,155,578);
         this.WORM_COORDS[362] = new Array(273,389,728,377,1217,629,1166,287,113,590,865,288,1008,487,418,241,994,371,33,486,1045,427,223,346,540,253,1167,572,89,134,1267,476,927,364,977,561,1245,399,50,197);
         this.WORM_COORDS[363] = new Array(764,443,227,348,1135,625,547,260,1082,264,973,565,317,334,421,241,1004,500,706,361,364,601,1116,198,920,385,407,544,1261,476,160,287,1067,406,14,335,612,162,126,161);
         this.WORM_COORDS[364] = new Array(1,345,1285,495,81,143,1154,254,533,380,371,595,668,295,266,384,1069,404,809,419,916,385,972,337,754,448,159,285,725,368,1016,463,617,157,75,242,1054,611,495,253);
         this.WORM_COORDS[365] = new Array(858,290,924,609,994,371,736,412,66,171,1116,597,1245,485,1011,475,691,360,386,546,451,252,929,348,363,599,527,248,1061,412,1243,396,258,379,124,160,160,287,334,334);
         this.WORM_COORDS[366] = new Array(1027,445,1157,307,507,252,340,338,1151,257,979,371,622,155,740,430,1209,628,80,143,405,248,1172,576,828,548,149,277,290,341,1214,253,885,306,725,368,65,450,1122,206);
         this.WORM_COORDS[367] = new Array(989,369,219,340,1248,401,418,567,1035,435,761,445,291,341,952,304,1291,511,122,160,33,609,104,630,980,559,716,361,519,248,900,306,3,340,45,232,346,479,1191,605);
         this.WORM_COORDS[368] = new Array(1079,394,732,395,900,306,650,258,281,390,194,317,976,561,1299,520,1,345,1234,292,302,336,789,430,838,304,994,371,414,560,422,241,527,248,477,234,40,602,1006,494);
         this.WORM_COORDS[369] = new Array(817,415,763,443,975,340,213,336,540,253,707,361,106,631,1187,598,292,388,70,167,386,546,1036,434,1203,246,1101,206,623,325,902,318,1070,279,1272,476,568,190,1152,256);
         this.WORM_COORDS[370] = new Array(382,557,1198,614,1044,427,312,333,36,231,692,361,953,301,855,292,964,578,523,248,411,244,268,385,807,421,1215,253,672,301,522,382,1121,202,350,484,601,166,1273,477);
         this.WORM_COORDS[371] = new Array(470,405,1160,254,1057,417,218,339,367,605,735,407,1115,198,6,337,273,389,1224,372,43,473,350,484,483,241,1277,482,1197,614,157,283,322,333,824,330,62,179,787,432);
         this.WORM_COORDS[372] = new Array(1230,517,256,376,1214,633,1143,627,1009,485,762,444,710,361,1062,412,392,524,561,199,852,299,549,263,1060,616,1235,293,316,333,423,588,913,335,915,385,163,292,6,337);
         this.WORM_COORDS[373] = new Array(861,288,1078,396,992,369,771,439,28,618,1247,400,361,508,1267,476,1183,255,942,322,578,184,431,243,263,383,664,281,190,314,162,612,53,191,1,345,310,333,713,361);
         this.WORM_COORDS[374] = new Array(495,253,1012,472,1294,516,378,560,1220,613,434,438,1154,254,679,324,220,341,739,426,303,336,571,189,1077,262,906,318,9,335,550,265,1239,392,37,606,963,308,852,299);
         this.WORM_COORDS[375] = new Array(777,436,140,542,205,326,879,299,526,248,397,525,1251,404,300,336,1198,246,1098,208,35,231,30,492,417,241,724,368,429,605,610,163,1035,435,36,331,86,138,931,346);
         this.WORM_COORDS[376] = new Array(969,334,906,318,348,481,211,334,1083,386,986,549,331,333,460,229,705,361,366,603,22,332,154,281,1139,210,523,248,426,606,89,134,1221,260,434,438,45,232,1084,212);
         this.WORM_COORDS[377] = new Array(1191,605,797,426,946,604,120,579,238,360,59,182,1253,408,1135,625,1256,476,657,272,631,152,545,257,24,332,377,561,1005,496,947,315,152,280,1090,210,836,304,299,336);
         this.WORM_COORDS[378] = new Array(1293,516,301,336,33,486,1011,475,975,340,772,439,116,586,1207,246,504,252,915,385,1052,609,237,358,186,310,412,244,33,232,1209,628,816,574,391,524,424,589,476,401);
         this.WORM_COORDS[379] = new Array(744,445,1222,368,712,361,1063,411,363,599,975,340,567,191,202,324,389,528,540,253,440,430,1064,619,962,580,123,160,257,377,339,336,1168,286,1224,262,51,193,5,338);
         this.WORM_COORDS[380] = new Array(951,600,685,358,1072,279,1099,207,1052,420,386,546,452,251,768,442,121,159,1162,292,38,231,1275,481,210,332,486,394,299,336,1082,624,834,304,1214,253,935,337,1251,404);
         this.WORM_COORDS[381] = new Array(230,353,1101,614,777,436,911,319,143,269,401,533,101,607,1135,212,543,255,435,246,335,334,1297,517,1024,447,22,332,690,359,1001,511,988,369,351,485,828,322,1243,396);
         this.WORM_COORDS[382] = new Array(954,300,934,609,872,296,481,397,780,433,1242,394,1071,279,1045,427,468,228,1200,616,634,154,370,595,34,231,1138,625,4,339,338,336,1163,291,656,268,147,273,1220,259);
         this.WORM_COORDS[383] = new Array(314,333,479,557,790,429,1164,567,1154,307,449,251,1061,412,198,322,1089,210,52,192,269,387,526,248,621,155,866,288,1289,510,943,321,638,282,684,358,20,332,973,565);
         this.WORM_COORDS[384] = new Array(968,329,819,414,1024,447,421,571,43,593,1119,200,1261,476,1173,280,998,523,243,364,840,304,1126,616,426,241,183,309,563,198,732,395,4,339,359,502,317,334,914,335);
         this.WORM_COORDS[385] = new Array(765,443,317,334,253,373,1194,607,1053,420,1076,262,1134,212,708,361,178,303,649,258,538,253,1294,516,815,417,8,335,1236,387,464,228,1215,253,914,335,1109,593,55,191);
         this.WORM_COORDS[386] = new Array(1032,438,1205,246,144,271,509,386,1097,209,399,528,342,343,828,322,271,388,681,355,999,518,431,442,372,594,1293,516,127,564,1161,297,933,609,914,335,417,241,614,160);
         this.WORM_COORDS[387] = new Array(1258,476,363,599,191,315,325,333,901,317,35,607,795,426,1002,506,1182,256,1107,595,708,361,1128,209,134,194,1055,418,1240,393,52,463,944,607,503,253,442,250,471,556);
         this.WORM_COORDS[388] = new Array(691,360,398,527,16,334,1081,624,347,480,1049,424,214,336,1267,476,134,550,904,319,841,304,782,433,636,154,337,336,947,603,1229,276,278,391,824,570,1242,394,432,244);
         this.WORM_COORDS[389] = new Array(548,262,903,319,953,301,24,243,91,133,658,273,1000,514,1256,476,1235,293,1245,399,1064,619,253,373,328,333,821,414,90,585,406,544,344,478,367,605,427,606,474,402);
         this.WORM_COORDS[390] = new Array(378,560,953,596,1241,393,1082,388,508,252,404,252,774,439,894,305,993,369,1212,631,275,390,722,364,956,300,636,154,349,482,1152,626,202,324,647,258,915,385,1270,476);
         this.WORM_COORDS[391] = new Array(859,289,771,439,30,616,338,336,68,171,1245,485,667,293,567,191,711,361,64,322,405,543,1250,403,432,244,1080,263,506,252,636,154,158,284,1145,209,965,577,485,559);
         this.WORM_COORDS[392] = new Array(351,485,417,561,685,358,481,237,1256,476,904,561,422,241,537,252,37,231,154,281,821,414,819,580,1066,619,1173,280,145,543,503,386,68,171,615,158,6,337,254,374);
         this.WORM_COORDS[393] = new Array(915,385,361,508,733,400,1263,476,414,560,506,252,1120,201,1249,402,44,232,1112,593,242,363,1186,596,1018,457,972,566,892,546,807,421,633,153,959,300,185,309,988,369);
         this.WORM_COORDS[394] = new Array(682,357,463,553,372,594,193,317,571,189,1265,476,15,334,1177,265,935,337,361,508,663,281,868,291,791,428,1024,447,317,334,1224,372,279,391,65,172,1101,206,548,262);
         this.WORM_COORDS[395] = new Array(305,336,1011,475,680,355,656,268,503,253,812,417,1131,212,29,232,80,143,220,341,555,268,1169,286,153,280,1265,476,1221,260,748,447,929,348,459,415,371,595,995,371);
         this.WORM_COORDS[396] = new Array(437,434,487,244,1205,246,973,338,337,336,1172,576,200,324,1242,394,825,570,1054,419,423,588,146,272,761,445,970,569,900,306,1073,262,1141,210,597,171,827,330,921,386);
         this.WORM_COORDS[397] = new Array(633,153,26,236,1247,400,65,172,645,258,1004,500,1276,482,104,630,160,287,1025,447,824,330,258,379,488,247,397,525,892,306,766,443,6,337,1214,253,1078,262,427,242);
         this.WORM_COORDS[398] = new Array(263,383,756,448,1239,392,20,332,1208,627,856,291,648,258,411,547,928,363,129,561,927,609,1222,260,358,500,1070,622,148,274,1169,286,331,333,1059,414,996,527,199,324);
         this.WORM_COORDS[399] = new Array(930,609,390,524,230,353,784,432,166,622,696,361,1154,254,1198,614,446,556,1084,265,491,250,960,300,55,191,149,277,607,163,1005,496,852,299,1255,476,124,160,27,621);
         this.WORM_COORDS[400] = new Array(553,241,208,353,20,626,454,491,933,239,353,325,499,239,1178,411,901,353,993,380,716,301,170,250,1058,353,820,466,110,624,239,448,41,219,998,615,1102,569,193,614);
         this.WORM_COORDS[401] = new Array(482,450,228,342,906,211,697,339,1138,410,297,209,1006,348,604,349,651,287,77,610,438,520,192,614,155,226,941,562,1112,570,47,206,547,241,182,279,783,288,356,325);
         this.WORM_COORDS[402] = new Array(973,251,829,460,220,345,46,208,1004,348,148,620,706,345,454,491,10,630,543,241,503,417,1179,410,548,481,349,369,1085,395,371,319,829,343,289,470,656,285,863,223);
         this.WORM_COORDS[403] = new Array(638,299,837,319,80,610,441,513,341,384,700,345,358,325,1181,410,968,249,815,480,872,219,149,226,601,350,1047,511,563,252,742,288,207,351,1111,570,1022,317,0,639);
         this.WORM_COORDS[404] = new Array(923,220,801,499,948,578,433,551,776,288,1138,410,386,312,226,342,35,229,475,462,27,624,277,230,1042,512,264,488,720,301,237,597,565,353,632,311,149,226,1099,483);
         this.WORM_COORDS[405] = new Array(423,363,1063,375,616,348,273,223,1187,409,675,299,822,465,785,288,529,232,459,482,217,347,1117,569,934,240,382,312,1119,472,921,518,827,348,1187,538,42,219,18,627);
         this.WORM_COORDS[406] = new Array(418,554,542,241,25,624,452,494,713,316,1019,321,262,487,269,204,831,334,165,233,215,369,1053,506,1104,569,927,532,488,262,988,612,132,599,351,369,627,315,952,244);
         this.WORM_COORDS[407] = new Array(1195,449,870,221,980,261,261,198,119,603,644,294,520,225,577,353,969,604,1139,410,114,234,465,476,432,552,0,639,823,366,783,288,352,369,1033,317,948,399,708,345);
         this.WORM_COORDS[408] = new Array(954,590,930,235,54,619,1011,329,425,363,157,226,1100,485,536,236,990,382,644,294,274,227,482,450,1176,411,87,216,212,363,861,225,430,440,351,369,818,478,143,612);
         this.WORM_COORDS[409] = new Array(1,639,619,348,1071,381,1107,571,795,332,653,285,208,611,724,300,808,500,259,201,1044,324,183,281,127,599,107,246,862,224,391,319,974,496,189,336,456,487,928,232);
         this.WORM_COORDS[410] = new Array(1164,401,1043,512,743,286,256,207,87,216,1128,457,991,613,16,627,598,350,844,453,674,298,1030,317,238,596,893,212,403,323,123,599,425,410,179,273,1104,569,210,356);
         this.WORM_COORDS[411] = new Array(587,352,957,594,150,226,345,385,779,288,421,363,212,609,698,340,866,286,503,417,1063,375,971,250,291,220,13,627,863,471,1190,452,552,241,1161,399,353,325,989,382);
         this.WORM_COORDS[412] = new Array(491,431,529,232,754,276,1099,483,804,500,100,621,456,487,627,315,362,323,11,629,985,384,435,551,418,363,796,359,30,250,241,337,163,620,215,608,303,187,972,496);
         this.WORM_COORDS[413] = new Array(670,292,802,499,6,634,362,323,499,419,1132,411,164,232,790,304,957,245,209,353,1105,570,240,592,59,619,245,230,158,620,488,262,1187,409,1008,335,585,353,50,205);
         this.WORM_COORDS[414] = new Array(784,288,371,319,812,490,36,624,474,463,881,216,171,618,661,285,1143,409,528,230,1201,450,999,354,727,289,610,348,1088,399,976,496,240,239,162,229,209,353,946,243);
         this.WORM_COORDS[415] = new Array(441,513,506,239,996,358,662,285,597,350,1176,411,752,278,812,490,207,351,380,313,968,496,1121,472,21,625,483,449,186,294,80,610,204,611,1093,405,260,522,301,191);
         this.WORM_COORDS[416] = new Array(665,288,1098,482,69,192,907,211,525,227,180,275,455,488,265,488,1052,342,393,319,110,624,24,624,219,345,875,284,977,257,107,246,272,220,780,288,557,477,720,369);
         this.WORM_COORDS[417] = new Array(1065,378,550,241,10,630,670,292,1136,410,142,226,772,287,1109,570,928,533,497,239,611,348,422,363,80,610,283,475,42,219,817,478,189,336,312,193,348,369,942,241);
         this.WORM_COORDS[418] = new Array(320,208,750,281,915,507,947,243,1064,376,501,239,569,354,175,618,346,369,830,334,420,555,19,627,648,290,393,319,140,226,992,380,198,342,486,443,623,342,1141,409);
         this.WORM_COORDS[419] = new Array(33,234,358,325,1099,483,798,498,466,474,307,187,664,288,738,290,229,341,1009,334,1165,402,1020,620,516,226,606,349,251,216,90,343,927,532,160,227,148,620,76,610);
         this.WORM_COORDS[420] = new Array(496,239,363,323,42,219,66,618,836,320,339,380,201,342,560,252,174,261,1096,411,784,288,1112,570,6,634,1017,323,262,198,818,478,1199,449,319,207,951,587,938,240);
         this.WORM_COORDS[421] = new Array(280,478,1063,375,797,361,230,441,232,600,38,221,260,198,394,320,818,478,1101,490,119,603,767,279,562,252,660,285,1194,450,53,619,317,205,483,449,967,249,182,279);
         this.WORM_COORDS[422] = new Array(134,226,426,410,699,341,505,239,1069,379,872,219,1198,449,826,349,564,253,1119,472,1137,410,1057,502,1003,349,377,315,778,288,237,255,206,349,448,497,142,611,923,220);
         this.WORM_COORDS[423] = new Array(985,384,747,284,92,615,597,350,477,459,1165,402,1054,342,53,202,19,627,951,244,808,500,329,353,117,232,661,285,796,359,536,236,856,228,187,614,288,223,176,265);
         this.WORM_COORDS[424] = new Array(188,336,431,441,137,226,737,290,1121,472,665,288,40,219,5,634,451,494,423,363,373,317,868,454,1158,399,586,352,702,345,1037,318,952,588,1194,450,502,417,1124,565);
         this.WORM_COORDS[425] = new Array(586,352,401,325,1046,326,714,316,1146,406,895,212,328,226,39,624,101,239,652,286,487,262,171,253,799,369,990,382,235,443,802,499,1201,450,257,204,970,250,1023,619);
         this.WORM_COORDS[426] = new Array(314,197,593,351,820,466,717,301,69,192,449,497,256,207,996,358,1112,570,167,236,523,225,377,315,232,441,1182,410,656,285,200,342,3,635,134,600,207,611,771,287);
         this.WORM_COORDS[427] = new Array(134,226,11,629,282,237,848,310,819,478,1176,411,81,203,369,557,601,350,485,283,229,341,905,211,108,625,544,241,1059,499,172,618,468,473,1032,317,969,389,415,322);
         this.WORM_COORDS[428] = new Array(530,232,862,224,802,499,328,226,986,488,449,497,934,240,1053,342,838,319,72,194,1129,411,774,288,155,226,17,627,686,321,354,325,572,354,154,620,1113,570,99,619);
         this.WORM_COORDS[429] = new Array(771,287,975,496,1053,342,514,228,688,323,331,243,342,389,1167,406,441,513,940,240,574,354,229,601,630,312,25,624,402,324,86,346,269,204,997,355,820,466,112,624);
         this.WORM_COORDS[430] = new Array(563,252,63,192,254,211,585,353,501,239,178,270,220,345,382,312,461,481,311,192,674,298,939,240,768,284,3,635,113,621,973,605,815,480,1126,456,107,246,283,261);
         this.WORM_COORDS[431] = new Array(155,226,1137,453,1199,449,1026,317,262,198,730,289,913,210,558,252,336,257,884,279,45,209,231,340,342,389,669,291,83,611,182,279,97,231,1042,512,804,500,713,366);
         this.WORM_COORDS[432] = new Array(1007,347,817,478,419,363,121,230,645,292,569,354,464,477,152,621,776,288,1138,549,216,348,1183,410,932,237,87,614,712,316,187,298,1126,456,32,624,265,488,532,235);
         this.WORM_COORDS[433] = new Array(1080,392,551,241,1145,407,359,324,803,500,454,491,0,639,665,288,53,619,92,228,337,374,253,215,31,250,1134,497,735,291,498,239,1035,317,916,211,434,551,1102,569);
         this.WORM_COORDS[434] = new Array(1184,410,1088,399,19,627,213,364,986,382,841,315,65,192,284,251,606,349,567,267,105,246,769,284,499,419,394,320,463,479,1015,325,196,612,341,384,972,251,237,445);
         this.WORM_COORDS[435] = new Array(576,354,333,245,1121,472,197,342,310,190,59,619,942,241,962,599,1138,410,221,606,484,448,445,502,138,606,970,496,393,319,429,440,779,288,1019,321,496,239,240,239);
         this.WORM_COORDS[436] = new Array(958,245,582,353,7,634,488,438,766,277,435,551,177,268,694,337,1173,410,987,382,849,309,326,346,1056,344,226,603,1093,405,1113,570,511,235,282,237,141,609,395,321);
         this.WORM_COORDS[437] = new Array(608,349,97,231,708,345,1049,329,887,215,35,624,1182,410,1085,395,964,499,937,554,543,479,993,615,147,617,1030,468,358,325,1117,569,454,491,972,251,639,298,253,526);
         this.WORM_COORDS[438] = new Array(971,250,469,472,100,621,724,300,1164,401,1048,329,870,221,822,465,555,251,48,206,207,351,105,246,664,288,988,382,357,325,1121,568,299,194,185,288,949,581,1080,392);
         this.WORM_COORDS[439] = new Array(638,299,1103,569,964,247,455,488,1025,317,1068,378,1140,410,141,609,200,342,205,611,817,478,1052,508,337,374,697,339,945,573,560,252,901,211,7,634,60,619,52,203);
         this.WORM_COORDS[440] = new Array(614,348,117,232,504,417,1122,456,819,478,243,231,795,332,957,594,883,215,496,239,1193,451,383,312,557,253,331,358,171,618,1026,317,952,396,729,289,927,532,41,279);
         this.WORM_COORDS[441] = new Array(470,469,366,322,534,235,1068,378,1193,451,718,301,1137,551,1043,324,137,226,233,340,1160,399,34,624,812,490,339,380,169,618,49,206,932,543,599,350,109,625,988,473);
         this.WORM_COORDS[442] = new Array(83,611,851,454,307,187,879,216,610,348,1159,399,405,323,851,307,563,252,795,332,235,257,1193,451,944,570,177,268,189,336,477,459,415,526,992,380,7,634,1103,569);
         this.WORM_COORDS[443] = new Array(187,298,89,615,550,241,954,244,324,219,646,291,719,301,1187,409,1112,570,437,547,1098,482,1030,317,833,455,145,226,892,213,975,607,1069,379,224,606,0,639,986,382);
         this.WORM_COORDS[444] = new Array(1087,397,120,230,903,211,1146,406,785,288,227,603,25,624,956,593,53,202,642,297,1006,617,401,325,564,253,597,350,233,340,713,366,476,461,793,498,342,389,281,234);
         this.WORM_COORDS[445] = new Array(490,255,21,625,228,342,905,211,1107,571,830,334,1053,342,700,345,277,230,480,454,1195,449,588,351,979,261,367,322,1121,472,645,292,559,473,128,227,1157,399,183,281);
         this.WORM_COORDS[446] = new Array(1118,569,242,231,814,481,796,359,1191,409,749,281,436,548,696,338,46,624,35,229,508,238,125,599,1006,348,881,216,609,349,348,369,1066,378,108,243,409,323,169,244);
         this.WORM_COORDS[447] = new Array(323,219,638,299,1072,382,242,589,820,466,830,334,1123,456,213,364,1087,565,566,454,972,251,966,497,397,323,192,614,463,479,922,217,87,614,1006,348,17,627,262,198);
         this.WORM_COORDS[448] = new Array(614,348,63,619,405,323,136,226,967,249,266,198,1022,317,549,241,741,289,428,437,182,616,803,500,1182,410,1109,570,63,192,547,481,917,212,1122,456,341,384,188,336);
         this.WORM_COORDS[449] = new Array(1161,399,771,287,180,275,932,237,508,238,93,615,696,338,252,216,627,315,864,223,185,615,861,289,321,208,1193,580,1101,490,389,315,920,516,496,425,114,234,826,460);
         this.WORM_COORDS[450] = new Array(480,454,1028,317,65,619,198,612,257,204,1125,456,953,244,691,330,413,322,59,195,527,229,1081,393,958,596,973,389,211,358,1176,411,1036,512,581,353,799,369,773,287);
         this.WORM_COORDS[451] = new Array(1052,342,644,294,486,263,573,355,440,514,832,333,1155,401,704,345,1122,456,878,218,214,609,762,274,937,554,339,380,299,194,218,347,1111,570,1088,399,53,202,949,244);
         this.WORM_COORDS[452] = new Array(700,345,171,253,200,342,315,200,610,348,129,599,1036,617,336,257,815,480,115,234,1092,403,14,627,645,292,825,364,951,397,1001,353,1103,569,1171,408,866,222,925,226);
         this.WORM_COORDS[453] = new Array(549,481,471,468,654,285,16,627,932,237,1153,401,1018,321,836,320,155,226,696,338,1121,472,370,320,185,288,198,342,279,232,742,288,592,351,1106,570,549,241,438,520);
         this.WORM_COORDS[454] = new Array(514,228,996,358,619,348,367,322,208,611,138,226,311,192,1147,406,492,430,978,495,14,627,716,301,1069,379,855,294,865,222,1125,456,197,342,426,410,786,293,957,245);
         this.WORM_COORDS[455] = new Array(1184,410,392,319,429,440,309,188,1127,456,496,239,578,353,709,345,482,450,129,599,791,311,1103,569,1064,376,158,226,20,626,1002,353,923,220,49,206,340,382,194,614);
         this.WORM_COORDS[456] = new Array(140,226,585,353,531,233,53,619,187,614,418,363,291,220,215,369,449,497,1179,410,437,547,36,223,702,345,1123,456,637,300,342,389,960,599,1046,611,942,401,1010,334);
         this.WORM_COORDS[457] = new Array(149,620,431,441,61,619,1023,317,817,478,990,382,543,241,1134,411,824,364,315,200,1071,381,850,308,442,511,1200,449,921,518,625,325,1117,569,34,230,1098,482,782,288);
         this.WORM_COORDS[458] = new Array(106,624,1095,568,3,635,1058,353,1135,410,553,241,492,430,995,363,1197,449,351,369,282,476,907,211,798,364,1034,511,637,300,225,344,978,259,401,325,759,274,158,226);
         this.WORM_COORDS[459] = new Array(664,288,780,288,809,500,982,265,290,221,1064,376,1116,570,160,227,569,354,35,624,1190,409,1024,462,461,481,1043,324,1120,472,95,615,437,547,382,570,973,389,530,232);
         this.WORM_COORDS[460] = new Array(200,342,561,252,33,624,600,350,977,257,498,239,835,453,924,223,1199,449,160,227,449,497,1056,344,102,242,436,548,230,441,382,312,214,609,727,289,92,341,335,254);
         this.WORM_COORDS[461] = new Array(629,314,907,211,91,225,1061,359,826,349,110,624,1173,410,982,495,187,298,814,481,1112,570,708,345,978,259,403,323,209,353,429,440,336,373,487,262,742,288,20,626);
         this.WORM_COORDS[462] = new Array(448,497,402,324,329,228,665,288,4,635,174,261,840,453,1006,617,553,241,110,624,979,495,842,314,485,445,1114,570,1093,405,1036,317,207,611,76,198,1125,456,935,402);
         this.WORM_COORDS[463] = new Array(687,322,817,478,626,321,229,341,77,610,233,441,1118,569,1066,378,420,363,276,229,1160,399,326,220,531,461,16,627,941,562,563,252,363,323,51,203,748,284,437,547);
         this.WORM_COORDS[464] = new Array(185,288,996,358,31,624,140,226,793,311,1071,381,910,210,1170,407,674,298,824,364,178,617,969,496,108,625,1009,618,1065,558,85,347,506,239,1063,486,72,194,446,501);
         this.WORM_COORDS[465] = new Array(39,624,1070,558,804,500,547,481,371,319,976,255,78,199,1188,409,780,288,204,345,348,369,823,366,252,469,721,301,854,306,994,463,622,342,308,187,649,289,191,614);
         this.WORM_COORDS[466] = new Array(1134,454,302,188,530,232,26,624,803,500,948,243,101,239,206,349,841,315,238,254,1092,403,727,289,1162,399,865,222,429,440,44,210,1011,329,711,361,782,288,662,285);
         this.WORM_COORDS[467] = new Array(820,466,732,290,226,342,1111,570,558,252,121,230,48,624,418,363,481,452,237,597,56,198,274,482,965,248,923,524,655,285,584,353,952,588,1148,406,486,263,428,553);
         this.WORM_COORDS[468] = new Array(1029,317,78,199,252,216,217,347,864,223,471,468,175,618,165,233,369,321,1120,472,1065,378,1102,569,84,347,1171,408,41,624,843,313,488,262,962,394,705,345,1192,574);
         this.WORM_COORDS[469] = new Array(476,461,163,230,206,611,342,389,694,337,266,488,205,347,31,250,992,380,808,500,1148,406,1087,397,61,193,621,343,4,635,794,312,397,323,849,309,153,621,1037,318);
         this.WORM_COORDS[470] = new Array(726,289,242,589,859,227,1091,403,669,291,605,349,1113,570,151,226,68,618,1160,399,96,230,510,236,946,243,555,345,457,485,967,496,330,229,214,349,1040,321,187,614);
         this.WORM_COORDS[471] = new Array(882,215,1060,355,694,337,388,314,863,471,845,313,9,631,600,350,1059,499,978,259,157,226,440,514,288,223,1172,409,791,311,531,233,994,615,45,209,114,620,1108,570);
         this.WORM_COORDS[472] = new Array(128,227,971,389,349,369,1111,570,52,619,1130,411,1099,483,530,232,781,288,812,490,977,257,724,300,468,473,1033,317,652,286,373,317,154,620,236,256,916,211,531,461);
         this.WORM_COORDS[473] = new Array(1175,411,565,267,752,278,123,229,602,349,855,229,652,286,1042,324,228,342,391,319,90,615,467,474,1096,411,705,345,432,552,1056,502,807,500,299,194,951,587,990,382);
         this.WORM_COORDS[474] = new Array(10,630,170,618,309,188,257,204,201,342,656,285,1052,342,708,345,490,255,1136,410,29,251,355,372,179,273,740,290,577,353,463,479,996,358,89,219,423,363,1198,449);
         this.WORM_COORDS[475] = new Array(949,244,792,311,667,290,431,441,887,215,1168,406,501,239,293,218,844,313,981,384,366,322,234,340,1119,472,340,382,52,203,210,610,452,494,799,369,80,610,557,253);
         this.WORM_COORDS[476] = new Array(740,290,433,551,1188,409,1067,378,1029,317,143,612,119,230,54,619,1027,619,598,350,551,241,1135,454,883,215,478,459,233,441,681,312,800,498,865,286,300,194,823,366);
         this.WORM_COORDS[477] = new Array(470,469,506,417,543,241,950,244,671,293,1192,452,710,347,3,635,76,359,163,620,1153,401,1038,319,785,288,377,315,584,353,93,228,270,205,1071,381,38,221,874,219);
         this.WORM_COORDS[478] = new Array(857,227,629,314,791,311,412,523,959,246,972,496,1145,407,251,216,547,241,1197,449,155,620,991,381,1,639,808,500,195,339,476,461,96,616,318,206,336,373,216,608);
         this.WORM_COORDS[479] = new Array(767,279,571,354,495,426,838,319,342,389,1097,481,529,232,803,500,131,227,1090,402,886,215,146,617,956,245,181,276,1017,323,1188,409,460,482,685,321,1,639,635,310);
         this.WORM_COORDS[480] = new Array(169,244,129,599,407,323,1015,618,452,494,1151,403,284,251,901,211,186,294,1024,317,971,389,3,635,429,553,105,246,582,353,655,285,526,228,217,608,55,198,818,478);
         this.WORM_COORDS[481] = new Array(57,198,813,489,441,513,946,575,359,324,697,339,420,363,154,226,293,218,650,288,337,374,853,306,599,350,87,346,516,226,242,231,1040,321,1149,403,75,610,7,634);
         this.WORM_COORDS[482] = new Array(586,352,408,323,189,614,758,274,197,342,109,625,648,290,824,464,50,624,488,262,33,234,1155,401,1012,328,114,234,290,469,346,369,1107,571,464,477,1101,490,255,208);
         this.WORM_COORDS[483] = new Array(413,322,637,300,1025,317,1200,497,712,316,1157,399,505,239,1111,570,119,603,497,422,199,342,56,198,931,539,228,602,329,353,874,219,597,350,809,500,1096,411,319,207);
         this.WORM_COORDS[484] = new Array(706,345,367,322,47,624,201,342,150,226,501,239,574,354,422,363,38,221,461,481,1034,511,737,290,953,244,1123,456,638,299,1188,409,198,612,259,201,838,319,1031,317);
         this.WORM_COORDS[485] = new Array(41,219,445,502,813,489,710,347,985,489,213,364,350,369,503,239,1025,317,155,226,603,349,10,630,725,290,834,331,875,447,429,440,1106,570,671,293,1092,403,1100,485);
         this.WORM_COORDS[486] = new Array(821,465,1129,411,9,631,84,207,660,285,712,316,373,317,199,342,767,279,561,470,268,202,939,557,343,385,1045,325,1112,570,859,227,478,459,155,620,488,262,1022,457);
         this.WORM_COORDS[487] = new Array(332,244,294,418,662,285,159,227,124,599,35,229,618,348,197,342,371,319,718,301,3,635,799,498,255,476,1122,456,563,252,473,464,1174,411,205,611,936,240,984,610);
         this.WORM_COORDS[488] = new Array(612,348,413,322,152,227,54,619,938,240,669,291,1053,342,507,238,984,490,255,208,189,336,102,242,185,615,478,459,759,274,1197,449,1111,570,820,466,38,221,826,349);
         this.WORM_COORDS[489] = new Array(840,318,198,612,39,624,231,340,893,212,1144,408,813,489,78,199,423,363,976,255,482,450,139,226,1036,512,545,242,1110,570,1090,402,572,354,250,464,1054,342,246,230);
         this.WORM_COORDS[490] = new Array(713,316,12,628,801,499,1114,570,1166,406,944,570,1189,553,449,497,245,230,781,288,146,226,907,211,994,379,226,342,335,254,983,495,382,312,142,611,1124,456,228,602);
         this.WORM_COORDS[491] = new Array(165,233,814,481,33,624,354,325,510,236,861,289,84,207,201,342,950,585,883,215,1036,317,426,410,986,382,138,606,683,321,1155,401,781,288,201,612,431,552,577,353);
         this.WORM_COORDS[492] = new Array(804,500,339,380,631,311,236,256,1143,409,231,340,1074,385,865,222,510,236,954,244,46,208,719,301,826,349,76,610,12,628,437,547,287,226,1002,353,183,616,462,480);
         this.WORM_COORDS[493] = new Array(1132,411,938,555,275,481,370,320,63,619,756,274,326,220,165,620,49,206,846,313,984,384,661,285,586,352,810,495,336,373,1023,317,1044,512,538,240,896,212,434,551);
         this.WORM_COORDS[494] = new Array(1169,406,401,325,227,342,551,241,702,345,891,213,593,351,436,548,939,557,36,624,460,482,1093,405,86,613,650,288,498,239,144,613,1008,335,770,285,1112,570,801,499);
         this.WORM_COORDS[495] = new Array(1022,620,500,239,927,231,234,340,800,498,694,337,746,284,95,229,195,613,13,627,857,227,987,382,134,600,1139,547,279,480,1032,317,556,252,240,239,959,598,489,435);
         this.WORM_COORDS[496] = new Array(751,281,30,624,619,348,292,219,948,243,1116,570,462,480,706,345,175,263,224,344,1014,618,815,480,1080,392,1024,317,1156,400,1060,497,423,555,417,364,565,353,498,239);
         this.WORM_COORDS[497] = new Array(1031,317,823,366,176,617,1134,554,599,350,750,281,193,337,273,223,705,345,392,319,50,624,339,380,869,222,1129,411,1200,449,1063,375,541,241,440,514,147,226,181,276);
         this.WORM_COORDS[498] = new Array(683,321,1104,569,836,320,1191,409,1086,396,856,461,194,614,1037,318,480,454,442,511,45,209,967,604,6,634,343,385,113,621,594,351,286,472,288,223,526,228,421,363);
         this.WORM_COORDS[499] = new Array(22,625,290,221,1009,334,366,322,591,351,700,345,547,241,926,229,662,285,829,343,944,570,67,192,106,624,144,226,460,482,1090,402,1176,411,729,289,983,495,416,322);
      }
      
      public function init_coords_molivand() : *
      {
         this.WORM_COORDS[500] = new Array(746,127,1238,191,319,611,20,430,496,271,572,157,623,589,173,522,1288,590,171,311,39,618,1200,514,226,581,1090,165,299,200,91,518,429,165,712,511,361,184,963,557);
         this.WORM_COORDS[501] = new Array(122,392,463,157,1095,300,1298,611,1230,503,1,506,181,524,1118,162,956,179,589,158,897,171,303,619,611,601,17,440,385,178,1169,127,1061,188,106,522,975,328,899,482);
         this.WORM_COORDS[502] = new Array(31,427,1157,491,988,173,86,517,904,487,1223,504,968,323,640,588,584,159,428,165,315,195,804,135,1105,479,131,391,1284,582,885,167,956,613,1043,502,1100,163,399,398);
         this.WORM_COORDS[503] = new Array(1168,540,633,123,249,576,1109,163,83,514,180,304,662,524,943,526,311,198,968,173,1139,474,403,173,1085,490,328,607,13,455,103,392,1269,574,1245,507,605,604,984,335);
         this.WORM_COORDS[504] = new Array(992,510,152,334,329,607,579,158,1053,498,337,191,809,129,942,306,1123,162,637,584,1034,220,91,518,243,576,441,160,486,251,730,140,135,391,948,615,606,338,1176,130);
         this.WORM_COORDS[505] = new Array(1102,479,392,175,67,494,208,355,36,431,661,618,104,392,236,577,1041,595,1188,527,903,485,330,192,517,189,1076,175,861,153,636,124,1260,202,923,191,178,304,736,132);
         this.WORM_COORDS[506] = new Array(325,607,147,339,1044,213,1010,503,1197,519,1280,579,907,490,17,440,291,205,923,191,537,164,391,177,246,576,202,514,807,130,1094,165,471,160,703,518,474,417,761,463);
         this.WORM_COORDS[507] = new Array(1230,503,181,524,46,450,194,632,373,180,170,312,220,361,321,610,867,589,88,518,449,158,641,589,1111,162,585,599,129,391,1200,157,754,127,1160,494,513,281,853,134);
         this.WORM_COORDS[508] = new Array(1213,162,979,173,689,521,602,604,1078,172,47,451,925,191,1013,502,1231,503,399,173,247,576,822,123,166,317,313,614,91,518,202,514,475,417,399,398,642,128,587,159);
         this.WORM_COORDS[509] = new Array(212,512,889,167,325,607,1104,162,1088,487,42,441,1239,191,954,566,281,211,353,546,588,602,243,576,932,516,800,163,420,168,1183,135,474,417,1007,503,116,394,74,505);
         this.WORM_COORDS[510] = new Array(432,163,1050,204,222,361,1253,197,786,163,569,158,70,503,268,594,178,304,989,173,864,152,391,400,7,480,669,523,26,427,924,191,195,517,730,481,1187,527,1116,162);
         this.WORM_COORDS[511] = new Array(228,366,651,608,901,175,1001,187,297,621,1089,165,1231,503,126,393,17,440,598,129,508,281,69,500,1107,479,1229,185,664,524,1256,583,765,469,359,544,338,191,223,584);
         this.WORM_COORDS[512] = new Array(326,607,176,305,748,127,1157,491,269,597,638,124,39,438,369,407,982,172,1149,592,287,207,972,557,1010,503,785,506,904,178,510,371,912,496,646,603,133,391,542,159);
         this.WORM_COORDS[513] = new Array(282,632,78,511,692,137,419,168,40,440,584,597,915,184,1023,503,105,392,337,605,516,380,864,152,762,127,481,163,1206,510,1253,197,1282,580,786,507,1088,487,366,417);
         this.WORM_COORDS[514] = new Array(81,514,380,179,120,392,1066,184,237,576,944,614,1150,482,1281,580,792,162,15,447,965,173,711,160,1241,191,211,512,507,281,854,135,612,601,1031,503,197,348,912,496);
         this.WORM_COORDS[515] = new Array(239,576,759,127,313,614,695,138,176,525,1298,611,46,450,1247,501,1025,219,1183,135,914,184,1125,164,738,464,1031,503,591,157,810,482,879,585,964,557,434,163,1148,593);
         this.WORM_COORDS[516] = new Array(556,159,345,186,1283,581,1095,485,310,616,1168,540,1152,129,1264,479,189,318,1061,188,1257,202,233,370,244,576,497,273,909,179,13,455,947,615,821,123,665,524,89,518);
         this.WORM_COORDS[517] = new Array(896,478,271,600,827,121,127,393,215,359,157,328,49,455,334,191,1197,519,694,521,363,541,618,121,1251,485,420,168,206,633,1061,188,675,622,1051,501,1281,580,497,168);
         this.WORM_COORDS[518] = new Array(470,160,66,493,954,179,1229,503,333,605,232,578,1054,498,353,546,738,130,559,279,393,175,861,573,322,194,808,129,186,309,1108,163,41,441,105,392,1013,204,434,407);
         this.WORM_COORDS[519] = new Array(976,171,678,139,22,428,1010,503,125,393,594,157,678,523,804,135,466,417,1039,217,247,576,1266,208,5,489,280,632,1290,592,407,172,1079,277,364,541,1150,482,83,514);
         this.WORM_COORDS[520] = new Array(502,278,914,184,89,518,7,480,98,393,760,127,627,121,1007,195,203,630,302,199,1113,476,847,127,275,611,1296,604,882,579,355,546,466,157,654,615,205,355,1164,498);
         this.WORM_COORDS[521] = new Array(1094,485,543,159,959,557,905,178,48,453,511,281,243,576,685,139,18,637,176,525,789,162,1228,184,1167,127,125,393,429,165,1219,501,1005,193,364,181,316,611,396,398);
         this.WORM_COORDS[522] = new Array(879,585,1168,540,489,262,311,616,559,158,1240,191,1003,192,1014,502,932,615,152,334,618,596,1158,127,296,200,565,363,87,518,943,189,382,178,1286,588,48,453,96,395);
         this.WORM_COORDS[523] = new Array(1234,186,837,123,278,618,365,181,1080,169,1083,490,672,523,131,391,155,328,926,191,1157,127,878,586,62,479,979,539,606,124,1175,538,297,200,840,479,348,599,703,162);
         this.WORM_COORDS[524] = new Array(4,496,22,428,1041,216,315,611,955,179,791,509,905,178,255,577,720,162,1196,521,1294,601,512,281,1054,498,631,578,978,544,440,162,133,391,588,159,188,314,212,512);
         this.WORM_COORDS[525] = new Array(283,630,1292,597,19,432,1008,196,363,593,725,163,1021,503,1141,594,1168,540,223,365,102,392,818,124,1083,490,248,576,956,558,1106,162,900,483,338,191,681,523,176,305);
         this.WORM_COORDS[526] = new Array(608,604,1100,482,277,614,1263,204,930,195,1007,503,197,348,733,473,1063,184,1146,130,999,186,959,317,687,137,130,391,942,525,892,478,827,121,30,427,545,159,385,178);
         this.WORM_COORDS[527] = new Array(537,164,252,576,282,211,931,615,410,401,1199,157,198,348,385,178,1214,505,314,613,633,123,741,129,1287,589,1153,485,624,586,1064,184,1071,495,105,392,994,509,1141,133);
         this.WORM_COORDS[528] = new Array(199,349,1102,162,2,503,800,163,63,485,1160,494,956,558,486,251,448,159,281,632,746,127,1026,503,584,597,1300,618,332,191,21,428,259,581,1219,172,890,168,133,391);
         this.WORM_COORDS[529] = new Array(1103,479,1244,195,401,173,1282,580,286,630,977,329,648,607,1162,127,1,506,849,483,953,614,1033,503,752,127,136,388,83,514,253,577,497,273,372,404,871,154,958,557);
         this.WORM_COORDS[530] = new Array(945,188,44,445,534,168,1010,503,725,163,289,630,144,350,778,135,661,123,400,173,639,587,1229,185,1097,164,515,281,1066,497,1019,211,243,576,672,523,1295,603,227,365);
         this.WORM_COORDS[531] = new Array(985,172,1187,527,263,585,957,558,1252,197,810,129,695,138,80,512,1141,594,532,394,17,639,729,483,11,466,206,355,185,627,598,129,514,200,1001,505,616,598,349,186);
         this.WORM_COORDS[532] = new Array(125,393,392,399,470,160,1187,142,877,154,11,466,1220,501,669,121,1138,594,1054,198,287,630,363,182,213,600,1249,197,992,510,730,481,601,126,1153,485,1003,192,726,162);
         this.WORM_COORDS[533] = new Array(1256,478,1283,581,800,163,951,615,647,136,29,427,159,325,1066,184,521,179,710,160,260,582,217,361,312,615,1140,134,1119,583,487,256,917,186,737,465,335,191,85,515);
         this.WORM_COORDS[534] = new Array(85,515,1178,130,1028,223,188,523,310,198,800,163,974,171,903,485,135,391,243,576,657,124,649,407,889,573,227,365,599,604,311,616,1,506,56,462,1153,590,1094,485);
         this.WORM_COORDS[535] = new Array(42,441,726,162,1124,162,1248,494,914,497,956,179,1017,502,1159,492,119,392,205,511,713,510,338,605,973,557,84,514,660,524,944,614,1292,597,163,322,798,163,501,278);
         this.WORM_COORDS[536] = new Array(680,139,79,512,853,134,348,599,961,177,626,582,6,485,744,129,242,576,414,168,23,428,593,157,171,311,1254,197,205,633,880,583,1090,165,718,502,1170,540,105,392);
         this.WORM_COORDS[537] = new Array(1154,589,28,427,141,382,968,557,879,585,7,480,1046,503,588,159,619,594,1046,210,970,173,531,168,1290,592,1147,130,311,198,701,161,639,125,178,304,212,359,449,158);
         this.WORM_COORDS[538] = new Array(269,597,444,159,1128,163,197,348,67,494,1145,594,377,179,1054,198,606,124,1009,503,1194,522,1130,473,23,428,629,578,104,392,800,513,373,402,212,512,1209,160,659,524);
         this.WORM_COORDS[539] = new Array(1074,495,744,129,187,523,604,604,164,320,1054,198,10,469,118,393,686,138,874,154,290,629,329,192,462,158,522,178,820,123,397,173,934,614,81,514,1191,525,955,179);
         this.WORM_COORDS[540] = new Array(1027,222,1160,545,647,136,1266,574,302,619,444,159,885,167,154,330,354,185,911,495,72,504,948,186,14,641,1110,162,1065,497,675,523,488,410,1173,129,823,122,225,365);
         this.WORM_COORDS[541] = new Array(254,577,702,518,335,605,353,185,87,518,1211,505,849,129,416,168,16,445,1150,482,585,160,217,361,1285,587,852,486,862,580,1234,186,977,557,502,278,931,194,1058,192);
         this.WORM_COORDS[542] = new Array(726,162,233,370,1004,193,155,328,94,397,1187,527,14,451,541,392,1255,478,955,613,792,509,943,306,885,167,365,541,314,613,370,181,1075,495,293,203,519,186,639,125);
         this.WORM_COORDS[543] = new Array(881,581,986,518,871,154,1007,195,365,181,18,435,423,166,1151,484,63,485,332,605,682,139,1154,127,239,576,187,311,116,394,572,157,1070,495,1206,160,610,601,282,211);
         this.WORM_COORDS[544] = new Array(242,576,609,602,211,358,148,337,944,307,591,157,926,191,1228,184,968,557,118,393,1127,163,1052,500,810,482,874,154,53,458,283,630,119,518,1053,198,696,139,478,417);
         this.WORM_COORDS[545] = new Array(76,510,444,411,1233,186,558,158,160,324,106,393,290,629,1053,198,281,211,1187,527,1013,502,502,278,1297,609,866,588,473,160,223,584,186,523,751,127,43,441,219,361);
         this.WORM_COORDS[546] = new Array(334,191,627,578,3,500,1136,139,224,365,1245,195,942,614,793,509,206,511,642,128,68,497,1282,580,710,513,123,392,153,333,1162,497,508,281,1015,502,737,131,279,619);
         this.WORM_COORDS[547] = new Array(420,403,557,378,693,521,1118,162,279,619,946,614,315,195,857,138,177,304,1288,590,1025,503,337,605,99,393,1110,478,224,583,891,478,620,592,1236,191,805,134,51,456);
         this.WORM_COORDS[548] = new Array(9,472,895,478,389,178,1273,227,83,514,514,281,1090,165,710,160,967,557,971,171,334,605,1277,579,785,506,297,200,641,127,578,158,1172,540,1161,127,248,576,478,160);
         this.WORM_COORDS[549] = new Array(26,427,874,586,335,605,1299,615,335,191,541,160,74,505,632,578,607,123,1129,473,661,524,99,393,256,578,844,481,1180,132,507,281,1136,591,392,175,716,162,741,462);
         this.WORM_COORDS[550] = new Array(270,598,1081,168,1178,534,175,525,148,337,80,512,854,135,1283,581,1240,511,860,562,401,173,412,401,1135,161,325,607,355,546,1120,474,657,525,23,428,516,281,1203,157);
         this.WORM_COORDS[551] = new Array(1185,530,653,124,440,162,1109,480,1298,611,35,430,1126,164,236,577,1194,158,182,304,954,179,330,607,890,168,1013,204,810,129,728,162,514,200,102,392,1254,478,962,557);
         this.WORM_COORDS[552] = new Array(274,608,491,167,1065,184,198,348,1062,498,130,391,1289,591,35,430,1252,197,886,167,435,163,378,179,1154,485,1249,490,28,628,757,127,177,525,526,391,614,601,998,185);
         this.WORM_COORDS[553] = new Array(171,311,954,566,1057,193,86,517,1050,502,298,200,99,393,1149,129,332,605,652,125,485,415,740,130,56,462,1275,578,634,579,1134,471,998,185,1243,194,266,591,549,159);
         this.WORM_COORDS[554] = new Array(839,124,151,335,579,158,341,603,1114,476,105,392,778,491,719,162,416,401,919,186,402,173,618,596,1016,502,523,177,635,123,243,576,987,337,1182,134,78,511,214,359);
         this.WORM_COORDS[555] = new Array(1236,191,280,632,553,159,507,281,958,557,118,393,1152,590,834,122,60,475,618,121,898,173,668,121,1087,167,4,496,1019,503,447,159,973,328,226,365,522,388,608,604);
         this.WORM_COORDS[556] = new Array(644,595,405,173,207,355,973,171,1111,162,787,163,99,393,595,133,295,202,1083,490,357,544,394,398,258,580,916,184,14,451,284,630,534,394,1146,594,886,573,515,194);
         this.WORM_COORDS[557] = new Array(278,618,215,359,209,511,1237,191,1001,505,1279,579,932,516,413,401,107,393,450,158,858,547,782,500,548,159,960,177,1166,127,331,607,1157,491,4,496,382,178,69,500);
         this.WORM_COORDS[558] = new Array(1235,186,915,184,1007,195,501,278,4,496,895,478,1215,505,219,361,776,487,38,436,377,400,338,191,527,174,1177,130,434,163,835,123,1114,476,1283,581,637,584,94,397);
         this.WORM_COORDS[559] = new Array(259,581,369,181,1079,494,684,139,111,522,303,199,109,393,1024,219,453,158,1285,587,885,574,728,485,527,174,924,191,849,129,207,355,1175,129,656,616,20,430,404,399);
         this.WORM_COORDS[560] = new Array(786,507,721,162,941,524,630,121,490,407,214,359,90,518,338,191,814,126,950,186,348,599,1168,540,569,158,410,401,1013,502,154,330,609,602,1050,204,119,392,1295,603);
         this.WORM_COORDS[561] = new Array(50,455,598,129,456,158,168,312,318,611,1185,139,83,514,1008,503,1095,300,380,400,1293,599,1086,490,963,175,1184,531,515,194,381,179,634,579,892,568,131,391,1260,478);
         this.WORM_COORDS[562] = new Array(852,133,463,157,1258,202,37,434,366,417,401,173,1145,478,859,555,317,195,1004,503,66,493,691,137,963,322,799,163,159,325,1255,582,908,179,601,604,637,124,512,281);
         this.WORM_COORDS[563] = new Array(1281,580,140,387,469,160,208,355,154,330,870,589,695,138,802,163,367,181,36,431,531,168,1051,501,1192,524,279,619,1117,476,699,520,624,121,502,278,184,525,1001,505);
         this.WORM_COORDS[564] = new Array(541,160,605,604,909,491,442,160,1074,495,34,429,982,172,1137,136,267,591,764,129,991,510,1264,479,314,196,1265,576,380,179,1122,586,99,393,1239,191,786,507,160,324);
         this.WORM_COORDS[565] = new Array(1273,227,711,513,195,345,346,186,1013,502,857,138,539,162,878,586,0,510,301,621,1176,536,36,431,387,399,94,397,763,464,85,515,656,616,696,139,1107,479,614,121);
         this.WORM_COORDS[566] = new Array(1298,611,241,576,84,514,529,168,331,192,42,441,167,314,543,391,1200,157,777,134,1100,163,1009,200,344,600,1206,510,1141,474,1085,490,898,173,776,487,660,618,4,496);
         this.WORM_COORDS[567] = new Array(1257,202,410,172,887,167,310,616,517,189,42,441,208,355,1018,210,890,572,245,576,1184,531,1025,503,1129,162,0,510,790,162,940,191,1069,179,121,392,694,521,642,128);
         this.WORM_COORDS[568] = new Array(253,577,1291,594,166,317,1023,219,91,518,1241,191,136,388,605,124,363,541,453,158,717,162,9,472,983,524,1213,505,965,322,309,198,397,173,350,599,552,384,532,168);
         this.WORM_COORDS[569] = new Array(67,494,1000,187,902,175,259,581,189,318,107,393,1259,578,436,163,1006,503,497,273,1191,157,1088,487,705,517,658,617,801,514,964,557,318,195,487,167,354,546,1268,212);
         this.WORM_COORDS[570] = new Array(1069,179,86,517,583,158,316,195,223,365,1016,209,1239,191,1024,503,261,583,56,462,1294,601,690,137,1117,579,877,586,410,172,404,399,901,175,489,168,1101,481,849,129);
         this.WORM_COORDS[571] = new Array(431,163,933,192,205,355,665,524,638,124,1135,161,1022,503,1286,588,252,576,673,621,782,500,337,191,1211,161,348,599,33,429,66,493,114,394,539,162,781,165,1111,477);
         this.WORM_COORDS[572] = new Array(81,514,647,604,1071,177,350,186,1179,131,282,632,944,189,836,478,1026,503,294,202,971,557,115,394,209,355,749,127,644,130,526,176,430,165,249,576,487,256,434,407);
         this.WORM_COORDS[573] = new Array(202,350,555,159,447,159,1228,503,347,599,264,585,869,153,140,387,1079,494,26,630,620,592,1260,578,809,483,1151,129,375,179,631,122,72,504,1006,503,38,436,738,130);
         this.WORM_COORDS[574] = new Array(670,121,1037,220,324,608,1051,501,423,166,888,167,1296,604,952,615,76,510,994,509,463,417,274,608,165,318,332,191,1265,205,496,167,1131,473,194,632,628,578,123,392);
         this.WORM_COORDS[575] = new Array(91,518,1039,502,295,623,416,401,955,559,1283,581,1177,535,811,129,864,586,438,164,602,604,314,196,729,142,52,457,1229,566,771,476,234,373,130,391,1093,165,1091,487);
         this.WORM_COORDS[576] = new Array(0,510,900,483,146,343,721,162,82,514,355,546,533,168,347,599,777,134,351,185,1271,217,1087,490,893,171,250,576,1027,508,1227,504,437,409,583,595,1171,128,1003,192);
         this.WORM_COORDS[577] = new Array(265,588,89,518,914,184,970,173,1297,609,128,392,636,582,851,132,1033,503,204,355,1136,139,1,506,1260,202,1242,519,377,179,586,160,17,440,513,204,344,600,310,198);
         this.WORM_COORDS[578] = new Array(870,154,207,355,13,455,1147,479,373,180,279,619,210,604,320,195,641,127,898,480,960,177,510,281,340,604,121,392,570,158,219,530,1134,591,599,604,1005,503,378,400);
         this.WORM_COORDS[579] = new Array(1089,487,809,483,954,566,1224,504,108,393,412,401,305,619,150,335,1133,161,1037,503,1283,581,759,462,1014,206,655,527,568,158,622,590,1254,197,360,184,957,179,81,514);
         this.WORM_COORDS[580] = new Array(295,623,79,512,1170,540,586,601,870,154,1077,174,785,164,993,510,359,184,1087,490,967,173,671,523,385,399,503,278,1223,175,346,599,1291,594,612,122,196,348,524,177);
         this.WORM_COORDS[581] = new Array(1025,503,155,328,1299,615,636,582,1219,501,85,515,38,436,1107,479,407,172,347,599,720,162,942,614,1221,173,957,558,669,121,1150,129,38,618,800,163,250,576,292,626);
         this.WORM_COORDS[582] = new Array(122,392,616,598,895,171,1201,514,410,172,1007,195,171,522,1162,127,337,191,684,139,86,517,856,535,1246,196,1280,579,518,187,342,602,267,591,158,327,1029,506,1143,474);
         this.WORM_COORDS[583] = new Array(283,207,1115,476,198,348,646,136,125,393,1278,579,1215,505,441,160,1052,500,841,124,71,504,880,583,982,172,10,469,1041,216,960,557,763,464,501,278,266,591,316,611);
         this.WORM_COORDS[584] = new Array(522,178,465,157,1038,219,728,162,608,604,502,278,1040,502,20,430,176,525,457,417,254,577,198,348,1115,476,111,393,334,605,1221,501,956,558,377,400,890,168,666,121);
         this.WORM_COORDS[585] = new Array(1134,161,865,588,652,125,235,377,1295,603,1008,196,719,162,359,184,1090,487,971,557,634,579,751,460,952,615,64,488,1240,511,1076,175,525,176,238,576,24,428,538,395);
         this.WORM_COORDS[586] = new Array(668,621,1107,162,144,350,1103,479,1189,527,899,482,519,186,64,488,323,193,724,162,499,278,329,607,1015,207,1234,186,1281,580,30,427,792,162,351,547,691,521,979,539);
         this.WORM_COORDS[587] = new Array(1039,217,224,365,466,157,291,627,857,543,674,123,1294,601,993,510,1226,182,391,400,1179,131,181,304,637,584,1169,540,283,207,1118,162,650,530,892,171,563,156,90,518);
         this.WORM_COORDS[588] = new Array(14,451,618,121,79,512,289,208,111,393,1037,503,325,607,825,122,952,182,1133,591,1038,219,956,558,883,577,845,481,352,546,786,507,1272,576,524,177,1250,197,340,190);
         this.WORM_COORDS[589] = new Array(733,135,632,123,1105,162,1299,615,82,514,283,630,1242,519,437,409,1190,527,195,345,44,445,129,391,1179,131,580,158,877,154,729,483,485,163,992,510,249,576,839,479);
         this.WORM_COORDS[590] = new Array(185,307,1130,162,855,532,1038,219,1211,505,978,173,684,525,275,611,88,518,123,392,600,127,1060,500,1158,492,763,128,225,365,882,168,455,158,1214,163,758,462,593,602);
         this.WORM_COORDS[591] = new Array(137,388,1290,592,85,515,946,614,39,438,1096,485,306,199,1223,504,349,599,217,520,536,166,844,126,648,607,978,173,228,580,1171,540,510,281,1031,222,1177,130,1269,214);
         this.WORM_COORDS[592] = new Array(605,604,23,428,257,579,227,365,532,394,566,156,97,394,1140,474,1192,524,1028,508,418,168,307,199,795,512,957,558,876,586,282,632,769,129,366,181,940,191,1002,188);
         this.WORM_COORDS[593] = new Array(191,524,28,427,313,197,1100,482,1298,611,249,576,115,394,93,520,160,324,937,191,1266,208,420,403,1138,136,1211,505,695,520,876,154,4,496,474,160,956,558,836,478);
         this.WORM_COORDS[594] = new Array(841,124,300,621,1194,158,1028,508,637,584,1084,167,36,431,876,586,86,517,1188,527,187,311,1093,487,654,124,1021,216,306,199,953,614,113,394,584,159,521,179,774,132);
         this.WORM_COORDS[595] = new Array(1160,494,115,394,82,514,945,529,694,521,55,461,1001,187,1108,480,1283,581,998,506,1056,498,215,514,533,168,822,123,1182,134,426,165,156,328,223,584,281,632,633,578);
         this.WORM_COORDS[596] = new Array(1299,615,153,333,848,482,385,399,1006,503,415,168,751,460,1115,476,135,391,45,448,182,524,576,157,904,178,229,368,255,577,1197,158,695,138,643,593,72,504,1064,497);
         this.WORM_COORDS[597] = new Array(482,163,573,157,963,557,1292,597,292,626,752,127,1027,508,120,392,412,401,228,366,73,504,293,203,1008,196,660,524,1259,202,844,126,886,573,423,166,670,121,906,490);
         this.WORM_COORDS[598] = new Array(77,511,1198,517,260,582,830,121,403,173,37,434,179,304,96,395,709,160,312,198,939,191,503,278,572,157,902,484,335,605,1037,503,1105,479,1024,219,1102,162,696,520);
         this.WORM_COORDS[599] = new Array(1261,204,17,440,1045,503,1050,204,461,158,1186,528,196,516,227,365,964,557,292,626,286,207,82,514,592,602,116,394,788,162,946,188,786,507,671,121,1206,160,162,323);
         this.WORM_COORDS[600] = new Array(821,535,460,477,105,354,233,213,995,368,1156,250,1221,361,41,306,541,607,578,382,1131,334,693,238,745,346,1284,411,873,280,814,340,381,290,456,222,1101,217,715,474);
         this.WORM_COORDS[601] = new Array(1082,188,544,607,122,349,1215,369,321,254,958,316,718,470,835,276,561,490,787,360,316,505,705,240,1127,501,207,171,621,340,245,230,834,534,444,446,388,362,1161,250);
         this.WORM_COORDS[602] = new Array(1253,326,147,334,178,177,1284,411,1194,402,1109,356,392,348,683,241,570,385,1107,497,503,268,747,254,359,250,1072,185,900,220,12,323,290,228,541,607,237,395,420,214);
         this.WORM_COORDS[603] = new Array(208,171,592,372,560,490,1082,188,451,221,501,509,139,340,780,343,968,327,480,271,1246,327,644,320,670,248,332,436,70,298,250,251,14,322,260,453,1294,423,1209,377);
         this.WORM_COORDS[604] = new Array(986,354,75,298,600,358,313,256,494,561,684,242,1287,416,24,312,832,534,455,306,156,236,808,344,522,285,113,352,1045,317,365,261,618,593,1123,606,164,315,1035,430);
         this.WORM_COORDS[605] = new Array(312,250,689,238,1181,408,862,278,1286,412,254,452,1158,599,48,305,580,381,0,359,452,221,1074,185,1033,433,500,509,706,483,819,340,139,340,520,282,533,620,972,337);
         this.WORM_COORDS[606] = new Array(1138,327,1274,361,526,295,749,346,84,361,953,310,286,597,158,230,803,352,1008,449,242,467,159,320,610,348,867,280,473,280,992,364,66,300,375,278,243,226,1200,392);
         this.WORM_COORDS[607] = new Array(69,299,1060,189,886,198,286,228,525,293,527,530,1278,377,101,355,159,228,1193,404,1026,437,881,284,437,216,759,342,1155,253,218,176,1142,304,7,333,342,229,626,336);
         this.WORM_COORDS[608] = new Array(1044,211,395,339,585,379,547,608,1023,441,1,353,822,339,507,515,196,465,277,396,525,293,248,452,1280,402,1149,505,848,272,933,285,1126,332,92,361,446,451,341,229);
         this.WORM_COORDS[609] = new Array(1270,352,831,292,916,282,104,594,1002,437,994,366,531,625,503,574,35,308,371,273,594,368,654,270,751,257,256,275,115,350,345,414,166,217,486,267,1149,271,1126,501);
         this.WORM_COORDS[610] = new Array(23,313,110,353,1288,417,529,327,970,335,910,270,895,206,565,388,702,240,1133,332,1249,326,466,296,782,344,545,607,323,487,166,311,1163,250,457,473,455,221,268,582);
         this.WORM_COORDS[611] = new Array(435,216,239,216,865,278,1263,338,548,491,1130,334,57,301,562,391,894,201,406,322,648,299,1183,536,184,173,128,346,530,329,369,270,812,343,917,282,327,475,537,614);
         this.WORM_COORDS[612] = new Array(105,354,620,342,281,235,16,320,1123,332,996,369,907,253,1008,449,1269,349,441,218,511,272,579,495,219,177,795,392,461,306,383,295,1214,370,939,303,683,241,1285,411);
         this.WORM_COORDS[613] = new Array(144,336,569,386,425,215,242,224,692,238,1013,448,1277,372,864,278,1300,431,936,299,72,298,355,242,850,490,468,289,1092,481,545,607,362,401,309,523,901,226,792,378);
         this.WORM_COORDS[614] = new Array(883,200,747,254,1167,362,998,377,875,280,268,263,512,273,612,598,648,299,139,340,781,343,20,317,572,384,447,218,1273,360,1010,449,1102,349,700,490,525,616,1044,211);
         this.WORM_COORDS[615] = new Array(779,342,926,281,1004,447,1084,189,860,277,685,240,1277,372,576,609,149,330,587,375,626,590,170,454,349,233,288,228,582,495,56,302,1226,548,1179,401,801,414,1095,489);
         this.WORM_COORDS[616] = new Array(544,607,137,343,177,178,595,365,1059,189,76,545,1181,408,1021,443,1105,355,308,239,360,252,1237,336,703,240,1299,429,653,273,475,275,666,573,53,302,558,488,760,341);
         this.WORM_COORDS[617] = new Array(981,351,827,337,383,295,457,313,1274,361,1202,388,391,352,1139,321,735,250,710,481,854,275,763,339,1042,212,565,388,109,353,1026,437,217,470,1155,253,664,574,795,392);
         this.WORM_COORDS[618] = new Array(548,608,690,501,256,275,326,247,152,329,198,170,85,361,851,485,242,467,761,341,1294,423,1013,448,944,305,300,483,1186,412,23,313,1221,361,482,269,410,224,624,338);
         this.WORM_COORDS[619] = new Array(997,374,178,177,698,239,1008,449,563,390,649,580,235,213,537,614,306,600,1106,356,402,329,1251,326,1175,388,301,229,763,339,936,299,814,340,87,360,317,503,74,298);
         this.WORM_COORDS[620] = new Array(586,377,748,256,172,211,697,493,1,353,554,488,627,590,273,255,454,467,103,354,1259,330,1035,430,509,271,1148,277,1171,374,1148,505,976,344,790,373,1110,356,365,261);
         this.WORM_COORDS[621] = new Array(523,289,1289,418,318,263,150,329,54,302,1009,449,819,340,385,301,571,384,412,219,254,269,757,342,449,293,1222,360,174,184,1147,282,113,588,1115,337,889,198,861,278);
         this.WORM_COORDS[622] = new Array(275,249,1284,411,309,523,11,325,293,369,1106,356,870,280,663,574,532,624,1041,323,383,295,431,216,775,339,795,392,114,351,477,274,249,452,1006,450,817,532,548,491);
         this.WORM_COORDS[623] = new Array(317,503,601,358,1213,371,514,275,1108,356,129,346,639,462,401,330,316,265,919,282,674,246,828,535,671,568,528,325,1080,188,57,301,743,346,338,423,75,546,808,344);
         this.WORM_COORDS[624] = new Array(537,614,771,337,829,337,158,230,1124,332,512,516,1064,188,564,388,946,306,456,222,623,340,363,257,843,273,625,590,1150,266,1184,410,90,360,306,236,1292,419,723,245);
         this.WORM_COORDS[625] = new Array(1188,408,382,291,31,310,554,488,477,274,981,351,157,235,299,229,682,241,791,374,1023,441,1226,353,1117,334,903,232,741,253,1149,271,615,344,1087,190,560,392,734,344);
         this.WORM_COORDS[626] = new Array(564,388,146,335,1288,417,7,333,355,242,1206,382,1158,250,953,310,530,329,653,273,533,620,835,276,782,344,1051,200,243,226,989,360,418,214,213,470,1118,499,450,460);
         this.WORM_COORDS[627] = new Array(610,348,940,303,869,281,558,488,98,355,480,497,226,206,1018,445,800,411,425,215,330,452,887,198,745,253,1206,382,65,300,325,248,528,620,480,271,1100,212,1254,328);
         this.WORM_COORDS[628] = new Array(170,212,747,254,224,206,1008,449,1171,374,601,358,1253,326,491,267,1000,385,72,298,119,350,325,482,553,488,814,463,407,231,768,339,392,348,668,252,312,250,544,607);
         this.WORM_COORDS[629] = new Array(1209,377,288,228,929,281,983,351,1272,357,1010,449,796,395,873,367,640,326,449,218,547,608,560,392,1103,350,1059,189,139,340,226,206,1163,250,376,283,553,488,684,512);
         this.WORM_COORDS[630] = new Array(655,579,367,266,1129,332,835,276,938,303,1176,391,526,530,328,472,539,612,207,171,987,358,904,237,1246,544,1231,345,489,267,784,347,693,499,1147,282,133,343,291,227);
         this.WORM_COORDS[631] = new Array(579,382,967,326,751,257,861,278,480,271,581,495,668,572,775,339,1236,337,1119,332,546,607,225,206,240,470,1041,218,168,309,449,218,289,228,297,480,655,472,80,304);
         this.WORM_COORDS[632] = new Array(208,171,1119,499,1139,321,601,602,874,280,936,299,581,380,637,331,484,268,230,472,724,246,525,528,783,346,127,346,376,283,1268,346,1295,424,68,299,543,607,282,464);
         this.WORM_COORDS[633] = new Array(756,262,78,302,646,316,452,464,306,600,882,284,769,337,111,353,571,384,235,213,387,367,339,230,1128,332,1058,192,468,289,377,285,1294,423,1189,545,234,469,1232,342);
         this.WORM_COORDS[634] = new Array(119,350,743,253,250,251,170,304,667,252,758,342,1104,351,157,235,186,171,443,218,1188,408,1282,408,361,255,12,323,257,560,1012,449,907,253,637,331,519,279,828,337);
         this.WORM_COORDS[635] = new Array(834,534,580,381,782,344,917,282,361,255,247,237,526,530,544,607,1107,356,972,337,1135,503,442,218,740,250,1175,388,270,585,679,241,1067,186,663,574,82,361,694,497);
         this.WORM_COORDS[636] = new Array(960,318,605,352,355,242,214,173,439,216,754,261,792,378,545,607,1096,490,150,329,80,531,1009,449,1130,334,688,238,89,611,16,320,894,201,832,280,523,289,264,274);
         this.WORM_COORDS[637] = new Array(45,306,339,230,440,218,473,488,981,351,1044,211,1020,443,1187,411,601,358,217,470,261,277,558,488,820,341,659,261,300,483,891,198,756,262,141,337,1140,311,1228,351);
         this.WORM_COORDS[638] = new Array(592,372,41,306,1016,446,998,377,945,305,562,490,321,254,1154,345,89,360,486,267,400,330,406,233,648,467,534,619,203,170,1248,326,1182,409,328,472,642,583,780,343);
         this.WORM_COORDS[639] = new Array(306,236,472,281,1254,328,854,275,360,252,642,466,3,343,702,488,112,353,170,212,224,206,539,612,1078,188,792,378,1181,408,377,384,297,480,56,302,990,361,553,488);
         this.WORM_COORDS[640] = new Array(50,303,830,535,938,303,1228,351,648,299,480,271,329,241,817,340,154,240,567,388,854,275,1175,388,528,620,219,470,1251,546,269,263,1132,334,1084,189,717,243,733,343);
         this.WORM_COORDS[641] = new Array(1136,329,91,360,259,282,645,318,560,392,300,598,1210,377,593,609,539,612,1095,202,963,321,278,391,843,526,310,521,478,273,753,342,8,331,694,238,457,473,649,580);
         this.WORM_COORDS[642] = new Array(9,329,1223,548,823,339,301,229,664,256,940,303,173,211,369,270,1175,388,1113,347,1225,353,507,270,848,272,456,470,67,300,126,346,1035,430,634,332,906,252,1281,406);
         this.WORM_COORDS[643] = new Array(877,281,890,198,886,376,1195,400,191,170,743,253,62,300,947,306,203,468,416,215,646,316,747,346,145,336,822,339,370,272,661,575,1035,430,663,256,260,280,371,389);
         this.WORM_COORDS[644] = new Array(298,598,1298,426,184,173,576,384,1144,295,963,321,0,359,370,391,93,359,1258,329,540,610,854,275,1197,396,662,574,265,449,560,490,444,446,1050,201,481,270,893,199);
         this.WORM_COORDS[645] = new Array(805,349,1037,334,355,406,1164,250,970,335,32,310,1005,450,1242,328,1105,355,159,320,744,253,1118,499,223,205,478,273,536,615,567,388,495,505,676,245,875,368,253,267);
         this.WORM_COORDS[646] = new Array(333,433,944,305,146,335,1173,381,1204,550,633,332,542,607,502,268,395,339,840,273,247,237,1033,433,322,253,19,317,766,339,622,593,662,256,1284,411,1153,257,159,228);
         this.WORM_COORDS[647] = new Array(1285,411,1115,603,98,355,252,262,840,273,572,384,974,338,253,452,897,210,632,332,490,267,1047,422,761,341,381,380,174,455,836,534,1184,410,914,278,800,411,338,230);
         this.WORM_COORDS[648] = new Array(1123,332,922,281,1205,384,1287,416,167,310,657,579,275,249,96,356,1053,299,1007,450,602,357,268,441,476,275,520,523,62,300,1152,261,749,346,218,176,307,599,547,608);
         this.WORM_COORDS[649] = new Array(822,536,833,278,643,320,1202,388,497,267,1013,448,315,266,575,384,1043,212,1272,357,541,607,725,246,988,359,154,326,101,355,180,175,1293,421,313,511,822,339,373,276);
         this.WORM_COORDS[650] = new Array(1187,411,829,337,386,369,1250,326,432,216,1106,356,581,380,497,267,144,336,546,607,351,235,744,253,876,281,247,452,999,380,772,337,824,536,65,300,508,515,927,281);
         this.WORM_COORDS[651] = new Array(355,242,254,269,86,624,1281,406,1209,377,1166,251,121,349,754,261,988,359,53,302,593,370,553,488,1061,189,774,337,571,609,412,219,465,297,164,221,828,337,849,272);
         this.WORM_COORDS[652] = new Array(547,608,830,535,1101,217,400,330,768,339,849,272,1252,326,555,488,260,453,118,350,914,278,1137,329,976,344,707,241,19,317,582,380,1022,443,693,499,670,569,1242,544);
         this.WORM_COORDS[653] = new Array(315,266,83,640,1116,335,596,363,1273,360,965,323,1182,409,728,246,89,360,558,488,886,198,268,441,863,278,432,216,635,587,40,306,758,342,476,275,824,338,1023,441);
         this.WORM_COORDS[654] = new Array(1139,321,183,173,1138,503,321,491,31,310,916,282,1259,330,293,369,619,342,525,293,267,266,1189,407,847,272,158,230,143,336,1279,396,807,437,396,336,478,493,817,340);
         this.WORM_COORDS[655] = new Array(448,218,541,607,883,200,945,305,656,267,1120,332,309,599,1053,196,147,334,838,533,625,337,564,388,818,340,311,246,1188,408,1243,328,116,586,681,522,259,282,1028,437);
         this.WORM_COORDS[656] = new Array(279,239,1028,437,59,300,205,170,621,593,926,281,1253,326,470,286,303,488,526,295,853,275,536,615,1296,425,1052,197,614,345,672,246,871,366,724,246,1119,332,769,337);
         this.WORM_COORDS[657] = new Array(385,301,2,349,579,382,1167,362,415,215,889,198,264,449,1278,377,343,229,1001,390,249,245,486,267,530,329,1008,449,781,343,132,343,929,281,878,374,1228,351,832,280);
         this.WORM_COORDS[658] = new Array(1260,334,1052,197,1283,410,856,275,760,341,687,239,95,357,639,328,78,302,255,273,974,338,801,414,1199,394,548,491,656,474,1155,253,915,280,508,271,17,318,650,580);
         this.WORM_COORDS[659] = new Array(1252,326,871,280,736,250,815,340,475,275,1118,333,272,257,550,490,977,345,2,349,610,348,437,216,1207,380,1046,209,176,181,84,361,1281,406,329,241,385,301,1171,520);
         this.WORM_COORDS[660] = new Array(405,237,1012,449,1221,361,857,466,254,452,320,496,842,273,384,297,296,227,558,488,803,352,164,315,85,361,52,302,1285,411,948,306,466,296,594,368,1086,190,888,198);
         this.WORM_COORDS[661] = new Array(814,463,950,306,820,341,719,244,457,224,879,284,165,219,251,255,1234,338,26,312,122,349,469,287,1165,251,543,607,562,490,387,367,630,336,372,274,989,360,1180,405);
         this.WORM_COORDS[662] = new Array(588,375,1253,326,1131,334,447,218,382,291,1054,194,6,333,1194,402,869,281,541,607,966,324,1030,436,304,234,1057,292,842,528,136,343,521,285,224,206,557,488,693,238);
         this.WORM_COORDS[663] = new Array(121,586,260,280,709,241,1286,412,375,278,632,332,1089,195,140,339,766,339,829,337,50,303,312,599,525,293,1229,349,837,274,1232,547,920,281,1115,337,164,221,1038,331);
         this.WORM_COORDS[664] = new Array(607,352,498,267,33,309,556,488,852,275,1026,437,454,467,335,428,821,340,528,325,1160,250,336,231,577,611,770,337,1198,396,234,213,1116,335,380,289,111,353,682,241);
         this.WORM_COORDS[665] = new Array(834,278,551,489,241,223,1117,334,79,302,948,306,536,615,1047,313,216,470,297,480,383,295,792,378,97,356,1027,437,582,380,1233,341,1199,394,1064,633,323,250,509,271);
         this.WORM_COORDS[666] = new Array(61,300,279,239,192,170,122,586,546,607,920,281,501,268,1231,345,389,358,529,327,104,354,1107,356,755,261,689,238,781,343,362,256,619,342,1198,396,1099,209,1001,390);
         this.WORM_COORDS[667] = new Array(530,329,677,243,1112,351,1070,186,317,264,836,534,47,306,476,493,595,365,1204,387,664,574,255,273,387,367,204,170,90,360,810,343,971,336,1109,497,1269,349,889,290);
         this.WORM_COORDS[668] = new Array(1281,406,1089,195,1231,345,98,355,633,332,327,246,525,293,440,218,727,246,577,384,789,368,1125,332,581,495,981,351,247,237,1169,518,662,256,214,173,28,312,1174,384);
         this.WORM_COORDS[669] = new Array(1262,337,968,327,1068,186,668,252,84,361,897,210,1047,313,844,523,1104,351,159,631,495,267,1193,404,551,489,790,373,322,253,1021,443,620,342,318,501,21,316,516,597);
         this.WORM_COORDS[670] = new Array(915,280,1234,338,151,329,545,607,624,591,178,177,1111,356,258,282,677,561,1224,548,306,600,60,300,349,233,736,250,432,216,675,246,776,340,492,267,589,375,477,493);
         this.WORM_COORDS[671] = new Array(1220,362,1049,203,1144,295,274,251,211,171,994,366,1010,449,387,367,725,246,515,276,579,382,117,350,936,299,823,339,1285,411,331,236,538,614,1111,356,60,300,1,353);
         this.WORM_COORDS[672] = new Array(750,346,260,280,161,223,286,228,1112,499,1044,211,137,343,406,233,822,339,33,309,1191,404,1006,450,173,455,479,272,848,516,1143,295,1292,419,699,239,391,352,561,490);
         this.WORM_COORDS[673] = new Array(516,277,639,328,1058,192,887,374,463,302,848,272,1227,352,965,323,746,346,887,198,1039,328,1019,444,800,411,285,594,28,312,290,228,655,579,1172,377,363,401,87,360);
         this.WORM_COORDS[674] = new Array(879,375,271,259,1267,345,305,600,559,490,369,270,246,453,775,339,1144,295,838,273,2,349,845,523,1102,349,1199,394,536,615,506,269,451,462,1035,430,415,215,722,244);
         this.WORM_COORDS[675] = new Array(1043,319,1028,437,608,350,468,289,107,354,283,234,960,318,365,261,1254,328,686,507,829,535,757,342,1191,404,309,599,419,214,1103,350,910,270,654,270,397,334,547,608);
         this.WORM_COORDS[676] = new Array(177,178,604,353,368,268,348,411,1107,356,289,597,72,298,1286,412,650,280,548,491,773,337,998,377,905,244,1200,392,71,564,86,360,1274,361,449,218,309,242,401,330);
         this.WORM_COORDS[677] = new Array(769,337,292,227,521,525,87,360,851,275,544,607,1280,402,896,210,1252,326,65,300,660,260,1198,396,2,349,595,365,1020,443,513,274,1147,282,968,327,305,600,454,467);
         this.WORM_COORDS[678] = new Array(134,343,786,357,1158,250,1024,440,984,353,1194,402,398,332,300,483,594,368,26,312,79,302,1109,356,1242,328,926,281,1059,189,869,281,555,488,180,175,537,614,501,268);
         this.WORM_COORDS[679] = new Array(1099,209,63,300,1297,426,268,441,85,361,153,328,1202,388,864,278,389,358,467,292,95,602,371,273,610,348,1234,338,677,243,490,502,889,198,760,341,1123,332,194,463);
         this.WORM_COORDS[680] = new Array(270,261,1265,342,107,354,672,246,560,490,1299,429,358,246,1076,185,633,332,462,303,1118,333,1107,497,797,398,30,311,1176,525,1170,373,853,475,782,344,849,272,1253,546);
         this.WORM_COORDS[681] = new Array(529,327,1300,431,607,352,342,229,563,490,506,269,699,239,1176,391,304,600,397,334,790,373,1109,356,1147,282,75,298,90,360,514,593,903,232,258,282,685,509,433,216);
         this.WORM_COORDS[682] = new Array(222,181,688,238,1116,499,1137,329,453,221,645,318,738,250,1074,185,454,467,543,607,344,229,977,345,43,306,1038,331,593,609,329,462,1011,449,859,275,811,453,673,567);
         this.WORM_COORDS[683] = new Array(1031,434,262,451,366,265,253,267,79,302,1196,397,498,267,639,328,454,467,737,250,190,170,851,275,1282,408,1147,282,356,406,1236,337,946,306,447,218,306,600,1103,350);
         this.WORM_COORDS[684] = new Array(845,272,638,330,824,338,233,213,465,480,987,358,943,305,258,282,324,248,837,533,1277,372,1129,332,1225,353,238,469,743,253,670,569,134,343,895,206,568,387,1093,481);
         this.WORM_COORDS[685] = new Array(1126,332,178,177,882,284,835,534,283,234,1014,446,328,472,686,240,465,480,538,614,783,346,1208,379,971,336,62,300,91,360,613,347,349,233,890,198,690,501,440,218);
         this.WORM_COORDS[686] = new Array(275,249,1060,189,365,399,817,340,1125,332,655,268,827,535,573,384,1033,433,915,280,992,364,767,339,312,514,1216,367,181,284,196,170,546,607,162,223,366,265,892,198);
         this.WORM_COORDS[687] = new Array(1008,449,642,321,777,342,57,301,677,243,355,242,883,284,296,227,990,361,1048,206,188,171,1230,548,1194,402,493,267,138,341,1251,326,632,587,1116,335,238,215,1162,250);
         this.WORM_COORDS[688] = new Array(398,332,510,271,566,388,622,340,18,317,228,207,1222,360,86,360,1163,250,316,505,673,567,425,215,1281,406,942,305,836,275,682,241,320,258,1000,385,298,598,826,337);
         this.WORM_COORDS[689] = new Array(1235,545,159,228,526,295,724,246,880,284,243,466,444,446,1132,502,540,610,439,216,818,340,817,532,632,332,1039,429,995,368,766,339,1297,426,316,265,41,306,688,503);
         this.WORM_COORDS[690] = new Array(1132,334,527,325,790,373,22,315,570,610,250,251,739,250,690,501,623,340,1196,549,77,302,931,281,995,368,1221,361,354,240,252,452,554,488,202,170,1157,250,492,267);
         this.WORM_COORDS[691] = new Array(78,538,841,530,1267,345,1122,332,587,375,279,239,1018,445,520,282,923,281,65,300,844,272,789,368,631,590,428,215,970,335,163,223,382,291,1086,190,1206,382,226,206);
         this.WORM_COORDS[692] = new Array(856,275,756,262,1289,418,91,360,1245,328,445,218,254,452,63,300,397,334,525,293,1038,429,769,337,338,230,275,249,473,280,635,587,172,211,890,198,1227,548,798,403);
         this.WORM_COORDS[693] = new Array(277,243,1008,449,988,359,406,233,344,598,622,340,821,535,753,259,112,353,194,170,1183,410,322,489,677,243,1072,185,18,317,384,297,867,280,539,612,526,530,164,221);
         this.WORM_COORDS[694] = new Array(453,221,1148,277,1047,313,48,305,133,343,199,170,294,599,400,330,1076,185,1298,426,692,500,1231,345,779,342,906,252,1172,377,234,391,224,471,1114,346,566,492,259,282);
         this.WORM_COORDS[695] = new Array(1272,357,253,452,503,513,4,339,1115,337,213,173,154,627,316,505,599,358,126,346,675,565,599,602,851,275,457,224,1240,545,787,360,274,251,823,537,743,253,76,302);
         this.WORM_COORDS[696] = new Array(89,360,423,215,772,337,679,241,1238,335,282,235,1238,545,401,330,1202,388,1069,186,1292,419,926,281,634,332,229,209,153,328,651,580,293,477,486,267,573,492,340,229);
         this.WORM_COORDS[697] = new Array(860,277,1045,211,1013,448,65,300,1284,411,132,588,799,407,1273,360,565,388,1139,321,0,359,370,272,97,356,1160,250,471,488,255,273,1198,396,812,343,429,216,1238,545);
         this.WORM_COORDS[698] = new Array(452,303,794,387,692,238,1137,329,393,343,255,273,1023,441,1079,636,573,492,128,346,955,310,630,336,1221,361,825,337,1140,506,280,594,241,223,362,256,31,310,312,250);
         this.WORM_COORDS[699] = new Array(886,287,71,298,160,318,1144,295,484,497,1245,328,265,273,475,275,571,384,184,173,1169,369,328,244,689,238,820,341,1285,411,430,216,561,490,1201,549,1111,356,1062,189);
         this.WORM_COORDS[700] = new Array(1272,420,486,236,678,369,322,169,1185,264,512,397,44,415,569,499,381,306,748,369,272,210,1001,276,142,361,434,237,1200,333,1118,251,911,260,927,332,1052,275,1161,639);
         this.WORM_COORDS[701] = new Array(918,334,1046,284,655,335,495,243,53,411,70,352,910,260,794,312,594,385,568,500,525,396,435,237,1262,407,149,359,1168,261,291,205,714,385,198,200,1173,361,117,605);
         this.WORM_COORDS[702] = new Array(678,369,974,314,124,359,16,426,564,503,879,219,618,350,1047,284,1135,225,814,285,448,199,57,359,184,212,755,346,521,396,1247,382,351,166,1207,531,269,211,653,459);
         this.WORM_COORDS[703] = new Array(883,223,585,403,1075,261,802,300,953,322,1138,626,342,164,238,220,1281,429,2,434,403,242,532,526,159,295,1210,332,691,369,508,397,1136,225,103,348,754,350,36,571);
         this.WORM_COORDS[704] = new Array(507,397,1014,277,72,352,929,330,540,519,908,260,152,354,1070,259,1223,339,643,336,377,203,442,202,801,301,1135,624,241,220,1273,420,181,221,735,379,617,491,30,422);
         this.WORM_COORDS[705] = new Array(492,239,938,329,322,294,36,417,873,214,508,397,360,171,545,513,1235,374,1030,288,127,360,1293,447,726,381,1184,264,428,241,1153,635,643,336,388,306,154,305,1130,192);
         this.WORM_COORDS[706] = new Array(232,220,495,243,1268,411,35,571,557,506,924,332,0,434,774,327,719,382,1070,259,489,402,413,241,324,167,1193,265,828,243,125,359,1186,341,1201,527,610,362,388,306);
         this.WORM_COORDS[707] = new Array(763,337,1042,286,668,337,983,313,1249,385,1097,256,152,354,19,425,303,294,842,216,558,506,911,260,449,199,337,164,268,211,1296,453,929,330,516,395,1206,332,606,365);
         this.WORM_COORDS[708] = new Array(580,492,1136,225,160,293,840,218,1120,156,659,337,228,222,367,199,299,202,973,314,509,397,485,234,60,357,794,312,1244,381,147,359,592,390,1036,286,1,434,1295,451);
         this.WORM_COORDS[709] = new Array(1154,237,301,201,789,316,1281,429,608,365,73,352,129,360,17,425,359,170,237,220,521,396,713,385,659,337,574,495,1144,632,1030,288,891,239,941,327,1211,332,691,490);
         this.WORM_COORDS[710] = new Array(774,327,575,495,593,388,1258,397,117,356,202,207,1005,274,1136,624,722,382,367,294,1222,339,667,337,940,327,57,359,844,214,30,612,520,397,282,270,428,241,163,285);
         this.WORM_COORDS[711] = new Array(507,397,1224,339,708,387,627,343,42,417,542,516,1031,287,143,361,942,326,780,323,583,407,912,262,832,234,385,306,233,220,1157,237,38,563,419,240,1286,436,364,176);
         this.WORM_COORDS[712] = new Array(1041,286,457,199,69,352,1187,264,1105,255,1295,451,839,219,781,323,173,242,972,314,680,368,1196,335,135,363,587,398,67,566,551,508,37,417,502,399,232,220,891,239);
         this.WORM_COORDS[713] = new Array(22,425,814,285,1104,255,686,488,127,360,255,216,415,240,976,313,1156,237,565,503,921,333,506,398,867,212,1039,287,624,344,398,330,202,207,63,354,1249,385,331,164);
         this.WORM_COORDS[714] = new Array(342,326,316,176,32,422,360,255,170,253,1088,258,562,503,57,359,794,312,1269,412,841,217,647,334,193,196,429,240,744,374,1151,237,965,316,1028,287,1157,636,108,351);
         this.WORM_COORDS[715] = new Array(573,495,1293,447,855,210,507,397,602,374,741,376,927,332,430,239,685,367,1172,262,7,432,662,462,776,325,106,352,312,292,343,164,187,206,1079,258,375,307,1214,333);
         this.WORM_COORDS[716] = new Array(499,399,621,349,407,240,69,352,1187,264,349,166,12,431,1045,284,992,285,526,531,126,359,186,208,1294,450,1208,332,651,459,492,239,704,515,159,295,841,217,281,208);
         this.WORM_COORDS[717] = new Array(235,220,320,171,1136,624,141,361,1165,261,1300,466,563,503,1098,256,893,261,68,354,588,396,981,313,630,340,800,304,1120,156,625,495,1213,333,518,395,915,334,431,238);
         this.WORM_COORDS[718] = new Array(1252,388,480,216,617,350,1169,261,846,213,368,199,786,318,146,359,720,382,563,503,31,422,502,399,944,326,1005,274,1292,445,896,259,91,347,653,459,381,306,705,517);
         this.WORM_COORDS[719] = new Array(1124,616,796,311,728,380,303,201,662,337,962,318,100,348,1254,394,1075,261,832,234,21,636,1216,534,1147,237,1299,462,513,396,338,323,567,501,1024,284,1128,186,70,566);
         this.WORM_COORDS[720] = new Array(495,243,527,396,872,213,1019,280,1164,261,785,318,106,352,136,602,656,335,11,432,601,374,1245,381,534,526,182,219,919,334,1295,451,702,399,247,218,166,275,299,295);
         this.WORM_COORDS[721] = new Array(895,259,914,334,67,354,33,420,182,219,1215,334,505,399,702,514,1082,258,260,214,494,241,546,513,313,197,1136,225,814,285,1271,418,1194,265,369,199,661,337,970,314);
         this.WORM_COORDS[722] = new Array(150,358,594,385,1064,261,579,492,307,200,962,318,176,237,476,214,674,371,0,434,1204,332,467,407,845,213,521,396,394,320,1152,635,244,220,1123,165,87,347,758,343);
         this.WORM_COORDS[723] = new Array(920,334,684,488,33,420,676,369,1191,265,1266,410,491,237,532,526,869,212,62,354,1017,279,62,566,158,299,597,380,276,208,782,321,120,356,1125,175,334,164,1208,332);
         this.WORM_COORDS[724] = new Array(1298,458,643,336,958,319,136,362,13,430,568,500,461,409,1199,333,1152,237,1132,622,189,200,307,200,712,385,493,241,1024,284,846,213,56,359,163,285,365,199,517,395);
         this.WORM_COORDS[725] = new Array(1185,264,104,350,784,319,162,287,454,413,668,337,594,385,702,399,1229,344,553,506,965,316,843,215,495,243,20,639,291,205,235,220,1133,208,71,400,898,259,7,432);
         this.WORM_COORDS[726] = new Array(491,237,328,166,80,566,691,369,41,417,1162,251,22,631,516,395,1225,339,1082,258,124,359,238,220,427,240,988,309,790,314,532,526,1299,462,599,376,1154,635,1256,396);
         this.WORM_COORDS[727] = new Array(394,243,698,405,230,221,995,280,1121,160,533,526,295,295,3,434,75,351,803,298,939,328,1119,250,606,365,506,398,310,199,494,241,1295,451,1123,615,850,210,1200,333);
         this.WORM_COORDS[728] = new Array(816,283,73,352,975,313,748,369,557,506,520,397,615,353,1029,288,480,216,143,361,402,242,228,222,322,169,849,211,1174,262,174,240,1268,411,1151,635,678,369,1110,254);
         this.WORM_COORDS[729] = new Array(337,164,1246,382,252,217,97,347,392,243,964,317,1139,234,741,376,1284,434,503,399,637,336,533,526,1130,618,165,279,30,422,878,218,186,208,449,199,591,391,398,330);
         this.WORM_COORDS[730] = new Array(1258,397,314,292,813,287,2,434,719,382,94,347,527,531,916,334,460,201,1161,251,194,196,608,365,163,285,989,309,351,166,151,356,1295,451,402,242,1071,259,1139,628);
         this.WORM_COORDS[731] = new Array(954,322,1057,268,618,350,1183,263,1221,338,815,284,753,353,376,203,119,356,477,404,679,476,243,222,874,215,494,241,1148,632,433,238,163,285,44,415,57,359,1275,420);
         this.WORM_COORDS[732] = new Array(1285,434,799,305,150,358,842,216,1056,270,18,425,1130,192,421,240,367,294,76,351,893,261,218,219,515,395,275,209,992,285,1208,332,317,292,587,398,136,602,573,495);
         this.WORM_COORDS[733] = new Array(1182,345,713,385,142,361,609,364,489,402,786,318,24,423,1016,278,1183,263,541,517,190,196,453,199,1290,443,909,260,326,166,369,300,68,354,846,213,1126,175,299,295);
         this.WORM_COORDS[734] = new Array(429,240,1257,397,302,294,930,330,183,214,801,301,528,396,1172,262,19,425,662,337,1198,333,606,365,106,352,572,495,22,631,296,202,1107,254,899,259,744,374,1295,451);
         this.WORM_COORDS[735] = new Array(1032,286,305,201,816,283,1192,265,369,300,691,369,1250,386,1101,256,99,348,863,211,390,246,483,234,495,401,646,459,1117,153,1219,336,574,495,584,405,21,425,1166,363);
         this.WORM_COORDS[736] = new Array(66,354,487,402,23,423,641,336,574,495,130,360,1138,234,1201,333,182,219,755,346,951,324,1136,624,1267,411,411,241,1191,265,154,305,1048,284,702,399,334,164,99,559);
         this.WORM_COORDS[737] = new Array(275,209,666,337,913,334,740,376,15,427,1146,237,551,508,1142,629,1248,384,439,202,587,398,341,164,1212,333,884,224,1122,164,146,359,624,495,64,354,1053,275,815,284);
         this.WORM_COORDS[738] = new Array(278,208,175,239,948,324,690,369,1297,455,627,343,420,240,911,260,1164,261,366,199,37,417,1088,258,458,412,1241,376,98,348,1019,280,524,396,1113,153,471,214,571,496);
         this.WORM_COORDS[739] = new Array(416,240,546,513,859,211,278,208,165,279,710,385,629,469,821,273,499,399,1159,239,1174,361,603,373,102,348,1238,376,1020,280,207,214,38,417,152,354,969,314,1082,258);
         this.WORM_COORDS[740] = new Array(760,342,70,352,814,285,17,425,851,210,551,508,1077,259,324,167,524,396,495,243,1182,263,1136,624,208,216,627,343,1122,164,421,240,138,361,687,488,684,367,311,293);
         this.WORM_COORDS[741] = new Array(1103,255,1179,348,589,393,238,220,961,318,393,243,800,304,1195,265,1024,284,1220,533,639,336,1299,462,487,236,514,537,711,385,11,432,504,400,382,306,835,228,68,354);
         this.WORM_COORDS[742] = new Array(1191,265,1079,258,686,367,1214,333,629,341,769,333,453,199,267,211,115,352,1293,447,519,395,938,329,360,171,61,356,542,516,38,417,588,396,1009,273,166,275,1252,388);
         this.WORM_COORDS[743] = new Array(245,219,35,418,1198,333,676,369,1129,192,1036,286,536,524,149,359,866,211,379,306,470,407,92,347,420,240,1161,251,592,390,1252,388,924,332,171,250,739,376,670,466);
         this.WORM_COORDS[744] = new Array(947,324,803,298,14,428,625,343,150,358,1187,264,1263,408,1218,335,597,484,515,395,1177,641,738,377,1043,286,401,242,513,538,174,240,88,348,257,216,848,212,663,462);
         this.WORM_COORDS[745] = new Array(884,224,4,434,979,313,584,405,716,382,105,351,534,526,367,199,1171,263,823,271,469,407,444,202,384,306,163,285,228,222,1272,420,1069,259,1212,333,1124,616,626,495);
         this.WORM_COORDS[746] = new Array(37,417,59,358,1189,264,976,313,526,396,438,202,1287,436,543,514,612,360,826,247,738,377,361,172,336,320,797,309,883,223,1150,635,111,351,1046,284,686,367,278,208);
         this.WORM_COORDS[747] = new Array(1002,276,557,506,480,216,178,230,1297,455,1160,241,144,359,523,396,15,427,813,287,837,224,404,324,315,178,611,361,254,216,682,367,78,351,323,294,934,330,1126,175);
         this.WORM_COORDS[748] = new Array(1257,397,493,402,144,359,1125,175,13,430,1230,345,880,220,1047,284,980,313,444,202,288,206,185,210,680,368,395,325,157,300,542,516,1296,453,1179,263,587,398,1103,255);
         this.WORM_COORDS[749] = new Array(1095,258,198,200,1145,238,259,215,512,397,1209,332,33,420,737,378,491,237,588,396,915,334,159,295,25,623,538,521,846,213,380,306,1122,164,360,171,150,599,414,240);
         this.WORM_COORDS[750] = new Array(45,414,996,280,665,337,565,503,450,199,524,396,766,335,850,210,1167,261,1081,258,700,402,324,167,22,631,1182,345,143,361,190,196,615,353,36,571,381,306,258,216);
         this.WORM_COORDS[751] = new Array(161,291,1082,258,995,280,714,385,1299,462,577,493,198,200,587,398,409,316,891,239,920,334,624,344,360,171,34,419,794,312,488,236,129,360,828,243,1228,342,275,209);
         this.WORM_COORDS[752] = new Array(593,388,990,309,1052,275,12,431,313,197,74,352,550,510,1184,264,610,485,1223,339,237,220,525,396,702,399,698,490,834,230,1266,410,367,294,898,259,393,243,1119,156);
         this.WORM_COORDS[753] = new Array(1101,256,282,270,379,306,1158,238,496,243,1048,284,309,200,851,210,1249,385,603,373,416,240,818,279,46,562,1296,453,1207,332,512,397,764,337,31,422,558,506,978,313);
         this.WORM_COORDS[754] = new Array(762,337,656,335,257,216,591,391,313,292,1177,361,1176,262,559,504,1108,254,690,489,396,243,1039,287,812,288,181,221,62,354,934,330,0,434,989,309,697,410,1240,376);
         this.WORM_COORDS[755] = new Array(58,359,703,397,387,306,392,243,891,239,30,422,148,359,1253,391,549,510,1086,258,204,210,1005,274,1180,263,923,332,672,342,1226,340,756,345,1161,639,523,396,307,200);
         this.WORM_COORDS[756] = new Array(997,278,1151,237,241,220,1245,381,753,353,125,359,802,300,49,414,518,395,468,407,1300,466,410,240,696,490,602,374,911,260,72,352,168,260,543,514,946,326,35,571);
         this.WORM_COORDS[757] = new Array(1007,273,744,374,610,362,1252,388,686,367,285,206,549,510,619,491,336,164,110,351,1073,259,177,233,1290,443,10,432,905,259,1137,231,1196,335,470,407,1110,153,397,243);
         this.WORM_COORDS[758] = new Array(1121,611,1031,287,1218,335,1267,411,668,337,934,330,469,216,1300,466,31,422,175,239,489,402,1098,256,873,214,250,217,155,303,736,379,608,365,22,631,306,200,568,500);
         this.WORM_COORDS[759] = new Array(1238,376,157,300,273,210,399,242,579,492,452,199,1280,428,837,224,640,336,746,372,358,169,46,562,499,399,1033,286,927,332,804,298,105,351,180,224,1194,265,20,639);
         this.WORM_COORDS[760] = new Array(1253,391,278,208,1296,453,1190,265,706,519,174,240,132,360,790,314,534,526,692,369,586,402,452,199,1062,261,349,166,982,314,1191,337,922,333,640,336,321,294,54,411);
         this.WORM_COORDS[761] = new Array(630,340,1123,165,1001,276,586,402,766,335,1125,616,95,347,467,216,1291,444,639,462,708,387,193,196,862,211,570,497,1074,261,396,243,1217,335,163,285,4,434,943,326);
         this.WORM_COORDS[762] = new Array(640,336,58,359,592,390,555,506,354,167,438,202,739,376,1012,277,233,220,511,397,1230,345,1079,258,174,240,1288,437,916,334,835,228,136,362,1165,261,617,491,1172,361);
         this.WORM_COORDS[763] = new Array(426,240,1051,277,380,306,1000,276,1192,265,710,385,901,259,647,334,100,348,349,166,777,325,197,197,1277,425,37,417,558,506,1140,629,262,214,1226,340,934,330,584,405);
         this.WORM_COORDS[764] = new Array(117,356,705,517,0,434,359,170,674,371,1103,255,545,513,1007,273,1236,376,442,202,1154,635,515,395,945,326,793,312,871,213,622,492,587,398,280,208,1295,451,727,380);
         this.WORM_COORDS[765] = new Array(1196,335,359,170,482,234,1112,254,1032,286,238,220,150,358,505,399,455,413,864,211,970,314,697,410,400,330,760,342,545,513,602,374,688,488,48,414,432,238,1166,261);
         this.WORM_COORDS[766] = new Array(403,242,380,306,709,386,1200,333,1275,420,266,211,902,259,1194,265,939,328,623,346,1076,260,513,396,550,510,1137,624,1121,160,768,333,484,234,5,433,1019,280,137,361);
         this.WORM_COORDS[767] = new Array(680,368,1053,275,378,203,1208,332,233,220,1158,238,382,306,1264,409,174,240,996,280,71,352,460,201,623,346,792,312,517,395,123,359,557,506,870,212,31,422,747,372);
         this.WORM_COORDS[768] = new Array(669,465,973,314,698,405,66,404,617,350,190,196,1252,388,2,434,751,361,1180,263,1090,602,340,164,90,347,538,521,1100,256,1199,333,890,237,161,291,816,283,500,399);
         this.WORM_COORDS[769] = new Array(517,395,165,279,766,335,1094,258,45,414,549,510,1179,263,408,318,65,354,608,365,455,413,679,369,1175,361,297,202,1260,403,235,220,341,325,182,219,425,240,943,326);
         this.WORM_COORDS[770] = new Array(95,347,229,221,368,199,561,503,628,342,494,241,1003,274,418,240,48,414,28,615,794,312,1278,426,145,359,735,379,678,369,1111,254,827,246,301,294,924,332,455,413);
         this.WORM_COORDS[771] = new Array(751,361,670,337,323,168,44,415,594,385,23,627,131,360,1095,258,395,243,1200,333,893,261,575,495,154,305,942,326,171,250,482,234,242,220,1015,277,1171,263,1138,626);
         this.WORM_COORDS[772] = new Array(1132,208,524,533,32,422,65,354,1056,270,495,243,25,623,284,206,481,402,757,343,1186,264,361,172,230,221,139,361,1139,628,969,314,1269,412,370,303,895,259,592,390);
         this.WORM_COORDS[773] = new Array(1300,466,54,411,98,348,494,402,294,202,619,350,149,359,355,167,880,220,511,538,627,495,21,636,487,236,568,500,1220,337,959,318,1014,277,747,372,1123,615,195,196);
         this.WORM_COORDS[774] = new Array(994,280,219,219,678,369,1188,264,781,323,1,434,343,164,1284,434,119,356,597,380,913,334,433,238,1104,603,881,221,546,513,1203,332,57,359,498,399,286,206,167,264);
         this.WORM_COORDS[775] = new Array(827,246,52,411,517,395,744,374,694,372,532,526,1224,339,338,323,889,236,1256,396,1169,261,622,348,71,352,161,291,707,520,946,326,1105,255,473,214,116,600,417,240);
         this.WORM_COORDS[776] = new Array(478,214,601,483,611,361,135,363,729,379,37,417,814,285,398,242,76,351,1139,628,1079,258,884,224,395,325,511,397,257,216,1252,388,997,278,1148,237,315,178,666,463);
         this.WORM_COORDS[777] = new Array(279,208,430,239,620,350,1296,453,526,396,1226,340,102,348,1255,395,714,385,704,515,580,492,842,216,32,422,1163,255,1021,281,1116,608,334,313,463,409,493,241,218,219);
         this.WORM_COORDS[778] = new Array(395,325,172,245,663,337,1053,275,1170,263,81,348,44,415,1259,401,707,389,587,398,236,220,397,243,764,337,872,213,938,329,506,398,1108,254,585,489,1198,333,1297,455);
         this.WORM_COORDS[779] = new Array(14,428,1021,281,219,219,286,206,506,398,1075,261,1281,429,845,213,100,348,1148,237,480,216,943,326,633,340,817,282,1203,332,387,306,584,405,741,376,564,503,907,259);
         this.WORM_COORDS[780] = new Array(996,280,135,363,538,521,483,234,1091,258,638,336,1115,153,887,229,800,304,183,214,499,399,246,219,75,351,1291,444,725,382,49,562,1171,263,396,243,6,432,362,173);
         this.WORM_COORDS[781] = new Array(284,206,820,275,403,242,648,334,882,222,1166,640,459,200,531,527,20,425,205,210,1047,284,615,491,1259,401,1148,237,501,399,76,351,962,318,760,342,381,306,708,387);
         this.WORM_COORDS[782] = new Array(910,260,517,395,53,411,177,233,570,497,128,360,630,340,972,314,730,379,831,236,1217,335,1139,628,485,234,1168,261,160,293,1157,374,258,216,1289,442,643,460,1050,279);
         this.WORM_COORDS[783] = new Array(712,385,610,362,422,240,135,603,1196,335,350,166,1040,286,113,351,819,278,1155,237,947,324,386,306,12,431,259,215,1104,255,533,526,65,404,1248,384,584,489,480,402);
         this.WORM_COORDS[784] = new Array(1203,332,673,371,509,397,185,210,1019,280,940,327,610,362,1267,411,70,352,152,354,765,337,581,415,16,426,839,219,576,495,487,236,406,240,385,306,451,413,1194,265);
         this.WORM_COORDS[785] = new Array(893,261,658,460,1197,334,410,240,288,300,616,351,859,211,37,564,2,434,532,526,1195,265,217,219,94,347,807,295,1087,258,683,367,1001,276,1160,637,318,172,137,601);
         this.WORM_COORDS[786] = new Array(427,240,15,427,1011,273,497,400,1135,225,552,508,717,382,582,411,366,199,1239,376,873,214,785,318,295,202,918,334,688,488,205,210,633,340,95,347,1297,455,1173,641);
         this.WORM_COORDS[787] = new Array(337,164,52,411,536,524,1115,252,225,220,933,330,1290,443,802,300,667,337,469,407,636,465,111,351,586,402,1044,286,527,396,1237,376,1184,343,287,206,480,216,723,382);
         this.WORM_COORDS[788] = new Array(805,298,9,432,996,280,64,354,614,355,755,346,1113,153,309,200,30,612,367,199,1177,641,255,216,854,210,454,199,153,312,1243,380,1091,258,541,517,369,300,904,259);
         this.WORM_COORDS[789] = new Array(241,220,703,397,863,211,65,354,123,359,464,216,1059,266,502,399,0,434,34,607,337,321,604,483,590,391,770,333,1170,263,899,337,1122,614,1222,339,823,271,976,313);
         this.WORM_COORDS[790] = new Array(248,217,1190,265,367,294,502,399,863,211,450,413,616,491,747,372,961,318,66,354,33,420,495,243,654,335,123,359,1273,420,323,168,541,517,820,275,445,202,595,384);
         this.WORM_COORDS[791] = new Array(770,333,496,243,57,562,152,354,1150,635,829,241,69,352,1047,284,21,425,915,334,1286,436,614,355,1105,255,1194,336,995,280,302,201,565,503,191,196,510,397,692,369);
         this.WORM_COORDS[792] = new Array(805,298,295,202,42,417,1086,258,1220,337,148,359,63,354,505,399,1162,251,229,221,618,350,546,513,350,166,989,309,713,385,420,240,1265,409,495,243,612,488,386,306);
         this.WORM_COORDS[793] = new Array(1293,447,497,400,336,320,903,259,574,495,589,393,965,316,778,325,743,376,1197,334,849,211,300,201,649,334,387,306,421,240,110,351,1079,258,37,417,1020,280,491,237);
         this.WORM_COORDS[794] = new Array(121,356,630,340,1294,450,293,203,361,172,812,288,481,234,1159,239,530,530,699,404,231,220,391,246,1199,333,1089,258,979,313,916,334,758,343,511,397,7,432,901,259);
         this.WORM_COORDS[795] = new Array(789,316,300,294,943,326,1184,343,1136,624,28,423,1036,286,211,216,497,249,82,347,540,519,327,166,664,337,1086,258,702,399,902,259,1122,164,261,214,828,243,133,360);
         this.WORM_COORDS[796] = new Array(929,330,156,303,172,245,1047,284,726,381,18,425,478,214,795,312,1206,332,1119,250,541,517,641,336,76,351,827,246,986,311,908,260,1150,635,443,415,280,208,130,360);
         this.WORM_COORDS[797] = new Array(1152,237,400,242,543,514,1145,632,1250,386,49,414,1206,332,212,216,936,331,483,234,746,372,134,603,1007,273,379,306,63,566,788,318,90,347,598,379,870,212,289,301);
         this.WORM_COORDS[798] = new Array(30,422,168,260,917,334,1295,451,704,395,131,360,412,241,857,211,528,396,767,335,1011,273,1246,382,1093,258,186,208,814,285,374,305,668,337,1190,265,557,506,293,203);
         this.WORM_COORDS[799] = new Array(605,368,1209,332,1082,258,929,330,852,210,741,376,676,369,781,323,390,246,9,432,1124,616,518,395,1260,403,539,521,120,356,1000,276,275,209,912,262,184,212,337,164);
         this.WORM_COORDS[800] = new Array(848,200,1028,288,1272,342,628,223,490,584,746,230,1124,263,296,237,564,391,1204,316,1050,481,773,557,384,361,982,351,387,533,498,343,573,585,80,309,153,258,60,392);
         this.WORM_COORDS[801] = new Array(558,384,9,362,584,607,1238,329,947,279,260,163,84,306,658,202,1080,605,1292,608,1293,427,368,269,853,199,767,223,237,279,1236,558,1054,298,1148,261,968,384,70,384);
         this.WORM_COORDS[802] = new Array(482,590,548,375,1043,290,875,197,450,222,1214,317,566,565,763,226,1159,256,230,288,1214,546,1008,575,699,253,967,386,320,254,643,209,928,271,50,388,1294,428,399,377);
         this.WORM_COORDS[803] = new Array(1277,347,241,276,988,320,308,339,1149,261,820,207,368,269,115,274,261,163,306,253,1036,612,767,223,931,271,1047,294,24,372,606,633,657,593,972,378,846,492,572,581);
         this.WORM_COORDS[804] = new Array(993,311,1114,259,965,390,120,268,1181,305,845,200,62,393,522,551,1035,613,620,229,530,364,633,639,295,601,594,331,480,342,900,564,1089,313,402,190,840,603,1256,335);
         this.WORM_COORDS[805] = new Array(436,182,956,405,116,272,812,210,1214,546,19,368,296,602,313,253,747,601,989,317,1212,317,502,345,878,556,900,237,782,545,1150,261,562,390,255,252,1082,312,859,607);
         this.WORM_COORDS[806] = new Array(974,613,653,204,519,378,1262,338,1129,263,57,641,282,239,878,242,1064,303,1071,605,936,275,615,502,1032,498,965,390,425,180,1265,567,71,342,195,295,119,268,751,230);
         this.WORM_COORDS[807] = new Array(1115,530,745,230,228,291,1117,259,169,271,1295,428,1087,315,813,210,816,539,1288,597,1245,328,1071,605,573,401,502,573,928,271,301,600,60,392,754,602,692,259,110,275);
         this.WORM_COORDS[808] = new Array(1257,565,179,281,1036,612,837,202,1244,328,1185,308,426,180,609,238,1130,588,433,559,53,388,319,255,531,364,475,337,921,267,1291,426,302,599,98,288,717,240,245,271);
         this.WORM_COORDS[809] = new Array(98,288,543,371,958,401,1097,259,942,274,984,340,1225,551,1159,256,69,389,665,205,216,304,506,570,1294,428,1118,526,420,181,686,265,1035,613,872,194,82,580,178,616);
         this.WORM_COORDS[810] = new Array(97,603,924,412,824,316,314,253,451,491,946,279,795,538,293,344,635,214,153,258,492,342,1090,608,591,618,579,406,57,392,1275,345,597,329,891,222,690,263,1105,259);
         this.WORM_COORDS[811] = new Array(469,335,91,605,160,263,826,206,619,229,321,254,500,578,708,246,769,223,934,275,877,556,557,383,1254,332,1016,291,5,362,93,293,980,357,1045,609,429,561,1103,259);
         this.WORM_COORDS[812] = new Array(1088,608,307,253,1119,523,1201,315,853,608,1157,257,473,596,942,274,725,599,959,398,858,307,1073,310,108,278,73,331,255,252,13,363,167,266,992,312,1284,416,541,520);
         this.WORM_COORDS[813] = new Array(1223,321,372,271,747,230,513,376,55,640,1106,259,934,275,380,211,187,288,1080,312,621,636,565,392,886,223,285,237,956,405,96,291,1090,608,43,383,453,485,1016,575);
         this.WORM_COORDS[814] = new Array(517,377,1116,259,324,254,718,240,577,402,164,265,1208,317,2,360,932,272,1299,439,638,638,638,212,1259,335,414,182,980,357,367,512,867,195,893,562,1034,291,1290,603);
         this.WORM_COORDS[815] = new Array(1206,317,443,197,657,202,1028,288,596,330,99,603,295,344,857,196,73,331,691,262,305,253,432,378,1056,608,580,407,154,259,1159,256,602,630,1086,315,266,188,771,223);
         this.WORM_COORDS[816] = new Array(563,390,54,388,313,253,1192,314,1092,268,924,268,734,234,114,274,947,412,584,607,487,342,237,279,49,641,1063,605,863,305,1000,300,982,351,1,360,322,588,671,215);
         this.WORM_COORDS[817] = new Array(32,375,299,240,846,200,389,199,199,297,1182,308,419,559,507,570,1298,432,725,599,106,604,525,386,916,411,1059,301,358,512,1212,546,1262,338,423,378,593,331,730,239);
         this.WORM_COORDS[818] = new Array(710,245,78,313,584,409,1092,268,1164,254,1058,607,303,340,595,331,494,583,786,217,868,299,168,269,525,386,627,223,865,608,1210,318,1281,583,349,514,579,596,255,149);
         this.WORM_COORDS[819] = new Array(680,268,502,345,944,274,1134,588,822,207,772,223,254,146,888,222,1039,610,1265,567,54,388,1190,309,1140,481,971,379,597,329,1240,328,187,288,381,207,89,601,657,202);
         this.WORM_COORDS[820] = new Array(1003,298,1295,428,955,406,90,298,399,377,894,226,734,234,444,199,31,375,56,512,558,384,326,257,183,282,825,206,491,342,611,636,624,319,245,271,1280,581,475,596);
         this.WORM_COORDS[821] = new Array(775,551,314,593,724,238,441,536,558,384,478,340,962,396,215,304,546,520,390,198,1120,263,1074,605,1024,289,1298,432,853,199,616,229,41,380,1010,501,622,638,617,322);
         this.WORM_COORDS[822] = new Array(1102,259,1048,294,475,337,273,225,400,192,227,293,153,258,666,205,1201,315,1056,608,831,562,62,620,820,207,540,365,596,330,661,593,1299,439,376,273,694,257,1177,612);
         this.WORM_COORDS[823] = new Array(331,257,780,547,1239,329,1104,613,488,342,48,386,661,202,389,199,574,402,1019,289,534,529,1042,609,201,300,847,607,54,640,928,271,766,602,1163,255,989,580,600,251);
         this.WORM_COORDS[824] = new Array(656,202,533,364,605,633,215,304,419,379,421,559,287,237,908,258,558,540,292,599,1089,313,759,226,830,559,1010,292,609,534,1203,315,1297,624,822,207,695,257,70,525);
         this.WORM_COORDS[825] = new Array(93,605,316,253,609,238,1034,291,1247,328,1200,537,1300,639,34,375,953,409,158,262,1279,414,244,148,1095,607,508,355,354,512,439,364,1120,263,403,188,849,200,697,256);
         this.WORM_COORDS[826] = new Array(839,581,81,572,1193,314,93,293,759,601,1217,546,294,344,372,271,620,485,959,398,41,380,1273,343,1157,257,920,267,829,315,855,197,595,331,455,335,671,215,205,300);
         this.WORM_COORDS[827] = new Array(479,595,1044,290,877,244,593,621,59,392,684,266,243,272,814,539,1125,517,136,258,653,204,553,379,348,263,398,194,1255,333,82,580,1168,253,1076,605,408,378,935,275);
         this.WORM_COORDS[828] = new Array(424,180,839,581,803,214,1264,338,56,641,364,269,1259,565,720,598,864,196,272,214,1077,310,596,330,1197,314,151,258,1114,259,101,284,19,368,544,371,907,407,1166,253);
         this.WORM_COORDS[829] = new Array(288,599,32,375,1161,594,633,216,1287,421,1276,347,145,622,901,240,364,269,157,262,1047,294,502,345,227,293,595,331,701,253,1177,282,1099,610,829,559,778,221,570,396);
         this.WORM_COORDS[830] = new Array(660,202,551,378,193,290,1284,416,88,600,989,317,5,362,405,188,298,239,496,343,594,622,757,226,434,376,646,639,363,268,296,602,1247,558,1048,294,556,535,1109,259);
         this.WORM_COORDS[831] = new Array(1112,604,219,302,473,596,125,628,921,267,490,342,339,260,1141,263,1232,554,245,147,106,280,1070,308,1003,500,797,215,592,620,414,564,363,328,65,393,766,602,1203,315);
         this.WORM_COORDS[832] = new Array(1204,316,901,240,1283,416,845,200,91,296,979,360,1121,263,773,223,59,392,234,283,140,623,456,335,167,266,1066,304,517,377,255,149,354,264,573,401,852,608,793,539);
         this.WORM_COORDS[833] = new Array(960,398,350,263,1090,608,1098,259,513,376,592,331,788,541,405,585,1181,608,895,228,554,530,1248,331,690,263,618,636,846,607,1292,608,1028,288,1262,407,77,554,581,409);
         this.WORM_COORDS[834] = new Array(986,332,735,233,1222,321,73,331,1033,588,834,316,70,384,291,237,1278,412,1058,300,609,238,214,304,462,468,905,251,487,342,583,409,84,591,255,149,678,262,1116,259);
         this.WORM_COORDS[835] = new Array(1208,543,671,215,600,629,1229,323,487,342,9,362,96,291,951,410,614,507,246,146,748,563,828,556,1098,610,1055,299,243,272,947,279,430,561,328,258,612,324,856,309);
         this.WORM_COORDS[836] = new Array(57,392,1238,559,278,235,1200,315,413,564,1263,338,513,376,1086,609,152,258,567,394,361,327,444,199,829,559,1297,431,1088,314,720,240,1167,253,499,578,775,221,311,595);
         this.WORM_COORDS[837] = new Array(1299,439,203,300,364,269,1066,606,869,194,812,210,721,240,1105,259,589,409,625,637,470,335,520,378,61,393,9,362,720,598,1006,296,309,254,539,524,982,351,108,278);
         this.WORM_COORDS[838] = new Array(892,561,14,363,839,200,88,299,941,413,600,328,1204,316,226,296,648,597,401,377,610,235,343,517,1280,415,1235,556,111,608,1068,308,539,365,265,182,943,274,572,581);
         this.WORM_COORDS[839] = new Array(632,218,945,279,508,355,445,347,1015,291,1107,259,141,257,598,328,753,602,367,269,1157,257,211,304,1088,608,842,313,1285,416,650,639,420,181,957,404,755,228,680,268);
         this.WORM_COORDS[840] = new Array(587,409,275,584,62,393,466,335,1011,292,1150,261,276,234,446,206,521,381,861,196,600,629,362,268,974,373,746,230,103,603,395,373,213,304,494,583,147,258,638,212);
         this.WORM_COORDS[841] = new Array(709,246,1101,610,964,612,1127,263,1004,298,588,409,1212,317,772,558,437,556,108,278,1206,543,1258,565,208,304,380,211,841,200,535,527,534,364,432,378,962,396,1058,300);
         this.WORM_COORDS[842] = new Array(413,182,814,539,1104,259,892,222,77,315,556,383,1207,543,1271,342,345,516,30,375,629,639,727,238,958,401,325,254,288,599,616,405,454,335,500,578,205,300,1210,318);
         this.WORM_COORDS[843] = new Array(841,603,1199,315,29,375,897,230,997,303,445,518,609,238,606,633,1119,523,185,283,569,571,251,146,359,268,798,215,684,266,851,312,440,363,1267,338,1089,313,1167,618);
         this.WORM_COORDS[844] = new Array(606,239,886,223,276,587,473,335,943,413,1104,259,1255,333,1287,421,363,512,317,253,80,309,1083,312,979,360,531,364,251,146,208,304,589,409,1172,253,61,393,1181,305);
         this.WORM_COORDS[845] = new Array(249,146,398,377,891,222,704,249,461,335,938,274,403,585,59,392,177,279,927,413,1009,293,566,393,229,289,100,603,349,263,419,182,1251,331,548,521,803,214,1284,586);
         this.WORM_COORDS[846] = new Array(1222,321,177,279,289,344,370,271,486,342,320,254,694,257,382,206,302,599,654,203,555,383,985,335,939,274,27,375,748,230,1116,259,826,552,806,211,577,591,444,199);
         this.WORM_COORDS[847] = new Array(144,258,789,540,906,252,871,194,1238,329,793,216,290,237,20,368,456,476,646,208,420,181,588,610,480,594,1132,263,565,560,1024,289,85,597,1033,588,313,593,600,328);
         this.WORM_COORDS[848] = new Array(771,562,587,409,144,258,638,212,613,636,521,381,89,299,1235,326,61,393,231,287,765,225,366,269,1050,608,1175,253,702,252,913,261,1019,289,1269,571,1124,263,464,335);
         this.WORM_COORDS[849] = new Array(67,390,143,258,564,559,966,388,1044,609,83,308,804,212,517,377,1131,263,342,518,833,565,596,622,1204,316,476,596,947,279,614,507,261,163,455,335,1021,289,569,395);
         this.WORM_COORDS[850] = new Array(1,360,214,304,1108,259,1255,333,64,393,1050,294,265,182,138,257,924,268,585,409,868,194,784,220,394,372,473,335,435,182,564,559,964,392,722,240,1283,416,332,257);
         this.WORM_COORDS[851] = new Array(577,402,1117,259,1261,338,1128,510,64,393,1264,566,884,558,138,257,1096,607,996,303,214,304,317,253,368,512,82,309,835,204,369,269,498,343,954,613,932,272,1280,415);
         this.WORM_COORDS[852] = new Array(1254,332,936,415,588,409,804,212,829,559,175,276,872,194,661,202,1030,288,1116,259,410,580,526,386,58,392,849,486,1023,502,681,270,1278,577,125,266,474,335,609,534);
         this.WORM_COORDS[853] = new Array(605,633,940,274,1234,323,324,254,121,268,865,608,848,490,703,250,380,520,1001,498,38,380,1043,290,261,163,1263,566,1287,421,415,379,472,596,783,220,540,365,553,527);
         this.WORM_COORDS[854] = new Array(1266,338,1154,258,809,211,660,202,572,399,41,380,287,596,470,595,80,309,139,257,696,257,518,378,1078,312,1285,416,1111,539,1010,292,409,586,1193,314,319,255,384,527);
         this.WORM_COORDS[855] = new Array(176,278,501,574,446,510,855,310,769,566,526,386,656,202,310,254,99,603,124,267,369,269,1228,322,871,556,977,614,987,324,404,188,1057,299,640,638,238,276,727,238);
         this.WORM_COORDS[856] = new Array(1030,288,904,249,1246,328,469,335,132,258,419,559,954,409,526,386,750,230,227,293,64,393,817,208,1056,478,425,180,854,311,552,525,1192,314,1234,554,367,269,1145,261);
         this.WORM_COORDS[857] = new Array(1275,345,534,364,1061,605,644,209,27,375,349,263,420,181,1132,506,544,520,591,332,1077,310,979,360,1140,263,602,411,1291,606,287,237,96,291,461,575,866,196,389,537);
         this.WORM_COORDS[858] = new Array(1224,321,1237,468,344,260,898,398,238,276,876,556,662,204,849,200,318,592,983,345,62,393,248,146,286,341,575,402,1148,261,733,601,406,188,114,274,646,389,455,335);
         this.WORM_COORDS[859] = new Array(305,253,417,182,816,209,1208,317,540,522,749,230,264,176,374,271,1110,616,121,268,1054,298,476,338,594,622,856,309,952,613,664,204,31,375,85,597,910,408,492,584);
         this.WORM_COORDS[860] = new Array(944,274,154,259,503,345,678,262,1292,427,1042,290,403,188,564,391,1081,605,373,271,38,380,1123,263,1202,315,126,627,1288,597,429,561,1264,338,925,413,368,333,247,146);
         this.WORM_COORDS[861] = new Array(508,355,440,191,1129,509,930,271,970,379,724,238,36,380,1058,300,1109,259,648,597,456,335,810,211,97,289,325,254,234,283,644,209,1007,295,265,182,323,588,581,602);
         this.WORM_COORDS[862] = new Array(0,360,208,304,583,409,893,222,365,269,788,216,615,636,666,205,698,255,975,371,1024,289,1298,626,279,236,1265,338,471,335,758,601,143,258,1078,312,1287,421,614,507);
         this.WORM_COORDS[863] = new Array(1007,501,157,262,466,335,1028,288,571,577,845,493,407,378,54,388,1193,314,831,207,1088,314,1260,335,829,559,1148,261,84,306,261,163,1102,610,354,264,744,230,817,315);
         this.WORM_COORDS[864] = new Array(649,206,621,636,1295,428,456,476,1123,263,1100,610,756,227,38,380,441,536,947,279,687,263,1011,292,360,268,1274,344,95,605,609,534,515,376,144,258,899,564,313,593);
         this.WORM_COORDS[865] = new Array(220,302,530,364,1055,299,601,328,606,633,1005,298,339,260,69,616,1205,317,649,206,484,589,410,580,911,260,637,393,1075,605,793,216,92,295,620,485,47,385,878,556);
         this.WORM_COORDS[866] = new Array(88,299,1232,554,995,305,521,381,437,366,1252,331,1176,254,804,212,70,525,336,257,524,551,1107,259,336,489,739,232,851,312,68,390,286,595,1200,315,856,608,594,331);
         this.WORM_COORDS[867] = new Array(1289,601,738,232,1293,427,1115,259,514,376,607,239,303,599,62,393,933,274,956,405,839,200,376,273,837,576,318,253,564,391,1063,303,179,281,1175,253,436,182,1194,314);
         this.WORM_COORDS[868] = new Array(540,365,1123,263,1258,335,311,254,363,268,876,197,1201,315,912,260,468,335,64,393,1290,425,142,257,591,332,725,238,979,360,892,561,1176,254,90,298,1011,292,1266,567);
         this.WORM_COORDS[869] = new Array(946,279,183,282,388,202,566,393,1295,617,542,520,89,601,743,230,327,258,1116,259,38,380,1267,338,862,607,770,565,1173,613,958,401,854,199,1262,566,1299,439,442,195);
         this.WORM_COORDS[870] = new Array(403,585,1001,299,265,182,1234,323,554,381,842,200,573,585,605,239,361,512,149,258,29,375,495,342,974,373,316,336,714,243,777,221,1283,586,494,583,1065,304,1119,263);
         this.WORM_COORDS[871] = new Array(1092,268,553,379,262,170,1019,577,1232,554,503,572,888,222,1258,335,633,216,149,258,1075,605,942,274,387,203,491,342,58,392,52,640,872,295,363,512,326,334,314,253);
         this.WORM_COORDS[872] = new Array(405,188,1290,603,936,275,771,223,296,237,227,293,458,335,708,246,1012,292,953,409,1037,611,1068,308,881,234,652,385,1260,335,26,374,1208,317,575,402,460,468,600,629);
         this.WORM_COORDS[873] = new Array(1211,546,1113,259,1019,289,819,543,733,235,156,259,882,232,557,537,53,388,516,377,940,274,413,182,820,207,270,206,1295,428,54,640,88,299,439,364,1273,343,570,396);
         this.WORM_COORDS[874] = new Array(1230,323,584,409,1092,268,702,252,865,196,597,329,60,392,1006,501,994,309,93,293,402,586,517,377,1107,614,246,146,183,282,1263,566,756,227,103,504,908,258,556,535);
         this.WORM_COORDS[875] = new Array(357,264,1092,607,495,342,105,281,1162,255,1199,315,412,184,569,571,8,362,545,371,1172,613,842,200,59,392,607,633,603,244,1277,347,306,253,507,570,1091,269,63,620);
         this.WORM_COORDS[876] = new Array(620,636,901,240,208,304,984,340,577,402,832,207,309,254,473,335,1289,424,1096,260,1139,588,158,262,675,248,1164,254,1020,289,856,474,419,182,1219,321,1280,581,769,223);
         this.WORM_COORDS[877] = new Array(1040,290,1082,605,230,288,1292,427,500,343,431,561,85,303,1243,328,53,640,843,607,322,254,768,223,570,574,968,384,694,257,756,602,439,185,40,380,483,590,949,280);
         this.WORM_COORDS[878] = new Array(1091,269,1095,607,1014,292,329,258,493,342,714,243,219,302,924,412,89,601,1215,317,632,218,931,271,1158,256,91,296,574,402,394,196,570,574,24,372,597,329,409,586);
         this.WORM_COORDS[879] = new Array(979,360,666,205,577,591,142,623,193,290,565,392,370,512,826,206,94,293,453,335,1170,253,517,559,1224,551,1117,259,1202,315,68,618,278,591,768,223,309,339,1113,536);
         this.WORM_COORDS[880] = new Array(1065,476,734,234,851,199,1072,310,1095,260,1184,308,452,336,1297,624,919,266,60,392,655,203,906,566,908,408,532,364,480,594,143,258,597,623,1143,588,1269,342,972,378);
         this.WORM_COORDS[881] = new Array(797,537,596,622,160,263,765,225,643,209,504,346,982,351,851,199,65,393,1065,304,1141,263,561,389,1225,321,906,252,234,283,56,641,885,558,90,298,559,543,936,415);
         this.WORM_COORDS[882] = new Array(668,208,458,335,594,622,1081,312,917,266,209,304,4,360,407,378,993,311,345,261,413,182,682,269,1253,331,1291,426,354,323,407,585,1225,551,63,393,82,309,901,565);
         this.WORM_COORDS[883] = new Array(801,214,1097,259,551,378,1088,314,1197,314,459,335,208,304,1282,416,67,390,909,260,969,381,72,335,1,360,738,232,367,512,127,263,258,154,598,626,628,402,988,320);
         this.WORM_COORDS[884] = new Array(330,258,39,380,391,540,868,299,989,532,119,268,1247,476,560,385,775,221,1143,263,1251,561,975,371,612,234,946,279,570,574,1210,318,471,335,1187,602,1009,293,1268,341);
         this.WORM_COORDS[885] = new Array(1070,308,459,335,847,313,911,260,351,264,276,587,786,217,466,579,205,300,62,393,551,378,861,196,444,199,580,599,106,280,1209,317,543,520,1142,263,644,390,869,558);
         this.WORM_COORDS[886] = new Array(388,202,472,596,90,298,239,276,1115,259,358,264,1022,289,1286,420,891,222,726,238,323,588,442,195,581,602,186,284,45,385,915,566,547,520,835,204,1229,554,949,280);
         this.WORM_COORDS[887] = new Array(1079,479,1016,291,564,391,1298,432,982,351,1066,304,303,599,859,607,240,276,548,521,462,335,1188,308,862,196,13,363,301,341,911,260,1161,255,346,263,1250,561,784,220);
         this.WORM_COORDS[888] = new Array(1103,259,704,249,400,581,2,360,371,271,452,336,262,170,97,289,642,209,528,392,180,282,234,283,1249,561,417,182,1130,588,889,222,1017,291,69,389,1277,347,323,588);
         this.WORM_COORDS[889] = new Array(1044,609,899,234,1202,315,50,388,1132,263,1082,479,1033,290,707,246,502,573,539,365,592,620,1297,431,813,210,191,290,104,604,343,517,390,198,291,599,126,263,347,263);
         this.WORM_COORDS[890] = new Array(841,200,260,163,206,300,756,227,665,574,399,578,510,362,635,214,69,389,1054,298,1294,428,983,345,863,607,282,239,1088,608,1237,329,420,181,1136,263,946,412,918,266);
         this.WORM_COORDS[891] = new Array(918,266,529,543,1244,328,146,258,223,301,467,335,465,578,405,378,575,402,426,180,1185,308,1107,259,350,263,819,207,754,228,861,465,1275,411,292,237,1046,290,359,512);
         this.WORM_COORDS[892] = new Array(537,527,1148,261,625,223,0,360,867,603,1056,299,1278,412,280,594,681,270,563,390,843,200,213,304,390,198,125,266,374,271,864,304,959,398,447,209,1074,476,1004,298);
         this.WORM_COORDS[893] = new Array(1194,314,821,207,309,254,1101,259,27,375,479,342,283,595,645,209,447,209,1283,416,925,269,1202,537,372,342,1038,610,907,407,1268,341,755,228,957,404,202,300,580,599);
         this.WORM_COORDS[894] = new Array(589,409,1122,263,617,229,336,257,59,392,382,524,869,558,119,268,1271,342,387,203,1286,420,574,587,262,170,440,191,448,504,183,282,436,556,926,413,472,335,1031,288);
         this.WORM_COORDS[895] = new Array(609,238,545,371,152,258,1220,321,884,226,1109,259,832,207,450,222,1068,606,1045,290,501,574,6,362,357,264,835,571,389,199,99,286,408,585,399,377,871,298,741,232);
         this.WORM_COORDS[896] = new Array(212,304,147,258,79,311,1279,580,1058,300,946,412,18,368,1280,415,745,230,382,361,582,409,408,186,641,211,802,214,1300,639,307,253,1218,321,509,356,845,607,1109,616);
         this.WORM_COORDS[897] = new Array(459,335,477,597,811,313,256,149,185,283,293,237,13,363,640,212,749,230,401,586,538,364,965,390,1018,290,1046,609,69,389,1131,263,73,331,1100,610,1271,410,1020,502);
         this.WORM_COORDS[898] = new Array(966,388,1,360,840,504,256,252,1292,608,125,266,494,583,331,257,652,205,1044,290,506,350,827,206,696,257,95,605,1015,501,199,297,936,275,835,571,577,402,388,202);
         this.WORM_COORDS[899] = new Array(1075,605,590,409,294,600,1183,308,1056,299,766,225,15,364,920,566,102,284,1124,263,513,376,1002,298,1289,424,189,290,280,237,371,271,716,241,114,624,904,249,411,575);
         this.WORM_COORDS[900] = new Array(846,417,1093,298,121,526,613,451,424,207,720,424,74,468,1175,316,357,232,801,544,10,517,663,355,447,291,1286,448,309,171,548,391,912,421,3,593,1225,336,143,300);
         this.WORM_COORDS[901] = new Array(754,405,931,441,103,506,1082,299,462,299,1240,354,541,384,162,247,983,411,278,163,853,389,672,474,670,358,897,551,9,584,424,207,1282,435,254,219,333,168,1052,351);
         this.WORM_COORDS[902] = new Array(249,200,650,351,1002,431,920,429,175,539,101,507,350,220,0,598,343,170,1113,310,817,507,1264,397,767,402,1043,324,848,417,192,187,1025,270,688,457,465,304,521,343);
         this.WORM_COORDS[903] = new Array(1279,431,810,522,760,403,98,479,18,454,674,362,0,598,1053,354,972,412,840,419,1213,311,287,167,1036,291,922,430,255,217,461,297,562,394,134,300,1247,365,378,235);
         this.WORM_COORDS[904] = new Array(1230,346,135,300,710,431,203,174,478,326,800,416,604,450,76,468,12,509,174,239,213,530,352,222,1171,320,675,362,7,588,926,436,547,391,1080,301,814,514,1267,402);
         this.WORM_COORDS[905] = new Array(823,497,289,167,974,411,153,297,1176,315,703,438,1259,389,446,292,900,416,124,525,1033,281,609,452,167,592,524,351,1024,356,1034,464,1291,457,369,238,162,247,574,388);
         this.WORM_COORDS[906] = new Array(15,455,740,414,492,334,302,171,1112,309,238,176,88,471,1018,450,658,352,940,449,791,403,895,394,120,302,204,534,394,226,790,552,1044,324,441,293,1,595,1169,322);
         this.WORM_COORDS[907] = new Array(79,468,1054,354,803,543,586,389,907,420,504,336,1084,299,739,414,133,300,10,517,1268,404,218,528,649,351,416,210,27,462,184,236,1238,353,850,394,1182,309,1033,281);
         this.WORM_COORDS[908] = new Array(1209,308,101,507,1030,271,1289,455,767,402,1128,321,597,433,667,357,522,343,43,489,691,452,1,595,332,168,426,300,859,386,811,521,922,430,424,207,979,410,1058,352);
         this.WORM_COORDS[909] = new Array(81,468,957,427,428,299,499,335,115,303,640,354,840,419,824,496,587,390,1264,397,207,171,1017,352,1125,319,746,410,891,389,333,168,1212,311,9,584,139,526,608,452);
         this.WORM_COORDS[910] = new Array(699,443,344,177,627,357,563,395,1027,270,1025,465,15,455,902,417,235,174,145,300,1224,335,1152,340,413,339,1096,302,1292,460,412,213,954,431,164,245,1021,354,123,525);
         this.WORM_COORDS[911] = new Array(574,388,742,412,105,505,611,452,494,334,172,240,1244,362,831,424,632,356,116,303,187,537,691,452,412,213,1054,354,1292,460,1156,341,419,305,804,538,41,486,332,168);
         this.WORM_COORDS[912] = new Array(1293,463,719,424,997,430,1037,292,1060,352,148,529,867,383,367,238,601,449,678,364,809,525,116,303,772,401,1154,340,57,472,932,443,579,388,1249,370,1,595,476,323);
         this.WORM_COORDS[913] = new Array(812,520,383,234,960,421,550,391,1286,448,469,309,72,468,638,354,1190,306,14,506,244,188,1006,366,609,452,1063,352,777,402,136,300,876,542,1120,314,871,383,719,424);
         this.WORM_COORDS[914] = new Array(341,169,669,358,1093,298,785,556,849,394,706,438,758,403,1257,383,47,494,436,295,145,300,611,452,554,394,489,331,965,415,178,538,238,498,837,491,1182,309,913,424);
         this.WORM_COORDS[915] = new Array(813,519,1133,326,594,411,749,407,123,525,242,493,625,359,11,580,680,365,220,169,1271,412,1081,299,862,385,392,227,1219,323,447,291,183,236,936,447,137,365,35,474);
         this.WORM_COORDS[916] = new Array(70,468,1136,328,369,238,1002,431,163,572,529,372,952,434,771,401,461,297,1060,352,154,296,660,355,293,170,586,389,166,242,208,171,1262,394,11,513,881,545,1286,448);
         this.WORM_COORDS[917] = new Array(122,300,1263,395,717,427,938,448,1219,323,616,364,1060,352,488,331,682,369,75,468,815,514,783,401,565,395,164,245,8,586,891,389,1087,299,1144,335,770,568,1003,432);
         this.WORM_COORDS[918] = new Array(719,424,587,390,47,494,937,448,791,552,417,209,1219,323,847,417,479,328,654,352,1229,636,607,450,308,171,1284,440,1253,378,821,499,1080,301,145,300,775,401,1056,354);
         this.WORM_COORDS[919] = new Array(1298,476,609,452,640,354,909,421,725,422,1045,331,233,510,1225,336,386,232,433,297,800,416,1131,323,562,394,483,331,77,468,851,391,306,171,843,491,767,569,896,549);
         this.WORM_COORDS[920] = new Array(739,414,609,452,424,302,1098,301,394,226,1238,353,825,495,103,506,258,212,548,391,683,370,1153,340,926,436,887,386,1273,414,500,336,200,534,1046,341,988,419,1,595);
         this.WORM_COORDS[921] = new Array(904,549,391,229,253,208,167,241,567,394,862,385,60,471,221,524,1096,302,941,449,405,342,777,402,1253,378,1280,432,721,424,1190,306,119,526,1018,352,672,362,147,298);
         this.WORM_COORDS[922] = new Array(489,331,700,443,999,431,134,381,76,468,353,223,127,300,318,171,834,420,1107,305,749,537,403,219,557,394,120,526,1300,480,1015,352,201,175,266,189,664,357,18,454);
         this.WORM_COORDS[923] = new Array(726,420,918,429,159,563,356,230,874,529,586,389,100,507,1253,378,181,237,468,307,850,394,192,187,1071,305,114,303,26,459,261,212,9,584,1123,318,980,410,426,207);
         this.WORM_COORDS[924] = new Array(518,343,896,397,20,454,645,352,1161,343,6,590,1024,270,767,402,611,452,1094,301,706,438,83,470,303,171,146,299,1220,324,999,431,204,534,565,395,1277,426,138,525);
         this.WORM_COORDS[925] = new Array(414,338,244,188,1146,335,355,229,665,357,1283,437,814,514,28,463,1044,324,189,194,1030,271,768,402,852,390,138,300,688,457,990,422,563,395,918,429,95,475,501,336);
         this.WORM_COORDS[926] = new Array(209,171,471,317,769,402,876,383,1284,440,678,364,555,394,362,235,1156,341,266,189,621,360,0,598,14,506,1230,346,794,549,412,213,182,538,85,470,1098,301,1002,431);
         this.WORM_COORDS[927] = new Array(706,438,1235,353,495,334,1007,362,57,472,429,299,902,417,887,548,834,491,219,527,1031,273,663,355,1115,310,986,413,791,403,1059,352,110,507,600,447,238,176,847,417);
         this.WORM_COORDS[928] = new Array(701,443,841,419,1223,572,572,391,405,219,6,590,631,356,1053,354,1105,305,1239,354,442,293,104,505,286,167,1283,437,230,170,193,535,943,453,785,401,117,303,601,449);
         this.WORM_COORDS[929] = new Array(17,454,429,299,1184,308,593,406,741,413,249,200,177,237,102,506,849,394,14,506,682,369,965,415,1105,305,1049,349,516,338,793,403,690,453,1241,359,803,543,331,168);
         this.WORM_COORDS[930] = new Array(530,374,893,391,126,300,796,407,692,452,587,390,1084,299,1031,273,942,453,14,506,18,454,77,468,826,494,1196,304,168,549,389,232,1143,335,461,297,604,450,305,171);
         this.WORM_COORDS[931] = new Array(1016,352,1145,335,634,356,722,424,1020,272,381,234,1095,302,535,380,14,506,78,468,1285,441,951,438,0,598,802,544,168,241,1199,304,268,164,212,170,790,403,480,328);
         this.WORM_COORDS[932] = new Array(834,420,1041,309,4,592,965,415,70,468,389,232,1139,331,512,338,124,300,433,297,1288,452,295,170,649,351,603,450,1204,304,1256,382,157,562,708,434,898,416,783,401);
         this.WORM_COORDS[933] = new Array(1036,291,977,410,207,533,105,505,179,237,1294,467,1245,362,676,364,1127,320,0,598,622,360,1009,355,513,338,786,401,1211,309,227,169,411,213,825,495,924,435,867,383);
         this.WORM_COORDS[934] = new Array(59,471,851,391,729,420,517,342,130,300,178,237,681,368,568,393,444,293,1258,385,5,591,1023,270,1017,352,965,415,206,172,280,164,1145,335,877,542,813,519,621,360);
         this.WORM_COORDS[935] = new Array(1147,335,193,186,98,479,24,454,639,354,834,420,331,168,1254,380,689,456,825,495,246,483,961,419,472,318,1288,452,770,402,172,541,595,415,3,593,893,391,157,293);
         this.WORM_COORDS[936] = new Array(992,426,1112,309,211,531,151,531,359,235,166,242,511,338,1238,353,40,484,806,532,92,472,573,390,833,421,123,300,1038,297,929,437,1062,352,721,424,315,171,419,207);
         this.WORM_COORDS[937] = new Array(605,450,1155,340,864,385,980,410,44,490,1052,351,557,394,223,523,1273,414,792,403,826,494,465,304,365,238,799,545,722,424,651,351,257,212,1089,298,103,506,896,549);
         this.WORM_COORDS[938] = new Array(718,426,596,421,1292,460,971,412,452,291,29,464,399,224,894,391,236,175,1017,352,1179,312,317,171,532,375,879,545,1258,385,817,507,646,352,155,293,1,595,89,471);
         this.WORM_COORDS[939] = new Array(442,293,1020,353,344,177,534,377,938,448,59,471,1286,448,242,185,697,447,761,403,382,234,110,507,211,531,1190,306,9,584,127,300,867,383,610,452,1004,434,174,239);
         this.WORM_COORDS[940] = new Array(922,430,986,413,754,405,1162,336,14,506,835,420,1293,463,688,457,88,471,557,394,1097,301,811,521,637,354,1034,282,168,549,288,167,431,298,186,236,1026,360,517,342);
         this.WORM_COORDS[941] = new Array(721,424,982,411,930,439,798,409,104,505,821,499,148,297,859,386,459,293,1272,414,592,402,1210,308,226,169,28,463,678,364,210,532,103,560,1117,313,534,377,753,539);
         this.WORM_COORDS[942] = new Array(326,168,742,412,634,356,544,386,228,169,792,403,91,472,1190,306,788,553,1269,408,1056,354,957,427,118,303,1138,328,33,472,387,232,138,525,876,542,1031,464,465,304);
         this.WORM_COORDS[943] = new Array(1236,353,896,397,1021,354,2,593,740,414,643,353,108,505,389,232,205,173,1085,299,946,452,674,422,54,475,187,236,510,338,815,514,1169,322,259,212,417,312,155,293);
         this.WORM_COORDS[944] = new Array(890,388,1012,355,810,522,1189,306,301,171,121,301,573,390,794,404,506,338,7,588,694,451,1262,394,1128,321,223,169,11,513,165,594,98,479,1063,352,362,235,943,453);
         this.WORM_COORDS[945] = new Array(1116,311,945,453,550,391,1209,308,154,296,310,171,1277,426,415,212,663,355,187,236,101,507,599,445,509,339,1028,270,11,513,430,299,843,419,752,407,163,572,698,444);
         this.WORM_COORDS[946] = new Array(859,386,795,549,611,452,796,407,1076,303,1128,321,736,414,1284,440,997,430,103,506,562,394,347,217,613,365,509,339,827,494,686,424,1013,355,1,595,290,168,1242,360);
         this.WORM_COORDS[947] = new Array(548,391,813,519,655,352,94,474,167,592,484,331,1286,448,833,421,201,175,166,242,34,473,4,592,1152,340,1078,302,1024,270,698,444,774,401,385,233,941,449,418,307);
         this.WORM_COORDS[948] = new Array(1057,352,280,164,1007,362,1224,335,523,345,911,421,33,472,451,291,416,210,714,429,605,450,4,592,1142,335,1023,270,791,403,1000,431,355,229,85,470,146,299,842,419);
         this.WORM_COORDS[949] = new Array(602,450,1034,282,240,180,516,338,51,480,861,385,1207,306,1266,401,172,541,715,428,383,234,673,362,340,169,768,402,175,239,1007,435,945,453,826,494,101,507,443,293);
         this.WORM_COORDS[950] = new Array(690,453,156,562,521,343,152,297,906,417,1012,355,77,468,1023,270,210,532,623,360,1221,328,434,297,26,459,6,590,174,239,1272,414,1294,467,239,178,378,343,1099,301);
         this.WORM_COORDS[951] = new Array(175,239,1257,383,405,342,776,566,15,455,826,494,731,420,531,374,73,468,616,364,1008,359,129,301,8,586,167,592,1131,323,842,419,909,421,788,401,419,207,245,191);
         this.WORM_COORDS[952] = new Array(430,299,56,473,159,288,665,357,819,504,1228,341,895,394,500,336,371,239,424,207,296,170,723,424,958,425,828,424,1048,347,592,402,229,170,1116,311,110,507,1026,270);
         this.WORM_COORDS[953] = new Array(190,193,809,525,52,479,1171,320,734,417,909,421,293,170,425,207,173,541,1018,352,1026,270,1300,480,580,388,673,362,527,366,14,574,448,291,1103,301,748,537,1001,431);
         this.WORM_COORDS[954] = new Array(391,229,209,171,676,471,825,495,325,168,1234,353,514,338,853,389,1087,299,167,241,34,473,626,359,102,506,941,449,1002,431,1030,271,785,556,269,163,754,405,1164,332);
         this.WORM_COORDS[955] = new Array(860,385,536,382,91,472,592,402,912,421,994,427,1180,311,660,355,387,232,1035,286,32,471,815,514,279,164,1259,389,162,570,893,549,200,176,748,408,154,296,1291,457);
         this.WORM_COORDS[956] = new Array(823,497,1229,636,1169,322,551,393,1288,452,57,472,1236,353,933,443,407,218,1030,271,1055,354,706,438,488,331,343,170,890,388,780,402,685,371,236,503,631,356,1109,305);
         this.WORM_COORDS[957] = new Array(1032,277,774,401,1225,632,405,219,549,391,883,385,708,434,891,549,1203,304,162,247,427,299,802,544,1272,414,318,171,826,494,205,173,11,513,1053,354,487,331,4,592);
         this.WORM_COORDS[958] = new Array(895,394,799,411,1050,349,32,471,1245,362,712,431,1202,304,642,354,325,168,88,471,376,235,1291,457,971,412,264,210,572,391,1035,286,806,532,1087,299,486,331,129,525);
         this.WORM_COORDS[959] = new Array(90,471,1007,362,459,293,164,595,660,355,993,427,121,301,682,424,739,414,798,409,564,395,823,497,919,429,764,570,1068,312,396,226,282,165,1,595,1259,389,31,469);
         this.WORM_COORDS[960] = new Array(912,421,702,441,666,357,491,334,174,540,45,491,1201,304,616,364,158,292,781,558,120,526,1218,547,817,507,790,403,203,174,316,171,1284,440,1098,301,1060,352,435,297);
         this.WORM_COORDS[961] = new Array(762,403,460,294,349,220,101,507,885,385,49,497,1079,301,1055,354,619,360,603,450,528,367,833,421,171,543,380,343,182,237,1205,306,166,593,342,169,819,504,960,421);
         this.WORM_COORDS[962] = new Array(841,419,1046,341,524,351,588,390,1226,338,43,489,1160,344,1296,470,603,450,143,300,969,412,899,416,683,370,380,235,1108,305,93,473,229,515,1027,270,785,556,720,424);
         this.WORM_COORDS[963] = new Array(941,449,720,424,37,481,992,426,175,539,216,169,1120,314,534,377,356,230,284,166,1028,270,1281,433,124,300,106,505,643,353,802,544,904,549,612,452,448,291,876,383);
         this.WORM_COORDS[964] = new Array(550,391,774,566,949,448,1031,273,348,219,174,239,96,476,145,300,700,443,682,369,624,359,1011,355,871,383,508,339,1101,301,757,403,1227,339,148,529,1268,404,449,291);
         this.WORM_COORDS[965] = new Array(1017,352,565,395,763,403,951,438,1069,309,47,494,810,522,257,212,641,354,140,300,318,171,385,233,743,537,496,334,187,236,213,530,1130,323,862,385,692,452,6,590);
         this.WORM_COORDS[966] = new Array(26,459,1121,314,476,323,606,450,899,416,791,403,696,448,646,352,124,300,543,386,1216,315,955,430,1044,324,405,219,1298,476,9,584,236,175,824,496,1225,632,1274,417);
         this.WORM_COORDS[967] = new Array(62,470,280,164,819,504,1160,344,650,351,1048,347,169,546,688,457,921,429,413,213,1287,450,742,412,118,303,557,394,112,507,478,326,205,173,599,445,846,417,1218,321);
         this.WORM_COORDS[968] = new Array(702,441,1275,419,1059,352,618,361,443,293,191,191,407,218,1090,298,816,510,937,448,991,423,529,372,870,383,1212,311,347,217,1147,335,26,459,224,523,106,505,0,598);
         this.WORM_COORDS[969] = new Array(1066,313,888,548,1001,431,560,394,686,424,907,420,781,401,1125,319,497,334,1185,308,113,507,849,394,52,479,162,570,428,299,363,236,1011,355,307,171,643,353,157,293);
         this.WORM_COORDS[970] = new Array(805,537,976,410,760,403,451,291,1146,335,881,545,678,364,382,234,578,388,866,383,1035,286,242,185,109,505,29,464,1220,555,613,451,144,301,1200,304,1298,476,695,449);
         this.WORM_COORDS[971] = new Array(890,388,570,393,200,176,154,535,652,351,86,470,963,416,1296,470,694,451,414,213,616,451,1245,362,790,403,343,170,428,299,1023,270,1192,304,159,288,358,232,1123,318);
         this.WORM_COORDS[972] = new Array(146,528,378,235,291,170,1017,352,7,588,844,418,1190,306,167,241,1077,302,560,394,1254,380,641,354,713,430,1225,632,143,300,900,416,513,338,93,473,897,551,23,454);
         this.WORM_COORDS[973] = new Array(310,171,103,506,156,293,1208,308,1295,468,1061,352,21,454,1143,335,647,481,712,431,377,235,923,431,457,293,533,376,781,401,857,386,646,352,803,543,844,491,1093,298);
         this.WORM_COORDS[974] = new Array(110,507,949,448,1186,308,628,357,714,429,446,292,609,452,12,509,811,521,179,237,257,212,1055,354,510,338,766,402,1031,273,233,510,19,454,833,421,133,300,571,392);
         this.WORM_COORDS[975] = new Array(505,336,816,510,549,391,67,468,143,526,424,207,158,292,1254,380,1045,331,1180,311,856,387,726,420,952,434,422,302,131,389,1293,463,796,407,620,360,680,365,1130,323);
         this.WORM_COORDS[976] = new Array(1146,335,89,471,936,447,789,403,738,414,555,394,203,174,522,343,649,351,1241,359,807,528,864,385,9,584,1078,302,392,227,1287,450,433,297,312,171,138,300,15,455);
         this.WORM_COORDS[977] = new Array(947,452,564,395,1161,343,244,188,464,302,602,450,1068,312,117,303,1272,414,692,452,840,419,661,355,164,595,997,430,368,238,39,483,756,403,1298,476,1221,328,110,507);
         this.WORM_COORDS[978] = new Array(946,452,579,388,754,405,890,388,789,552,270,163,394,226,197,535,1060,352,607,450,670,358,109,505,167,592,1205,306,23,454,438,293,13,508,335,168,1005,435,1260,391);
         this.WORM_COORDS[979] = new Array(975,410,1124,319,786,401,924,435,505,336,721,424,259,212,55,474,1297,472,576,388,341,169,1268,404,668,358,607,450,145,300,144,527,1198,304,405,342,167,592,401,221);
         this.WORM_COORDS[980] = new Array(1270,411,880,383,1189,306,40,484,129,301,618,361,238,498,472,318,806,532,1071,305,944,453,782,401,1019,352,240,180,1134,328,535,380,117,511,4,592,876,542,619,447);
         this.WORM_COORDS[981] = new Array(10,517,683,370,1038,297,439,293,1059,352,690,453,1141,334,561,394,153,533,767,402,221,169,797,547,82,469,1213,311,341,169,1003,432,848,417,916,428,30,466,415,212);
         this.WORM_COORDS[982] = new Array(6,590,1236,353,831,424,779,403,825,495,933,443,595,415,1049,349,767,569,317,171,1281,433,984,411,23,454,1104,302,615,365,720,424,418,208,93,473,499,335,129,525);
         this.WORM_COORDS[983] = new Array(507,339,860,385,1041,309,20,454,1150,336,1237,353,954,431,1098,301,116,303,420,305,420,207,812,520,659,354,778,403,161,566,572,391,724,423,1274,417,349,220,343,170);
         this.WORM_COORDS[984] = new Array(144,301,481,329,797,408,953,433,650,351,544,386,1156,341,1010,355,110,507,880,383,1219,323,31,469,327,168,601,449,1071,305,705,438,10,582,1286,448,1257,383,349,220);
         this.WORM_COORDS[985] = new Array(1239,354,904,417,1087,299,425,207,527,366,807,528,1193,304,365,238,749,407,132,385,469,309,1300,480,634,356,1029,364,272,163,205,534,4,592,67,468,142,300,613,451);
         this.WORM_COORDS[986] = new Array(1106,305,1170,321,587,390,93,473,208,533,704,438,604,450,824,496,2,593,370,240,290,168,675,362,829,424,893,549,1040,308,886,385,770,402,1279,431,425,207,232,171);
         this.WORM_COORDS[987] = new Array(1137,328,788,401,63,470,597,433,1029,270,252,208,859,501,1230,346,1002,431,311,171,879,383,925,436,116,303,503,336,1052,351,1081,299,392,227,694,451,673,362,437,295);
         this.WORM_COORDS[988] = new Array(14,506,536,382,353,223,761,403,950,444,8,586,283,165,680,365,610,452,420,207,693,452,1036,291,1163,332,108,505,866,383,587,390,823,497,228,169,1223,334,1051,350);
         this.WORM_COORDS[989] = new Array(1071,305,665,357,978,410,1154,340,746,410,7,588,286,167,1263,395,581,388,1224,335,898,416,159,288,210,170,136,525,458,293,527,366,807,528,36,476,371,239,611,452);
         this.WORM_COORDS[990] = new Array(1296,470,783,401,10,517,410,213,962,417,1007,362,298,171,117,303,1151,340,68,468,717,427,455,293,881,545,1036,291,812,520,659,354,846,417,1208,308,357,232,1248,369);
         this.WORM_COORDS[991] = new Array(967,415,97,479,1062,352,172,541,114,303,840,419,444,293,688,457,761,403,1212,311,1103,301,803,543,503,336,39,483,279,164,901,416,1010,355,629,356,170,241,595,415);
         this.WORM_COORDS[992] = new Array(765,402,1225,336,813,519,661,355,956,429,65,469,426,207,197,179,133,525,1135,328,478,326,257,212,565,395,698,444,856,387,765,569,130,300,5,591,1066,313,1007,362);
         this.WORM_COORDS[993] = new Array(701,443,872,518,469,309,919,429,262,212,1145,335,401,221,843,419,197,179,557,394,979,410,772,401,1062,352,641,354,1213,311,77,468,1259,389,146,299,9,584,522,343);
         this.WORM_COORDS[994] = new Array(822,498,215,169,1157,343,265,209,1068,312,1241,359,4,592,681,368,611,452,182,237,458,293,41,486,742,412,566,395,990,422,897,398,391,229,238,498,1209,308,846,417);
         this.WORM_COORDS[995] = new Array(1198,304,354,227,141,526,536,382,131,389,786,401,883,545,801,544,284,166,75,468,864,385,1300,480,714,429,1096,302,122,300,190,193,978,410,448,291,587,390,1034,282);
         this.WORM_COORDS[996] = new Array(1189,306,710,431,507,339,962,417,1257,383,412,213,441,293,174,540,781,401,73,468,126,300,1282,435,316,171,22,454,883,385,217,169,672,362,1045,331,6,590,579,388);
         this.WORM_COORDS[997] = new Array(949,448,680,365,612,452,713,430,11,513,860,385,327,168,789,403,795,549,503,336,1219,323,1024,270,572,391,366,238,153,533,1262,394,1116,311,150,297,896,549,68,468);
         this.WORM_COORDS[998] = new Array(1257,383,979,410,92,472,869,383,519,343,203,174,1092,298,1180,311,315,171,666,357,706,438,925,436,427,299,10,517,598,439,1293,463,582,388,9,584,1029,270,777,564);
         this.WORM_COORDS[999] = new Array(454,292,100,507,810,522,1116,311,648,351,840,419,961,419,1285,441,572,391,266,189,752,407,30,466,1042,316,242,493,1257,383,148,297,165,594,171,240,135,377,2,593);
      }
      
      public function init_coords_rolitrad() : *
      {
         this.WORM_COORDS[1000] = new Array(1,394,1027,212,739,431,937,195,1218,357,1183,225,62,394,168,250,507,269,558,294,474,201,246,364,974,495,1062,290,373,279,77,579,636,305,792,428,588,420,841,600);
         this.WORM_COORDS[1001] = new Array(347,371,68,394,53,589,780,265,14,392,680,253,1107,240,994,213,470,205,858,553,1234,358,1204,222,1118,545,498,259,847,252,112,228,907,346,1291,412,243,371,179,251);
         this.WORM_COORDS[1002] = new Array(787,367,1098,242,884,334,505,269,732,445,159,248,372,280,1221,226,1013,467,1005,209,689,252,1270,417,28,392,241,377,1162,197,79,396,442,235,298,331,1044,269,585,418);
         this.WORM_COORDS[1003] = new Array(138,217,1218,357,0,395,705,258,292,334,552,292,760,425,344,370,1265,420,965,202,584,416,850,252,502,267,411,218,235,384,1111,239,1015,467,484,204,89,397,1180,225);
         this.WORM_COORDS[1004] = new Array(341,365,1019,464,785,262,7,393,1240,363,386,208,531,281,610,568,768,426,178,251,684,253,1191,222,590,422,1010,209,844,253,1299,415,1047,276,939,335,939,196,165,395);
         this.WORM_COORDS[1005] = new Array(1124,216,360,369,712,263,891,339,655,256,722,462,941,197,234,383,956,410,362,288,65,582,410,216,161,384,287,339,863,255,543,288,786,262,1026,212,839,603,1051,305);
         this.WORM_COORDS[1006] = new Array(960,202,24,392,877,291,1118,220,759,425,1049,282,174,425,262,354,387,207,815,270,552,292,361,369,897,342,1030,462,106,240,1210,355,1299,415,167,250,454,227,91,397);
         this.WORM_COORDS[1007] = new Array(1037,221,92,311,707,259,1060,294,375,278,357,370,1228,357,1294,412,745,426,974,495,612,416,1101,241,282,343,1188,223,121,220,937,195,207,268,1178,352,830,405,58,393);
         this.WORM_COORDS[1008] = new Array(1058,296,360,369,290,336,155,364,746,426,1200,222,601,425,136,214,911,641,572,364,797,262,8,392,28,593,416,223,1291,412,361,288,83,396,985,494,639,569,890,339);
         this.WORM_COORDS[1009] = new Array(320,318,243,371,1044,269,1189,223,1030,462,792,261,132,214,970,452,36,392,767,426,954,202,698,597,721,274,349,372,378,276,1137,197,454,227,846,252,89,397,1297,413);
         this.WORM_COORDS[1010] = new Array(979,498,912,641,967,203,187,432,624,361,63,394,427,231,1071,274,485,206,225,368,688,252,677,599,1288,413,698,441,1196,222,597,425,530,281,1030,213,350,371,212,274);
         this.WORM_COORDS[1011] = new Array(713,264,170,250,1108,511,1298,414,898,343,240,379,304,327,625,357,991,212,457,222,28,392,1062,290,604,423,838,256,788,261,698,441,848,570,1121,219,406,211,355,370);
         this.WORM_COORDS[1012] = new Array(1024,462,882,333,781,385,449,231,503,268,855,253,386,208,222,364,915,189,7,393,1185,223,590,422,1065,285,724,279,979,208,83,396,195,419,732,445,98,307,1216,357);
         this.WORM_COORDS[1013] = new Array(53,393,1051,464,553,292,323,316,187,256,997,212,666,593,616,407,751,425,961,417,1293,412,1155,197,120,221,1084,256,675,253,923,190,480,202,819,269,202,410,857,555);
         this.WORM_COORDS[1014] = new Array(495,253,552,292,1215,224,223,365,376,277,23,392,288,338,1048,278,355,370,641,283,102,307,1101,241,849,252,889,338,1211,355,153,249,1250,425,581,414,1112,523,415,222);
         this.WORM_COORDS[1015] = new Array(1217,225,615,412,407,212,1021,464,956,410,795,261,554,292,5,393,1039,225,1240,363,720,462,782,382,890,339,314,320,50,589,1129,200,374,278,234,383,457,222,921,190);
         this.WORM_COORDS[1016] = new Array(827,265,512,272,665,254,711,460,840,602,458,220,886,336,259,356,321,318,186,434,593,425,28,392,192,258,782,382,1226,357,1116,534,985,209,106,240,74,579,1040,463);
         this.WORM_COORDS[1017] = new Array(227,371,1194,222,354,370,1066,283,181,440,881,332,1270,417,775,272,682,253,421,226,93,310,142,240,1233,358,62,394,11,392,378,276,1117,221,745,426,64,583,1013,467);
         this.WORM_COORDS[1018] = new Array(458,220,574,409,977,208,1247,425,1192,222,518,274,23,392,827,265,83,396,691,252,1116,222,756,425,1020,464,268,352,909,190,894,341,360,369,157,248,842,598,333,313);
         this.WORM_COORDS[1019] = new Array(1279,413,62,583,991,491,1088,251,300,330,836,257,786,372,719,271,141,236,240,379,422,227,351,371,209,270,100,307,898,343,497,258,1219,226,85,397,748,426,366,286);
         this.WORM_COORDS[1020] = new Array(911,344,729,451,106,240,13,392,1159,197,247,363,1293,412,180,440,301,329,514,272,796,261,700,254,364,287,960,414,1108,240,1212,223,73,395,1010,209,1239,362,450,230);
         this.WORM_COORDS[1021] = new Array(972,205,5,393,932,337,253,358,1073,272,602,424,523,276,306,325,667,254,144,246,458,220,1223,227,210,271,85,397,918,190,568,351,743,427,1207,355,375,278,1292,412);
         this.WORM_COORDS[1022] = new Array(497,258,675,253,1233,358,628,336,1106,505,1265,420,369,282,395,206,62,394,968,203,824,268,313,321,582,591,565,344,1188,223,1046,273,141,236,95,310,759,425,691,431);
         this.WORM_COORDS[1023] = new Array(886,336,862,254,1121,219,1216,224,481,202,1020,464,754,425,186,255,14,392,257,357,1298,414,635,308,668,254,501,265,989,211,621,375,571,359,337,317,82,396,776,270);
         this.WORM_COORDS[1024] = new Array(1158,197,520,275,803,263,587,419,990,211,65,394,1238,361,214,360,627,348,347,371,600,575,957,411,971,477,774,425,176,432,376,277,10,392,1094,245,266,353,79,578);
         this.WORM_COORDS[1025] = new Array(578,412,1176,227,34,592,628,336,354,370,299,331,456,224,398,206,826,267,558,568,221,363,24,392,1017,465,924,340,1248,426,757,425,914,602,715,266,1232,358,548,292);
         this.WORM_COORDS[1026] = new Array(836,257,450,230,688,252,761,425,973,206,117,223,265,353,583,416,1065,285,629,568,630,333,320,318,566,346,500,263,372,280,212,274,693,434,393,206,6,393,890,339);
         this.WORM_COORDS[1027] = new Array(1256,425,604,423,371,281,456,224,202,263,1094,245,1029,462,247,363,769,427,694,253,1058,296,39,392,381,215,557,293,872,261,352,371,639,569,988,211,812,268,1226,357);
         this.WORM_COORDS[1028] = new Array(9,392,969,204,909,190,616,407,1046,273,674,253,78,396,262,354,955,409,796,261,401,208,1034,217,1275,414,459,219,372,280,750,425,105,242,30,593,886,336,855,253);
         this.WORM_COORDS[1029] = new Array(702,597,400,207,720,273,743,427,840,254,41,392,376,277,1120,219,230,376,952,202,1006,209,22,599,1260,424,973,493,668,254,1179,225,110,231,620,383,114,311,304,327);
         this.WORM_COORDS[1030] = new Array(235,384,871,260,322,316,999,480,1085,255,55,393,941,638,787,367,573,408,923,190,162,387,899,344,997,212,4,393,142,240,818,269,39,590,657,256,858,553,207,268);
         this.WORM_COORDS[1031] = new Array(585,418,217,360,1056,298,1002,211,209,270,463,213,911,344,636,305,342,367,723,277,511,271,758,425,826,267,384,210,374,278,1228,357,972,485,1105,241,1284,413,916,189);
         this.WORM_COORDS[1032] = new Array(1283,413,809,266,746,426,506,269,625,357,83,396,611,418,658,255,370,282,1144,196,27,392,219,361,978,208,287,339,145,248,1080,264,190,426,101,307,719,271,450,230);
         this.WORM_COORDS[1033] = new Array(338,322,835,258,708,260,189,258,249,361,974,495,1253,425,388,207,109,233,1143,197,20,392,732,445,898,343,86,397,1072,273,507,269,1231,357,1007,209,954,408,912,189);
         this.WORM_COORDS[1034] = new Array(168,250,255,358,1229,357,1167,200,65,394,756,425,1245,424,1081,261,363,288,631,328,853,253,711,262,788,261,967,203,499,262,549,292,661,255,399,207,904,347,1296,413);
         this.WORM_COORDS[1035] = new Array(1234,358,829,263,113,227,975,498,193,421,72,395,1050,300,504,269,407,212,1293,412,330,313,655,256,176,251,463,213,1167,200,699,597,604,423,842,598,712,263,5,393);
         this.WORM_COORDS[1036] = new Array(102,307,1284,413,457,222,883,334,1000,211,738,432,398,332,610,419,694,597,106,240,186,434,227,371,1187,223,34,592,183,253,840,602,1054,301,325,315,709,261,908,190);
         this.WORM_COORDS[1037] = new Array(1283,413,495,253,931,194,397,206,894,341,721,274,824,268,761,425,139,221,368,283,657,256,351,371,40,392,1193,222,843,596,1119,220,235,384,1003,476,629,336,588,420);
         this.WORM_COORDS[1038] = new Array(522,276,158,248,1229,357,739,431,994,213,445,234,651,257,913,344,211,272,624,361,317,320,1158,197,1273,415,250,360,801,262,379,220,160,380,98,307,933,194,1052,304);
         this.WORM_COORDS[1039] = new Array(975,498,688,252,451,230,839,255,1193,222,736,436,534,283,1075,269,629,336,1030,213,261,355,55,587,979,208,606,422,667,594,917,342,121,220,987,627,44,392,1255,425);
         this.WORM_COORDS[1040] = new Array(543,288,595,425,1212,223,55,393,775,272,1023,211,715,266,285,340,630,333,191,424,389,206,103,307,744,427,1048,278,949,401,1160,197,356,370,980,630,1283,413,477,201);
         this.WORM_COORDS[1041] = new Array(502,267,712,263,645,267,130,214,603,423,1077,267,1035,462,1032,215,750,425,571,359,355,370,235,384,894,341,1248,426,469,206,379,220,976,207,861,254,1235,359,597,580);
         this.WORM_COORDS[1042] = new Array(1298,414,843,253,396,206,164,249,105,242,790,261,256,357,758,425,514,272,1018,465,1003,211,96,309,1080,264,880,332,1197,223,308,324,942,638,673,253,632,324,20,392);
         this.WORM_COORDS[1043] = new Array(841,253,681,253,896,342,962,202,262,354,316,320,987,493,712,462,350,371,1122,218,107,237,782,264,1203,222,201,263,1020,211,8,392,90,397,398,206,1270,417,593,425);
         this.WORM_COORDS[1044] = new Array(1098,242,59,394,922,341,644,272,570,405,320,318,519,274,986,210,712,462,813,269,912,189,443,235,868,257,1273,415,170,250,262,354,1229,357,767,426,61,584,95,310);
         this.WORM_COORDS[1045] = new Array(1014,467,148,248,1002,211,1265,420,1063,288,409,215,345,370,867,257,77,395,755,425,576,410,334,313,699,253,905,347,559,295,10,392,927,191,1240,363,268,352,1144,196);
         this.WORM_COORDS[1046] = new Array(98,307,589,421,31,593,31,392,879,331,1067,281,384,210,812,268,374,278,1186,223,643,275,975,498,189,427,132,214,390,338,1025,462,1283,413,704,257,249,361,973,206);
         this.WORM_COORDS[1047] = new Array(593,425,1291,412,73,580,279,346,1056,298,229,374,1172,205,767,426,647,260,159,248,838,256,485,206,880,332,951,336,627,348,50,393,340,363,572,364,697,253,971,204);
         this.WORM_COORDS[1048] = new Array(865,255,1016,209,930,193,387,207,675,253,302,328,1123,217,556,293,1027,462,733,442,958,412,44,392,1248,426,584,416,1051,305,1238,361,596,582,198,261,382,357,892,340);
         this.WORM_COORDS[1049] = new Array(1160,197,124,217,230,376,625,357,824,268,42,392,580,413,1212,223,740,430,560,296,420,225,568,351,197,260,874,288,1096,243,674,253,1235,359,182,439,312,322,1260,424);
         this.WORM_COORDS[1050] = new Array(845,253,84,397,630,333,1094,245,914,344,299,331,935,195,1156,197,4,393,445,234,562,298,1010,209,619,386,729,451,201,263,964,422,230,376,127,215,1236,360,1278,413);
         this.WORM_COORDS[1051] = new Array(677,599,673,253,230,376,865,255,425,229,48,589,54,393,527,280,1040,228,176,251,1185,223,1258,425,91,314,290,336,613,415,1101,241,924,190,624,361,955,409,740,430);
         this.WORM_COORDS[1052] = new Array(443,235,868,257,116,313,507,269,1300,417,99,506,220,362,476,344,1065,471,1235,359,885,336,312,322,976,499,84,397,207,268,115,225,962,633,1055,299,945,199,695,437);
         this.WORM_COORDS[1053] = new Array(623,368,599,425,1225,357,1001,211,431,234,893,341,780,265,204,408,1248,426,86,397,712,462,26,392,856,253,1204,222,987,493,286,340,679,253,145,248,97,308,350,371);
         this.WORM_COORDS[1054] = new Array(928,339,603,572,1152,196,366,286,621,375,543,288,718,270,829,263,489,224,982,496,1270,417,960,414,741,428,420,225,1070,276,35,392,237,385,315,320,962,202,176,432);
         this.WORM_COORDS[1055] = new Array(886,336,49,392,770,426,1030,213,710,262,266,353,573,408,775,272,635,569,149,248,317,320,1285,413,1119,220,561,297,98,307,966,202,455,225,1234,358,834,258,396,333);
         this.WORM_COORDS[1056] = new Array(1104,241,190,258,702,255,70,394,51,590,1264,421,1030,462,138,217,846,588,548,292,333,313,602,424,1222,227,566,346,460,217,841,253,636,305,772,425,722,462,283,342);
         this.WORM_COORDS[1057] = new Array(1185,223,1283,413,21,392,222,364,904,347,349,372,1106,241,142,240,82,396,763,425,691,252,400,207,334,313,280,345,657,565,474,201,577,411,212,274,927,191,826,267);
         this.WORM_COORDS[1058] = new Array(128,323,772,425,679,598,274,351,362,288,1245,424,800,262,36,392,1005,473,859,551,641,283,169,250,1215,357,983,209,393,206,687,426,918,342,1217,225,716,267,1123,217);
         this.WORM_COORDS[1059] = new Array(84,397,423,228,574,409,349,372,503,268,990,492,752,425,1237,360,1071,274,14,392,815,270,138,217,269,351,628,336,897,342,190,258,73,580,1017,210,1047,463,714,265);
         this.WORM_COORDS[1060] = new Array(1149,196,541,286,731,447,1003,211,146,248,1096,243,419,224,1215,224,1297,413,228,372,94,310,1237,360,703,256,953,202,1027,462,850,562,602,424,184,437,303,328,1051,305);
         this.WORM_COORDS[1061] = new Array(847,252,111,230,258,356,1056,298,726,456,647,260,1040,228,361,288,451,230,551,292,590,422,180,251,920,341,41,392,720,273,969,443,943,198,1234,358,391,206,1272,416);
         this.WORM_COORDS[1062] = new Array(108,235,490,230,392,206,91,314,1101,241,81,396,977,208,26,392,710,460,1244,423,599,425,277,347,810,267,546,290,1228,357,1197,223,201,411,1027,462,925,191,182,253);
         this.WORM_COORDS[1063] = new Array(1114,224,698,253,303,328,885,336,231,378,362,288,731,447,99,307,145,248,413,221,988,211,782,264,869,258,622,371,776,518,5,393,468,207,1002,477,497,258,72,395);
         this.WORM_COORDS[1064] = new Array(962,418,254,358,434,235,727,455,1269,417,150,248,633,318,519,274,342,367,912,189,8,392,1058,296,362,288,694,253,200,413,860,550,1214,224,79,396,381,215,58,585);
         this.WORM_COORDS[1065] = new Array(978,499,35,592,137,215,722,276,944,198,1074,271,822,269,903,347,1117,539,245,366,1171,203,542,287,612,416,349,372,467,208,642,278,958,412,50,393,333,313,563,340);
         this.WORM_COORDS[1066] = new Array(1021,464,839,255,1172,205,29,392,1249,426,619,386,80,396,675,253,117,313,235,384,693,597,521,275,748,426,883,334,1071,274,967,203,153,249,448,232,286,340,340,363);
         this.WORM_COORDS[1067] = new Array(231,378,1206,222,83,396,315,320,700,254,1259,425,708,458,940,197,685,597,816,269,1077,267,130,214,845,591,1173,354,513,272,1104,497,982,629,601,425,621,375,210,271);
         this.WORM_COORDS[1068] = new Array(758,425,466,209,175,251,629,336,912,189,644,272,1248,426,333,313,522,276,1112,523,107,237,886,336,683,598,400,207,841,253,1064,471,63,394,260,355,1014,209,722,276);
         this.WORM_COORDS[1069] = new Array(841,253,760,425,209,270,1248,426,881,332,246,364,691,252,57,393,1223,227,1101,241,563,340,413,221,922,190,953,407,1033,462,1049,282,1,394,791,261,345,370,1032,215);
         this.WORM_COORDS[1070] = new Array(733,442,530,281,571,359,1287,413,478,201,4,393,341,365,579,413,1188,223,1045,271,723,277,422,227,813,269,919,190,108,235,202,263,591,593,58,393,1096,243,263,354);
         this.WORM_COORDS[1071] = new Array(849,252,635,308,337,317,1299,415,68,581,1201,222,238,386,741,428,346,371,165,249,406,211,677,253,10,392,621,375,910,345,1124,216,598,425,78,527,494,251,938,196);
         this.WORM_COORDS[1072] = new Array(980,208,1285,413,184,437,80,525,704,597,319,320,937,335,347,371,484,204,1102,241,390,206,185,254,879,331,705,258,45,589,609,420,642,278,526,278,402,330,374,278);
         this.WORM_COORDS[1073] = new Array(680,253,21,392,350,371,894,341,918,190,265,353,1062,290,1168,200,826,267,75,395,1107,240,1232,358,409,215,959,414,584,416,200,262,742,428,505,269,1028,462,483,203);
         this.WORM_COORDS[1074] = new Array(1068,279,699,253,574,409,15,392,902,346,394,206,100,307,1294,412,1222,227,1222,357,564,343,292,334,78,396,367,284,237,385,199,261,522,276,142,240,976,207,856,253);
         this.WORM_COORDS[1075] = new Array(1249,426,238,386,301,329,1162,197,1080,264,411,218,151,248,910,345,481,202,59,394,95,310,822,408,562,298,870,259,713,462,661,255,1028,212,459,351,8,392,1219,226);
         this.WORM_COORDS[1076] = new Array(790,261,404,209,1227,357,29,392,517,274,989,211,651,257,272,351,472,203,1047,276,1255,425,742,428,189,258,112,228,371,363,177,434,1179,225,862,254,854,558,916,189);
         this.WORM_COORDS[1077] = new Array(727,455,523,276,323,316,977,208,1297,413,185,254,1218,226,669,254,419,224,810,267,1040,228,22,392,482,202,270,351,861,254,891,339,1167,200,128,214,91,314,1239,362);
         this.WORM_COORDS[1078] = new Array(614,414,454,227,507,269,641,283,1278,413,823,268,952,202,24,392,99,307,192,422,123,218,767,426,400,207,223,365,698,253,88,397,976,499,907,346,283,342,62,583);
         this.WORM_COORDS[1079] = new Array(66,394,260,355,893,341,964,202,446,234,1157,197,1294,412,345,370,1241,366,742,428,99,307,594,425,1020,211,864,255,394,206,713,264,1081,261,1026,462,1212,223,199,261);
         this.WORM_COORDS[1080] = new Array(266,353,984,495,1254,425,1008,209,939,638,197,260,532,281,140,230,622,371,421,226,1226,357,1115,223,1054,301,707,259,854,253,911,189,25,392,1180,225,754,425,1107,508);
         this.WORM_COORDS[1081] = new Array(586,418,921,190,349,372,774,425,1106,241,1272,416,1028,212,920,341,1059,295,4,393,486,207,223,365,56,393,1232,358,280,345,872,261,656,565,980,497,1217,225,852,560);
         this.WORM_COORDS[1082] = new Array(202,263,36,392,926,340,1271,416,639,292,54,587,579,413,755,425,284,341,355,370,1109,240,193,421,973,493,508,270,1226,357,486,207,702,597,423,228,564,343,920,639);
         this.WORM_COORDS[1083] = new Array(1149,196,274,351,479,201,198,416,667,594,1190,313,755,425,598,425,1073,272,665,254,877,291,90,397,110,231,814,269,28,392,175,251,357,370,593,591,366,286,521,275);
         this.WORM_COORDS[1084] = new Array(1151,196,971,477,1283,413,591,593,608,420,9,392,766,425,845,253,1240,363,163,249,1066,283,626,351,87,397,843,596,319,320,534,283,441,236,378,276,882,333,678,253);
         this.WORM_COORDS[1085] = new Array(51,393,791,261,577,591,671,253,498,259,355,370,482,202,572,364,845,591,604,423,1224,228,1260,424,194,258,1237,360,261,355,994,487,767,426,1066,283,24,595,158,374);
         this.WORM_COORDS[1086] = new Array(563,340,185,436,945,335,664,255,457,222,214,360,537,284,1175,228,50,393,961,202,597,425,153,249,668,594,1118,220,1058,296,400,207,726,456,870,259,890,339,1020,211);
         this.WORM_COORDS[1087] = new Array(1057,297,553,292,1158,197,424,228,283,342,794,261,985,494,994,213,1266,419,93,514,144,246,757,425,1241,366,12,392,1091,247,487,211,373,362,777,519,584,416,883,334);
         this.WORM_COORDS[1088] = new Array(475,201,1198,223,1016,209,206,404,1296,413,984,495,916,189,321,318,390,206,563,340,347,371,520,275,633,318,147,248,848,252,936,335,727,455,592,425,1111,239,460,351);
         this.WORM_COORDS[1089] = new Array(695,253,3,394,1090,248,605,422,847,252,176,251,466,209,259,356,1166,199,631,328,571,359,738,432,398,206,92,515,1298,414,1032,215,549,292,1228,357,928,339,380,274);
         this.WORM_COORDS[1090] = new Array(880,332,855,253,246,364,1091,247,1229,357,316,320,174,251,451,230,772,425,54,393,132,322,951,202,1281,413,648,259,725,281,610,419,100,561,1214,224,523,276,670,595);
         this.WORM_COORDS[1091] = new Array(442,235,746,426,213,276,1166,199,48,392,1086,254,601,425,1023,211,1223,227,280,345,96,309,1247,425,533,282,877,291,716,267,90,516,814,269,225,368,354,370,631,568);
         this.WORM_COORDS[1092] = new Array(752,425,31,392,262,354,821,269,1100,241,922,341,314,320,134,214,537,284,403,209,486,207,352,371,87,397,686,253,1035,218,941,197,33,592,580,413,1265,420,595,589);
         this.WORM_COORDS[1093] = new Array(31,392,262,354,707,259,745,426,939,196,208,399,1222,227,442,235,323,316,516,274,1283,413,894,341,205,266,1153,196,1036,462,1056,298,609,420,343,369,1232,358,46,589);
         this.WORM_COORDS[1094] = new Array(784,425,808,266,941,197,1128,201,1025,211,1180,352,546,290,858,553,645,267,163,249,577,411,969,443,48,392,274,351,168,407,492,243,349,372,1250,425,888,337,1241,366);
         this.WORM_COORDS[1095] = new Array(568,351,684,597,1187,223,726,456,547,291,77,395,1103,495,796,261,184,253,268,352,609,420,1282,413,722,276,883,334,1023,463,120,221,378,276,1026,212,634,314,55,587);
         this.WORM_COORDS[1096] = new Array(517,274,241,377,141,236,680,253,926,191,25,392,994,487,759,425,797,262,884,334,181,440,354,370,1103,241,1204,222,1260,424,101,307,1178,352,1004,211,864,255,588,420);
         this.WORM_COORDS[1097] = new Array(196,260,759,425,917,342,587,505,398,332,1093,246,1116,534,1164,198,1017,210,565,344,370,282,933,194,242,373,973,493,581,414,523,276,626,351,394,206,780,265,1274,415);
         this.WORM_COORDS[1098] = new Array(61,584,371,281,393,206,123,218,104,307,513,272,1246,425,828,264,587,419,699,253,1118,220,1190,457,741,428,7,393,882,333,565,344,92,397,221,363,273,351,360,369);
         this.WORM_COORDS[1099] = new Array(510,271,1294,412,1147,196,457,222,566,346,580,413,898,343,401,330,264,353,89,397,1054,301,670,254,826,267,947,639,1206,222,19,392,203,409,157,248,324,315,706,456);
         this.WORM_COORDS[1100] = new Array(1126,450,670,213,1079,189,100,447,574,201,1283,517,545,488,1165,514,642,538,430,249,944,185,284,218,1225,536,190,279,1017,194,780,175,748,244,1,625,967,534,24,446);
         this.WORM_COORDS[1101] = new Array(1013,194,242,238,181,274,348,289,131,303,385,235,14,603,1125,447,98,447,723,211,926,193,1280,514,1201,534,618,557,28,445,991,546,874,252,606,174,476,254,934,531);
         this.WORM_COORDS[1102] = new Array(1207,533,1104,419,69,445,490,551,1276,512,16,602,138,453,769,178,1025,189,568,209,1146,484,519,277,274,278,406,238,648,224,1053,389,706,201,101,563,421,571,874,252);
         this.WORM_COORDS[1103] = new Array(162,251,946,185,333,309,376,250,546,231,639,305,49,444,238,247,716,207,1239,534,441,575,1070,465,1041,186,665,218,651,517,431,249,253,404,1291,522,786,174,896,225);
         this.WORM_COORDS[1104] = new Array(485,259,433,571,168,249,62,445,215,308,964,188,708,344,369,263,121,332,1233,536,1133,460,623,195,1026,189,1285,519,717,208,1059,479,860,257,249,440,242,238,1049,384);
         this.WORM_COORDS[1105] = new Array(344,293,975,534,670,213,91,447,128,306,1211,534,1126,450,929,190,462,248,4,618,39,444,837,185,223,328,514,271,1073,460,724,212,1281,514,552,490,417,572,295,216);
         this.WORM_COORDS[1106] = new Array(1227,536,649,526,643,225,20,449,235,453,1119,435,1066,470,937,187,882,245,102,448,757,215,1018,561,198,284,3,620,269,353,555,223,807,186,1169,520,960,535,528,293);
         this.WORM_COORDS[1107] = new Array(1188,534,552,225,1143,476,478,600,427,571,38,444,759,213,227,332,978,189,607,563,271,224,385,235,916,204,1051,187,1040,516,523,284,134,300,77,614,1274,512,636,203);
         this.WORM_COORDS[1108] = new Array(468,249,174,253,630,199,348,289,598,569,694,198,92,447,544,487,956,534,543,232,426,571,1176,527,784,174,129,305,406,238,235,453,1227,536,491,545,525,287,39,444);
         this.WORM_COORDS[1109] = new Array(1039,185,618,557,1185,532,325,216,521,280,355,282,63,445,1108,419,1251,527,263,226,30,603,127,307,617,183,926,193,181,274,234,453,427,250,671,212,754,248,142,454);
         this.WORM_COORDS[1110] = new Array(1210,534,126,308,371,259,870,255,697,198,1063,190,591,185,311,214,564,491,824,191,1050,386,1235,634,17,602,963,188,414,574,1132,458,464,602,435,248,1032,544,999,444);
         this.WORM_COORDS[1111] = new Array(710,203,684,394,1099,420,450,245,650,224,1189,534,311,214,604,174,58,444,791,175,898,222,398,229,615,559,967,188,1080,190,1281,514,990,293,1054,486,560,320,545,232);
         this.WORM_COORDS[1112] = new Array(1288,520,1077,450,1214,534,553,225,934,187,1225,623,623,195,76,445,523,284,607,563,998,198,399,229,556,490,879,248,306,215,12,605,703,199,1146,484,452,586,341,297);
         this.WORM_COORDS[1113] = new Array(660,441,854,185,764,182,1012,193,1165,514,105,448,350,287,14,603,288,217,224,449,1282,515,163,250,591,510,637,204,1044,309,1064,190,871,254,991,293,432,571,459,248);
         this.WORM_COORDS[1114] = new Array(271,224,1004,563,334,308,884,242,100,447,222,327,1211,534,781,175,5,617,380,243,583,194,548,490,1152,493,37,444,546,321,681,205,922,526,1120,437,962,188,485,259);
         this.WORM_COORDS[1115] = new Array(860,191,1023,190,257,227,1258,524,976,534,38,611,623,554,1064,474,967,188,638,205,106,448,1200,534,742,235,1119,435,215,308,234,453,309,214,429,249,481,594,573,494);
         this.WORM_COORDS[1116] = new Array(1046,497,200,287,1253,526,839,184,946,185,555,223,75,616,595,571,426,251,934,531,307,214,1076,189,1093,425,889,236,1192,535,246,234,675,208,93,447,128,306,488,560);
         this.WORM_COORDS[1117] = new Array(65,445,865,257,143,284,488,259,1064,474,998,198,937,531,1233,536,593,183,290,287,378,246,231,454,1175,526,245,234,6,615,303,215,625,553,480,596,401,581,1135,462);
         this.WORM_COORDS[1118] = new Array(513,518,388,593,535,308,1120,437,1184,531,779,175,406,238,1049,384,649,526,847,183,15,602,742,235,267,225,1280,514,1078,189,1051,491,900,219,577,198,459,598,470,250);
         this.WORM_COORDS[1119] = new Array(443,245,29,603,1084,435,858,189,1193,535,529,428,1272,512,982,191,536,235,468,604,1021,300,347,290,229,334,1232,630,29,445,1143,476,1001,559,115,345,695,198,630,304);
         this.WORM_COORDS[1120] = new Array(588,505,688,391,1157,501,648,527,762,185,1273,512,924,528,165,249,110,449,360,279,127,307,983,191,204,299,484,258,465,602,23,447,822,192,398,229,1209,607,1103,419);
         this.WORM_COORDS[1121] = new Array(1238,534,869,255,1078,189,1125,447,75,445,530,298,138,289,297,216,1300,533,465,248,590,187,295,292,588,505,389,232,1062,476,621,556,712,205,1014,195,230,336,1175,526);
         this.WORM_COORDS[1122] = new Array(871,254,109,449,723,211,1166,515,977,189,422,252,851,184,8,612,30,445,1071,463,165,249,123,330,208,302,591,185,1002,560,726,338,1053,389,313,215,584,500,496,262);
         this.WORM_COORDS[1123] = new Array(214,307,1176,527,446,245,811,190,75,445,472,605,1285,519,743,236,1137,465,337,302,555,321,76,614,549,490,981,191,14,603,894,229,1024,553,381,241,604,566,241,449);
         this.WORM_COORDS[1124] = new Array(101,447,356,282,605,174,1149,488,604,566,1252,526,467,604,953,533,729,217,533,431,873,252,14,603,49,444,1001,193,243,236,535,308,1054,391,180,272,407,241,664,435);
         this.WORM_COORDS[1125] = new Array(557,222,1284,519,968,188,647,224,738,228,912,210,445,245,528,293,41,615,1073,460,41,444,93,447,547,489,153,276,1024,190,640,304,308,308,801,180,264,225,1036,536);
         this.WORM_COORDS[1126] = new Array(134,300,1158,503,930,189,453,246,1075,250,869,255,1117,431,85,446,1235,634,215,308,487,570,1289,521,861,192,725,213,626,197,690,365,10,608,525,287,550,227,994,549);
         this.WORM_COORDS[1127] = new Array(301,300,1145,480,63,445,457,248,534,307,187,278,428,571,1080,443,946,185,1252,526,253,229,398,229,11,607,596,175,595,571,980,535,881,246,760,212,833,186,690,199);
         this.WORM_COORDS[1128] = new Array(1278,513,410,578,1072,462,304,303,1137,465,644,225,1228,536,646,532,52,444,695,198,1062,187,470,250,1039,522,405,236,2,623,482,592,197,283,136,292,973,188,130,452);
         this.WORM_COORDS[1129] = new Array(77,445,1179,581,508,268,662,438,992,196,1063,475,925,194,209,302,1172,524,835,185,319,216,1281,514,60,628,934,531,740,231,265,374,546,488,383,238,436,247,410,578);
         this.WORM_COORDS[1130] = new Array(269,225,240,450,967,188,1089,428,1140,470,4,618,33,445,596,571,1297,529,446,245,643,225,591,185,326,326,909,211,1231,536,84,608,125,310,648,527,1075,189,362,276);
         this.WORM_COORDS[1131] = new Array(279,220,353,284,680,205,471,251,526,291,879,248,1206,533,1084,435,561,491,14,603,163,250,388,593,1275,512,1059,186,966,288,388,232,970,188,656,448,127,307,585,193);
         this.WORM_COORDS[1132] = new Array(615,559,120,333,1090,426,242,238,1020,193,495,262,1186,532,222,327,695,198,1,625,1273,512,73,445,306,215,144,283,661,440,878,249,399,229,750,246,92,591,961,535);
         this.WORM_COORDS[1133] = new Array(385,235,1168,518,124,312,475,603,1129,454,170,249,441,246,580,498,1279,513,281,219,867,257,16,602,964,534,543,232,1066,240,610,562,819,192,333,309,702,199,951,284);
         this.WORM_COORDS[1134] = new Array(72,445,414,574,308,308,624,554,913,208,924,528,153,451,742,235,169,249,824,191,412,252,241,240,41,615,1137,465,528,427,599,174,1180,529,626,305,238,451,1251,527);
         this.WORM_COORDS[1135] = new Array(1243,532,222,327,497,262,221,444,281,280,889,236,1155,498,346,291,1081,254,59,444,1028,187,988,543,580,196,531,486,142,285,1058,480,255,228,661,220,1242,640,12,605);
         this.WORM_COORDS[1136] = new Array(957,186,68,623,230,336,609,176,1078,189,151,278,447,245,88,446,765,181,501,266,1027,188,279,279,9,610,882,245,982,536,1081,441,1283,517,1178,529,591,510,1133,460);
         this.WORM_COORDS[1137] = new Array(939,186,369,263,1176,527,64,445,1235,536,749,245,244,235,169,249,793,175,1131,457,1194,597,578,497,958,534,1064,190,648,527,545,232,11,607,241,449,990,196,534,307);
         this.WORM_COORDS[1138] = new Array(317,216,879,248,1292,523,957,534,616,559,617,183,30,603,75,445,419,572,1151,491,1238,638,1224,536,1098,422,251,231,968,188,1044,190,555,490,210,303,755,248,1015,300);
         this.WORM_COORDS[1139] = new Array(204,299,567,491,1143,476,1272,512,1016,563,911,210,18,601,149,279,394,229,1214,534,243,236,974,188,71,445,491,260,808,187,661,220,665,434,309,214,1183,585,605,565);
         this.WORM_COORDS[1140] = new Array(151,278,88,446,607,563,1120,437,768,179,561,320,1239,534,305,215,929,190,265,265,389,232,31,445,230,454,610,176,510,269,589,506,1157,501,202,292,1073,189,846,183);
         this.WORM_COORDS[1141] = new Array(709,202,25,446,515,273,463,601,845,183,1252,526,1180,529,332,313,6,615,1086,431,649,526,434,248,1043,503,674,394,591,510,229,334,133,301,581,315,879,248,242,238);
         this.WORM_COORDS[1142] = new Array(789,174,108,449,1025,189,12,605,1176,527,868,256,1240,640,1135,462,531,300,1229,536,445,245,242,238,597,570,1042,308,148,280,37,444,857,188,402,581,618,185,217,310);
         this.WORM_COORDS[1143] = new Array(496,262,82,445,1129,454,1081,190,581,499,753,248,422,252,1257,524,20,449,257,395,954,185,552,225,228,333,1228,626,1182,530,368,265,139,453,188,278,887,238,606,174);
         this.WORM_COORDS[1144] = new Array(1184,531,533,304,431,571,202,292,392,229,1275,512,912,210,15,602,62,445,1104,419,146,282,466,249,992,196,679,206,822,192,235,453,619,557,962,535,278,221,981,289);
         this.WORM_COORDS[1145] = new Array(1183,531,521,280,306,215,88,446,1292,523,610,176,343,295,1058,186,945,185,893,231,1101,419,1140,470,0,628,155,274,1062,476,1009,568,606,564,588,315,679,206,1227,625);
         this.WORM_COORDS[1146] = new Array(467,604,419,254,962,289,1283,517,659,220,242,238,362,276,1051,187,166,249,1157,501,1074,458,1127,451,220,326,302,216,237,452,1237,637,260,388,122,450,883,244,1179,581);
         this.WORM_COORDS[1147] = new Array(760,212,918,201,1002,560,629,199,648,527,1290,522,46,444,1083,436,478,600,275,222,520,278,203,298,404,234,234,453,65,626,101,447,1078,189,341,297,1210,534,729,338);
         this.WORM_COORDS[1148] = new Array(805,184,572,202,116,341,1137,465,624,196,578,317,1251,527,210,303,496,524,275,278,515,273,1025,189,605,565,877,249,418,572,39,444,13,604,92,447,281,219,417,254);
         this.WORM_COORDS[1149] = new Array(1131,457,32,445,1200,534,811,190,1008,193,707,201,346,291,325,216,1023,555,1005,456,630,550,1265,516,404,234,882,245,215,308,531,538,588,189,1073,460,509,268,271,224);
         this.WORM_COORDS[1150] = new Array(81,445,1300,533,164,249,611,177,311,312,1210,534,677,394,393,229,980,190,326,216,789,174,597,570,1045,189,527,292,220,326,6,615,704,200,1119,435,651,517,873,252);
         this.WORM_COORDS[1151] = new Array(139,288,1028,187,299,216,34,445,1229,536,1106,419,234,453,683,205,352,285,868,256,548,229,510,509,477,254,389,232,1041,378,116,341,689,391,795,176,226,331,974,188);
         this.WORM_COORDS[1152] = new Array(457,596,63,445,250,231,851,184,225,330,349,288,882,245,662,219,944,185,25,602,512,270,1203,533,390,231,181,274,727,214,646,532,232,454,457,248,307,214,1130,456);
         this.WORM_COORDS[1153] = new Array(1217,535,538,312,623,195,450,245,116,341,167,249,856,187,1278,513,67,445,639,544,1016,195,11,607,961,535,1058,480,502,502,1089,428,544,232,1078,189,315,215,332,313);
         this.WORM_COORDS[1154] = new Array(1230,536,1287,519,528,293,685,202,54,444,1209,607,608,563,122,331,19,601,938,278,1056,186,1128,452,223,328,262,226,620,192,957,186,1014,565,491,545,377,248,254,401);
         this.WORM_COORDS[1155] = new Array(479,598,630,199,1099,420,941,532,547,230,762,185,142,285,692,198,1174,526,667,431,981,191,1241,533,350,287,1047,383,82,445,715,341,298,216,1291,522,393,587,430,249);
         this.WORM_COORDS[1156] = new Array(456,247,991,546,912,210,12,605,1172,524,165,249,799,178,1086,431,740,231,1226,536,1041,511,510,269,266,266,708,344,406,238,1291,522,22,447,314,215,636,203,137,453);
         this.WORM_COORDS[1157] = new Array(250,231,919,200,227,332,1000,557,178,270,548,323,401,230,10,608,1250,528,325,216,635,202,1200,534,805,184,1140,470,743,236,55,444,999,196,352,285,474,252,1070,189);
         this.WORM_COORDS[1158] = new Array(1194,535,287,217,60,445,622,555,363,274,110,449,210,303,645,225,703,199,869,255,977,189,1265,516,445,245,534,307,591,185,450,584,256,397,2,623,1141,472,1064,190);
         this.WORM_COORDS[1159] = new Array(1097,423,658,220,275,222,907,212,317,320,574,495,716,207,448,581,371,259,1295,526,626,552,481,256,822,192,1229,536,1057,186,113,449,1156,500,977,189,940,531,85,607);
         this.WORM_COORDS[1160] = new Array(859,190,146,282,791,175,1156,500,1243,532,236,261,508,268,582,195,638,305,411,250,6,615,1011,193,1090,426,352,285,912,210,686,201,104,448,584,500,950,283,1294,525);
         this.WORM_COORDS[1161] = new Array(1026,189,875,251,761,211,327,216,1174,526,958,187,202,292,968,288,1025,552,23,447,232,454,596,571,620,305,1275,512,698,198,433,249,1102,419,488,259,335,306,561,220);
         this.WORM_COORDS[1162] = new Array(1,625,1231,536,759,213,679,206,269,271,1173,525,50,444,1103,419,966,188,892,232,139,288,413,252,473,251,636,547,1058,186,222,327,528,293,547,230,248,443,467,604);
         this.WORM_COORDS[1163] = new Array(107,448,995,550,1262,520,1171,522,952,185,525,287,888,237,1087,430,280,219,115,345,385,596,42,617,53,444,143,284,638,544,403,233,566,218,1069,189,453,246,940,531);
         this.WORM_COORDS[1164] = new Array(1259,523,11,607,1182,530,733,335,157,271,1094,424,516,525,915,204,475,253,609,562,220,326,778,175,1036,185,416,254,584,500,120,333,223,447,107,448,967,188,589,315);
         this.WORM_COORDS[1165] = new Array(1264,517,913,208,1043,190,242,238,990,196,1,625,445,245,120,333,1205,533,661,440,1141,472,596,175,835,185,715,206,595,571,147,455,153,276,646,224,1073,460,74,445);
         this.WORM_COORDS[1166] = new Array(1254,526,787,174,1102,419,637,546,398,583,755,248,1184,531,107,448,43,444,996,295,956,185,469,605,9,610,585,193,206,300,405,236,456,247,154,275,905,214,1202,601);
         this.WORM_COORDS[1167] = new Array(1269,513,287,217,208,302,552,225,668,398,642,224,108,449,1198,534,372,258,521,280,600,174,1027,188,1137,465,619,557,1067,469,702,199,393,587,831,187,232,454,135,294);
         this.WORM_COORDS[1168] = new Array(1076,189,110,449,1260,521,412,252,971,188,1114,425,121,332,656,448,877,249,604,566,659,220,225,330,327,216,241,449,1055,392,362,276,571,203,1008,300,1150,489,478,254);
         this.WORM_COORDS[1169] = new Array(241,449,435,248,1268,514,832,186,30,445,203,298,761,211,123,330,1133,460,535,308,977,189,695,198,887,238,247,233,543,487,1196,598,746,328,538,233,450,584,17,602);
         this.WORM_COORDS[1170] = new Array(704,200,315,215,999,556,430,249,803,182,555,223,1111,420,1236,536,659,443,1053,187,98,447,615,180,353,284,178,270,256,397,503,267,1021,300,25,446,629,550,118,336);
         this.WORM_COORDS[1171] = new Array(482,257,627,198,341,297,1138,467,733,223,572,202,8,612,1193,535,263,381,503,502,1003,193,623,554,1273,512,36,445,1049,384,416,254,903,216,533,304,92,591,678,207);
         this.WORM_COORDS[1172] = new Array(1225,536,74,445,19,452,1035,538,1161,508,676,207,529,297,369,263,1110,419,10,608,932,188,228,333,741,233,238,451,594,520,571,203,83,609,264,225,1062,476,596,571);
         this.WORM_COORDS[1173] = new Array(406,580,117,339,40,614,204,299,1145,480,478,254,402,231,114,450,744,238,608,563,956,185,865,257,1097,423,1209,534,19,452,1043,190,283,218,654,221,704,345,1268,514);
         this.WORM_COORDS[1174] = new Array(1013,194,226,331,9,610,26,446,929,190,874,252,1156,500,1244,531,241,240,715,206,149,279,582,195,1087,430,1052,489,854,185,365,271,159,448,247,443,571,319,465,602);
         this.WORM_COORDS[1175] = new Array(1182,530,586,502,1203,602,41,444,1141,472,1236,536,51,625,307,214,1294,525,383,238,187,278,970,534,943,185,697,198,1,625,517,275,860,191,114,450,1059,479,639,206);
         this.WORM_COORDS[1176] = new Array(990,196,80,611,282,218,608,175,1025,366,1101,419,1051,491,1202,533,80,445,937,187,477,254,785,174,14,603,640,542,403,581,216,309,372,258,1152,493,174,253,1223,621);
         this.WORM_COORDS[1177] = new Array(679,206,1184,531,338,301,1244,531,67,445,217,310,51,625,440,246,499,264,562,219,830,187,626,197,317,216,598,310,916,204,983,537,1051,386,115,345,748,244,1131,457);
         this.WORM_COORDS[1178] = new Array(1116,429,314,215,231,338,875,251,540,486,96,447,1020,364,22,447,1232,536,597,570,585,193,504,268,735,224,9,610,91,594,1035,185,1159,505,966,534,364,273,243,236);
         this.WORM_COORDS[1179] = new Array(518,276,455,246,59,444,1260,521,657,221,150,278,609,562,561,220,718,208,1129,454,873,252,1203,533,261,226,686,393,1045,189,929,190,6,615,384,597,456,593,315,215);
         this.WORM_COORDS[1180] = new Array(213,306,325,216,538,312,488,560,45,622,1167,516,107,448,620,556,655,221,961,188,597,174,53,444,294,291,1190,593,1068,468,1008,568,344,293,830,187,886,240,395,229);
         this.WORM_COORDS[1181] = new Array(425,251,167,249,990,196,5,617,855,186,1266,515,1122,441,227,332,805,184,209,401,617,558,360,279,1184,585,924,195,251,231,697,198,626,197,23,447,316,216,508,268);
         this.WORM_COORDS[1182] = new Array(740,231,600,174,35,607,1241,533,1101,419,476,254,993,548,1146,484,608,563,36,445,700,348,776,175,107,448,1032,371,662,219,913,208,1038,185,852,185,552,323,142,285);
         this.WORM_COORDS[1183] = new Array(1205,533,987,193,711,204,263,226,643,225,812,191,1280,514,591,185,242,448,206,300,1079,189,644,536,1123,444,872,253,65,445,325,327,472,605,1042,505,470,250,558,490);
         this.WORM_COORDS[1184] = new Array(389,232,1118,433,1180,529,896,225,189,279,669,397,987,193,738,332,649,526,1299,531,353,284,265,225,1217,616,244,447,380,600,543,232,116,341,321,216,447,245,998,442);
         this.WORM_COORDS[1185] = new Array(37,610,635,547,1157,501,1117,431,635,202,1056,186,417,254,949,185,314,316,527,292,968,288,311,214,1296,528,202,292,1246,531,578,497,834,185,552,225,1001,193,440,575);
         this.WORM_COORDS[1186] = new Array(101,447,116,341,7,613,1215,534,221,326,316,216,445,245,942,185,624,196,876,250,536,310,1088,430,963,534,643,537,1158,503,705,201,1288,520,336,303,536,235,32,445);
         this.WORM_COORDS[1187] = new Array(520,278,730,218,70,445,1027,550,419,254,550,490,1069,189,1279,513,348,289,196,282,1187,533,850,184,965,188,1062,476,402,581,275,222,328,217,630,550,236,452,1134,461);
         this.WORM_COORDS[1188] = new Array(1135,462,54,444,344,293,440,575,634,201,471,251,658,444,1194,535,405,236,1283,517,229,334,1084,435,328,217,994,197,562,219,241,240,145,282,110,449,790,175,1009,300);
         this.WORM_COORDS[1189] = new Array(962,535,863,197,221,326,232,454,611,561,1000,446,666,217,345,292,813,191,1265,516,679,394,1092,426,69,445,408,242,257,395,392,588,984,191,1072,189,738,228,1189,534);
         this.WORM_COORDS[1190] = new Array(528,427,1033,185,1194,535,1244,531,530,298,17,602,932,188,47,444,122,331,1093,425,681,205,613,560,397,229,305,215,255,228,220,326,344,293,103,448,1035,374,434,571);
         this.WORM_COORDS[1191] = new Array(1283,517,517,275,1216,534,346,291,608,563,1002,193,892,232,464,602,203,298,1065,471,72,445,293,216,403,233,614,179,1139,469,748,244,688,200,238,247,1240,640,253,404);
         this.WORM_COORDS[1192] = new Array(637,204,1167,568,1059,479,84,446,219,325,973,188,32,445,1278,513,150,278,919,200,368,265,1227,625,760,212,462,600,578,198,553,490,518,276,325,327,1157,501,277,221);
         this.WORM_COORDS[1193] = new Array(480,255,573,494,615,559,156,273,1118,433,58,444,678,207,262,226,405,236,877,249,579,316,1174,526,747,243,1045,380,121,332,816,191,223,328,422,571,1283,517,9,610);
         this.WORM_COORDS[1194] = new Array(957,186,315,317,1068,468,12,605,545,488,78,613,745,241,1168,518,487,259,1281,514,176,265,1023,190,427,250,854,185,113,449,544,232,367,267,255,228,24,446,615,559);
         this.WORM_COORDS[1195] = new Array(938,186,1265,516,454,246,1110,419,951,284,1193,535,226,331,757,215,168,249,1139,469,569,492,84,446,688,200,453,589,236,452,625,196,400,582,271,224,258,392,584,315);
         this.WORM_COORDS[1196] = new Array(125,310,1085,433,430,571,449,245,1241,533,345,292,298,216,673,210,530,429,191,279,67,445,1148,486,862,257,972,188,9,610,542,232,599,569,559,490,825,190,912,210);
         this.WORM_COORDS[1197] = new Array(584,500,770,178,422,252,857,188,1041,186,698,198,1218,535,1116,429,1154,496,567,319,964,188,531,430,574,201,157,271,384,597,58,444,1287,519,650,523,505,268,955,285);
         this.WORM_COORDS[1198] = new Array(383,238,1234,536,1141,472,1175,526,198,284,973,188,118,336,1084,435,1005,298,21,448,650,224,597,570,345,292,1045,189,298,216,772,177,742,235,82,445,550,227,606,174);
         this.WORM_COORDS[1199] = new Array(1036,185,652,222,253,229,1207,533,55,444,1155,498,209,302,308,214,851,184,216,425,600,568,1088,430,704,200,431,249,59,628,1043,379,498,263,341,297,1260,521,987,292);
         this.WORM_COORDS[1200] = new Array(1247,200,657,401,490,312,331,344,241,609,902,355,1024,374,94,292,757,227,1010,570,433,594,280,320,44,277,1164,354,390,389,221,178,1106,477,649,207,148,333,1075,422);
         this.WORM_COORDS[1201] = new Array(843,216,212,484,904,355,1118,388,58,284,279,321,184,192,1045,443,1108,478,435,337,5,281,494,304,561,227,684,223,384,514,24,554,968,375,402,593,120,257,1175,348);
         this.WORM_COORDS[1202] = new Array(339,427,389,390,777,339,603,200,258,350,1026,375,513,276,1102,475,862,216,31,280,962,376,430,339,359,503,728,238,81,294,72,532,1112,395,1191,341,284,638,800,269);
         this.WORM_COORDS[1203] = new Array(152,185,1012,373,681,222,554,235,1057,434,847,216,26,552,777,339,1128,380,735,239,323,338,1233,202,1123,595,907,355,39,277,641,400,112,263,354,497,1191,341,239,370);
         this.WORM_COORDS[1204] = new Array(917,366,1002,569,787,332,344,448,663,400,428,595,539,244,1001,373,1105,476,1197,322,400,384,495,601,197,180,897,558,333,346,1228,204,61,286,1039,446,279,321,631,198);
         this.WORM_COORDS[1205] = new Array(1041,444,682,222,1262,199,1165,354,330,343,945,378,876,226,478,332,178,349,31,548,270,350,376,512,416,595,760,227,1102,475,335,422,573,221,1110,400,780,341,27,279);
         this.WORM_COORDS[1206] = new Array(148,185,1218,225,382,403,931,380,420,346,1049,442,224,558,1230,622,229,611,81,531,1010,373,275,324,487,317,655,207,705,233,133,258,189,488,210,176,794,298,835,217);
         this.WORM_COORDS[1207] = new Array(194,182,1249,200,1117,592,770,335,1008,373,247,361,98,528,341,434,124,257,63,288,1127,381,1106,477,433,337,195,489,890,355,1210,509,595,209,309,318,1298,358,355,591);
         this.WORM_COORDS[1208] = new Array(228,182,263,599,1166,353,1080,420,131,258,617,390,619,194,256,351,190,350,1001,373,887,355,351,489,56,283,392,387,137,192,204,620,548,347,35,546,90,531,1287,356);
         this.WORM_COORDS[1209] = new Array(508,285,1135,557,1244,641,1199,312,897,355,114,261,625,195,741,234,34,546,1300,225,1214,242,43,277,384,593,850,216,222,178,1036,448,984,374,688,226,88,532,1117,389);
         this.WORM_COORDS[1210] = new Array(510,281,428,339,1200,305,238,368,661,209,175,194,1172,528,479,331,1133,377,46,541,969,375,1215,236,7,281,713,347,913,504,804,250,870,221,181,487,1233,630,240,609);
         this.WORM_COORDS[1211] = new Array(411,384,1188,343,844,216,146,186,330,343,376,512,899,355,974,540,83,641,191,489,1293,213,1028,375,610,196,361,593,799,275,500,293,671,214,241,373,411,594,80,291);
         this.WORM_COORDS[1212] = new Array(170,191,415,387,1117,389,1021,374,486,530,335,422,1206,278,433,337,355,498,1227,204,966,375,278,321,562,227,759,227,1087,590,908,355,1194,338,1052,440,881,230,225,179);
         this.WORM_COORDS[1213] = new Array(1236,202,1086,417,118,258,1146,367,651,207,558,231,266,350,373,510,233,212,213,484,978,375,1107,477,455,339,731,238,916,363,62,287,640,400,422,396,167,190,1116,592);
         this.WORM_COORDS[1214] = new Array(1032,379,78,287,144,187,709,234,967,375,1048,442,1110,400,1232,203,770,335,1186,346,266,599,306,317,414,386,240,371,1095,591,804,250,77,531,350,484,216,177,1102,475);
         this.WORM_COORDS[1215] = new Array(452,597,512,278,813,222,1105,476,1215,236,995,373,760,227,23,555,1233,510,1300,225,454,339,185,191,638,200,791,312,383,399,275,324,929,380,224,558,1197,322,375,511);
         this.WORM_COORDS[1216] = new Array(205,177,1114,392,454,597,322,337,1050,442,769,334,988,374,596,208,860,216,185,350,672,215,1210,509,266,350,712,347,451,339,34,281,382,403,33,547,96,529,348,468);
         this.WORM_COORDS[1217] = new Array(283,638,988,374,1053,439,454,597,934,379,1154,360,387,393,1109,591,83,303,375,511,717,236,869,221,862,376,171,192,555,234,322,337,37,546,1262,199,269,350,636,200);
         this.WORM_COORDS[1218] = new Array(13,282,691,351,330,343,651,207,465,343,1250,200,1094,417,104,277,1169,351,1231,625,365,507,1121,594,504,289,1107,477,407,384,997,373,275,324,879,229,183,192,1235,509);
         this.WORM_COORDS[1219] = new Array(232,361,362,506,1148,365,69,533,777,339,997,373,215,177,297,317,800,269,389,390,621,194,205,619,481,327,1,281,1296,357,840,216,1105,476,66,285,528,255,257,599);
         this.WORM_COORDS[1220] = new Array(1017,374,1278,356,278,321,954,377,1042,444,534,249,725,238,735,343,84,302,871,222,647,403,153,185,24,278,223,179,624,195,478,332,338,425,1191,341,799,275,1110,400);
         this.WORM_COORDS[1221] = new Array(565,225,429,339,450,596,94,292,1141,373,616,194,143,187,359,503,1055,436,340,431,10,281,683,222,245,376,283,319,996,563,1221,213,885,237,1000,373,935,379,892,559);
         this.WORM_COORDS[1222] = new Array(610,196,130,258,487,317,1137,375,152,185,888,241,237,367,1073,423,549,236,379,513,1205,281,302,317,60,285,233,212,920,382,974,374,679,350,734,238,400,384,25,553);
         this.WORM_COORDS[1223] = new Array(309,318,1085,417,233,485,528,255,91,295,861,216,974,374,795,292,699,232,1164,354,18,278,229,183,1256,510,245,605,1002,569,1295,218,1217,228,166,189,70,533,468,535);
         this.WORM_COORDS[1224] = new Array(976,542,451,339,783,344,21,278,244,377,395,384,1226,205,507,285,1167,352,360,504,178,193,229,183,1077,421,951,377,850,383,442,594,1208,268,91,295,1154,539,658,208);
         this.WORM_COORDS[1225] = new Array(832,217,1106,477,795,292,982,548,357,501,41,277,111,264,991,374,572,222,1281,204,329,342,223,354,655,207,56,538,397,384,1122,385,653,401,144,187,335,422,1220,216);
         this.WORM_COORDS[1226] = new Array(890,245,558,231,284,319,150,185,955,377,356,500,130,258,54,538,616,194,713,235,732,344,463,342,295,575,389,390,54,281,1259,511,1179,347,1035,448,646,402,902,355);
         this.WORM_COORDS[1227] = new Array(418,596,274,326,692,352,896,354,1187,344,469,534,718,237,639,201,647,403,337,424,33,547,11,281,992,374,829,218,481,327,416,351,1268,199,202,177,883,234,390,517);
         this.WORM_COORDS[1228] = new Array(141,188,510,281,1115,391,255,351,1041,444,57,538,384,593,802,259,893,354,391,388,1022,374,1231,203,1177,347,573,221,336,423,957,376,386,514,1107,591,767,334,108,506);
         this.WORM_COORDS[1229] = new Array(813,222,18,278,1033,381,893,354,259,349,430,339,328,341,492,308,202,177,1065,601,49,539,350,484,1110,400,962,522,151,185,289,635,734,238,387,393,981,374,1272,352);
         this.WORM_COORDS[1230] = new Array(345,452,980,374,526,258,21,278,317,321,94,529,1128,380,169,191,359,503,73,284,881,230,872,367,694,232,1068,425,925,381,1263,199,420,346,686,350,1213,509,1106,477);
         this.WORM_COORDS[1231] = new Array(91,531,411,384,1056,436,609,196,862,216,1167,531,1117,389,80,291,375,511,404,594,187,350,1250,200,1028,375,675,218,623,393,175,194,521,264,690,351,955,377,1217,508);
         this.WORM_COORDS[1232] = new Array(1151,362,1058,434,545,345,885,237,1109,478,765,333,101,526,442,336,4,281,230,359,372,510,1222,209,106,272,978,375,1220,507,919,382,1121,594,700,232,316,320,1296,357);
         this.WORM_COORDS[1233] = new Array(1178,347,61,537,1227,508,852,215,231,360,163,188,306,317,1032,379,692,230,50,279,343,442,555,234,345,587,1239,201,415,387,918,372,492,308,1119,593,253,600,1057,434);
         this.WORM_COORDS[1234] = new Array(209,176,304,317,1107,591,732,344,950,377,53,281,899,355,482,326,132,258,343,442,729,238,790,315,95,529,360,504,677,219,452,597,1057,434,1018,374,424,342,1127,381);
         this.WORM_COORDS[1235] = new Array(462,342,651,207,358,503,191,185,537,246,1130,378,1047,442,992,374,957,510,287,318,118,258,227,357,665,399,387,393,216,615,93,530,1106,477,135,194,213,484,804,250);
         this.WORM_COORDS[1236] = new Array(852,215,479,331,641,201,882,358,361,505,41,277,268,350,802,259,1075,422,37,546,980,374,84,640,545,238,343,442,1197,322,780,341,999,565,107,271,1146,367,608,383);
         this.WORM_COORDS[1237] = new Array(1042,444,923,381,119,257,320,324,999,373,617,194,402,384,369,508,517,270,774,336,1247,200,229,183,205,486,247,604,4,341,752,228,344,448,1177,347,463,342,32,547);
         this.WORM_COORDS[1238] = new Array(775,337,266,350,818,220,186,190,653,207,84,640,488,316,732,238,1006,373,395,384,440,594,1087,417,204,620,338,425,1121,594,45,541,926,380,1284,207,17,278,1224,206);
         this.WORM_COORDS[1239] = new Array(480,329,1111,591,84,302,304,317,241,373,520,265,859,216,1140,374,764,229,611,195,1020,374,359,503,12,282,140,189,1035,448,456,597,49,539,218,552,627,395,975,541);
         this.WORM_COORDS[1240] = new Array(764,229,948,377,515,273,1095,418,857,215,69,284,1235,635,598,207,657,401,1147,366,457,340,165,346,354,497,1289,211,418,596,209,176,1108,478,269,599,1045,443,1025,374);
         this.WORM_COORDS[1241] = new Array(1136,375,698,232,1226,508,465,343,245,376,171,192,1105,476,125,257,1202,297,534,249,374,511,1020,374,806,244,52,280,858,216,968,375,1230,203,664,400,907,355,647,206);
         this.WORM_COORDS[1242] = new Array(981,374,1173,349,809,231,140,189,658,400,95,290,422,596,1253,508,1024,454,965,530,192,184,729,238,382,403,1128,572,448,338,777,339,580,220,278,321,914,359,1086,417);
         this.WORM_COORDS[1243] = new Array(385,593,946,377,1252,199,550,235,198,179,998,565,435,337,86,300,337,424,306,317,27,279,768,334,727,238,1024,374,48,540,223,354,1046,443,619,390,387,393,363,506);
         this.WORM_COORDS[1244] = new Array(276,323,790,315,1123,384,1113,592,567,225,1256,199,1061,605,41,277,686,225,988,374,467,343,180,193,848,382,373,510,505,287,860,216,665,399,399,593,346,588,399,384);
         this.WORM_COORDS[1245] = new Array(37,278,1176,348,646,205,1207,274,492,308,1256,199,36,546,969,375,256,351,1189,519,1024,374,105,275,380,513,657,401,167,190,704,348,1034,449,407,384,772,335,734,238);
         this.WORM_COORDS[1246] = new Array(1122,595,1180,346,759,227,769,334,1124,383,197,351,494,304,194,627,1263,199,323,338,855,215,925,381,59,285,542,240,337,424,1294,356,5,281,1019,374,146,186,653,401);
         this.WORM_COORDS[1247] = new Array(1297,220,1094,417,1035,448,635,199,216,484,161,187,541,242,965,375,1185,346,777,339,486,319,725,345,261,349,225,179,709,234,884,235,96,289,1116,481,31,548,446,596);
         this.WORM_COORDS[1248] = new Array(818,220,1166,353,919,382,203,486,347,464,1288,210,614,388,123,257,1114,392,1023,374,572,222,243,376,514,604,727,238,782,343,512,278,182,193,1050,442,17,329,879,229);
         this.WORM_COORDS[1249] = new Array(1287,356,92,294,33,547,392,519,577,220,906,355,839,217,489,314,162,187,1148,365,287,636,87,532,228,182,968,375,317,321,340,431,661,209,426,341,263,349,1249,200);
         this.WORM_COORDS[1250] = new Array(445,337,888,241,1019,374,98,528,989,556,496,301,1121,386,77,285,1295,218,590,213,188,188,1050,442,280,320,368,508,466,536,1226,205,729,238,46,541,600,362,661,209);
         this.WORM_COORDS[1251] = new Array(1158,357,309,318,90,634,85,301,156,343,1101,591,456,339,808,236,941,378,610,196,484,530,1216,233,40,544,237,610,337,424,1081,419,781,342,664,400,26,279,229,183);
         this.WORM_COORDS[1252] = new Array(1234,202,228,358,47,540,285,318,1059,433,369,508,1167,352,422,344,4,281,882,358,503,290,552,235,748,334,95,290,975,374,170,191,1102,591,234,213,346,456,885,237);
         this.WORM_COORDS[1253] = new Array(1289,211,475,336,367,508,1244,641,60,285,293,317,617,390,930,380,1043,444,562,227,1212,249,1010,373,200,622,552,349,833,217,1099,470,1097,420,206,349,732,238,775,337);
         this.WORM_COORDS[1254] = new Array(732,238,257,350,641,201,339,427,1222,507,529,254,443,336,1164,354,804,250,773,336,967,375,860,377,77,285,1079,420,121,597,165,189,1279,202,1006,572,11,281,650,402);
         this.WORM_COORDS[1255] = new Array(372,510,211,176,402,384,126,257,325,339,539,244,665,399,900,355,1256,199,806,244,475,532,241,373,970,375,857,215,775,337,688,226,1139,374,5,281,1260,513,601,203);
         this.WORM_COORDS[1256] = new Array(459,341,1150,363,209,176,955,377,1088,417,1199,312,525,259,397,384,766,333,732,238,24,278,865,218,219,484,26,552,171,347,805,247,662,209,1124,596,354,497,1034,449);
         this.WORM_COORDS[1257] = new Array(1175,348,243,607,348,468,751,229,394,385,264,349,551,235,1064,428,1297,358,87,300,506,286,987,374,1117,389,219,177,472,339,924,381,15,282,1258,511,823,219,608,383);
         this.WORM_COORDS[1258] = new Array(333,346,952,377,1078,421,423,343,882,233,799,275,374,511,1203,284,1297,220,770,335,175,194,554,235,901,355,1224,206,1132,560,262,349,251,602,87,300,1220,507,230,183);
         this.WORM_COORDS[1259] = new Array(1155,359,136,193,400,593,605,198,542,240,228,182,963,376,1052,440,236,366,1205,464,81,294,973,539,663,210,325,339,797,282,1227,204,851,383,623,393,373,510,1018,374);
         this.WORM_COORDS[1260] = new Array(898,355,93,530,848,216,373,510,699,232,398,384,492,308,1243,640,99,626,235,213,1134,376,561,227,287,318,339,427,37,278,1016,374,684,350,448,596,1056,436,750,229);
         this.WORM_COORDS[1261] = new Array(934,379,504,289,378,513,92,531,875,225,395,384,1178,347,1053,439,1222,209,675,218,346,456,455,597,738,237,780,341,68,284,402,593,243,376,868,371,962,522,469,342);
         this.WORM_COORDS[1262] = new Array(74,532,1157,357,407,384,102,281,651,401,1277,201,267,350,1062,430,3,281,192,184,464,343,661,209,966,375,224,558,881,359,1029,376,752,228,302,626,320,324,550,235);
         this.WORM_COORDS[1263] = new Array(927,380,505,287,503,520,776,337,344,448,454,597,607,197,732,238,376,512,1250,507,1140,374,1225,205,1191,341,124,257,245,376,401,593,821,220,58,284,77,531,670,213);
         this.WORM_COORDS[1264] = new Array(164,188,947,377,840,216,1183,346,1238,201,393,520,298,317,80,291,468,342,687,226,869,371,22,278,383,399,216,350,660,400,1052,440,569,223,221,178,513,276,221,484);
         this.WORM_COORDS[1265] = new Array(1247,200,1292,356,851,383,37,546,322,337,982,374,106,272,630,397,442,594,591,212,903,355,1132,377,402,384,348,468,29,280,453,339,813,222,1052,440,305,572,526,258);
         this.WORM_COORDS[1266] = new Array(650,207,316,320,482,598,1037,447,942,378,1218,225,996,563,526,258,414,595,636,399,766,333,150,185,846,216,474,337,1238,508,1120,387,60,537,38,277,1285,208,371,510);
         this.WORM_COORDS[1267] = new Array(366,507,341,434,1065,427,704,232,979,374,104,522,1237,636,228,182,253,352,529,254,1234,202,1275,353,1143,371,169,191,581,220,919,382,407,594,115,260,221,614,789,322);
         this.WORM_COORDS[1268] = new Array(235,213,994,561,469,342,1128,380,276,323,363,506,510,281,328,341,851,216,651,207,243,376,405,384,334,422,1001,373,110,265,8,281,1073,423,637,399,906,355,185,191);
         this.WORM_COORDS[1269] = new Array(1220,507,1127,381,72,284,679,220,1074,423,753,228,236,214,1004,373,853,215,592,352,559,229,282,319,469,342,944,378,170,191,1103,475,455,597,189,350,379,513,413,385);
         this.WORM_COORDS[1270] = new Array(877,362,74,284,556,232,1057,434,607,197,402,593,84,640,259,349,1222,209,493,529,1128,380,928,380,1120,484,804,250,210,548,260,599,336,423,476,335,1178,347,1033,381);
         this.WORM_COORDS[1271] = new Array(1264,347,364,506,517,270,413,385,415,595,735,239,24,278,651,207,1149,364,124,257,1052,440,241,373,142,187,107,512,293,632,997,373,1109,478,1258,199,227,181,817,220);
         this.WORM_COORDS[1272] = new Array(1294,217,490,312,188,623,287,318,714,235,898,355,1054,438,437,336,119,257,609,196,51,280,997,373,358,503,64,535,791,312,246,605,435,594,905,551,163,188,232,361);
         this.WORM_COORDS[1273] = new Array(99,626,267,599,401,593,349,479,1247,200,900,355,1204,284,394,385,35,282,1133,377,1022,374,156,186,795,292,462,342,1252,508,813,222,105,275,1102,475,327,340,603,200);
         this.WORM_COORDS[1274] = new Array(290,317,1094,417,188,350,343,442,1032,379,98,528,937,379,874,225,227,181,40,544,591,212,136,193,456,339,820,220,1273,199,116,260,199,488,674,217,751,332,525,259);
         this.WORM_COORDS[1275] = new Array(862,376,653,401,679,220,959,376,291,317,1106,477,883,234,797,282,38,277,244,377,1043,444,501,293,1199,312,47,540,571,222,214,177,411,384,420,596,1033,381,1110,400);
         this.WORM_COORDS[1276] = new Array(1133,377,495,527,87,300,427,340,1106,477,782,343,534,249,47,540,1191,341,929,380,1239,508,795,292,240,371,485,320,749,229,382,403,1080,420,1095,591,0,281,1227,594);
         this.WORM_COORDS[1277] = new Array(161,187,39,277,509,284,334,422,1290,356,216,177,1090,417,276,638,626,196,439,336,719,237,1179,347,1255,509,363,506,204,349,322,577,915,361,855,382,320,324,1005,373);
         this.WORM_COORDS[1278] = new Array(399,384,347,464,63,535,1110,400,339,586,597,207,1197,322,51,280,264,349,520,265,1027,375,318,321,942,378,231,185,787,332,259,599,1035,448,886,238,1105,476,797,282);
         this.WORM_COORDS[1279] = new Array(1082,418,318,575,47,278,740,236,169,191,786,336,635,399,212,349,441,407,375,511,909,355,1010,373,1223,206,850,216,342,440,308,318,651,207,494,304,1155,359,1100,473);
         this.WORM_COORDS[1280] = new Array(74,532,1206,278,80,291,1037,447,1163,354,886,238,1243,201,620,194,193,183,485,530,455,339,741,234,405,594,354,497,235,364,1232,509,340,431,805,247,909,355,205,486);
         this.WORM_COORDS[1281] = new Array(312,319,274,638,129,257,578,220,968,375,403,384,824,219,1141,373,194,182,363,506,888,241,5,281,1065,427,912,357,398,593,1213,246,521,264,460,341,787,332,1002,569);
         this.WORM_COORDS[1282] = new Array(1064,428,569,223,1162,354,1031,378,63,288,353,494,213,616,849,216,500,601,287,318,748,231,747,334,147,186,908,355,1299,223,71,533,342,440,1220,507,502,291,117,259);
         this.WORM_COORDS[1283] = new Array(1101,474,558,231,1079,420,1133,377,463,342,815,221,179,193,390,389,1006,572,654,207,929,380,95,529,40,544,509,284,32,281,717,236,387,593,445,595,87,300,1190,342);
         this.WORM_COORDS[1284] = new Array(831,217,407,384,481,327,35,282,153,185,1267,199,652,207,300,317,237,216,342,440,1017,374,1138,555,942,378,42,543,124,257,1115,391,479,531,983,549,547,237,1058,434);
         this.WORM_COORDS[1285] = new Array(45,541,210,176,1203,284,1125,382,500,293,1182,346,264,349,674,217,962,522,450,338,779,339,398,384,414,595,1056,436,1025,374,749,229,90,296,1280,357,364,506,614,194);
         this.WORM_COORDS[1286] = new Array(1009,373,87,532,477,334,215,484,249,356,1034,449,1171,350,114,261,1090,417,947,377,1272,199,684,223,795,292,1081,592,349,479,12,282,880,230,1248,507,327,340,178,193);
         this.WORM_COORDS[1287] = new Array(776,337,42,277,440,336,297,317,495,302,350,484,1273,353,1058,434,145,186,340,431,1028,375,1108,478,123,257,561,227,1220,216,665,210,472,533,961,376,224,484,1293,213);
         this.WORM_COORDS[1288] = new Array(1065,427,111,264,419,348,904,355,239,370,572,222,1249,200,1220,507,3,281,185,488,1011,373,203,177,138,191,472,533,624,195,226,612,1166,353,1297,358,45,541,362,506);
         this.WORM_COORDS[1289] = new Array(706,234,1018,374,110,265,843,216,1279,202,47,278,1193,340,491,529,1097,420,374,511,339,427,679,350,265,349,775,337,601,203,764,229,952,502,909,355,540,243,135,194);
         this.WORM_COORDS[1290] = new Array(811,225,778,339,1149,364,428,595,1218,225,348,468,125,257,408,384,152,185,29,280,953,377,1255,509,1088,417,606,380,559,229,92,531,1204,284,1011,566,1012,373,1291,213);
         this.WORM_COORDS[1291] = new Array(38,277,311,318,1045,443,910,356,203,177,585,217,417,389,1290,212,626,395,1019,374,230,610,1106,477,1208,268,1103,591,404,594,355,498,711,347,428,339,771,335,248,358);
         this.WORM_COORDS[1292] = new Array(968,375,239,610,371,510,1087,417,84,302,325,420,419,348,1143,371,764,229,501,293,319,576,910,356,26,279,253,352,386,593,1030,377,645,402,647,206,1210,259,1230,203);
         this.WORM_COORDS[1293] = new Array(788,325,38,277,920,382,584,218,1019,374,1222,209,811,225,317,321,1127,381,245,376,898,557,197,180,665,210,375,511,401,384,1211,509,1101,474,1203,284,121,257,345,452);
         this.WORM_COORDS[1294] = new Array(1105,591,1209,264,85,301,1101,474,651,207,1174,348,1221,213,1044,443,360,504,7,281,103,624,291,317,29,549,1112,395,171,192,85,532,405,384,1022,374,749,332,1274,200);
         this.WORM_COORDS[1295] = new Array(221,178,1085,417,279,321,848,216,405,384,1031,378,492,308,153,185,227,357,479,598,1101,474,3,281,1240,201,1160,355,337,424,644,203,237,610,1298,358,548,236,941,378);
         this.WORM_COORDS[1296] = new Array(565,225,186,488,1173,349,369,508,238,368,226,180,1230,203,65,286,1206,278,1057,608,1074,423,322,337,868,220,410,384,786,336,1011,373,500,293,414,595,947,377,265,599);
         this.WORM_COORDS[1297] = new Array(1153,540,13,282,1256,199,956,377,198,488,398,384,827,218,322,337,707,234,490,312,235,213,1112,395,257,350,348,468,779,339,190,625,617,194,1225,507,161,187,623,393);
         this.WORM_COORDS[1298] = new Array(1244,201,981,374,1031,378,1169,351,363,506,561,227,284,638,1042,444,823,219,797,282,1283,356,460,341,852,384,188,188,324,339,769,334,56,283,701,232,261,349,626,196);
         this.WORM_COORDS[1299] = new Array(375,511,327,420,640,400,1064,428,254,351,990,557,946,377,74,284,9,281,517,270,804,250,312,319,129,257,614,194,1177,347,478,332,793,301,727,238,1123,384,1214,242);
         this.WORM_COORDS[1300] = new Array(769,532,47,498,1156,261,1190,415,195,352,715,557,632,580,463,346,859,269,288,325,105,364,980,481,418,283,1279,441,836,486,1048,519,1240,290,968,258,58,422,487,263);
         this.WORM_COORDS[1301] = new Array(1126,287,880,237,1046,258,277,342,1253,432,347,248,62,364,479,276,573,297,23,489,695,324,141,363,201,350,777,523,986,257,1207,290,445,349,699,575,400,278,533,245);
         this.WORM_COORDS[1302] = new Array(552,259,498,251,665,591,423,283,1142,263,459,347,223,350,1257,435,643,303,0,496,74,361,1010,243,889,559,726,544,1084,276,793,507,707,400,857,269,958,262,274,347);
         this.WORM_COORDS[1303] = new Array(827,492,1184,417,837,268,1223,291,1004,520,62,364,1002,251,39,493,346,249,233,351,293,318,1054,266,1168,262,743,534,577,301,701,395,458,348,1165,563,667,591,132,377);
         this.WORM_COORDS[1304] = new Array(109,367,1029,227,1100,278,942,249,657,291,1186,417,431,350,164,375,1241,291,385,240,227,351,479,276,729,540,3,493,1292,443,670,591,49,428,1167,261,998,520,889,559);
         this.WORM_COORDS[1305] = new Array(1289,442,698,393,1060,267,811,500,1211,292,738,535,60,364,694,324,1148,261,226,351,315,278,845,268,120,367,204,437,587,332,8,490,930,239,522,219,1137,614,450,349);
         this.WORM_COORDS[1306] = new Array(850,268,1269,440,757,536,22,489,344,249,669,287,192,354,135,380,1119,285,300,308,1045,254,717,415,1216,292,481,274,438,350,578,302,909,239,67,365,979,256,560,447);
         this.WORM_COORDS[1307] = new Array(756,536,381,240,148,358,854,449,1233,290,327,261,582,333,1176,262,1269,440,556,270,675,288,44,495,247,350,704,572,951,264,514,220,461,347,940,501,72,361,856,269);
         this.WORM_COORDS[1308] = new Array(30,491,877,445,421,353,643,303,279,340,1183,260,666,591,707,400,781,517,161,369,846,551,474,300,377,241,1291,442,1019,234,720,549,67,365,317,275,926,238,1114,285);
         this.WORM_COORDS[1309] = new Array(796,506,681,591,960,262,39,493,641,304,1071,271,149,358,1182,260,548,253,473,301,77,362,736,535,302,305,852,349,1289,442,408,281,899,566,888,236,227,351,1017,236);
         this.WORM_COORDS[1310] = new Array(770,532,1134,271,1054,266,183,411,379,240,895,238,39,493,902,567,628,301,986,257,449,349,1297,445,1237,290,720,549,703,396,71,361,1174,624,201,350,150,358,292,320);
         this.WORM_COORDS[1311] = new Array(1141,263,830,490,417,283,880,557,559,271,667,287,755,535,240,350,498,251,1275,441,302,305,861,270,67,365,169,385,11,489,589,332,699,394,591,421,1047,260,934,241);
         this.WORM_COORDS[1312] = new Array(286,329,581,307,960,480,1263,438,912,238,56,364,977,256,393,273,1220,292,1119,285,517,219,21,489,758,536,886,559,146,358,589,475,468,310,184,412,701,574,646,300);
         this.WORM_COORDS[1313] = new Array(0,496,115,370,309,289,535,246,209,349,872,265,1164,562,600,396,583,333,694,391,783,514,377,241,706,569,1184,630,429,289,971,257,260,350,1172,263,661,288,871,557);
         this.WORM_COORDS[1314] = new Array(919,238,1045,254,1254,434,717,415,506,244,794,506,1179,626,832,269,11,489,1119,285,63,509,465,345,208,349,1180,261,873,557,343,250,426,285,274,347,148,358,1241,291);
         this.WORM_COORDS[1315] = new Array(163,373,1262,577,746,534,436,350,665,591,524,221,73,361,44,495,403,279,290,322,222,350,334,254,838,486,1173,557,628,301,1204,405,697,327,998,255,1073,273,591,478);
         this.WORM_COORDS[1316] = new Array(863,432,982,256,913,238,72,361,1175,262,779,519,3,493,429,289,216,350,847,268,571,295,641,304,450,349,337,252,124,367,726,544,637,586,1097,278,939,502,1019,518);
         this.WORM_COORDS[1317] = new Array(472,302,123,367,403,279,806,501,614,296,20,489,1082,276,329,259,1122,605,253,349,962,262,1190,259,1254,434,1023,232,864,270,744,534,604,487,684,290,531,242,228,409);
         this.WORM_COORDS[1318] = new Array(805,502,1063,268,1266,438,1145,615,1212,293,706,399,580,305,326,262,720,549,58,364,1142,263,282,335,48,429,882,236,443,349,480,275,967,258,599,487,650,588,146,358);
         this.WORM_COORDS[1319] = new Array(15,489,445,349,79,514,797,506,484,271,1051,264,323,266,653,294,1248,413,190,356,862,270,288,325,128,368,549,254,643,588,395,276,707,400,49,428,708,567,910,572);
         this.WORM_COORDS[1320] = new Array(247,350,1174,263,1188,416,757,536,554,268,947,262,890,237,17,489,382,240,1277,441,822,495,949,482,49,428,680,590,905,569,100,362,1086,277,1144,615,188,360,838,268);
         this.WORM_COORDS[1321] = new Array(773,529,710,565,853,555,826,493,213,350,861,270,1217,292,17,489,995,255,306,296,940,246,1047,260,445,349,665,288,500,249,143,360,618,478,58,364,583,333,1278,441);
         this.WORM_COORDS[1322] = new Array(784,513,373,242,80,363,1193,631,915,238,990,256,694,580,584,333,188,360,1053,265,554,268,997,520,1227,290,317,275,1299,448,45,496,592,415,470,305,253,349,673,288);
         this.WORM_COORDS[1323] = new Array(248,350,1242,291,478,277,1004,249,1069,270,826,493,953,263,1185,630,534,246,443,349,79,362,54,503,698,393,683,290,1268,440,756,536,887,236,426,285,572,296,301,306);
         this.WORM_COORDS[1324] = new Array(837,268,271,347,708,400,16,489,590,332,1057,266,458,348,1184,259,892,562,156,362,60,364,1258,436,482,273,758,536,809,500,360,245,980,481,602,393,894,237,412,283);
         this.WORM_COORDS[1325] = new Array(608,296,831,271,132,377,937,503,54,364,922,567,1222,291,20,489,712,406,802,503,456,349,1040,228,1283,441,1165,261,1092,278,190,356,312,283,546,251,387,241,686,291);
         this.WORM_COORDS[1326] = new Array(109,367,728,541,1179,261,237,350,52,364,671,287,941,248,385,240,449,349,553,262,1049,264,331,257,621,475,1295,444,592,415,861,270,172,390,719,425,3,493,1241,291);
         this.WORM_COORDS[1327] = new Array(1179,261,812,500,98,361,1075,273,714,559,319,274,619,298,1257,435,714,409,378,241,80,514,19,489,270,347,1013,240,694,324,472,302,562,274,942,249,1232,290,889,559);
         this.WORM_COORDS[1328] = new Array(403,279,1279,441,293,318,62,364,826,493,738,535,218,350,636,305,709,403,948,483,850,349,1217,395,1096,278,40,493,872,265,877,557,153,359,1211,292,1182,548,347,248);
         this.WORM_COORDS[1329] = new Array(225,351,727,544,1011,242,518,219,1273,441,314,279,621,298,878,446,1200,285,1,495,831,271,90,360,159,366,786,512,451,349,368,244,675,590,909,571,715,411,930,518);
         this.WORM_COORDS[1330] = new Array(269,348,896,238,804,502,955,262,72,361,468,310,1299,448,1195,259,629,302,742,534,1042,235,373,242,23,489,566,278,208,349,713,407,610,484,223,415,924,566,522,219);
         this.WORM_COORDS[1331] = new Array(314,279,1050,264,586,469,1219,292,483,272,824,494,874,557,37,493,884,236,1144,262,130,371,443,349,56,364,592,415,700,394,1268,440,56,424,658,290,1210,400,703,572);
         this.WORM_COORDS[1332] = new Array(7,491,920,568,611,296,723,545,895,238,796,506,62,364,880,347,1152,261,49,428,307,294,1116,600,536,247,712,406,140,366,1258,436,469,307,404,279,850,554,1009,244);
         this.WORM_COORDS[1333] = new Array(472,302,1273,441,1100,278,910,239,343,250,994,255,669,287,141,363,501,249,802,503,1171,263,1175,625,65,365,705,398,646,588,271,347,216,424,1217,395,1214,570,1049,264);
         this.WORM_COORDS[1334] = new Array(1271,440,591,334,155,361,487,263,840,268,1102,278,228,352,809,500,751,534,83,364,698,576,306,296,1230,290,443,349,406,280,563,275,24,489,915,570,1175,556,354,246);
         this.WORM_COORDS[1335] = new Array(569,294,637,304,274,347,733,537,905,569,991,491,1002,251,157,363,218,350,99,361,1259,437,939,245,1145,262,412,283,348,248,49,428,1202,286,34,492,704,397,532,244);
         this.WORM_COORDS[1336] = new Array(113,370,191,355,1232,563,507,243,1138,266,986,257,470,305,40,493,374,241,1268,440,591,334,789,509,1061,268,571,450,839,268,879,557,566,278,309,289,841,484,1218,292);
         this.WORM_COORDS[1337] = new Array(535,246,1198,284,657,291,1255,435,704,397,355,245,53,364,434,350,812,500,557,447,956,262,1084,276,895,238,1005,520,1204,405,30,491,177,398,1102,580,758,536,262,349);
         this.WORM_COORDS[1338] = new Array(1004,520,1239,290,321,269,998,255,89,360,806,501,1100,278,545,251,926,521,638,586,1190,415,1173,263,909,239,240,350,147,358,876,444,40,493,431,350,721,547,593,310);
         this.WORM_COORDS[1339] = new Array(1028,228,1254,434,1100,278,9,490,1232,290,315,278,74,361,1191,630,848,268,721,547,961,262,253,349,1177,261,631,579,502,248,821,496,658,290,706,399,456,349,143,360);
         this.WORM_COORDS[1340] = new Array(694,580,1063,268,399,278,0,496,250,349,176,396,1202,286,84,364,444,349,763,534,1012,242,851,473,1115,285,598,301,1274,442,595,406,835,268,1211,400,593,481,659,290);
         this.WORM_COORDS[1341] = new Array(184,412,250,349,1205,289,1071,271,154,360,870,266,376,241,460,347,65,414,693,581,3,493,563,275,102,363,822,495,1150,560,936,242,670,287,989,256,758,536,1278,441);
         this.WORM_COORDS[1342] = new Array(704,397,907,569,1274,442,751,534,809,500,4,493,258,350,353,247,115,370,930,518,837,268,453,349,185,415,536,247,1121,285,658,290,1049,519,1244,292,1112,596,990,256);
         this.WORM_COORDS[1343] = new Array(190,356,1268,440,1183,260,717,415,1242,291,280,337,33,492,805,502,350,247,482,273,1098,278,680,289,78,362,464,345,1139,615,662,590,749,534,865,559,849,268,975,256);
         this.WORM_COORDS[1344] = new Array(1157,261,576,300,9,490,335,253,1239,290,463,346,861,270,896,564,741,534,229,352,1268,440,694,324,163,373,296,314,852,349,1088,278,982,256,527,235,1032,226,846,481);
         this.WORM_COORDS[1345] = new Array(576,300,1291,442,180,405,355,245,264,348,878,557,78,362,745,534,821,496,628,301,670,591,1063,268,908,239,977,256,1230,290,1137,267,33,492,484,271,464,345,693,323);
         this.WORM_COORDS[1346] = new Array(879,557,827,492,927,238,370,243,259,350,176,396,1262,437,45,496,1240,290,670,287,81,363,861,270,1132,611,598,399,722,547,1069,270,313,280,466,345,498,251,1139,265);
         this.WORM_COORDS[1347] = new Array(786,512,1289,442,489,259,990,256,273,347,330,258,21,489,568,281,1227,290,726,544,682,289,400,278,862,270,582,333,1141,263,857,433,1075,273,192,354,135,380,51,364);
         this.WORM_COORDS[1348] = new Array(92,360,810,500,913,238,1136,268,171,388,1007,246,1237,290,576,300,719,425,1273,441,848,350,412,283,861,270,469,307,294,316,689,584,633,304,851,555,1180,405,534,246);
         this.WORM_COORDS[1349] = new Array(697,392,749,534,1049,264,819,498,399,278,1275,441,691,582,492,256,1153,261,841,268,118,368,203,349,1183,413,1232,290,631,303,336,253,897,565,460,347,48,429,274,347);
         this.WORM_COORDS[1350] = new Array(1181,628,993,255,1127,286,966,323,874,264,1274,442,823,495,566,278,678,288,452,349,940,246,234,351,416,283,101,362,156,362,322,268,869,557,771,532,1201,286,587,332);
         this.WORM_COORDS[1351] = new Array(337,252,879,237,975,256,750,534,1099,278,1245,403,144,359,72,361,717,415,658,290,824,494,39,493,241,351,590,332,1227,290,553,262,1171,623,915,570,487,263,297,312);
         this.WORM_COORDS[1352] = new Array(629,577,295,315,1293,443,12,489,1202,632,183,411,620,298,851,473,739,535,1096,278,52,364,973,480,853,268,1241,291,675,288,534,246,1148,261,1186,417,983,256,1044,521);
         this.WORM_COORDS[1353] = new Array(1265,438,80,514,414,283,18,489,697,577,195,352,672,287,555,269,868,558,1179,626,255,349,952,264,791,508,1212,293,608,296,1070,270,863,270,1016,237,86,365,638,586);
         this.WORM_COORDS[1354] = new Array(1142,263,1196,260,319,274,159,366,521,219,950,264,665,288,1280,441,1061,268,662,590,745,534,828,491,1017,518,288,325,467,314,593,412,14,489,399,278,98,361,582,464);
         this.WORM_COORDS[1355] = new Array(418,283,903,240,643,303,441,350,237,350,493,255,948,483,734,536,87,364,842,484,791,508,641,589,163,373,713,407,1008,244,29,491,1244,292,335,253,1119,285,1066,269);
         this.WORM_COORDS[1356] = new Array(1156,261,622,298,1035,226,162,370,93,360,269,348,1233,290,435,350,753,534,6,491,1257,435,699,394,857,556,399,278,910,239,475,299,1216,639,831,271,956,480,594,409);
         this.WORM_COORDS[1357] = new Array(1018,235,822,495,588,332,1207,402,713,407,435,350,225,351,946,261,142,361,860,270,1279,441,649,588,48,429,1086,277,769,532,497,252,1227,290,1151,261,1203,633,567,279);
         this.WORM_COORDS[1358] = new Array(701,574,614,296,782,515,102,363,1214,293,863,270,259,350,838,486,196,352,466,345,1293,443,553,262,25,489,1098,278,1239,396,918,238,1217,570,382,240,697,392,1029,227);
         this.WORM_COORDS[1359] = new Array(90,360,288,325,589,475,1236,290,208,349,39,493,1118,285,954,263,901,566,796,506,660,289,557,270,484,271,706,399,890,237,324,265,420,283,444,349,1025,230,1275,441);
         this.WORM_COORDS[1360] = new Array(1199,408,466,345,1261,437,661,288,753,534,1009,244,236,350,1117,285,922,238,834,268,812,500,551,257,718,418,417,283,584,467,179,402,73,361,1142,615,1183,260,349,247);
         this.WORM_COORDS[1361] = new Array(954,263,294,316,466,345,957,480,847,268,815,499,1192,259,80,363,599,300,502,248,1291,442,701,395,192,354,652,294,757,536,1052,264,354,246,14,489,688,585,869,437);
         this.WORM_COORDS[1362] = new Array(485,270,635,305,266,348,465,345,1222,641,581,307,690,294,135,380,1232,290,1078,274,814,499,848,268,1175,383,409,281,67,365,721,547,1284,441,308,291,544,250,1021,518);
         this.WORM_COORDS[1363] = new Array(834,268,662,288,108,366,912,572,811,500,1126,287,47,498,248,350,539,248,170,386,1029,227,722,547,360,245,710,404,1205,289,453,349,895,238,1220,641,600,299,1129,609);
         this.WORM_COORDS[1364] = new Array(304,300,776,524,523,220,846,268,827,492,915,238,69,361,720,549,126,368,201,350,17,489,661,288,600,299,1264,438,969,479,705,398,1216,292,883,454,442,350,589,475);
         this.WORM_COORDS[1365] = new Array(125,368,1285,441,31,492,535,246,1168,262,53,364,904,240,304,300,368,244,1237,290,609,296,760,535,954,263,239,350,1053,265,681,289,838,486,439,350,688,585,948,483);
         this.WORM_COORDS[1366] = new Array(974,256,337,252,663,288,1146,261,561,273,815,499,1272,440,428,288,1231,290,905,240,69,361,4,493,755,535,502,248,1221,395,708,400,64,510,220,350,582,333,170,386);
         this.WORM_COORDS[1367] = new Array(1237,290,637,449,824,494,868,437,1259,437,334,254,36,493,1102,278,85,364,1173,263,281,336,880,237,981,256,192,354,726,544,445,349,1032,226,929,518,388,241,685,290);
         this.WORM_COORDS[1368] = new Array(1048,262,774,527,20,489,1183,260,629,302,983,256,911,572,910,239,271,347,110,368,845,268,177,398,1250,425,49,428,713,407,683,290,687,586,1133,272,830,490,568,281);
         this.WORM_COORDS[1369] = new Array(576,300,90,360,772,531,993,255,852,469,936,504,370,243,312,283,1244,292,196,352,893,237,444,349,1277,441,694,324,20,489,1165,261,275,344,890,561,1085,276,840,268);
         this.WORM_COORDS[1370] = new Array(159,366,242,350,91,360,671,287,333,255,417,283,766,534,598,301,1074,273,1231,290,973,256,872,439,527,235,0,496,1280,441,87,510,443,349,870,266,706,399,1210,400);
         this.WORM_COORDS[1371] = new Array(790,508,672,591,936,242,653,294,158,364,733,537,300,308,1291,442,704,397,436,350,1200,407,847,480,99,361,412,283,1240,290,572,296,1130,284,224,351,1020,518,27,490);
         this.WORM_COORDS[1372] = new Array(548,253,826,493,1298,447,1198,631,490,258,13,489,689,294,923,238,1075,273,237,350,431,350,596,303,1216,396,854,349,54,364,998,255,415,283,752,534,150,358,965,479);
         this.WORM_COORDS[1373] = new Array(961,262,722,547,852,268,196,352,1018,235,892,562,1074,273,1255,435,625,300,1184,417,420,283,1011,518,554,268,102,363,799,505,10,490,650,588,213,428,417,353,1216,570);
         this.WORM_COORDS[1374] = new Array(1243,292,1069,270,466,345,1254,434,120,367,1004,249,640,588,1155,261,569,294,811,500,334,254,749,534,528,237,912,238,692,581,20,489,208,349,701,395,272,347,1002,520);
         this.WORM_COORDS[1375] = new Array(85,364,362,245,463,346,305,299,963,262,1056,266,1251,428,1132,611,171,388,634,305,35,492,1121,285,693,581,238,350,1243,292,717,415,805,502,573,297,413,283,875,263);
         this.WORM_COORDS[1376] = new Array(1079,274,676,590,875,443,1243,292,1221,395,1130,284,264,348,792,507,734,536,36,493,447,349,531,242,666,287,1280,441,427,286,712,406,338,251,106,365,914,570,190,423);
         this.WORM_COORDS[1377] = new Array(803,503,1124,287,733,537,934,241,226,351,528,237,871,439,1002,251,123,367,471,303,1177,261,844,268,1186,630,353,247,1259,437,569,294,670,287,1073,273,642,589,58,364);
         this.WORM_COORDS[1378] = new Array(1179,261,429,289,535,246,862,557,1273,441,244,350,866,269,825,493,121,367,769,532,658,290,184,412,53,503,718,552,597,302,344,249,1183,629,945,261,1163,560,1080,275);
         this.WORM_COORDS[1379] = new Array(714,409,356,245,208,349,725,544,607,486,1232,290,1098,278,656,589,36,493,439,350,625,300,679,288,532,244,817,499,948,483,1165,261,1279,441,57,364,112,369,987,257);
         this.WORM_COORDS[1380] = new Array(963,325,695,579,24,489,1100,278,1165,261,335,253,857,269,621,298,49,428,694,391,1279,441,242,350,857,556,964,479,773,529,76,361,836,486,1228,290,968,258,433,350);
         this.WORM_COORDS[1381] = new Array(782,515,501,249,1286,441,947,262,48,429,578,302,1196,260,1104,279,326,262,206,349,285,331,25,489,639,304,146,358,719,425,436,350,844,268,419,283,1140,615,93,360);
         this.WORM_COORDS[1382] = new Array(205,349,119,367,863,558,617,297,1069,270,698,393,28,490,350,247,846,268,936,504,875,443,444,349,1212,399,292,320,674,590,1279,441,783,514,538,248,1165,261,946,261);
         this.WORM_COORDS[1383] = new Array(818,499,453,349,905,240,1283,441,372,242,284,332,38,493,1218,292,707,568,1115,285,64,365,191,355,662,288,982,256,899,566,537,248,123,367,1124,606,701,395,581,307);
         this.WORM_COORDS[1384] = new Array(652,588,520,219,82,363,8,490,1252,431,227,351,965,260,1162,261,1073,273,449,349,346,249,831,490,746,534,486,269,1222,291,598,301,1132,611,1216,570,218,421,689,294);
         this.WORM_COORDS[1385] = new Array(539,248,201,350,58,364,792,507,591,334,480,275,1030,227,42,494,1109,281,344,249,287,327,132,377,677,288,1235,290,733,537,928,564,1251,428,841,268,53,425,696,391);
         this.WORM_COORDS[1386] = new Array(1287,442,1002,251,1071,271,636,305,788,509,948,263,444,349,105,364,707,400,317,275,4,493,225,351,1230,290,685,587,1126,287,1178,261,923,567,833,269,379,240,691,296);
         this.WORM_COORDS[1387] = new Array(810,500,752,534,601,299,144,359,471,303,591,421,224,351,287,327,1123,606,420,283,43,495,1240,290,703,396,1103,279,998,255,666,287,1245,403,948,483,212,429,928,239);
         this.WORM_COORDS[1388] = new Array(223,415,539,248,1217,292,805,502,1088,278,27,490,615,297,944,255,1273,441,255,349,1037,226,382,240,893,563,705,570,684,290,437,351,838,268,590,476,66,365,593,412);
         this.WORM_COORDS[1389] = new Array(1270,440,919,238,587,332,374,241,709,567,773,529,77,362,244,350,1052,264,316,277,654,293,43,495,184,412,1231,290,554,268,717,415,458,348,861,557,1220,568,476,280);
         this.WORM_COORDS[1390] = new Array(454,349,1190,259,619,477,903,240,252,349,783,514,555,269,40,493,348,248,1277,441,90,360,722,547,990,256,1042,235,650,296,843,483,476,280,556,447,1127,286,707,400);
         this.WORM_COORDS[1391] = new Array(414,283,174,393,644,303,1171,263,855,349,100,362,570,295,906,569,799,505,1163,560,855,269,444,349,1015,238,483,272,225,351,307,294,959,262,730,539,1073,273,1208,401);
         this.WORM_COORDS[1392] = new Array(1239,396,284,332,371,242,648,299,729,540,103,363,983,256,433,350,516,219,572,450,859,269,889,559,154,360,1042,235,569,294,1175,262,9,490,1036,520,317,275,212,350);
         this.WORM_COORDS[1393] = new Array(1094,278,205,349,395,276,971,257,709,403,126,368,320,272,181,406,733,537,894,563,612,296,931,509,12,489,1121,605,555,269,485,270,1288,442,871,265,807,501,76,361);
         this.WORM_COORDS[1394] = new Array(608,296,184,412,1178,626,266,348,661,590,394,275,190,356,864,270,734,536,1252,431,793,507,658,290,475,299,18,489,85,364,950,264,1131,278,911,572,545,251,853,465);
         this.WORM_COORDS[1395] = new Array(554,268,809,500,636,305,1164,261,952,264,469,307,898,346,99,361,712,561,341,250,250,349,1094,278,214,427,872,557,48,429,654,589,497,252,33,492,889,237,158,364);
         this.WORM_COORDS[1396] = new Array(410,282,651,296,51,364,1065,269,761,535,1185,259,105,364,10,490,284,332,1006,247,481,274,1261,437,852,555,335,253,700,394,49,428,1125,287,846,350,182,408,559,271);
         this.WORM_COORDS[1397] = new Array(860,270,505,245,243,350,372,242,1082,276,1228,395,189,358,710,404,974,256,1208,291,446,349,1148,615,695,324,39,493,762,535,824,494,905,569,1151,261,296,314,69,361);
         this.WORM_COORDS[1398] = new Array(844,268,74,515,1074,273,1115,599,590,332,485,270,653,294,141,363,1187,259,721,547,317,275,1273,441,1208,635,870,557,809,500,941,248,875,443,644,588,407,281,60,364);
         this.WORM_COORDS[1399] = new Array(1300,449,456,349,561,447,341,250,725,544,627,301,1022,232,248,350,187,361,415,283,844,268,130,371,804,502,1159,261,1096,278,953,263,46,497,713,407,659,589,879,557);
         this.WORM_COORDS[1400] = new Array(1232,519,627,229,1031,210,389,349,423,245,621,430,278,355,380,298,1223,241,1102,261,529,211,1028,502,860,369,173,217,266,198,954,452,1041,376,766,547,1298,516,73,293);
         this.WORM_COORDS[1401] = new Array(1094,260,749,233,34,321,466,254,389,286,379,340,1148,248,1285,512,684,255,124,210,984,460,1015,365,1030,210,206,210,1182,482,613,243,927,521,549,340,4,401,802,538);
         this.WORM_COORDS[1402] = new Array(1080,234,777,376,41,317,246,342,453,262,391,286,536,205,1300,517,841,367,235,204,560,343,813,265,696,255,164,219,899,384,610,417,1276,373,1189,234,992,407,1138,436);
         this.WORM_COORDS[1403] = new Array(363,327,1274,512,1200,232,679,258,206,210,1020,210,81,282,329,195,949,456,1266,240,741,250,900,385,582,361,626,231,768,379,419,251,996,391,793,219,895,510,663,458);
         this.WORM_COORDS[1404] = new Array(1269,512,997,252,610,245,490,236,956,449,1157,289,225,203,59,563,394,281,1017,498,1070,391,18,398,337,260,826,269,785,209,686,255,1054,210,79,285,878,356,579,358);
         this.WORM_COORDS[1405] = new Array(635,220,218,205,121,210,690,255,540,205,10,401,915,510,844,381,350,320,950,454,414,257,640,444,1256,241,792,540,1060,211,1041,514,850,535,830,273,773,377,777,200);
         this.WORM_COORDS[1406] = new Array(193,213,653,454,1059,401,713,253,1125,257,406,266,940,471,260,198,1053,210,250,345,477,247,872,515,560,343,532,208,121,210,1225,522,904,386,995,252,928,522,24,398);
         this.WORM_COORDS[1407] = new Array(1016,213,1124,258,600,396,938,472,116,209,260,198,494,233,1278,249,800,538,426,241,389,349,1292,515,907,387,620,238,43,317,747,233,1056,400,1187,486,551,340,546,206);
         this.WORM_COORDS[1408] = new Array(1292,515,408,264,516,216,74,291,28,399,1008,252,249,208,1022,499,599,271,799,232,560,343,1058,210,1155,454,885,354,668,247,957,449,686,441,1116,258,109,207,792,540);
         this.WORM_COORDS[1409] = new Array(1026,210,938,472,27,399,1236,249,1153,249,774,200,306,192,141,211,688,255,878,356,644,447,625,233,50,314,247,207,485,242,360,325,11,557,1264,349,1285,512,146,476);
         this.WORM_COORDS[1410] = new Array(803,538,233,203,369,331,34,566,5,401,622,433,632,220,909,387,85,279,592,275,454,261,1112,260,1076,386,771,200,934,476,845,383,404,269,1166,290,580,359,337,260);
         this.WORM_COORDS[1411] = new Array(526,211,11,401,148,214,1066,214,619,428,300,195,1032,359,1057,523,931,482,723,248,36,320,838,348,1235,248,469,252,810,535,409,263,131,460,97,273,618,240,822,267);
         this.WORM_COORDS[1412] = new Array(73,293,953,452,416,255,847,387,1021,210,1170,294,897,380,636,441,144,213,1199,232,1258,241,759,229,1280,511,29,399,585,365,777,376,249,208,1216,628,1149,447,923,517);
         this.WORM_COORDS[1413] = new Array(1163,462,776,200,211,208,553,211,674,252,298,195,1142,248,481,245,42,317,1225,243,42,568,573,350,912,389,412,259,994,252,365,327,773,547,776,376,5,401,807,264);
         this.WORM_COORDS[1414] = new Array(421,248,1050,209,360,325,554,213,273,200,726,248,152,215,218,205,1048,518,887,510,1228,247,802,538,1284,512,860,369,667,246,806,263,627,437,493,233,1025,355,154,466);
         this.WORM_COORDS[1415] = new Array(906,386,1009,252,785,209,542,341,1133,251,718,250,939,471,133,464,142,211,1205,231,816,266,533,207,760,458,17,398,371,332,73,293,625,233,885,510,394,281,238,205);
         this.WORM_COORDS[1416] = new Array(131,460,541,205,1131,253,55,568,730,346,932,479,1298,516,277,355,227,203,4,401,906,386,1036,211,1245,246,676,257,1045,517,825,534,805,261,1237,517,395,280,105,207);
         this.WORM_COORDS[1417] = new Array(879,356,696,255,656,455,1182,482,1284,512,793,219,1218,237,965,449,1126,257,3,401,1273,243,827,270,635,220,442,229,531,208,1135,339,89,277,177,216,140,474,1019,358);
         this.WORM_COORDS[1418] = new Array(1111,260,204,210,567,346,605,250,357,322,1192,491,670,248,797,226,761,357,793,540,937,472,520,213,429,238,1074,387,880,355,45,316,1264,240,611,418,161,450,20,398);
         this.WORM_COORDS[1419] = new Array(616,242,762,225,583,362,843,378,923,517,907,387,1101,261,820,534,748,347,367,329,1211,232,65,550,1045,210,36,320,756,450,953,452,315,192,1296,516,817,266,641,444);
         this.WORM_COORDS[1420] = new Array(49,315,960,449,202,210,1193,233,347,316,145,213,664,244,271,354,1087,375,609,246,789,542,1087,252,472,250,569,346,1295,515,756,232,402,271,1249,244,336,195,1152,295);
         this.WORM_COORDS[1421] = new Array(1234,248,324,195,779,201,701,253,1292,515,246,207,1040,210,14,401,1007,375,643,221,958,449,1070,391,97,273,990,252,469,252,355,322,580,359,754,445,786,543,154,215);
         this.WORM_COORDS[1422] = new Array(960,449,12,401,831,275,1200,232,689,255,199,210,580,359,1010,372,810,535,1292,515,462,257,1045,210,332,304,54,311,291,191,910,388,979,250,632,220,853,379,748,347);
         this.WORM_COORDS[1423] = new Array(614,243,788,212,247,207,859,370,732,247,641,444,1292,515,1205,231,340,310,1041,376,313,192,569,346,25,398,502,225,1092,370,114,208,67,300,960,449,1110,260,434,233);
         this.WORM_COORDS[1424] = new Array(1159,289,109,207,491,235,1249,244,1106,261,414,257,572,349,885,354,164,219,4,401,751,232,1189,234,627,229,66,302,331,195,12,557,377,339,256,199,1016,213,0,464);
         this.WORM_COORDS[1425] = new Array(236,205,6,401,652,453,1081,236,375,337,1013,253,1178,269,489,237,73,293,281,356,739,249,1161,460,1065,395,602,268,938,472,569,346,305,193,1300,517,792,370,5,558);
         this.WORM_COORDS[1426] = new Array(1181,240,585,365,1051,209,1228,640,491,235,649,225,437,232,335,306,1298,516,710,253,282,193,798,366,648,450,824,268,948,457,874,358,1022,356,1099,261,1237,249,144,213);
         this.WORM_COORDS[1427] = new Array(1057,210,902,509,1099,261,483,245,82,282,162,218,8,401,1282,512,528,342,1239,250,159,455,702,253,636,220,416,255,920,395,970,450,262,198,1038,371,18,558,755,232);
         this.WORM_COORDS[1428] = new Array(679,258,1260,513,1161,289,1206,231,812,534,952,452,373,335,49,315,493,233,1029,210,188,214,925,520,1086,250,758,454,335,195,546,206,1043,379,866,362,584,364,435,233);
         this.WORM_COORDS[1429] = new Array(467,253,130,210,1089,255,1139,249,807,264,641,220,913,390,40,397,1249,244,739,249,837,337,957,449,750,348,563,343,596,273,1026,501,247,342,1137,339,327,302,537,205);
         this.WORM_COORDS[1430] = new Array(854,377,1168,292,358,323,703,253,11,401,630,220,773,200,423,245,157,216,1245,246,1293,515,808,265,717,349,413,363,37,566,1181,481,852,532,257,198,494,233,960,449);
         this.WORM_COORDS[1431] = new Array(756,232,441,229,1162,289,160,217,343,312,918,512,17,398,1052,209,1215,520,543,340,988,465,58,308,782,545,291,191,1278,249,632,220,747,347,141,475,589,276,815,265);
         this.WORM_COORDS[1432] = new Array(1161,289,623,235,724,248,624,435,297,192,389,286,111,207,1103,261,972,251,203,210,1245,246,432,235,787,542,949,456,926,521,1055,522,57,309,865,363,1075,387,22,398);
         this.WORM_COORDS[1433] = new Array(397,277,722,248,91,276,371,332,573,350,97,212,1099,261,14,451,661,243,958,449,1235,518,430,374,1054,398,302,194,1271,242,607,248,500,227,1288,513,34,566,1053,210);
         this.WORM_COORDS[1434] = new Array(657,240,717,251,942,466,1120,258,1239,250,1227,521,894,368,580,359,1156,455,473,249,44,316,168,218,985,250,1055,522,1043,379,29,565,292,351,923,517,766,379,291,191);
         this.WORM_COORDS[1435] = new Array(672,455,381,294,862,367,926,521,946,460,512,220,83,281,921,397,292,191,698,254,1089,255,618,240,776,546,429,238,992,407,1021,210,598,392,1225,243,784,206,1046,385);
         this.WORM_COORDS[1436] = new Array(931,482,598,392,555,215,768,548,1124,258,688,255,386,288,492,234,204,210,1054,210,115,208,78,285,1177,479,849,386,999,252,599,271,290,191,783,205,1151,326,992,473);
         this.WORM_COORDS[1437] = new Array(354,321,990,252,1008,374,720,250,199,210,919,393,131,460,751,348,292,191,649,451,621,237,797,539,1093,259,577,355,799,232,27,399,95,357,1144,248,61,305,99,210);
         this.WORM_COORDS[1438] = new Array(603,255,367,329,990,469,811,535,972,251,659,241,807,264,20,558,882,511,13,401,88,277,1050,209,1116,414,1173,475,144,477,634,440,306,192,1273,243,858,371,413,258);
         this.WORM_COORDS[1439] = new Array(927,521,707,253,410,262,119,210,48,315,839,535,236,205,482,245,850,385,344,313,600,270,1296,516,1213,233,1127,255,1055,399,946,460,834,283,2,401,1237,581,1023,210);
         this.WORM_COORDS[1440] = new Array(125,450,796,224,1056,210,1222,523,866,362,154,215,400,274,24,398,1080,383,333,195,630,438,1144,248,656,239,690,437,1004,252,484,243,249,344,38,566,1205,231,333,305);
         this.WORM_COORDS[1441] = new Array(556,341,945,461,643,221,589,276,1026,210,911,388,40,318,556,218,1169,293,233,203,706,253,156,463,642,445,314,192,392,285,1079,384,23,560,152,215,797,226,1263,240);
         this.WORM_COORDS[1442] = new Array(1216,235,127,210,859,370,372,334,26,398,533,207,619,239,425,243,1003,252,653,454,1003,380,965,449,568,346,1197,498,1140,438,863,521,1090,257,273,354,1294,515,923,517);
         this.WORM_COORDS[1443] = new Array(885,354,61,305,770,490,1192,233,731,247,1280,511,1163,289,295,191,126,210,837,535,961,449,353,321,1,401,534,207,828,270,667,246,642,445,16,557,1053,210,980,250);
         this.WORM_COORDS[1444] = new Array(949,456,862,367,646,223,74,291,467,253,312,192,869,517,778,375,597,273,929,523,595,385,155,216,1239,250,766,217,1087,252,28,399,1074,387,661,457,1294,515,1186,236);
         this.WORM_COORDS[1445] = new Array(31,400,426,241,487,239,1291,515,49,315,844,535,923,517,825,269,294,191,844,381,722,248,675,452,631,220,1130,253,787,211,1002,382,735,346,593,381,770,490,1077,226);
         this.WORM_COORDS[1446] = new Array(1153,249,947,458,1274,244,760,355,358,323,706,253,928,522,425,243,761,227,235,204,29,399,553,211,646,223,1077,226,1011,253,901,385,1219,237,1292,515,849,536,1010,495);
         this.WORM_COORDS[1447] = new Array(774,200,715,252,132,462,172,217,366,328,932,479,424,244,655,238,973,250,785,544,589,373,84,280,616,424,1265,353,1045,210,868,361,485,242,1138,249,690,437,97,212);
         this.WORM_COORDS[1448] = new Array(1255,593,391,286,1270,242,25,398,95,275,297,346,500,227,967,449,1033,211,1071,390,225,203,1043,515,556,218,880,355,1298,516,448,266,300,195,774,200,801,252,1135,339);
         this.WORM_COORDS[1449] = new Array(213,207,611,418,1221,524,135,210,503,224,300,195,1052,396,26,398,942,466,350,320,1244,246,1024,210,1125,257,1192,233,885,354,42,317,597,273,1150,331,651,227,745,235);
         this.WORM_COORDS[1450] = new Array(149,215,321,195,1093,259,1229,521,408,264,1196,232,494,233,56,310,7,401,914,390,832,276,220,205,725,347,641,220,99,210,896,510,716,251,1135,434,839,535,966,449);
         this.WORM_COORDS[1451] = new Array(1259,240,1071,217,712,253,1144,248,423,245,578,357,551,209,921,397,18,398,861,368,816,266,500,227,289,191,161,217,230,203,39,319,857,527,924,519,4,462,1127,428);
         this.WORM_COORDS[1452] = new Array(1025,210,122,376,326,195,392,285,876,357,605,250,1016,363,1193,233,543,205,137,210,609,415,49,315,690,255,1122,258,1253,242,205,210,1298,516,1066,394,908,509,970,450);
         this.WORM_COORDS[1453] = new Array(958,449,858,371,532,208,1057,210,1110,260,224,204,566,345,25,398,291,351,306,192,1219,237,800,246,172,217,1072,389,1150,331,738,248,1300,517,1228,521,762,380,628,437);
         this.WORM_COORDS[1454] = new Array(222,204,804,260,23,398,538,205,450,265,1227,521,1169,469,1026,210,855,376,907,387,1281,511,324,301,1215,234,629,437,562,343,749,233,644,221,766,547,1131,253,918,512);
         this.WORM_COORDS[1455] = new Array(1148,248,341,310,1237,249,1090,257,917,392,425,243,941,468,1001,488,710,253,568,346,1019,211,1261,513,618,240,317,192,88,277,201,210,118,371,617,426,397,356,120,210);
         this.WORM_COORDS[1456] = new Array(963,449,851,382,643,221,1001,252,925,520,759,353,1201,503,335,195,832,276,246,342,764,222,910,388,487,239,201,210,82,282,59,563,546,206,117,209,1096,260,1028,355);
         this.WORM_COORDS[1457] = new Array(1262,240,2,401,1124,258,663,244,1282,512,1090,372,339,309,863,365,786,210,1058,523,474,248,949,456,650,452,74,516,78,285,787,542,996,252,762,380,818,266,1206,231);
         this.WORM_COORDS[1458] = new Array(1051,209,349,319,145,477,527,211,11,401,702,253,1224,242,1030,356,960,449,1155,289,612,244,205,210,1289,514,916,391,667,459,808,265,308,192,922,516,971,252,337,260);
         this.WORM_COORDS[1459] = new Array(132,210,1241,248,141,475,998,252,394,281,798,366,577,355,554,213,294,191,1059,211,1225,522,79,285,986,462,502,225,1109,260,928,522,1055,399,339,309,216,205,851,382);
         this.WORM_COORDS[1460] = new Array(830,273,962,449,922,516,701,253,249,208,1194,233,338,308,561,343,159,216,990,252,864,364,63,304,1046,209,310,192,1044,516,1284,512,410,262,1253,242,776,200,518,215);
         this.WORM_COORDS[1461] = new Array(934,476,1133,251,838,348,835,287,892,356,1283,512,61,305,566,345,455,260,692,255,655,455,975,250,613,243,192,213,368,330,1211,232,779,201,1060,400,1038,210,135,210);
         this.WORM_COORDS[1462] = new Array(622,433,590,275,1236,249,742,236,425,243,89,277,1051,209,1255,513,880,355,992,252,965,449,479,246,211,208,155,216,1160,289,930,522,34,321,550,340,1099,261,794,220);
         this.WORM_COORDS[1463] = new Array(527,211,994,476,103,208,358,323,982,250,416,255,122,376,1080,234,86,278,1076,386,21,398,161,217,675,255,919,393,864,364,1003,380,1216,235,247,342,1272,243,619,428);
         this.WORM_COORDS[1464] = new Array(977,454,1048,389,1227,245,753,232,1282,512,1072,218,686,255,848,387,71,297,992,252,346,316,5,401,489,237,1194,494,821,534,165,219,913,390,97,212,643,446,1279,250);
         this.WORM_COORDS[1465] = new Array(514,218,172,217,1141,439,658,241,704,334,447,267,403,357,1127,255,39,319,1050,394,392,285,922,516,7,401,729,247,289,191,775,376,987,251,601,269,1260,240,1260,513);
         this.WORM_COORDS[1466] = new Array(61,305,999,486,1296,516,592,275,570,347,873,358,1221,239,1001,252,150,472,1159,289,936,473,510,221,301,336,754,349,427,240,835,287,698,254,1079,230,99,210,605,408);
         this.WORM_COORDS[1467] = new Array(606,249,216,205,94,275,500,227,415,256,787,542,662,243,571,348,1,401,870,359,784,206,1171,294,356,322,285,192,1068,215,809,265,1226,244,17,558,966,449,1264,513);
         this.WORM_COORDS[1468] = new Array(1112,260,573,350,947,458,922,516,690,255,1032,211,157,460,62,305,539,205,1214,234,303,194,742,236,163,218,375,337,413,258,837,535,32,400,920,395,792,218,1170,294);
         this.WORM_COORDS[1469] = new Array(623,235,1096,260,1048,209,393,283,169,218,755,232,565,345,753,349,789,542,292,191,1267,358,962,449,1230,248,374,336,521,213,992,252,836,331,686,255,102,208,926,521);
         this.WORM_COORDS[1470] = new Array(340,310,734,248,1009,373,950,454,84,280,256,199,877,513,405,268,638,220,570,347,1061,526,1092,258,18,398,516,216,33,322,1271,512,1014,253,55,568,1262,599,809,265);
         this.WORM_COORDS[1471] = new Array(613,243,151,471,408,264,852,380,198,211,714,252,1284,512,908,387,1138,249,1268,241,25,398,935,475,583,362,495,232,1070,216,748,347,839,535,78,285,372,334,1061,399);
         this.WORM_COORDS[1472] = new Array(1205,231,868,361,1252,591,1271,242,956,449,579,358,178,215,492,234,754,349,1001,383,32,400,389,286,1023,210,677,258,923,517,781,203,92,275,1047,517,1157,289,1197,498);
         this.WORM_COORDS[1473] = new Array(1038,513,916,391,836,331,1203,506,263,198,27,399,1090,257,44,316,621,430,327,195,958,449,132,210,1288,513,557,341,1190,234,820,267,768,205,612,244,1252,243,133,464);
         this.WORM_COORDS[1474] = new Array(964,449,617,241,770,200,284,192,206,210,895,375,1274,244,0,464,1202,231,1082,242,1135,250,438,230,2,562,1224,636,85,279,811,265,599,395,558,342,387,288,27,399);
         this.WORM_COORDS[1475] = new Array(1047,388,1157,456,93,275,336,195,1222,240,933,478,862,367,547,206,1111,260,581,360,718,250,1046,209,822,267,919,393,187,214,35,320,825,534,652,229,424,371,338,308);
         this.WORM_COORDS[1476] = new Array(722,248,894,510,1224,242,539,341,894,368,544,205,306,192,110,207,984,250,425,243,65,550,410,361,1082,380,1035,510,1269,512,809,535,56,310,2,401,945,461,234,203);
         this.WORM_COORDS[1477] = new Array(1280,511,87,278,436,233,1106,261,796,539,523,212,720,250,613,421,1023,500,958,449,122,210,662,243,570,347,901,385,0,401,861,523,254,350,1015,215,314,192,1057,401);
         this.WORM_COORDS[1478] = new Array(952,452,996,391,847,387,66,302,1225,243,1004,252,902,509,254,203,56,567,398,276,507,223,1045,517,718,250,276,355,769,201,186,214,1175,272,770,378,1058,210,1101,261);
         this.WORM_COORDS[1479] = new Array(1071,390,1098,260,68,299,32,565,1276,246,905,386,460,257,953,452,893,510,378,340,723,248,1188,235,617,241,1048,209,398,276,235,204,797,539,545,205,271,354,785,209);
         this.WORM_COORDS[1480] = new Array(1166,290,783,205,895,375,410,262,980,250,1238,517,1098,260,3,401,90,276,63,556,268,200,144,213,570,347,672,250,527,211,468,252,1008,494,771,548,930,522,1297,516);
         this.WORM_COORDS[1481] = new Array(1013,253,1276,246,1216,235,723,248,32,400,627,437,1266,512,900,385,325,301,472,250,553,211,584,364,1216,521,45,568,1070,216,332,195,173,217,73,293,415,256,600,270);
         this.WORM_COORDS[1482] = new Array(662,243,1275,511,329,195,764,380,32,400,128,210,813,265,48,315,592,275,871,359,747,233,8,455,1107,261,237,205,1269,241,615,423,983,250,559,343,941,468,407,265);
         this.WORM_COORDS[1483] = new Array(567,346,719,250,405,268,67,300,668,247,1253,242,898,382,791,371,1152,248,550,208,994,397,1164,463,321,195,286,354,642,445,1174,298,1259,513,798,539,968,449,51,569);
         this.WORM_COORDS[1484] = new Array(17,398,807,537,223,204,613,243,474,248,1022,499,856,374,1128,430,387,288,833,279,65,302,1256,513,318,195,1235,248,1093,259,971,252,1275,371,96,216,697,254,935,475);
         this.WORM_COORDS[1485] = new Array(624,234,252,208,566,345,29,399,431,236,1280,252,823,267,1028,210,1246,515,1230,641,1087,375,634,440,374,336,5,461,510,221,80,283,906,386,852,380,734,248,133,210);
         this.WORM_COORDS[1486] = new Array(512,220,915,390,1251,513,1252,243,693,255,776,376,202,210,972,451,1151,248,160,452,457,259,582,361,95,275,133,210,995,394,851,382,305,193,1048,209,994,252,401,273);
         this.WORM_COORDS[1487] = new Array(701,253,1200,232,150,472,445,229,986,462,894,368,933,478,1000,252,1,401,175,217,1076,224,1209,513,366,328,1299,517,76,289,776,376,266,354,832,535,562,343,533,207);
         this.WORM_COORDS[1488] = new Array(1055,399,724,248,264,354,891,354,444,229,1293,515,288,191,613,243,88,277,23,398,655,455,128,455,925,520,597,391,1258,241,968,449,353,321,980,250,805,261,143,212);
         this.WORM_COORDS[1489] = new Array(617,241,739,249,1145,442,113,208,975,452,1068,215,450,265,977,250,861,368,555,215,351,321,789,542,1153,291,820,267,1198,499,13,452,656,455,296,191,48,315,11,401);
         this.WORM_COORDS[1490] = new Array(351,321,42,317,1018,498,613,243,750,348,631,438,751,232,925,520,967,449,858,526,865,363,1277,511,25,398,567,346,301,195,16,557,223,204,1118,258,1045,210,138,211);
         this.WORM_COORDS[1491] = new Array(1279,511,554,213,1171,294,751,348,752,232,1211,515,897,380,624,435,401,273,1047,388,808,536,1243,247,928,522,631,220,994,252,1051,209,80,283,340,310,451,264,14,401);
         this.WORM_COORDS[1492] = new Array(1240,249,45,316,663,244,280,355,916,391,945,461,119,210,805,261,371,332,1169,293,568,346,139,473,324,195,1080,234,457,259,1281,511,837,337,1181,240,1038,371,211,208);
         this.WORM_COORDS[1493] = new Array(943,466,461,257,725,248,1257,241,671,456,907,387,61,305,152,469,297,192,28,399,990,252,51,569,1243,516,1098,260,147,214,1041,514,592,275,1148,248,653,230,361,325);
         this.WORM_COORDS[1494] = new Array(362,326,886,510,1274,244,454,261,1185,484,758,230,69,299,1176,270,841,367,772,547,996,252,824,268,1095,260,1145,337,760,458,1040,374,577,355,685,255,6,401,20,558);
         this.WORM_COORDS[1495] = new Array(997,252,924,519,100,209,1271,512,862,367,463,256,399,275,1210,514,998,483,718,250,605,250,1270,242,333,305,1057,523,1063,213,95,275,1153,249,560,343,287,191,540,205);
         this.WORM_COORDS[1496] = new Array(64,303,519,214,961,449,532,343,406,266,1179,480,777,200,1188,235,887,354,348,318,113,208,1128,254,906,509,173,217,764,466,727,247,1061,211,277,197,456,260,856,528);
         this.WORM_COORDS[1497] = new Array(251,210,716,251,963,449,843,378,889,510,902,386,403,270,32,565,348,318,1218,237,513,219,975,250,249,344,1269,241,542,341,1292,515,593,274,771,378,1158,457,309,192);
         this.WORM_COORDS[1498] = new Array(1096,260,599,271,1023,355,359,324,683,256,19,449,880,512,225,203,536,205,836,331,50,314,275,198,473,249,899,384,782,204,254,350,106,207,1004,252,969,449,26,398);
         this.WORM_COORDS[1499] = new Array(377,339,1025,210,1106,261,893,359,630,220,122,376,764,380,26,398,1260,240,162,218,393,283,1295,515,1183,238,959,449,720,250,458,259,573,350,124,448,930,522,35,566);
      }
      
      public function init_coords_traver() : *
      {
         this.WORM_COORDS[1500] = new Array(20,374,1243,492,167,602,525,225,320,270,784,395,814,215,1127,235,1159,360,93,485,880,402,987,180,888,233,1101,294,1211,609,1298,549,90,248,411,253,196,232,276,172);
         this.WORM_COORDS[1501] = new Array(350,300,269,539,1128,242,20,374,59,245,1155,363,1031,202,386,198,112,253,848,207,423,309,1257,504,633,156,732,423,200,518,902,462,558,204,178,234,493,415,1135,609);
         this.WORM_COORDS[1502] = new Array(482,393,1252,500,113,505,590,262,721,171,1187,345,1144,292,183,524,361,294,946,312,749,377,93,249,1227,609,668,176,45,371,1007,162,242,527,1062,203,368,226,183,339);
         this.WORM_COORDS[1503] = new Array(453,348,188,230,1194,347,283,204,603,256,130,256,705,182,54,244,355,297,894,402,999,165,1109,144,413,254,1234,603,501,437,868,210,400,204,969,414,180,582,728,427);
         this.WORM_COORDS[1504] = new Array(1044,197,245,587,498,428,673,175,1295,545,391,198,105,252,779,398,617,241,1245,495,232,514,72,374,1003,439,1165,354,173,261,456,348,351,299,222,171,131,502,873,220);
         this.WORM_COORDS[1505] = new Array(986,181,178,513,158,262,660,173,373,214,1226,455,974,412,154,604,1136,274,300,251,1295,545,69,245,512,238,430,317,502,440,802,209,1160,358,782,397,36,373,916,364);
         this.WORM_COORDS[1506] = new Array(843,384,926,200,1194,347,1112,144,1274,512,756,185,214,173,1046,197,437,332,292,242,105,499,773,387,113,353,208,512,341,306,124,255,671,175,395,200,864,210,22,374);
         this.WORM_COORDS[1507] = new Array(18,376,1260,506,1068,206,1138,285,988,421,1017,170,509,458,403,208,216,173,255,541,1214,406,338,308,623,160,763,188,54,244,1235,602,421,307,525,225,901,206,601,257);
         this.WORM_COORDS[1508] = new Array(854,211,526,222,609,255,1276,514,76,374,161,489,816,364,1154,364,260,540,702,342,124,255,422,308,751,182,60,245,180,231,1211,395,663,175,883,403,211,174,1024,201);
         this.WORM_COORDS[1509] = new Array(100,251,670,176,1248,581,913,205,24,374,1076,210,927,260,505,275,329,279,206,513,213,173,1207,381,1236,482,1012,448,232,315,443,346,755,184,103,497,0,463,394,199);
         this.WORM_COORDS[1510] = new Array(827,210,1129,245,1149,368,494,417,969,198,1223,443,515,235,444,346,120,254,679,173,295,245,1264,568,35,374,1040,197,348,301,104,498,688,338,70,245,1148,298,1257,504);
         this.WORM_COORDS[1511] = new Array(1293,544,457,349,650,170,1137,283,524,225,379,201,999,437,137,257,33,375,112,356,1044,197,866,394,1226,455,101,495,947,365,190,339,1188,345,840,205,734,175,672,334);
         this.WORM_COORDS[1512] = new Array(727,171,1007,162,1160,358,1248,498,792,201,253,171,408,218,164,511,47,245,1083,192,363,294,937,201,25,374,168,601,433,324,890,404,136,257,509,275,633,218,1151,608);
         this.WORM_COORDS[1513] = new Array(407,212,469,358,954,203,1027,204,850,207,269,171,1259,505,53,244,207,577,1111,144,687,175,141,598,44,371,498,428,742,183,906,463,24,543,931,344,1157,362,538,204);
         this.WORM_COORDS[1514] = new Array(584,265,185,230,97,416,1230,469,1157,608,476,374,1202,363,432,320,911,204,122,254,12,382,698,185,1073,345,854,211,1011,447,56,244,251,588,1294,544,739,415,209,512);
         this.WORM_COORDS[1515] = new Array(930,200,1221,434,1009,162,43,371,75,245,758,377,1036,320,154,311,474,365,994,423,427,315,327,277,179,233,795,204,525,225,695,184,105,499,868,210,1261,506,1259,573);
         this.WORM_COORDS[1516] = new Array(974,193,395,200,1157,362,11,383,868,210,430,317,500,433,1105,372,801,208,1240,488,330,280,561,210,919,249,1208,384,105,499,178,234,538,377,160,314,762,379,63,376);
         this.WORM_COORDS[1517] = new Array(1220,430,951,203,347,302,1014,163,1076,347,1260,506,736,187,1200,358,453,348,31,375,959,459,545,376,190,529,718,354,1089,189,837,206,849,389,372,218,545,203,563,279);
         this.WORM_COORDS[1518] = new Array(1005,162,1241,489,493,415,759,187,157,262,1300,561,1055,199,335,286,927,200,825,210,48,372,561,210,434,329,806,364,260,173,396,200,78,246,1098,366,122,505,993,422);
         this.WORM_COORDS[1519] = new Array(190,529,1162,357,608,255,1061,202,692,179,383,198,980,413,37,372,915,219,443,346,794,373,1141,292,225,581,743,183,219,171,849,207,1249,498,107,501,1097,365,137,257);
         this.WORM_COORDS[1520] = new Array(8,383,567,276,472,361,844,205,1222,440,1013,449,218,509,949,203,1031,202,907,391,674,335,766,188,298,248,1158,361,803,365,727,428,264,173,699,185,525,225,492,412);
         this.WORM_COORDS[1521] = new Array(1263,507,542,377,187,339,693,181,299,249,50,244,456,348,32,376,841,382,602,256,200,577,248,170,954,203,816,216,525,225,901,206,164,511,354,297,142,258,781,397);
         this.WORM_COORDS[1522] = new Array(1297,547,180,518,440,345,910,204,1220,430,1190,345,99,492,577,269,141,258,687,175,293,243,198,232,57,244,487,403,850,389,1032,459,1023,198,49,373,1075,346,255,176);
         this.WORM_COORDS[1523] = new Array(889,233,133,257,488,405,1296,546,549,198,1226,455,1076,210,11,383,270,171,196,340,810,213,727,428,304,255,183,524,52,244,723,171,793,374,640,160,185,230,720,359);
         this.WORM_COORDS[1524] = new Array(257,174,1180,346,617,241,994,423,1134,268,1060,201,1237,483,5,385,64,376,921,201,1296,546,101,495,537,218,752,183,501,437,442,346,686,338,101,251,948,310,292,242);
         this.WORM_COORDS[1525] = new Array(440,345,1157,362,1225,452,861,392,1282,517,971,196,252,170,818,211,1036,456,665,175,192,230,748,182,1124,205,343,305,115,254,768,386,159,618,1084,354,567,276,124,336);
         this.WORM_COORDS[1526] = new Array(988,421,877,220,311,261,1213,609,1068,341,116,254,1215,409,635,156,137,497,408,218,1047,198,907,464,700,341,1154,364,1,461,495,420,44,371,613,248,156,610,726,171);
         this.WORM_COORDS[1527] = new Array(1153,365,156,262,449,347,548,198,1093,189,1273,512,1082,352,793,202,1145,293,14,377,370,220,1242,590,81,247,632,222,291,241,212,510,698,185,200,340,1221,434,567,276);
         this.WORM_COORDS[1528] = new Array(72,245,354,297,1068,206,142,258,1199,355,1111,144,758,187,143,494,890,404,252,170,1099,294,630,160,489,406,1233,477,1162,606,556,204,414,256,188,339,48,372,508,456);
         this.WORM_COORDS[1529] = new Array(804,210,792,375,712,175,480,388,55,244,209,179,1000,165,1298,549,1216,414,1246,496,1148,298,593,260,397,202,903,395,125,255,223,326,505,275,896,226,213,578,313,262);
         this.WORM_COORDS[1530] = new Array(1284,518,1087,357,711,347,1222,440,872,214,1158,361,191,528,109,377,368,294,484,397,745,182,258,174,191,230,232,315,1016,166,597,258,779,398,44,371,421,307,545,203);
         this.WORM_COORDS[1531] = new Array(349,301,196,577,177,511,490,409,18,376,1144,292,547,203,1016,166,1185,345,142,258,161,317,74,245,822,210,394,199,885,403,1077,211,1097,365,1226,455,1294,544,590,262);
         this.WORM_COORDS[1532] = new Array(1200,358,919,249,423,309,143,258,501,437,895,460,190,529,92,249,475,370,1269,509,581,267,732,423,718,354,49,373,838,205,791,381,1030,202,401,205,552,198,725,171);
         this.WORM_COORDS[1533] = new Array(670,176,1269,509,1204,370,441,345,154,261,747,379,56,244,790,199,563,279,346,303,1060,201,961,202,1103,371,286,205,1109,144,503,442,616,243,544,204,229,173,732,173);
         this.WORM_COORDS[1534] = new Array(1153,365,1236,482,178,234,281,534,43,371,1299,552,794,373,454,348,973,194,816,216,954,463,111,253,269,171,649,169,561,210,709,346,908,204,1059,201,508,456,505,275);
         this.WORM_COORDS[1535] = new Array(158,262,20,374,479,385,724,171,286,205,749,377,502,440,668,176,416,301,218,331,1285,519,808,212,1150,368,948,310,1133,264,150,600,103,252,186,528,680,337,1013,449);
         this.WORM_COORDS[1536] = new Array(196,232,230,172,1086,191,499,430,734,175,830,212,21,374,1018,454,1025,203,245,532,168,601,745,382,1078,348,538,204,330,280,1295,545,943,454,602,256,166,503,117,342);
         this.WORM_COORDS[1537] = new Array(486,401,745,382,1239,487,20,374,593,260,897,224,1050,327,1029,203,192,230,965,201,1175,348,360,295,1141,292,438,333,164,511,548,198,1219,427,762,187,1292,525,126,255);
         this.WORM_COORDS[1538] = new Array(188,230,516,379,189,530,27,374,920,349,1129,245,1206,376,1256,503,671,334,1104,371,844,205,594,259,961,202,503,442,83,247,178,338,295,245,843,384,544,204,1155,363);
         this.WORM_COORDS[1539] = new Array(1236,482,88,248,155,261,245,532,909,204,1191,345,226,323,1047,198,348,301,759,187,489,406,163,496,605,256,962,202,200,183,685,174,458,349,533,216,922,260,20,374);
         this.WORM_COORDS[1540] = new Array(1199,355,1072,208,51,373,515,380,170,503,273,171,927,200,1162,606,349,301,1272,511,904,394,106,500,588,263,551,198,1001,164,683,173,771,189,94,249,373,214,1219,427);
         this.WORM_COORDS[1541] = new Array(209,512,1259,505,505,449,479,385,400,204,687,338,274,171,1097,154,20,374,882,221,101,251,293,243,1007,443,805,365,599,257,1033,201,674,175,198,232,1226,455,858,391);
         this.WORM_COORDS[1542] = new Array(86,248,532,216,479,385,1236,601,17,376,1300,561,721,171,579,268,1153,608,923,201,802,209,1034,201,1203,366,1147,295,126,336,155,261,400,204,635,156,245,169,1242,491);
         this.WORM_COORDS[1543] = new Array(1281,517,338,308,912,204,617,241,94,249,301,252,518,452,174,590,1025,203,424,310,212,334,156,487,692,339,934,451,40,371,1187,345,1096,174,157,262,381,200,962,202);
         this.WORM_COORDS[1544] = new Array(1178,347,243,586,505,275,763,188,1243,492,201,340,729,426,928,260,359,295,208,180,966,200,172,261,436,331,691,178,50,244,1214,406,55,373,135,499,900,207,947,467);
         this.WORM_COORDS[1545] = new Array(1144,292,1057,200,1254,502,972,195,682,173,455,348,122,254,782,194,733,422,156,487,182,580,518,235,1182,345,1127,235,672,334,74,374,622,161,244,169,864,210,1220,430);
         this.WORM_COORDS[1546] = new Array(204,181,110,253,1198,353,508,456,187,530,337,294,1248,498,451,348,606,256,709,179,55,244,736,418,943,203,883,221,1089,189,408,218,811,214,41,371,1026,204,182,231);
         this.WORM_COORDS[1547] = new Array(1185,345,1233,477,427,315,147,491,59,378,799,368,127,255,764,188,288,209,230,172,878,401,237,309,859,210,608,255,963,201,1086,356,369,223,530,216,1137,283,476,374);
         this.WORM_COORDS[1548] = new Array(432,320,116,254,498,428,683,173,10,383,919,352,1113,144,1130,249,1275,513,621,235,1204,370,786,197,327,277,412,254,890,234,1222,440,758,377,287,206,1049,198,1154,364);
         this.WORM_COORDS[1549] = new Array(651,170,123,255,782,194,1076,210,578,269,945,203,859,210,421,307,1224,448,967,296,1016,166,258,174,53,244,181,231,358,295,1146,294,404,208,1299,552,955,463,796,370);
         this.WORM_COORDS[1550] = new Array(620,236,2,459,158,312,394,199,1047,325,10,383,84,406,284,204,508,275,814,215,528,219,197,521,31,513,1161,357,879,401,234,312,1250,499,943,203,1216,414,497,424);
         this.WORM_COORDS[1551] = new Array(223,510,1197,351,983,184,1253,502,881,220,317,267,1115,147,469,358,1214,406,11,383,1039,198,195,231,865,394,157,487,507,275,123,255,242,168,1052,329,243,586,215,397);
         this.WORM_COORDS[1552] = new Array(412,254,661,174,139,258,784,195,569,274,55,373,2,459,998,166,518,235,1146,609,1218,420,481,391,693,339,1246,496,842,205,894,229,317,267,1144,292,727,428,820,364);
         this.WORM_COORDS[1553] = new Array(125,255,59,245,1292,525,57,383,936,201,851,209,611,251,119,340,1203,608,3,386,1047,198,993,171,96,489,781,193,502,440,676,173,336,288,187,530,730,171,196,232);
         this.WORM_COORDS[1554] = new Array(829,211,293,243,185,527,267,172,957,305,1185,605,1237,483,1031,202,47,245,673,175,1213,403,509,458,467,356,17,376,141,598,957,203,341,306,373,214,830,368,738,186);
         this.WORM_COORDS[1555] = new Array(408,218,1284,518,918,224,211,174,422,308,161,489,33,375,542,204,880,402,1021,189,345,304,1191,345,617,241,107,252,955,463,151,601,499,430,1072,208,788,391,566,276);
         this.WORM_COORDS[1556] = new Array(53,244,1151,367,881,220,541,377,933,200,697,340,153,261,581,267,955,463,203,182,1065,204,1007,162,1269,509,22,374,368,226,1148,298,1175,605,831,212,479,385,765,188);
         this.WORM_COORDS[1557] = new Array(1202,363,356,296,1229,465,413,254,180,582,1127,235,384,198,774,387,1032,201,169,503,31,375,296,246,485,399,174,261,49,245,22,428,119,254,883,221,1280,516,455,348);
         this.WORM_COORDS[1558] = new Array(709,179,781,193,858,211,965,201,300,251,150,260,1279,516,505,275,649,169,124,336,1188,605,612,250,412,254,1034,201,89,598,95,414,799,368,540,204,1174,348,1104,371);
         this.WORM_COORDS[1559] = new Array(969,198,388,198,137,257,250,170,600,257,34,375,679,173,880,220,1147,295,1007,443,739,415,10,443,1214,406,1079,213,234,583,1253,502,505,275,462,351,809,364,63,245);
         this.WORM_COORDS[1560] = new Array(1249,498,246,170,538,204,150,260,125,336,773,191,304,255,871,213,395,200,477,378,1006,162,216,509,1107,146,681,337,944,456,595,259,357,296,1234,603,1164,355,710,178);
         this.WORM_COORDS[1561] = new Array(1133,264,403,208,674,335,1273,512,424,310,1083,353,957,203,521,235,498,428,1110,144,324,275,16,376,621,235,760,377,1047,198,60,245,813,364,188,230,224,510,208,180);
         this.WORM_COORDS[1562] = new Array(1269,509,1115,147,424,310,381,200,119,601,919,352,799,368,21,374,596,259,1224,448,754,184,1167,605,332,282,1199,355,73,245,514,457,136,498,252,170,815,215,153,261);
         this.WORM_COORDS[1563] = new Array(135,499,297,247,1110,144,1218,420,1300,561,1133,264,1165,354,104,252,520,235,1091,360,582,266,31,375,684,174,518,452,1037,199,1258,505,945,312,735,177,479,385,725,430);
         this.WORM_COORDS[1564] = new Array(143,494,1223,443,901,397,1158,607,202,517,506,275,698,340,454,348,170,597,1064,204,1166,352,1278,515,915,219,77,246,1139,289,192,230,815,215,499,430,668,176,992,422);
         this.WORM_COORDS[1565] = new Array(134,257,473,363,778,192,726,171,665,175,559,204,870,212,259,174,1233,477,334,285,413,254,997,167,422,308,244,531,1156,362,702,342,1076,210,1209,387,32,376,1042,323);
         this.WORM_COORDS[1566] = new Array(1030,202,358,295,856,390,142,495,716,351,431,319,861,210,61,245,224,171,1207,381,510,238,626,230,1287,520,129,256,1160,606,508,456,302,253,190,577,1041,323,122,601);
         this.WORM_COORDS[1567] = new Array(727,428,798,206,147,260,575,271,415,298,14,437,747,182,503,442,861,210,401,205,913,205,49,373,1246,496,1162,357,672,201,244,300,541,204,804,365,92,249,1173,605);
         this.WORM_COORDS[1568] = new Array(877,220,128,504,545,203,306,256,98,250,626,160,341,306,188,230,496,421,1006,162,813,364,450,347,1208,384,1151,367,26,374,131,336,1265,507,906,393,740,184,182,339);
         this.WORM_COORDS[1569] = new Array(60,245,446,346,1157,362,19,376,410,253,1287,520,216,173,890,234,307,257,722,171,990,176,284,204,790,199,1233,477,1147,295,360,295,196,522,1079,213,673,335,1037,455);
         this.WORM_COORDS[1570] = new Array(57,244,354,297,220,171,518,235,48,372,1145,372,170,262,221,328,1128,242,674,335,783,396,1030,316,1195,348,1273,512,121,601,963,435,584,265,851,209,254,588,502,440);
         this.WORM_COORDS[1571] = new Array(99,492,765,384,1272,511,1221,434,53,244,900,398,22,374,318,268,595,259,139,258,1164,606,462,351,204,339,1067,205,207,180,508,275,987,421,1145,293,720,171,901,206);
         this.WORM_COORDS[1572] = new Array(228,173,995,423,1127,607,159,262,939,318,1149,368,1239,487,829,211,91,248,194,525,338,308,70,374,963,201,1117,149,1049,198,503,442,1215,409,637,214,815,364,449,347);
         this.WORM_COORDS[1573] = new Array(885,403,483,395,8,383,221,328,1208,384,573,272,325,276,96,250,625,160,1142,292,856,211,1087,357,802,209,1282,517,254,180,509,458,427,315,521,235,1001,164,1036,320);
         this.WORM_COORDS[1574] = new Array(459,350,146,259,247,170,527,219,997,167,582,266,661,328,902,396,1294,544,813,214,910,461,390,198,932,280,751,377,802,365,338,308,15,435,163,610,1128,242,1025,459);
         this.WORM_COORDS[1575] = new Array(111,504,964,201,872,214,355,297,1249,498,166,604,1213,403,507,455,196,232,715,172,132,257,33,375,536,217,1152,366,216,173,1096,174,1038,199,471,359,46,246,796,205);
         this.WORM_COORDS[1576] = new Array(920,202,170,262,976,191,564,278,739,185,1098,294,856,390,627,160,105,499,279,204,1262,506,1040,197,330,280,489,406,63,245,1300,561,252,539,376,205,815,215,1094,363);
         this.WORM_COORDS[1577] = new Array(971,196,1062,203,679,173,615,244,1276,514,326,276,465,354,885,223,828,211,394,199,556,204,264,539,163,262,767,188,733,422,59,245,149,489,710,346,152,601,205,514);
         this.WORM_COORDS[1578] = new Array(69,375,735,177,270,538,1273,512,350,300,1137,283,1226,455,822,210,1081,214,444,346,1204,370,721,363,190,230,397,202,787,392,122,254,494,417,937,201,1012,162,153,487);
         this.WORM_COORDS[1579] = new Array(138,257,1196,350,458,349,505,275,203,516,3,386,1232,474,500,433,1007,162,797,369,62,377,269,171,909,248,388,198,203,339,1148,298,588,263,906,393,847,206,1295,545);
         this.WORM_COORDS[1580] = new Array(1257,574,17,376,336,288,1279,516,1053,199,850,207,468,356,1172,349,1219,427,523,227,621,235,736,187,380,200,263,539,90,480,133,599,905,204,247,170,1124,205,2,459);
         this.WORM_COORDS[1581] = new Array(1009,162,0,463,275,172,155,261,405,209,596,259,684,338,481,391,921,201,1203,366,6,385,194,525,424,310,98,417,667,176,289,238,1096,174,865,394,212,334,100,251);
         this.WORM_COORDS[1582] = new Array(204,515,337,294,4,386,387,198,775,191,763,382,92,249,1255,503,921,201,488,405,448,346,1078,348,1003,439,605,256,509,275,1205,373,165,262,226,323,292,242,207,180);
         this.WORM_COORDS[1583] = new Array(1125,227,1113,144,223,171,403,208,610,253,1157,362,834,217,779,192,194,525,816,364,71,245,641,162,665,330,196,340,290,240,153,261,90,480,0,463,365,294,30,374);
         this.WORM_COORDS[1584] = new Array(142,258,992,422,466,355,924,201,956,306,717,171,1204,370,726,429,1063,203,352,299,290,240,176,587,388,198,695,339,21,374,1269,509,55,244,1300,561,252,170,614,246);
         this.WORM_COORDS[1585] = new Array(895,227,1002,164,199,232,776,388,20,374,592,261,472,361,58,244,514,236,209,337,202,517,0,463,114,505,1174,348,810,213,1296,546,1020,315,657,172,210,176,1233,477);
         this.WORM_COORDS[1586] = new Array(1068,341,87,597,873,399,18,376,61,245,1042,197,967,200,630,160,82,383,1219,427,458,349,1264,507,238,168,309,259,826,210,570,273,366,294,1093,189,701,184,1142,292);
         this.WORM_COORDS[1587] = new Array(287,206,1,461,577,269,157,262,1197,607,1089,189,335,286,453,348,489,406,1082,352,1148,298,42,371,386,198,905,394,163,319,742,183,560,204,1253,502,48,245,254,540);
         this.WORM_COORDS[1588] = new Array(21,374,798,206,145,598,546,203,69,245,1148,298,1204,370,136,257,641,162,460,351,107,388,837,376,856,211,259,174,100,494,1289,521,1225,452,922,260,612,250,190,230);
         this.WORM_COORDS[1589] = new Array(1188,345,179,516,1267,508,698,340,885,223,1092,189,48,245,671,175,480,388,29,374,387,198,112,253,1134,268,173,261,813,214,1067,341,959,459,344,304,510,238,608,255);
         this.WORM_COORDS[1590] = new Array(145,492,1137,283,485,399,1084,354,130,256,360,295,782,194,399,203,1205,373,1226,455,969,198,546,203,597,258,744,394,1258,505,53,244,914,209,853,211,929,344,140,598);
         this.WORM_COORDS[1591] = new Array(580,268,448,346,1285,519,1184,345,125,504,732,173,782,194,28,374,116,254,232,171,989,177,1065,339,206,513,926,260,177,234,399,203,1080,213,875,220,730,425,1141,292);
         this.WORM_COORDS[1592] = new Array(879,220,1158,607,103,252,547,375,305,255,685,338,502,440,1160,358,579,268,171,262,1044,197,402,207,263,173,762,187,433,324,815,215,624,160,39,371,1103,146,936,201);
         this.WORM_COORDS[1593] = new Array(951,203,917,360,1256,503,863,210,810,213,143,258,694,182,591,261,69,375,669,332,1200,358,237,168,359,295,480,388,9,383,49,245,295,245,373,214,194,231,637,156);
         this.WORM_COORDS[1594] = new Array(228,320,757,377,1260,506,784,195,1051,198,498,428,199,232,1181,346,271,171,894,402,814,364,963,201,125,255,85,406,1104,371,895,227,947,311,55,244,564,278,177,586);
         this.WORM_COORDS[1595] = new Array(616,243,507,275,1028,204,133,257,916,220,395,200,666,176,447,346,1184,345,25,374,294,244,487,403,717,171,825,210,538,204,862,394,1132,261,671,334,241,168,89,408);
         this.WORM_COORDS[1596] = new Array(550,198,714,173,1217,418,777,390,226,171,1170,351,905,204,1027,204,605,256,1255,503,198,577,335,286,139,258,1106,146,845,205,461,351,708,346,91,411,624,160,977,190);
         this.WORM_COORDS[1597] = new Array(1242,590,801,208,502,440,1204,370,222,510,168,503,296,246,39,371,728,171,1264,507,563,279,1069,341,258,174,66,245,525,225,1117,149,740,415,155,606,380,200,1168,605);
         this.WORM_COORDS[1598] = new Array(364,294,870,212,171,503,1191,345,446,346,603,256,287,206,1285,519,514,381,231,513,397,202,530,216,100,251,803,209,768,386,1210,609,204,181,1058,201,0,463,1229,465);
         this.WORM_COORDS[1599] = new Array(28,374,1216,414,1166,352,74,245,136,257,489,406,620,236,1132,261,441,345,1025,203,968,198,513,237,291,241,215,333,367,294,1072,344,718,354,1243,492,771,189,769,386);
         this.WORM_COORDS[1600] = new Array(526,389,646,356,720,321,1154,461,447,214,86,222,231,304,134,366,601,189,1175,389,877,375,819,200,1115,404,276,465,1270,462,1263,380,137,610,615,536,573,277,20,324);
         this.WORM_COORDS[1601] = new Array(1166,461,292,455,827,195,661,331,566,307,739,424,517,397,124,358,935,179,620,391,1211,327,1286,435,219,292,68,572,27,320,134,611,1096,405,1040,327,1006,169,789,310);
         this.WORM_COORDS[1602] = new Array(116,601,741,425,388,238,1027,309,140,369,1059,402,87,222,256,335,777,314,856,362,9,358,548,380,694,352,1265,453,1170,403,595,186,1145,505,882,583,954,206,678,563);
         this.WORM_COORDS[1603] = new Array(142,370,1081,399,615,386,204,304,700,440,32,317,507,404,981,402,1191,387,1249,356,947,181,857,363,705,333,80,230,337,235,128,610,770,309,646,535,1021,175,290,457);
         this.WORM_COORDS[1604] = new Array(945,426,242,324,821,199,1242,329,1064,402,7,358,103,226,802,294,154,378,369,250,1270,462,971,194,536,384,273,461,80,580,489,270,900,565,604,212,630,534,696,347);
         this.WORM_COORDS[1605] = new Array(407,211,35,316,868,371,1039,327,196,306,1140,499,156,379,1101,404,114,599,754,288,996,161,570,293,253,335,864,575,1223,320,472,264,296,451,307,266,122,233,526,389);
         this.WORM_COORDS[1606] = new Array(1071,403,982,174,430,209,914,171,129,362,1281,435,795,302,1145,505,73,250,901,560,241,324,315,265,1125,438,27,320,635,420,21,572,1215,322,613,228,656,543,562,324);
         this.WORM_COORDS[1607] = new Array(279,464,1189,387,841,204,154,378,637,533,635,420,1257,371,564,318,25,321,440,211,948,427,1092,402,543,381,326,247,873,374,1287,435,304,303,471,264,99,219,1156,460);
         this.WORM_COORDS[1608] = new Array(633,414,1232,321,1141,500,971,194,893,507,759,295,882,210,542,381,619,535,345,229,109,230,43,309,695,434,139,368,443,213,1275,440,233,311,876,375,478,264,858,573);
         this.WORM_COORDS[1609] = new Array(859,365,1028,309,1138,495,771,310,970,194,1285,435,623,396,891,202,176,386,113,232,14,333,676,337,235,324,370,250,1252,359,637,533,485,267,508,404,435,210,1120,433);
         this.WORM_COORDS[1610] = new Array(16,329,682,344,552,380,1173,389,958,204,785,318,147,532,51,263,1042,327,79,579,1270,462,146,372,376,248,294,453,1160,460,1067,403,1158,522,872,373,1257,371,703,444);
         this.WORM_COORDS[1611] = new Array(453,216,625,400,258,335,881,211,148,374,754,288,8,584,1032,312,3,358,306,438,1099,404,954,426,662,331,585,187,206,312,1138,495,828,195,516,398,728,421,1168,404);
         this.WORM_COORDS[1612] = new Array(467,225,1074,401,1192,387,968,194,306,267,28,320,836,197,516,398,85,227,216,291,1035,318,1159,460,370,250,783,420,658,546,946,427,717,324,267,440,768,307,1249,356);
         this.WORM_COORDS[1613] = new Array(770,309,1278,437,853,357,648,351,1264,385,394,230,497,320,682,563,1069,404,329,248,703,444,525,389,469,228,67,250,598,326,992,391,188,306,261,427,1242,329,884,210);
         this.WORM_COORDS[1614] = new Array(618,479,1243,331,369,250,511,401,306,267,640,533,295,452,230,304,1266,454,103,590,1076,400,603,193,798,299,483,266,1164,460,716,325,140,369,421,208,873,473,495,480);
         this.WORM_COORDS[1615] = new Array(178,387,1178,389,557,325,277,464,227,304,852,354,1058,403,354,241,119,233,1164,460,939,423,19,325,140,609,834,196,1280,435,788,311,530,387,1247,355,439,211,55,261);
         this.WORM_COORDS[1616] = new Array(655,542,1073,401,18,327,180,387,760,296,975,194,696,436,104,591,893,200,665,331,412,208,116,232,255,335,851,352,1032,312,264,432,319,253,787,592,128,362,1268,458);
         this.WORM_COORDS[1617] = new Array(719,322,145,607,1293,438,1256,370,651,345,1072,560,1011,173,821,199,1085,401,352,236,456,217,191,306,153,377,281,463,516,398,1127,465,91,219,300,303,859,365,774,312);
         this.WORM_COORDS[1618] = new Array(1166,461,485,267,330,236,93,584,667,331,187,306,1012,292,145,371,635,420,521,393,411,209,569,297,1295,439,978,194,731,422,1034,569,22,323,765,303,989,394,153,603);
         this.WORM_COORDS[1619] = new Array(744,283,574,540,1093,411,1282,435,938,179,297,450,669,332,854,359,956,425,213,535,9,358,1132,478,641,533,798,299,570,293,91,219,1183,389,338,234,190,306,632,411);
         this.WORM_COORDS[1620] = new Array(323,247,85,227,195,306,975,409,895,199,51,556,1273,551,461,219,1062,402,32,317,734,282,288,459,521,393,1285,435,876,479,701,337,618,389,103,590,628,534,1170,403);
         this.WORM_COORDS[1621] = new Array(178,387,676,337,1077,399,583,189,1164,460,529,539,597,326,356,259,737,282,261,338,43,309,892,201,204,304,552,380,961,201,1275,440,471,264,999,304,639,533,0,595);
         this.WORM_COORDS[1622] = new Array(962,423,1183,389,169,384,223,296,896,199,78,230,1073,401,963,197,1145,505,1219,320,678,340,632,411,290,457,603,193,1032,312,13,359,789,593,557,325,363,254,509,403);
         this.WORM_COORDS[1623] = new Array(2,591,90,220,720,321,427,209,1291,436,241,324,518,395,1259,373,680,563,1061,564,180,387,326,247,929,419,1045,328,659,332,280,464,1171,389,634,417,897,515,189,306);
         this.WORM_COORDS[1624] = new Array(1275,440,872,373,476,264,628,405,1036,319,522,392,1142,501,96,218,193,387,1226,320,355,312,578,242,811,209,319,253,740,282,370,250,1120,433,564,318,999,161,689,385);
         this.WORM_COORDS[1625] = new Array(277,464,375,248,1249,356,238,380,631,534,517,397,1039,327,1276,439,765,303,818,201,248,326,1156,460,105,591,695,349,135,366,122,233,196,306,1167,404,558,325,931,420);
         this.WORM_COORDS[1626] = new Array(505,405,640,533,880,212,42,310,363,254,883,273,1256,370,1108,403,496,318,129,610,1283,435,1182,389,282,463,632,411,705,333,206,312,948,427,851,352,974,194,435,210);
         this.WORM_COORDS[1627] = new Array(154,378,1084,400,963,197,55,261,9,358,810,214,710,329,249,407,530,387,1299,448,192,306,414,208,953,426,766,305,30,565,1164,460,878,581,664,484,617,388,656,334);
         this.WORM_COORDS[1628] = new Array(992,164,585,187,894,509,1222,320,1099,404,782,316,949,427,1199,391,363,254,478,264,1267,456,569,297,62,253,493,315,1165,461,825,196,668,483,1043,327,695,349,906,186);
         this.WORM_COORDS[1629] = new Array(1175,389,891,585,196,306,1162,460,576,262,144,371,1254,368,450,215,886,496,764,302,319,253,29,319,1088,401,966,195,680,342,540,383,905,187,76,250,133,611,247,326);
         this.WORM_COORDS[1630] = new Array(858,573,494,315,706,332,102,589,720,421,507,404,104,238,357,259,269,445,1174,389,1160,460,1100,404,582,191,469,228,891,202,1277,438,558,325,1212,326,154,378,1047,567);
         this.WORM_COORDS[1631] = new Array(1002,298,929,419,894,584,626,401,1237,322,684,351,1118,433,1293,438,1258,372,65,251,599,186,296,451,192,306,15,331,768,307,537,384,354,241,177,386,936,179,869,372);
         this.WORM_COORDS[1632] = new Array(894,200,530,538,1090,401,688,385,87,222,835,572,8,358,460,219,168,384,968,194,1161,460,540,383,612,228,1179,389,1226,320,802,294,253,335,303,303,751,286,621,393);
         this.WORM_COORDS[1633] = new Array(413,208,634,417,1132,478,638,533,128,362,85,582,303,443,240,324,1213,324,821,199,706,332,50,264,559,324,187,387,1300,451,1263,380,925,167,990,393,1171,389,772,311);
         this.WORM_COORDS[1634] = new Array(426,209,1268,458,295,452,839,571,235,324,739,424,1049,365,835,196,1112,403,572,538,928,168,39,313,524,390,162,381,867,371,582,191,1245,355,611,384,1013,173,1145,505);
         this.WORM_COORDS[1635] = new Array(1248,355,683,345,806,585,1097,405,187,306,1004,298,407,211,256,335,779,314,537,384,1136,491,3,455,1171,389,631,410,595,544,294,453,896,513,731,422,848,220,1297,443);
         this.WORM_COORDS[1636] = new Array(989,394,551,380,355,312,435,210,246,325,373,248,23,322,958,204,1147,508,168,384,116,232,264,432,764,302,14,579,690,363,1033,569,1198,525,1079,399,1230,321,1258,372);
         this.WORM_COORDS[1637] = new Array(1133,482,1037,570,309,265,740,424,1206,455,26,321,600,379,1271,464,494,315,297,450,1202,344,839,311,1115,404,672,479,656,334,105,591,360,256,889,204,479,265,149,530);
         this.WORM_COORDS[1638] = new Array(31,318,433,209,1103,404,736,282,1023,311,633,414,1248,355,1132,478,492,408,134,611,542,381,529,539,341,229,180,387,476,264,87,222,699,559,631,534,250,551,660,332);
         this.WORM_COORDS[1639] = new Array(149,374,1063,402,1262,378,894,200,146,606,1165,461,92,218,1291,436,403,215,994,390,521,393,463,221,22,323,982,174,147,532,1040,327,241,324,784,318,867,371,1226,320);
         this.WORM_COORDS[1640] = new Array(1278,437,760,296,304,267,681,343,945,181,453,216,1101,404,288,459,15,578,836,197,1153,462,693,431,645,534,1250,358,520,394,149,374,488,269,392,233,565,312,59,256);
         this.WORM_COORDS[1641] = new Array(45,307,770,309,1291,436,568,300,138,368,814,205,291,456,300,303,1187,387,930,172,12,358,615,228,379,246,1008,179,1155,460,950,427,1224,320,621,393,252,550,525,389);
         this.WORM_COORDS[1642] = new Array(1126,439,1277,438,135,611,446,214,166,382,1245,355,582,191,265,435,227,304,523,391,584,547,318,255,570,293,28,320,804,290,1010,173,936,179,388,238,674,336,73,250);
         this.WORM_COORDS[1643] = new Array(982,401,111,230,1106,403,853,357,416,208,514,400,808,584,1004,166,1227,320,484,266,724,316,22,323,157,379,872,471,1148,509,51,263,1181,389,777,314,536,531,954,206);
         this.WORM_COORDS[1644] = new Array(100,220,700,338,611,227,509,506,1201,351,501,407,1006,169,1113,403,454,217,834,196,630,534,746,284,1147,508,646,356,173,385,1058,403,1298,445,18,327,1256,551,1048,330);
         this.WORM_COORDS[1645] = new Array(639,533,243,324,362,255,747,284,1132,478,49,556,287,460,303,303,560,324,538,529,514,400,129,610,992,391,1214,323,678,340,496,318,95,218,623,396,438,211,29,319);
         this.WORM_COORDS[1646] = new Array(1247,355,15,331,51,263,964,196,398,222,125,359,254,335,809,247,1097,405,876,375,282,463,452,216,630,534,335,235,1157,460,319,378,665,331,121,233,1286,435,152,528);
         this.WORM_COORDS[1647] = new Array(308,265,1235,321,757,292,901,199,1267,456,82,580,511,401,1156,460,144,371,952,426,1092,402,248,326,383,242,867,371,1262,378,488,269,707,331,453,216,637,533,834,572);
         this.WORM_COORDS[1648] = new Array(1088,401,282,463,205,309,941,179,1189,387,953,426,127,361,763,301,1035,318,854,359,1152,464,613,228,4,358,656,334,435,210,551,380,1260,449,344,229,45,307,875,580);
         this.WORM_COORDS[1649] = new Array(67,250,136,367,865,370,1230,321,1081,399,227,304,406,212,1198,391,1139,496,643,534,26,321,692,356,142,608,1025,309,1298,445,299,303,726,286,560,324,493,477,343,229);
         this.WORM_COORDS[1650] = new Array(247,326,1194,389,147,373,11,358,1214,323,121,233,995,161,340,229,629,406,940,179,754,288,1157,460,984,398,1261,551,423,209,292,455,642,534,1293,438,487,268,116,601);
         this.WORM_COORDS[1651] = new Array(339,234,63,252,1204,338,882,210,1179,389,630,408,1109,403,20,324,1137,493,615,228,432,209,849,324,278,464,721,320,192,306,664,331,1252,551,1299,448,170,384,87,582);
         this.WORM_COORDS[1652] = new Array(950,181,561,324,663,331,0,595,20,324,428,209,626,401,1198,525,262,339,1071,403,870,372,66,250,574,273,208,299,1297,443,492,408,812,207,1241,328,504,496,737,282);
         this.WORM_COORDS[1653] = new Array(315,265,249,327,101,222,743,283,1155,460,184,387,1116,409,1168,404,1281,435,1260,375,604,212,1202,344,127,361,854,359,521,539,981,174,836,197,647,352,872,578,1045,328);
         this.WORM_COORDS[1654] = new Array(61,253,1167,404,152,376,932,175,845,214,121,233,637,533,717,324,1213,324,1035,570,688,385,1145,505,811,582,484,266,272,459,17,328,1086,401,196,306,254,335,117,601);
         this.WORM_COORDS[1655] = new Array(531,386,721,421,1189,387,879,582,1147,508,1104,403,933,421,598,186,737,282,1049,365,601,541,514,521,1262,378,633,414,16,329,74,250,1018,298,115,344,899,199,173,587);
         this.WORM_COORDS[1656] = new Array(188,306,82,230,168,384,686,384,117,601,505,405,281,463,1120,433,897,515,481,266,618,389,1262,378,967,194,1183,389,1049,365,34,316,664,553,440,211,710,329,1018,175);
         this.WORM_COORDS[1657] = new Array(730,282,545,381,862,368,230,304,492,273,23,322,600,326,502,491,1174,389,1096,405,945,181,1276,439,1214,323,953,426,80,580,696,347,785,318,301,303,382,243,119,233);
         this.WORM_COORDS[1658] = new Array(713,327,78,230,1277,438,515,399,1172,389,1107,403,154,527,337,235,686,384,268,443,872,373,134,366,219,292,936,179,393,232,535,532,1,358,789,310,1252,359,639,533);
         this.WORM_COORDS[1659] = new Array(1257,551,439,211,517,397,280,464,218,540,1028,309,595,186,781,315,975,194,55,261,570,293,897,515,166,382,1154,461,20,324,108,230,190,306,1228,320,491,473,1288,435);
         this.WORM_COORDS[1660] = new Array(1233,321,563,320,987,173,655,336,1040,327,117,232,993,390,1090,401,1173,389,577,242,250,329,120,354,100,588,283,462,523,391,9,438,1130,472,318,255,626,401,522,540);
         this.WORM_COORDS[1661] = new Array(1162,460,987,173,704,333,1282,435,1238,323,821,199,913,179,334,235,198,304,27,567,689,385,180,387,1069,404,861,367,91,584,512,401,403,215,14,333,559,324,804,290);
         this.WORM_COORDS[1662] = new Array(1115,404,350,235,1149,479,1038,327,654,338,817,579,118,232,140,609,1064,562,1297,443,822,197,252,333,506,405,884,210,612,228,974,194,761,298,1260,375,159,379,1223,320);
         this.WORM_COORDS[1663] = new Array(1060,402,86,222,100,588,1014,173,709,329,177,386,312,428,1133,482,781,315,335,235,1169,404,505,405,867,576,1203,340,573,277,456,217,951,181,738,424,246,325,2,358);
         this.WORM_COORDS[1664] = new Array(1145,505,693,431,974,194,437,211,1095,406,483,266,296,451,38,314,151,375,785,318,1213,324,703,335,56,261,627,403,120,233,550,380,354,241,258,335,839,200,639,533);
         this.WORM_COORDS[1665] = new Array(1281,435,134,366,761,298,814,205,200,304,429,209,593,184,1139,496,371,250,104,238,540,383,264,544,855,360,656,334,879,582,1225,320,602,541,996,161,2,591,1065,402);
         this.WORM_COORDS[1666] = new Array(250,329,1152,464,1094,407,547,518,196,306,954,206,557,325,494,408,1018,175,848,220,463,221,141,370,113,232,312,265,579,200,1299,448,669,332,1028,309,1247,444,854,359);
         this.WORM_COORDS[1667] = new Array(22,323,1256,551,128,362,108,230,293,454,1072,403,1255,369,327,247,613,228,730,282,441,212,693,355,506,405,865,370,953,182,1286,435,5,587,1125,438,559,324,876,479);
         this.WORM_COORDS[1668] = new Array(741,425,885,210,1094,407,801,295,27,567,67,250,618,389,432,209,691,359,207,300,1229,321,1045,328,1179,389,319,253,501,407,559,519,1026,176,831,195,1260,375,1137,493);
         this.WORM_COORDS[1669] = new Array(1036,319,30,319,1140,499,1068,403,321,249,677,338,282,463,1173,389,232,304,499,407,610,384,907,179,596,326,782,316,820,199,169,384,595,186,931,420,1214,323,75,250);
         this.WORM_COORDS[1670] = new Array(1168,404,750,285,254,335,829,195,986,396,666,331,514,400,269,445,1006,169,34,316,1283,435,371,250,421,208,134,366,1044,327,1085,401,1166,461,820,577,564,318,96,586);
         this.WORM_COORDS[1671] = new Array(613,228,1141,500,622,395,383,242,936,179,1125,438,301,303,768,307,1227,320,229,304,66,250,638,533,1052,365,527,389,1195,390,853,357,41,311,663,331,1288,435,885,210);
         this.WORM_COORDS[1672] = new Array(1128,467,232,304,563,320,635,420,314,425,94,584,357,259,920,410,998,161,1181,389,1267,456,673,335,1092,402,164,382,118,232,1044,568,745,283,45,307,304,267,423,209);
         this.WORM_COORDS[1673] = new Array(476,264,1081,399,223,296,172,385,529,387,685,383,599,326,1054,565,1178,389,7,358,1146,506,944,181,866,370,1260,375,285,462,578,242,301,303,145,607,658,333,117,232);
         this.WORM_COORDS[1674] = new Array(106,230,1197,391,618,389,28,320,1171,528,300,303,816,204,503,406,1110,403,699,341,79,579,410,209,1282,435,1060,402,487,268,217,291,163,595,920,167,983,399,558,325);
         this.WORM_COORDS[1675] = new Array(1029,309,629,406,671,333,145,607,34,316,535,384,775,313,298,304,840,202,558,325,1077,399,287,460,331,235,876,375,1283,435,930,420,918,169,1169,404,213,291,144,371);
         this.WORM_COORDS[1676] = new Array(297,450,1027,309,639,533,744,283,820,199,378,246,438,211,655,336,1233,321,987,395,1188,387,478,264,109,230,140,369,865,370,509,403,23,322,566,530,563,320,510,509);
         this.WORM_COORDS[1677] = new Array(133,365,51,263,383,242,243,324,1061,402,265,435,1223,320,238,552,806,248,697,344,99,587,1286,435,854,359,524,390,895,199,1114,403,13,359,101,222,1192,387,476,264);
         this.WORM_COORDS[1678] = new Array(151,375,724,316,1003,164,33,316,667,331,869,372,237,551,287,460,1037,570,1077,399,778,314,946,181,8,584,636,533,512,401,257,335,1258,372,1145,505,589,184,1198,391);
         this.WORM_COORDS[1679] = new Array(822,576,264,432,254,335,633,414,899,573,596,186,702,336,894,200,982,174,539,383,1087,401,1196,391,121,604,843,311,133,365,51,263,652,342,785,318,494,315,1286,435);
         this.WORM_COORDS[1680] = new Array(776,313,197,306,1164,460,522,392,634,417,447,214,135,611,481,266,650,349,1271,464,979,404,1019,175,608,227,1103,404,559,324,860,366,884,210,637,533,1167,404,1214,323);
         this.WORM_COORDS[1681] = new Array(623,396,251,330,125,359,10,358,1223,320,396,226,1178,389,1152,464,1084,400,591,327,131,611,500,407,118,232,1013,173,792,307,640,533,772,427,819,200,703,335,1044,327);
         this.WORM_COORDS[1682] = new Array(1039,327,108,594,1092,402,1133,482,508,404,984,398,416,208,868,576,43,309,275,464,1187,387,773,311,563,525,493,315,712,328,95,218,873,374,488,468,1274,469,36,561);
         this.WORM_COORDS[1683] = new Array(277,464,1186,387,609,227,1107,403,240,324,390,236,514,400,885,495,701,337,1157,460,1027,309,159,379,1242,329,440,211,693,431,1052,365,1273,467,966,195,763,301,982,401);
         this.WORM_COORDS[1684] = new Array(1158,460,71,250,1206,334,649,350,1103,404,995,161,553,380,422,209,105,591,848,220,1035,318,233,311,1271,464,791,308,633,414,46,557,857,363,154,378,634,533,286,461);
         this.WORM_COORDS[1685] = new Array(501,407,197,386,1192,387,1101,404,303,303,116,232,146,606,266,436,633,414,1211,327,1049,365,340,229,903,199,491,270,870,372,456,217,1147,508,682,344,1266,454,209,297);
         this.WORM_COORDS[1686] = new Array(798,299,378,246,621,393,79,230,1281,435,544,381,1099,404,663,331,12,358,877,214,452,216,284,462,642,534,1206,334,160,380,229,304,1011,173,724,316,817,579,92,584);
         this.WORM_COORDS[1687] = new Array(271,454,456,217,636,533,892,201,855,360,77,578,1167,404,559,324,578,242,17,328,1091,401,756,429,209,297,535,384,1254,368,892,505,587,184,1139,496,343,229,0,595);
         this.WORM_COORDS[1688] = new Array(1178,389,179,387,1165,461,63,252,278,464,1205,336,465,222,939,179,631,410,523,391,494,315,879,375,378,246,1028,309,645,534,886,210,4,450,724,316,219,292,73,576);
         this.WORM_COORDS[1689] = new Array(854,359,98,218,1197,391,1074,401,255,335,905,187,404,214,4,358,622,395,1291,436,657,333,184,387,791,308,1163,460,644,534,208,530,604,212,742,426,326,247,498,324);
         this.WORM_COORDS[1690] = new Array(104,238,1278,437,189,306,777,314,1,592,982,174,684,351,549,380,1110,403,281,463,1045,328,1217,321,644,534,521,539,247,403,1264,385,708,453,88,583,860,366,130,363);
         this.WORM_COORDS[1691] = new Array(970,194,282,463,1082,399,395,228,535,532,1252,359,770,309,495,317,1195,390,874,374,64,251,669,332,453,216,309,265,844,213,75,577,235,551,509,403,890,585,895,512);
         this.WORM_COORDS[1692] = new Array(1071,403,1043,327,63,567,778,314,151,375,1221,320,529,387,467,262,938,179,1141,500,982,401,267,440,405,212,131,611,633,414,690,363,876,375,811,209,204,304,606,227);
         this.WORM_COORDS[1693] = new Array(726,286,516,398,1092,402,881,211,1132,478,1017,175,976,407,620,535,287,460,1194,389,224,296,879,375,77,238,675,336,1194,526,192,387,630,408,142,370,563,320,932,175);
         this.WORM_COORDS[1694] = new Array(733,282,1209,330,855,572,104,591,1073,401,891,202,186,307,1044,327,5,358,1184,389,300,447,621,393,387,239,319,253,1153,462,245,399,174,386,240,324,455,217,154,527);
         this.WORM_COORDS[1695] = new Array(321,249,1163,460,416,208,125,359,259,337,954,206,751,286,72,250,1284,435,1034,317,648,351,1008,179,104,591,36,561,5,358,243,394,898,199,1232,321,281,463,526,389);
         this.WORM_COORDS[1696] = new Array(1191,387,1030,311,1129,469,693,355,1291,436,273,461,324,247,479,265,830,195,865,370,1078,399,197,306,741,282,185,387,86,222,386,239,982,401,1230,321,950,181,512,401);
         this.WORM_COORDS[1697] = new Array(678,340,442,213,470,263,849,324,184,387,978,194,522,392,243,324,1063,402,1155,460,1029,309,1187,387,1041,569,1287,435,294,453,335,235,35,316,119,233,1251,359,636,533);
         this.WORM_COORDS[1698] = new Array(73,576,257,335,1123,434,706,332,931,174,501,490,876,479,764,302,327,247,637,533,1221,320,411,209,983,399,144,371,1288,435,859,365,296,451,47,305,193,306,499,407);
         this.WORM_COORDS[1699] = new Array(621,393,932,175,1121,434,131,364,1270,462,501,407,1249,356,118,602,31,318,888,499,657,544,677,338,872,373,330,236,377,296,1010,173,199,304,712,422,830,195,739,282);
         this.WORM_COORDS[1700] = new Array(185,402,1207,330,78,307,902,196,476,356,1169,472,1297,567,288,264,1264,404,742,200,108,185,1112,617,656,201,246,403,983,174,642,498,1052,175,428,223,1066,539,218,467);
         this.WORM_COORDS[1701] = new Array(1295,565,306,421,944,519,732,203,296,303,55,335,506,424,1148,565,871,517,440,353,1049,175,231,479,937,172,642,498,1128,631,1063,539,412,208,879,158,173,388,583,588);
         this.WORM_COORDS[1702] = new Array(126,388,1238,352,1120,636,38,331,980,172,235,477,120,227,621,298,934,462,923,187,506,424,325,401,555,340,771,286,1251,403,201,416,756,200,715,475,981,530,656,201);
         this.WORM_COORDS[1703] = new Array(1163,472,1069,631,1042,175,360,281,454,350,405,206,821,229,945,166,782,292,1198,333,190,406,75,323,298,430,532,438,720,197,845,155,630,260,279,259,8,336,1283,558);
         this.WORM_COORDS[1704] = new Array(37,329,1144,567,782,292,1038,547,543,335,357,281,215,451,653,516,173,388,1216,329,1121,636,510,427,1288,561,117,332,897,158,432,313,1249,404,278,259,970,166,1168,472);
         this.WORM_COORDS[1705] = new Array(662,203,456,350,31,332,916,190,359,281,1237,351,261,347,1101,614,292,437,1060,539,718,203,526,435,676,590,179,399,955,528,1281,557,880,463,238,476,1258,403,425,216);
         this.WORM_COORDS[1706] = new Array(1219,329,605,308,1290,562,1266,405,227,480,574,591,181,400,795,299,349,292,727,195,985,175,336,394,1020,541,1127,632,674,590,632,508,598,361,1172,472,646,219,853,157);
         this.WORM_COORDS[1707] = new Array(472,357,497,416,224,478,1005,533,1216,329,1129,630,412,208,1159,476,307,420,956,165,785,293,844,155,253,383,1258,403,150,378,702,484,584,587,1055,174,562,345,356,281);
         this.WORM_COORDS[1708] = new Array(1112,617,1059,175,488,358,422,212,160,369,778,290,233,478,827,221,21,608,1220,329,603,310,1294,564,1003,154,285,261,3,336,651,207,1153,565,378,294,1069,540,745,200);
         this.WORM_COORDS[1709] = new Array(66,332,255,376,1298,570,1144,567,573,591,1226,331,872,516,688,592,1080,637,268,268,762,276,439,354,232,479,559,342,1252,403,1067,539,608,534,682,189,1176,473,129,390);
         this.WORM_COORDS[1710] = new Array(1260,403,411,208,573,353,631,259,177,399,1073,634,1128,631,603,542,987,529,820,231,797,299,1163,472,128,229,1283,558,69,328,369,281,670,513,491,361,662,203,945,166);
         this.WORM_COORDS[1711] = new Array(1281,557,36,329,1131,626,151,377,704,202,847,278,461,355,234,477,1039,175,1201,332,299,303,32,600,257,371,89,243,1025,543,520,433,900,196,566,348,397,206,1157,478);
         this.WORM_COORDS[1712] = new Array(585,360,180,399,1241,414,282,261,1041,175,1147,565,715,203,259,358,798,300,911,193,663,512,120,384,435,314,1208,330,1134,616,117,228,77,314,1022,542,73,522,509,426);
         this.WORM_COORDS[1713] = new Array(1009,154,710,205,370,282,1242,411,1213,329,838,155,402,206,256,373,194,409,535,343,1096,620,102,183,645,219,812,301,455,350,903,195,315,410,497,416,40,600,287,261);
         this.WORM_COORDS[1714] = new Array(1258,403,478,356,184,402,1150,565,1229,335,908,195,570,351,1067,539,803,456,1122,635,840,284,1010,535,1285,560,524,434,1052,175,1180,443,358,281,123,227,415,208,232,479);
         this.WORM_COORDS[1715] = new Array(282,261,704,202,1289,562,644,219,1067,539,418,210,1192,341,900,196,135,594,501,420,1106,614,306,421,359,281,774,288,560,598,216,456,467,359,168,371,1165,472,612,532);
         this.WORM_COORDS[1716] = new Array(692,206,497,416,221,474,788,295,1248,404,1004,532,956,165,618,300,284,405,592,583,1161,473,1197,334,130,390,402,206,201,416,43,596,1020,162,1083,627,850,158,492,364);
         this.WORM_COORDS[1717] = new Array(1105,614,777,482,985,175,705,202,132,392,935,464,801,301,1281,557,456,350,103,183,289,405,891,153,1175,473,81,298,545,335,229,479,1254,403,271,263,529,436,625,297);
         this.WORM_COORDS[1718] = new Array(56,334,39,600,727,195,1201,332,824,295,1265,404,967,165,1057,540,850,158,424,214,1291,563,351,390,442,351,229,479,138,593,1089,624,769,283,1144,567,84,540,554,339);
         this.WORM_COORDS[1719] = new Array(323,402,850,158,702,484,534,345,1122,635,481,356,225,478,83,288,1225,331,909,195,1040,547,678,183,207,425,297,303,100,183,368,281,1143,567,1276,555,618,300,1019,161);
         this.WORM_COORDS[1720] = new Array(812,301,1127,632,29,601,58,334,1262,403,459,353,1162,473,256,373,151,377,872,156,212,437,107,185,759,478,1070,540,1279,556,1209,330,1007,534,586,361,312,413,745,200);
         this.WORM_COORDS[1721] = new Array(1022,542,1234,344,212,437,691,502,1160,474,337,393,650,209,45,340,476,356,1263,403,958,165,517,431,809,301,702,202,155,371,818,238,624,297,100,183,948,524,1131,626);
         this.WORM_COORDS[1722] = new Array(60,334,135,594,762,276,237,477,919,189,561,344,1148,565,1072,543,698,202,157,370,1159,476,999,530,1055,174,1297,567,358,388,26,603,278,259,492,364,758,206,1002,155);
         this.WORM_COORDS[1723] = new Array(563,345,496,414,1,337,466,359,1169,472,1039,547,327,400,71,327,193,408,1082,637,1135,579,951,165,845,460,21,608,124,387,816,300,1211,330,767,480,427,221,823,226);
         this.WORM_COORDS[1724] = new Array(822,462,224,478,536,340,172,386,888,154,1188,433,1275,554,852,375,722,197,5,336,405,206,1097,619,586,586,740,477,1153,565,1042,547,1243,410,480,356,603,310,988,177);
         this.WORM_COORDS[1725] = new Array(517,431,551,336,448,350,359,281,62,334,1141,568,1210,330,414,208,143,380,218,467,990,529,1265,404,1155,482,1079,637,253,383,1277,555,608,307,1031,177,314,411,26,603);
         this.WORM_COORDS[1726] = new Array(1203,331,1181,438,209,429,582,359,881,154,1140,569,8,336,137,394,1083,627,1282,558,615,302,308,417,290,268,646,498,1260,403,115,595,1000,531,95,189,80,302,789,295);
         this.WORM_COORDS[1727] = new Array(1157,478,678,183,113,329,147,379,1292,563,252,386,1206,330,896,154,1060,539,38,331,1109,614,618,300,818,299,1030,166,402,206,467,359,594,582,26,603,231,479,537,338);
         this.WORM_COORDS[1728] = new Array(653,204,448,350,749,200,807,301,163,369,1016,538,570,351,111,329,243,404,909,430,382,228,625,297,297,303,1193,339,234,477,495,412,1068,539,707,479,1092,623,901,196);
         this.WORM_COORDS[1729] = new Array(1262,403,36,329,206,422,723,197,993,529,1022,163,477,356,1191,344,767,282,619,299,1290,562,265,295,1166,472,960,165,343,391,1119,636,702,484,1063,539,225,478,910,194);
         this.WORM_COORDS[1730] = new Array(230,479,1038,547,1168,472,395,207,686,195,764,279,246,403,594,361,632,508,1124,634,525,434,307,420,25,337,1281,557,1259,403,978,530,173,388,146,586,80,302,614,302);
         this.WORM_COORDS[1731] = new Array(969,529,1210,330,1264,404,125,228,1144,567,811,301,18,337,1090,624,283,261,602,310,911,193,412,208,224,478,972,167,168,371,1157,478,502,420,435,314,703,202,587,361);
         this.WORM_COORDS[1732] = new Array(1019,539,672,184,454,350,620,299,575,354,1292,563,1268,407,660,510,1076,635,336,394,499,417,1182,437,226,479,143,380,1018,160,17,339,1196,335,838,155,560,598,417,209);
         this.WORM_COORDS[1733] = new Array(134,393,1038,547,593,361,331,397,822,462,84,282,635,259,211,434,514,429,1199,333,125,228,1044,175,1114,619,698,202,1188,433,1239,397,351,284,952,165,386,217,691,502);
         this.WORM_COORDS[1734] = new Array(1090,624,181,400,131,391,270,264,574,591,1227,332,627,296,417,209,1286,560,1003,154,376,289,318,406,757,202,679,189,1016,538,853,157,1145,566,521,433,62,334,30,601);
         this.WORM_COORDS[1735] = new Array(641,498,1049,545,765,280,1266,405,515,430,7,336,676,183,693,499,1139,570,150,378,1216,329,594,361,726,195,487,357,301,427,633,259,218,467,435,314,1080,637,903,195);
         this.WORM_COORDS[1736] = new Array(1080,637,114,190,1188,433,491,361,949,525,196,412,516,430,1221,329,3,336,1260,403,327,400,377,290,618,300,740,202,61,334,646,498,863,151,394,208,124,387,778,290);
         this.WORM_COORDS[1737] = new Array(1123,635,266,273,1256,403,88,264,373,286,338,393,1285,560,1230,336,827,221,747,200,1188,433,493,406,972,529,1034,547,881,154,626,296,1028,164,243,404,534,345,1170,566);
         this.WORM_COORDS[1738] = new Array(1281,557,289,405,936,173,13,336,942,513,346,304,476,356,1185,437,79,305,1136,576,1001,531,781,504,508,426,561,344,194,409,344,391,231,479,1250,403,707,479,1054,541);
         this.WORM_COORDS[1739] = new Array(570,351,210,431,1168,472,3,336,871,150,1100,615,1263,403,379,275,327,400,748,200,145,379,1070,540,774,288,126,594,953,165,803,522,83,288,479,356,254,380,631,259);
         this.WORM_COORDS[1740] = new Array(81,298,1279,556,1053,542,1155,482,256,373,953,165,469,359,682,592,1005,154,426,218,127,388,909,430,867,148,10,336,556,600,781,291,691,207,793,528,85,540,1268,407);
         this.WORM_COORDS[1741] = new Array(1133,620,1150,565,80,530,1193,339,285,261,813,301,141,380,1048,545,585,360,975,530,873,157,1290,562,330,397,1178,475,449,350,532,353,355,281,687,592,76,319,242,405);
         this.WORM_COORDS[1742] = new Array(166,369,1032,176,802,301,1247,405,665,189,851,376,606,308,259,358,527,436,472,357,1212,329,215,451,295,303,365,281,1295,565,393,208,1100,615,302,426,1054,541,910,194);
         this.WORM_COORDS[1743] = new Array(1036,547,495,412,109,185,808,301,136,394,817,241,778,482,939,170,1298,570,1227,332,1095,621,606,308,1179,476,622,531,713,203,839,155,464,360,250,397,53,334,1169,566);
         this.WORM_COORDS[1744] = new Array(689,263,502,420,1275,554,1081,637,228,479,969,529,358,281,268,268,43,340,1062,175,343,391,869,148,829,220,974,168,581,588,408,208,1031,546,285,405,1223,329,803,301);
         this.WORM_COORDS[1745] = new Array(1058,174,62,334,132,392,281,261,361,281,1174,472,340,392,770,284,1275,554,586,586,933,177,1133,620,624,297,1083,627,481,356,986,176,1271,422,248,403,867,148,111,185);
         this.WORM_COORDS[1746] = new Array(354,389,747,200,133,594,645,498,481,356,1206,330,225,478,73,522,160,369,1131,626,810,301,1032,176,767,480,370,282,1146,566,83,288,407,207,971,166,1270,416,920,189);
         this.WORM_COORDS[1747] = new Array(1062,539,1184,437,84,282,661,202,335,394,775,289,1143,567,221,474,432,313,1077,636,15,337,965,165,107,185,187,404,512,428,813,457,346,304,826,222,692,592,1294,564);
         this.WORM_COORDS[1748] = new Array(1166,472,637,222,1123,635,447,350,960,165,295,434,845,155,1280,557,595,317,534,345,263,319,371,282,782,292,221,474,400,206,1135,579,160,369,512,428,1070,540,757,202);
         this.WORM_COORDS[1749] = new Array(344,391,98,186,449,350,798,300,601,311,935,174,528,436,1180,443,222,476,294,435,544,335,291,288,4,336,1238,352,386,217,1059,539,1263,403,749,200,897,440,981,530);
         this.WORM_COORDS[1750] = new Array(494,409,1148,565,596,315,1047,175,28,332,1069,540,674,183,1092,623,688,263,1293,563,300,304,1271,422,178,399,781,291,107,185,925,186,976,530,724,197,112,329,820,231);
         this.WORM_COORDS[1751] = new Array(127,229,235,477,580,358,522,434,1072,543,1229,335,105,594,637,222,975,169,1147,565,718,203,454,350,596,546,1018,539,140,381,284,261,764,279,1129,630,808,456,375,288);
         this.WORM_COORDS[1752] = new Array(454,350,114,381,321,404,935,464,111,185,219,470,1014,536,512,428,949,165,3,336,1057,174,1154,484,1237,351,1119,636,727,195,1071,541,773,481,64,336,946,523,576,355);
         this.WORM_COORDS[1753] = new Array(212,437,152,376,1030,546,552,337,1117,636,696,202,257,371,421,211,1173,472,49,334,837,155,323,402,293,303,1201,332,694,496,979,530,1262,403,1139,570,525,434,748,200);
         this.WORM_COORDS[1754] = new Array(623,531,23,337,1055,174,688,592,308,417,1248,404,170,373,1173,472,551,336,361,281,640,220,392,209,1064,539,286,261,496,414,1098,617,982,173,472,357,886,154,227,480);
         this.WORM_COORDS[1755] = new Array(156,370,738,206,886,154,1136,576,92,197,980,530,375,288,1231,337,788,295,1288,561,1160,474,463,359,1121,636,234,477,607,536,952,165,786,506,34,600,207,425,1243,410);
         this.WORM_COORDS[1756] = new Array(1180,443,1232,339,1154,565,824,224,1276,555,757,202,1023,163,231,479,1262,403,587,361,259,358,983,530,614,302,665,512,901,196,781,291,513,429,5,336,406,206,433,314);
         this.WORM_COORDS[1757] = new Array(1190,348,430,311,30,332,386,217,643,219,783,292,1001,531,1065,177,1154,565,1274,554,325,401,373,286,612,304,254,380,995,178,872,516,1081,637,557,341,1170,472,291,288);
         this.WORM_COORDS[1758] = new Array(239,475,810,301,69,523,288,264,692,501,1110,615,1251,403,700,202,46,340,1235,346,324,402,390,212,1058,540,1149,565,379,275,1181,438,41,598,626,296,585,360,521,433);
         this.WORM_COORDS[1759] = new Array(1253,403,1080,637,817,241,1162,473,498,417,762,276,481,356,621,298,572,352,374,287,52,334,382,228,308,417,251,395,1043,175,110,185,726,195,689,506,122,386,962,529);
         this.WORM_COORDS[1760] = new Array(370,282,1118,637,143,380,495,412,657,201,1145,566,783,504,1231,337,1178,475,231,479,250,397,274,259,118,227,1060,539,726,195,31,600,1002,531,42,339,797,299,392,209);
         this.WORM_COORDS[1761] = new Array(361,281,1280,557,712,203,227,480,792,297,110,185,71,522,1033,547,1176,473,507,425,186,403,1262,403,268,268,1189,351,629,261,827,221,300,428,17,339,1080,637,470,359);
         this.WORM_COORDS[1762] = new Array(260,351,489,359,1039,547,172,386,1257,403,872,516,14,337,713,203,1100,615,581,358,513,429,91,200,348,296,1154,484,902,196,612,304,626,511,338,393,958,165,838,286);
         this.WORM_COORDS[1763] = new Array(1135,579,594,361,301,305,820,462,738,206,679,592,1291,563,644,498,627,296,942,513,443,351,204,419,1262,403,1077,636,329,398,37,600,375,288,546,601,426,218,906,195);
         this.WORM_COORDS[1764] = new Array(1109,614,1162,566,1047,546,11,336,880,155,1294,564,1215,329,211,434,568,350,980,530,1043,175,460,355,678,183,62,334,795,299,939,170,1160,474,584,587,865,462,253,383);
         this.WORM_COORDS[1765] = new Array(43,596,1125,633,523,434,979,530,692,501,780,291,755,200,224,478,69,328,600,542,660,201,1074,635,114,190,1193,339,245,403,353,282,549,336,1171,472,1253,403,607,307);
         this.WORM_COORDS[1766] = new Array(1017,538,148,379,1142,568,344,391,443,351,1045,175,951,165,592,583,353,282,722,197,252,386,1080,637,868,148,425,216,1199,333,288,264,29,332,591,361,960,529,688,592);
         this.WORM_COORDS[1767] = new Array(1064,539,170,373,555,340,1093,623,884,154,437,315,1282,558,307,420,787,294,268,268,508,426,1189,351,347,300,720,475,6,336,1043,175,490,359,1184,559,834,156,1270,416);
         this.WORM_COORDS[1768] = new Array(1087,624,875,159,522,434,320,405,1234,344,767,480,242,405,557,341,1296,566,420,211,430,311,1071,541,705,202,990,177,603,542,155,371,1137,573,302,305,561,598,946,523);
         this.WORM_COORDS[1769] = new Array(0,338,722,197,982,173,1276,555,541,335,1180,562,1124,634,967,529,1236,348,409,208,80,302,205,421,344,391,650,209,843,155,1183,437,686,592,230,479,297,303,139,394);
         this.WORM_COORDS[1770] = new Array(646,219,331,397,1118,637,962,529,262,343,1300,574,1148,565,172,386,1195,336,121,385,99,183,575,354,85,279,346,304,791,297,62,509,484,356,903,195,25,337,216,456);
         this.WORM_COORDS[1771] = new Array(365,281,22,337,244,404,269,266,694,203,505,423,1174,472,1120,636,1020,541,640,498,90,242,1067,629,307,420,393,208,577,590,960,529,1259,403,490,359,230,479,1236,348);
         this.WORM_COORDS[1772] = new Array(412,208,105,183,602,310,9,336,1252,403,334,395,618,531,217,463,458,352,858,156,649,210,274,259,132,392,1292,563,1059,175,800,301,31,600,1175,473,1023,542,108,594);
         this.WORM_COORDS[1773] = new Array(293,303,992,178,549,336,86,274,148,379,707,203,996,530,784,293,23,606,223,477,1177,474,26,336,759,209,1149,565,104,183,1275,554,460,355,605,308,1192,341,282,405);
         this.WORM_COORDS[1774] = new Array(976,169,1149,565,912,193,489,359,632,259,853,157,1080,637,173,388,1291,563,760,274,1259,403,1178,475,336,394,523,434,294,303,590,361,18,337,87,268,368,281,1056,541);
         this.WORM_COORDS[1775] = new Array(510,427,438,356,665,189,776,289,247,403,1088,624,736,206,614,302,1015,156,1260,403,38,600,346,304,263,319,130,390,981,530,832,159,550,336,125,228,39,337,1229,335);
         this.WORM_COORDS[1776] = new Array(491,361,647,219,1096,620,839,155,547,335,788,295,622,298,114,190,1287,561,1032,547,1203,331,21,337,1152,565,188,404,937,172,677,590,723,475,1174,472,263,319,818,238);
         this.WORM_COORDS[1777] = new Array(54,334,935,464,148,379,1189,351,327,400,587,585,101,183,352,283,1063,539,1281,557,935,174,551,336,1106,614,972,529,700,202,1158,565,67,510,219,470,1035,176,505,423);
         this.WORM_COORDS[1778] = new Array(1026,544,1141,568,188,404,343,391,643,219,1218,329,549,336,1190,433,222,476,618,531,397,206,1087,624,746,200,997,172,785,293,108,185,107,329,505,423,1287,561,1249,404);
         this.WORM_COORDS[1779] = new Array(619,531,741,201,1175,473,980,530,243,404,1089,624,152,376,796,527,320,405,818,238,600,311,37,329,235,477,1266,405,1216,329,458,352,841,155,130,594,1000,157,522,434);
         this.WORM_COORDS[1780] = new Array(409,208,707,203,797,299,763,478,344,391,464,360,1086,625,352,283,951,526,226,479,604,542,1149,565,1047,546,906,195,160,369,48,335,1161,473,1005,154,1243,410,294,303);
         this.WORM_COORDS[1781] = new Array(1260,403,20,610,970,529,634,502,1086,625,310,415,124,387,575,354,988,177,820,231,733,203,83,288,274,259,622,298,465,360,517,431,914,192,224,478,742,477,1177,474);
         this.WORM_COORDS[1782] = new Array(334,395,1287,561,488,358,564,596,240,410,383,225,374,287,958,529,1264,404,507,425,217,463,658,201,31,332,593,361,729,195,890,153,119,383,752,478,1036,547,1154,484);
         this.WORM_COORDS[1783] = new Array(666,189,569,351,1104,614,981,173,1199,333,1269,414,444,350,126,229,497,416,12,336,238,476,809,301,339,392,136,394,1065,177,114,595,619,531,754,200,918,190,549,601);
         this.WORM_COORDS[1784] = new Array(636,222,1203,331,419,210,571,352,1112,617,506,424,938,171,1250,403,475,356,367,281,702,484,706,202,1174,472,792,297,206,422,869,516,689,263,1042,547,979,530,828,451);
         this.WORM_COORDS[1785] = new Array(1083,627,1258,403,67,330,698,202,1289,562,165,369,1035,547,463,359,260,351,231,479,760,274,316,409,95,189,617,352,0,338,869,148,1035,176,1140,569,390,212,1231,337);
         this.WORM_COORDS[1786] = new Array(290,268,1018,539,497,416,233,478,76,319,1167,472,463,359,308,417,182,401,576,355,256,373,1268,552,819,234,347,300,13,336,1265,404,1062,175,1115,622,20,610,1238,352);
         this.WORM_COORDS[1787] = new Array(224,478,1026,544,1111,616,828,451,733,203,932,455,624,297,341,392,1199,333,658,510,555,340,154,372,103,183,262,343,11,336,1272,426,350,287,914,192,673,183,85,279);
         this.WORM_COORDS[1788] = new Array(335,394,811,301,854,157,63,334,777,482,1165,472,480,356,231,479,139,394,108,185,85,279,298,303,965,529,1273,554,1020,162,569,351,621,298,759,209,1071,541,371,282);
         this.WORM_COORDS[1789] = new Array(72,327,429,229,684,189,589,361,1044,175,1068,539,21,608,868,148,1131,626,511,427,471,358,621,298,365,281,1182,437,1143,567,336,394,1011,535,829,292,126,229,273,261);
         this.WORM_COORDS[1790] = new Array(1191,344,696,202,230,479,507,425,1045,175,693,499,829,451,784,293,1294,564,1099,615,37,600,430,311,1068,539,541,335,383,225,307,420,934,462,104,183,977,530,87,540);
         this.WORM_COORDS[1791] = new Array(13,336,801,301,798,526,472,357,515,430,823,226,393,208,847,156,177,399,65,334,859,373,1071,541,707,203,667,513,535,343,239,475,1104,614,757,202,1263,403,620,299);
         this.WORM_COORDS[1792] = new Array(790,296,160,369,582,359,1147,565,935,174,650,209,838,458,225,478,490,359,1073,634,1189,351,51,334,516,430,293,303,700,488,116,212,721,197,1186,436,1262,403,1047,175);
         this.WORM_COORDS[1793] = new Array(807,301,900,196,740,202,1212,329,1039,547,344,391,632,508,124,387,417,209,17,339,241,408,1279,556,463,359,501,420,226,479,955,165,290,268,1271,422,838,155,555,340);
         this.WORM_COORDS[1794] = new Array(1073,634,486,356,501,420,890,153,1130,628,407,207,1220,329,1298,570,1141,568,22,337,1061,175,610,533,955,528,630,260,72,327,232,479,536,340,148,379,819,234,802,301);
         this.WORM_COORDS[1795] = new Array(1276,555,1147,565,72,327,29,601,738,206,1210,330,514,429,1116,632,202,418,283,261,976,169,551,336,239,475,474,357,615,302,1029,545,1165,472,582,588,417,209,685,514);
         this.WORM_COORDS[1796] = new Array(1271,422,1231,337,241,408,638,499,1283,558,880,463,311,414,787,294,1176,473,379,275,160,369,86,274,25,337,694,203,585,360,902,196,1116,632,505,423,418,210,138,593);
         this.WORM_COORDS[1797] = new Array(92,503,1038,547,1099,615,438,318,1,337,213,441,394,208,1207,330,975,169,369,281,1288,561,312,413,621,298,55,335,588,361,516,430,552,601,1162,473,257,371,1241,414);
         this.WORM_COORDS[1798] = new Array(979,530,70,328,145,379,1281,557,471,358,1205,330,1056,174,1129,630,1142,568,331,397,849,157,238,476,285,261,598,314,752,200,534,345,681,189,89,243,529,436,942,168);
         this.WORM_COORDS[1799] = new Array(626,511,1124,634,341,392,677,590,772,286,899,162,520,433,1265,404,81,298,1046,546,90,242,232,479,476,356,1205,330,568,594,581,358,401,206,728,195,1051,175,1157,478);
         this.WORM_COORDS[1800] = new Array(1297,281,266,294,813,308,1089,540,504,448,1173,203,522,189,670,434,1130,471,1230,601,24,358,129,318,571,301,744,253,1171,610,78,287,197,150,1082,184,345,160,37,419);
         this.WORM_COORDS[1801] = new Array(683,329,785,325,456,200,1257,261,673,432,514,448,182,152,514,191,552,318,633,334,1166,394,372,168,1054,524,1109,197,281,282,1171,203,996,177,1121,518,888,343,1052,224);
         this.WORM_COORDS[1802] = new Array(816,306,1226,280,52,499,1134,466,1096,189,1001,177,413,183,872,344,762,357,40,445,959,280,1193,227,1297,281,712,274,526,189,184,151,1196,600,1091,540,600,364,687,327);
         this.WORM_COORDS[1803] = new Array(1234,285,52,499,1244,600,181,152,496,186,165,227,966,277,1110,197,1200,229,896,343,239,162,606,336,570,532,1019,177,726,252,830,302,38,419,418,180,919,154,125,323);
         this.WORM_COORDS[1804] = new Array(1185,388,785,325,1061,215,1220,273,1114,530,103,307,956,281,489,187,1292,277,836,302,1241,599,46,475,421,180,996,177,745,253,642,341,934,206,1120,204,179,225,573,287);
         this.WORM_COORDS[1805] = new Array(715,267,1042,476,223,150,649,436,1255,261,1086,184,549,318,250,315,810,309,1121,518,685,328,119,330,29,361,1249,632,423,450,1217,470,68,303,469,191,885,342,195,288);
         this.WORM_COORDS[1806] = new Array(957,282,499,399,1126,479,721,257,853,319,587,281,1144,222,360,156,136,314,8,403,681,331,454,201,272,288,661,436,790,319,71,294,526,451,61,510,432,450,1016,170);
         this.WORM_COORDS[1807] = new Array(36,376,776,398,909,332,705,333,108,343,251,312,1057,530,549,318,654,436,1192,227,907,150,306,268,637,335,487,189,728,251,1084,184,1265,261,187,151,491,400,846,305);
         this.WORM_COORDS[1808] = new Array(84,287,187,151,1176,390,394,161,293,275,632,334,737,251,551,318,1212,259,409,451,488,400,843,303,1170,610,141,310,1280,267,480,189,690,327,539,222,1057,530,386,368);
         this.WORM_COORDS[1809] = new Array(1083,184,311,264,689,327,587,281,383,160,128,319,1160,634,898,343,945,261,49,485,1104,536,783,328,514,448,1030,174,217,150,1232,285,26,358,673,432,248,317,529,189);
         this.WORM_COORDS[1810] = new Array(34,370,709,341,1117,202,949,267,1049,503,64,584,446,401,528,189,342,159,1232,601,396,168,47,480,80,287,475,189,718,260,276,284,1052,224,987,175,1153,634,763,358);
         this.WORM_COORDS[1811] = new Array(1141,220,1237,282,25,591,1015,168,806,311,1137,425,99,298,193,150,659,436,388,159,728,251,285,280,641,339,454,201,544,321,1076,185,45,473,1106,536,1201,230,3,403);
         this.WORM_COORDS[1812] = new Array(449,216,215,154,1249,265,967,276,620,333,1044,180,741,253,6,403,525,189,862,351,778,397,1104,536,68,303,1133,466,258,302,554,318,901,153,64,584,1120,629,137,313);
         this.WORM_COORDS[1813] = new Array(499,187,1033,454,757,261,379,161,788,321,680,334,253,309,43,459,544,358,1062,534,143,309,615,333,1028,174,429,450,955,277,562,302,928,163,1164,208,1229,283,28,359);
         this.WORM_COORDS[1814] = new Array(162,228,1104,536,679,340,966,277,789,320,617,333,848,307,409,451,86,287,177,154,916,152,387,159,478,189,499,399,1208,248,652,436,53,503,538,222,1265,261,753,256);
         this.WORM_COORDS[1815] = new Array(1011,168,313,261,245,168,984,269,1125,208,72,293,813,308,650,436,417,450,167,227,704,332,163,295,1287,273,582,281,6,403,599,365,1195,392,922,156,403,193,537,221);
         this.WORM_COORDS[1816] = new Array(8,403,571,301,1075,540,852,317,1193,392,1182,211,952,270,1285,272,542,454,684,328,302,270,429,183,412,450,1212,597,136,314,1226,280,794,316,1046,488,215,154,600,364);
         this.WORM_COORDS[1817] = new Array(729,251,465,193,1195,227,816,306,585,281,271,288,392,371,972,275,1076,540,63,315,1163,634,924,160,1045,222,516,191,1253,261,888,343,1201,391,415,450,661,436,162,228);
         this.WORM_COORDS[1818] = new Array(21,360,693,327,281,282,1242,275,83,459,605,338,113,392,902,152,1183,388,1013,168,1255,634,347,161,938,253,674,431,1154,213,1073,187,718,260,1092,540,551,318,169,229);
         this.WORM_COORDS[1819] = new Array(653,436,396,168,640,337,495,186,558,308,693,327,1153,214,731,251,817,306,278,284,125,323,781,397,60,508,1067,198,19,360,1234,600,1059,531,1007,171,517,448,202,151);
         this.WORM_COORDS[1820] = new Array(404,194,783,328,544,321,608,335,572,529,1224,278,666,435,300,271,885,342,33,367,1296,280,527,451,503,188,496,529,1008,171,67,583,128,319,341,159,966,277,925,160);
         this.WORM_COORDS[1821] = new Array(857,339,953,271,891,175,151,302,550,318,387,159,1133,466,1265,261,461,198,1193,227,1043,178,672,433,799,313,696,327,639,336,538,466,770,365,468,394,1222,617,1142,221);
         this.WORM_COORDS[1822] = new Array(1123,206,776,398,499,187,705,333,115,395,602,360,595,293,902,343,1044,180,508,448,45,473,333,161,789,320,81,287,1174,390,963,279,63,584,193,150,434,189,1175,203);
         this.WORM_COORDS[1823] = new Array(853,319,922,156,1191,227,641,427,498,399,630,334,1031,174,1266,261,160,231,517,191,563,301,44,466,771,402,239,162,115,395,1226,602,273,287,562,454,340,159,923,299);
         this.WORM_COORDS[1824] = new Array(897,343,1217,598,654,436,574,287,24,358,57,505,335,159,698,327,1071,538,626,333,404,451,109,345,1144,222,94,292,761,321,478,189,211,153,265,295,774,399,538,466);
         this.WORM_COORDS[1825] = new Array(315,222,54,505,132,316,814,307,483,404,18,360,1150,635,1242,275,417,450,366,158,742,253,631,334,1208,596,557,310,650,436,878,342,547,453,1124,486,1151,215,275,285);
         this.WORM_COORDS[1826] = new Array(363,158,563,301,674,431,779,397,1126,632,1016,170,407,451,955,277,52,499,736,251,1187,227,98,297,627,333,514,191,302,270,791,319,113,392,1088,540,546,401,1189,599);
         this.WORM_COORDS[1827] = new Array(380,368,314,258,1226,280,43,459,522,449,35,372,460,198,87,287,219,150,656,436,1149,225,527,189,958,281,780,397,697,327,891,175,406,192,1111,532,1222,617,814,307);
         this.WORM_COORDS[1828] = new Array(965,277,857,339,1119,203,899,157,302,270,586,281,691,327,1097,539,650,436,803,312,638,336,1015,168,1178,205,528,189,468,394,407,451,1244,272,508,448,1299,284,105,342);
         this.WORM_COORDS[1829] = new Array(1113,198,995,178,467,191,680,334,60,508,1049,503,1250,265,5,403,737,251,136,314,76,289,1248,632,1197,391,645,433,972,275,850,311,534,221,294,275,1055,223,197,150);
         this.WORM_COORDS[1830] = new Array(84,287,289,278,890,178,643,342,1134,466,1225,602,564,299,813,308,448,401,760,268,1176,203,395,166,1219,477,1052,518,1233,285,180,333,660,436,8,403,895,343,1050,223);
         this.WORM_COORDS[1831] = new Array(74,290,1101,538,673,432,1211,256,970,276,1147,224,6,403,499,187,766,361,855,329,546,454,615,333,1251,632,976,179,258,302,379,161,155,299,191,150,242,162,922,156);
         this.WORM_COORDS[1832] = new Array(722,256,970,276,498,186,555,318,631,334,1153,214,1248,266,35,372,312,263,506,448,921,155,1086,540,706,334,843,303,131,317,402,192,471,394,61,510,1055,223,220,150);
         this.WORM_COORDS[1833] = new Array(881,342,1242,599,43,459,133,315,740,253,474,394,78,287,311,264,1106,536,411,184,1220,273,1299,284,1128,474,188,330,663,435,521,449,612,334,353,157,782,333,1129,211);
         this.WORM_COORDS[1834] = new Array(967,276,857,339,681,427,46,475,127,320,607,335,1153,214,1239,599,688,327,310,265,77,288,1109,375,415,450,465,193,768,402,1250,265,993,177,802,312,23,358,1129,632);
         this.WORM_COORDS[1835] = new Array(1154,213,49,485,906,150,182,152,871,344,734,251,423,180,135,315,1100,539,297,274,65,309,598,365,678,343,1252,632,942,258,769,362,1278,267,450,402,162,228,804,311);
         this.WORM_COORDS[1836] = new Array(97,296,662,436,12,367,1033,454,419,180,728,251,549,318,183,151,963,279,1085,184,1153,214,770,365,1224,278,1300,285,157,232,836,302,442,401,999,177,344,160,600,364);
         this.WORM_COORDS[1837] = new Array(718,260,866,349,104,341,28,359,975,211,1299,284,453,221,224,151,1060,218,557,310,57,505,810,309,645,433,358,156,644,344,85,287,511,192,1170,610,1125,208,1176,390);
         this.WORM_COORDS[1838] = new Array(488,187,799,313,439,401,1152,592,79,287,307,268,721,257,975,211,1230,283,599,365,54,505,243,166,1242,599,646,434,1197,227,706,334,574,287,331,161,1123,206,178,225);
         this.WORM_COORDS[1839] = new Array(500,188,151,302,652,436,166,227,824,303,90,289,54,505,933,205,1099,539,695,327,249,173,638,336,740,253,536,466,1066,201,1219,598,876,343,1205,237,1270,263,32,365);
         this.WORM_COORDS[1840] = new Array(709,341,1298,282,370,159,156,298,10,388,281,282,69,301,935,206,1090,186,110,387,469,191,652,436,885,342,948,266,407,451,472,394,593,287,383,368,1229,283,910,150);
         this.WORM_COORDS[1841] = new Array(828,302,255,306,325,168,50,492,774,399,162,228,695,327,129,318,1088,185,728,251,522,189,1162,210,1220,273,238,160,1051,515,581,286,657,436,1209,596,411,184,37,419);
         this.WORM_COORDS[1842] = new Array(513,448,1092,187,838,302,698,327,391,159,976,179,1207,243,732,251,528,189,651,436,18,360,259,301,159,232,582,503,622,333,111,390,1291,276,1244,600,13,507,330,162);
         this.WORM_COORDS[1843] = new Array(189,150,1080,184,48,482,164,227,920,154,1238,599,490,186,2,404,318,171,311,264,868,347,1092,540,401,192,1228,281,714,270,1000,177,671,433,1147,224,1161,634,814,307);
         this.WORM_COORDS[1844] = new Array(277,284,577,287,781,397,756,259,629,333,82,287,2,404,863,351,679,340,953,271,1208,248,1041,173,420,450,514,525,1086,540,182,152,985,175,1227,602,399,192,1298,282);
         this.WORM_COORDS[1845] = new Array(1181,208,64,584,826,302,1056,527,447,213,510,193,402,451,244,167,89,288,627,333,1032,174,933,205,533,467,270,289,250,235,1234,285,952,270,62,512,737,251,706,334);
         this.WORM_COORDS[1846] = new Array(657,436,584,281,27,358,677,347,359,156,111,390,617,333,510,525,201,150,472,394,823,303,711,275,1159,213,519,448,971,276,1088,185,1022,179,58,506,889,343,522,189);
         this.WORM_COORDS[1847] = new Array(1192,227,1102,537,441,202,404,451,301,271,689,327,945,261,530,472,173,158,796,315,1296,280,12,367,140,311,662,436,1108,196,742,253,857,339,1015,168,609,334,584,281);
         this.WORM_COORDS[1848] = new Array(1102,537,577,287,927,162,513,448,756,259,645,433,191,150,44,466,631,334,108,343,1291,276,963,279,1039,173,33,367,538,359,353,157,428,182,91,290,1111,198,1174,609);
         this.WORM_COORDS[1849] = new Array(386,159,1153,214,934,206,828,302,588,287,788,398,187,151,23,358,990,175,1054,223,1277,266,283,281,1165,394,543,358,495,186,1225,279,554,448,973,275,681,331,52,499);
         this.WORM_COORDS[1850] = new Array(415,181,464,397,766,361,247,170,1108,196,637,335,2,404,112,391,826,302,1289,275,882,342,670,434,577,287,489,187,704,332,1250,632,250,235,936,208,82,287,418,450);
         this.WORM_COORDS[1851] = new Array(627,333,550,318,138,312,767,361,67,307,1015,168,357,156,1149,635,1161,211,1218,269,458,199,20,360,73,486,251,312,831,302,908,334,62,584,1121,518,752,256,1068,537);
         this.WORM_COORDS[1852] = new Array(1277,266,306,268,1156,634,465,193,240,162,906,150,103,307,1073,539,453,404,745,253,1021,179,634,334,762,357,536,466,659,436,362,157,873,344,552,318,1091,186,178,153);
         this.WORM_COORDS[1853] = new Array(695,327,1051,224,922,156,107,342,557,310,1074,539,92,291,418,180,1009,171,38,419,1270,263,24,358,335,159,963,279,900,344,501,401,668,434,159,232,274,286,1151,589);
         this.WORM_COORDS[1854] = new Array(1178,205,520,449,115,395,400,192,60,508,907,337,658,436,799,313,903,152,1145,398,108,343,632,334,1016,170,493,399,36,376,1299,284,190,150,937,251,425,450,306,268);
         this.WORM_COORDS[1855] = new Array(1237,599,52,499,64,312,676,352,746,253,275,285,858,342,512,192,539,466,323,169,1094,540,1009,171,228,153,777,397,117,333,557,310,669,434,399,451,179,225,961,279);
         this.WORM_COORDS[1856] = new Array(512,192,941,256,141,310,443,401,794,316,49,485,1179,603,1167,204,1245,601,575,287,776,398,232,154,503,408,1176,390,704,332,6,403,875,343,894,170,752,256,290,278);
         this.WORM_COORDS[1857] = new Array(667,435,1218,269,1292,277,546,321,1152,214,995,178,641,339,411,184,1214,598,840,302,533,467,131,317,201,150,405,451,273,287,896,164,168,227,1100,191,498,533,67,583);
         this.WORM_COORDS[1858] = new Array(252,311,14,361,764,360,631,334,74,290,49,485,108,343,883,342,1062,213,549,318,369,158,168,227,827,302,1050,508,1218,269,63,584,687,327,910,150,1288,274,530,190);
         this.WORM_COORDS[1859] = new Array(143,309,228,153,307,268,379,161,599,365,539,358,1228,602,1079,540,703,331,773,400,58,506,741,253,1291,276,1004,175,466,192,672,433,1215,265,469,394,969,276,256,305);
         this.WORM_COORDS[1860] = new Array(423,180,1236,283,312,263,1190,227,1107,535,328,164,565,299,538,466,676,352,127,320,982,175,241,162,1235,600,2,404,941,256,866,349,767,361,570,532,76,289,749,254);
         this.WORM_COORDS[1861] = new Array(565,460,652,436,864,350,756,259,927,162,122,326,42,456,593,287,1196,227,1199,600,774,399,295,275,199,150,67,307,404,194,784,326,1282,270,682,330,161,231,29,361);
         this.WORM_COORDS[1862] = new Array(16,361,146,306,981,175,1247,267,433,439,61,510,737,251,182,152,1117,202,1035,460,947,264,286,279,539,358,233,155,696,327,503,188,789,320,567,299,1242,599,639,336);
         this.WORM_COORDS[1863] = new Array(579,286,227,153,1299,284,153,301,541,358,868,347,1063,209,1117,527,650,436,1243,273,344,160,710,321,978,177,295,275,89,288,784,326,507,448,1139,218,719,259,633,334);
         this.WORM_COORDS[1864] = new Array(548,319,375,367,122,404,609,334,1235,284,85,287,1111,198,861,349,520,190,316,219,502,405,192,150,425,180,1187,388,681,427,108,343,158,232,275,285,778,397,785,325);
         this.WORM_COORDS[1865] = new Array(851,314,785,325,721,257,942,258,1108,626,449,216,1148,391,781,397,121,327,273,287,432,450,580,286,1048,223,605,338,684,328,1235,600,670,434,1124,486,65,309,1273,264);
         this.WORM_COORDS[1866] = new Array(419,450,210,153,940,255,662,436,893,171,40,445,618,333,1016,170,883,342,1278,267,1125,208,748,253,765,361,382,161,120,328,475,396,132,420,819,305,1100,539,253,309);
         this.WORM_COORDS[1867] = new Array(937,251,1199,228,709,341,773,400,862,351,449,401,1079,540,1186,388,20,360,1299,284,1218,473,663,435,284,281,900,155,742,253,1123,206,564,299,1232,285,159,232,317,217);
         this.WORM_COORDS[1868] = new Array(948,266,673,432,1052,518,843,303,52,499,496,529,128,319,1203,391,894,170,1281,268,520,190,376,162,17,360,610,334,1218,269,447,213,1109,533,1008,171,1140,219,691,327);
         this.WORM_COORDS[1869] = new Array(1036,463,1134,214,847,306,940,255,792,317,33,367,104,341,306,268,49,485,1125,482,629,333,1100,539,485,190,892,172,553,318,1257,261,1236,600,77,288,698,327,651,436);
         this.WORM_COORDS[1870] = new Array(713,274,95,293,51,497,1248,632,466,192,824,303,601,363,948,266,668,434,382,368,28,359,1212,259,235,158,1098,190,394,451,691,327,885,342,295,275,775,398,171,163);
         this.WORM_COORDS[1871] = new Array(1237,599,1144,222,680,334,1164,635,122,404,874,343,615,333,729,251,530,472,1221,274,296,274,60,508,518,191,1046,223,1219,401,450,217,118,331,430,450,391,370,964,278);
         this.WORM_COORDS[1872] = new Array(341,159,81,287,1057,221,806,311,1229,602,1218,401,703,331,416,450,975,211,46,475,146,306,898,158,111,390,569,299,192,218,1160,212,1160,634,866,349,963,279,220,150);
         this.WORM_COORDS[1873] = new Array(150,303,161,231,363,158,1250,265,845,303,1242,599,1063,209,535,221,717,263,292,276,981,175,668,434,238,160,63,315,1160,212,578,287,897,162,0,405,636,335,491,520);
         this.WORM_COORDS[1874] = new Array(588,287,821,304,1044,180,312,263,1064,535,470,191,1217,268,136,314,262,298,5,403,1036,463,891,343,184,151,74,290,927,162,1245,601,334,161,977,178,528,189,439,401);
         this.WORM_COORDS[1875] = new Array(523,450,1088,540,59,585,71,294,221,150,792,317,944,261,260,300,675,431,449,401,639,336,1045,222,850,311,1204,234,988,175,171,163,728,251,467,191,143,309,54,505);
         this.WORM_COORDS[1876] = new Array(794,316,1237,599,1007,171,647,435,1131,470,678,343,519,448,906,150,250,235,381,161,541,358,863,351,134,315,939,254,373,322,728,251,576,287,1081,540,542,226,113,392);
         this.WORM_COORDS[1877] = new Array(1218,598,1059,219,902,152,483,191,1004,175,1180,388,261,299,635,335,574,287,716,264,651,436,1209,250,791,319,427,450,969,276,11,368,64,584,379,161,40,445,196,150);
         this.WORM_COORDS[1878] = new Array(464,197,812,308,515,448,611,334,1075,186,1015,168,53,503,1103,537,753,256,141,310,1141,220,935,206,258,302,1249,265,409,188,169,229,27,358,1212,395,400,382,244,167);
         this.WORM_COORDS[1879] = new Array(575,287,446,401,1243,599,299,272,821,304,1287,273,61,510,1152,214,99,298,888,343,1156,634,710,321,940,255,542,454,435,191,1210,253,759,266,1037,465,628,333,350,159);
         this.WORM_COORDS[1880] = new Array(692,327,148,305,521,449,871,344,528,189,1096,539,9,404,48,482,752,256,1114,199,476,189,426,181,238,160,958,281,185,151,976,179,777,397,283,281,414,450,909,150);
         this.WORM_COORDS[1881] = new Array(230,153,66,308,844,303,785,397,689,327,1237,599,511,448,364,158,18,595,1083,540,1181,388,1167,204,2,404,430,450,745,253,134,315,528,189,938,253,56,505,160,231);
         this.WORM_COORDS[1882] = new Array(440,401,178,225,1091,186,1247,608,1082,540,1195,227,76,479,1006,171,580,286,764,360,1286,272,226,153,29,361,1154,391,506,547,583,456,672,433,104,341,703,331,640,337);
         this.WORM_COORDS[1883] = new Array(336,159,477,189,782,333,623,333,1139,424,23,358,844,303,1247,267,209,152,540,358,418,180,282,282,690,327,1062,213,564,299,513,448,974,274,904,151,1109,533,77,288);
         this.WORM_COORDS[1884] = new Array(565,299,1238,599,136,314,1177,204,74,290,5,403,446,211,1074,187,299,272,715,267,444,401,672,433,971,276,507,448,393,452,629,333,821,304,1220,273,905,151,1081,540);
         this.WORM_COORDS[1885] = new Array(41,451,1123,206,1295,280,700,328,981,175,638,336,760,268,206,151,576,287,1243,599,70,298,535,221,844,303,126,408,244,322,1187,599,1186,227,543,358,948,266,359,156);
         this.WORM_COORDS[1886] = new Array(792,317,777,397,91,290,330,162,969,276,491,400,1145,222,1262,261,111,390,743,253,882,342,55,505,283,281,1198,228,542,358,646,434,697,327,430,184,169,229,1246,606);
         this.WORM_COORDS[1887] = new Array(1235,600,88,288,1097,190,1108,626,402,192,1291,276,605,338,526,451,883,342,294,275,529,189,973,275,1239,279,1156,213,13,361,823,303,927,162,473,394,140,311,1068,537);
         this.WORM_COORDS[1888] = new Array(115,395,1116,528,1009,171,510,525,536,221,599,365,939,254,55,505,421,180,876,343,1217,268,804,311,9,404,739,253,576,287,76,289,507,448,672,433,307,268,698,327);
         this.WORM_COORDS[1889] = new Array(457,403,1219,272,60,508,477,189,1221,402,118,331,824,303,1290,276,662,436,752,256,890,343,789,398,957,282,1128,210,915,151,1094,540,351,157,634,334,281,282,1036,173);
         this.WORM_COORDS[1890] = new Array(458,403,998,177,1275,265,88,419,1173,203,217,150,781,397,537,221,385,160,697,327,603,356,531,469,788,321,154,300,887,342,544,321,484,190,7,403,29,582,382,368);
         this.WORM_COORDS[1891] = new Array(73,292,1171,610,1106,536,1255,634,799,313,67,583,669,434,410,187,54,505,148,305,511,525,685,328,408,451,1095,189,758,263,478,189,1124,486,226,153,302,270,501,401);
         this.WORM_COORDS[1892] = new Array(197,150,169,229,339,159,1062,213,1291,276,981,175,821,304,675,431,742,253,1131,632,1089,540,462,402,553,318,114,393,1212,597,269,290,930,170,435,191,1211,256,518,448);
         this.WORM_COORDS[1893] = new Array(804,311,1063,209,4,403,391,159,246,320,637,335,1124,207,1082,540,999,177,87,420,66,308,726,252,766,361,696,327,555,318,45,473,325,168,643,431,1284,271,1232,601);
         this.WORM_COORDS[1894] = new Array(716,264,937,251,427,181,504,188,802,312,1140,219,576,287,351,157,980,175,526,451,906,339,143,309,52,499,1225,602,673,432,251,312,1153,634,196,150,110,387,1038,467);
         this.WORM_COORDS[1895] = new Array(805,311,1099,191,323,169,2,404,1225,602,285,280,1111,626,1133,466,577,287,1101,538,989,175,944,261,143,309,117,397,773,400,932,205,997,253,872,344,78,287,476,189);
         this.WORM_COORDS[1896] = new Array(150,303,1044,180,1243,599,723,255,951,268,197,150,805,311,903,152,326,167,648,435,1207,393,426,181,1247,267,270,289,884,342,1111,198,443,401,551,318,603,356,537,221);
         this.WORM_COORDS[1897] = new Array(834,302,1233,285,70,298,66,583,591,287,663,435,12,507,500,400,1084,540,30,362,365,158,1236,600,938,253,1025,177,1143,221,295,275,435,405,73,486,749,254,415,181);
         this.WORM_COORDS[1898] = new Array(956,281,51,497,1062,213,473,394,1232,601,864,350,621,333,398,377,193,150,1073,539,1282,270,281,282,1211,256,725,253,672,433,931,204,551,318,1119,203,795,315,146,306);
         this.WORM_COORDS[1899] = new Array(1075,186,838,302,388,452,695,327,1149,225,69,301,158,297,946,263,1094,540,506,188,363,158,44,466,1214,463,17,360,218,150,646,434,283,281,778,397,1238,280,976,179);
         this.WORM_COORDS[1900] = new Array(691,496,65,323,139,299,539,355,1097,444,823,241,1040,342,284,255,355,246,598,356,195,220,727,429,4,518,439,343,1040,419,1115,383,471,265,969,235,605,524,1174,370);
         this.WORM_COORDS[1901] = new Array(683,496,909,174,1044,358,983,308,717,424,1189,385,69,319,585,330,487,262,754,307,621,519,187,234,1286,570,21,509,638,354,277,230,954,237,1087,440,864,280,1208,289);
         this.WORM_COORDS[1902] = new Array(833,252,109,391,212,171,744,460,1081,437,236,548,676,544,1192,381,999,317,1251,442,559,342,37,357,1129,364,13,510,422,340,1269,539,538,474,982,249,366,238,841,340);
         this.WORM_COORDS[1903] = new Array(639,543,639,354,743,460,295,288,1281,561,537,356,83,539,1126,367,98,333,587,332,945,182,1245,441,546,480,366,238,263,554,457,268,1097,444,1024,326,972,235,263,209);
         this.WORM_COORDS[1904] = new Array(319,264,377,232,800,237,1109,447,446,276,1027,326,1133,359,607,358,1286,570,553,355,874,285,911,170,651,541,137,299,69,319,90,540,205,594,513,265,750,311,211,171);
         this.WORM_COORDS[1905] = new Array(117,298,890,294,562,340,1111,447,310,275,1017,328,714,496,1286,570,816,236,751,310,448,275,188,336,444,344,34,362,661,540,110,392,180,557,506,267,975,234,421,213);
         this.WORM_COORDS[1906] = new Array(602,358,1004,337,420,213,432,291,314,269,60,331,1258,445,731,436,1100,444,1173,368,261,175,173,295,692,496,497,265,1120,374,117,298,821,239,956,235,538,355,764,309);
         this.WORM_COORDS[1907] = new Array(1190,384,762,242,694,496,125,297,1061,427,571,336,259,551,713,425,1128,364,1217,280,214,172,1295,585,837,364,33,362,856,284,1012,331,301,287,1256,521,3,518,634,354);
         this.WORM_COORDS[1908] = new Array(1024,326,51,351,1277,552,115,300,675,544,367,237,976,234,417,211,1166,359,872,283,920,166,168,296,47,469,457,268,773,235,1239,299,639,354,303,285,586,331,198,598);
         this.WORM_COORDS[1909] = new Array(211,171,1143,356,454,273,1046,420,14,509,1113,448,1289,576,692,496,423,213,1240,640,854,286,336,264,69,319,125,401,1031,327,536,356,772,235,160,302,619,359,758,307);
         this.WORM_COORDS[1910] = new Array(120,297,1168,361,599,357,44,351,24,511,830,249,339,268,396,202,981,306,1265,447,1043,353,681,496,458,267,1228,280,903,250,1053,423,732,439,283,251,759,309,1110,447);
         this.WORM_COORDS[1911] = new Array(1108,447,1258,445,1285,568,5,517,325,262,709,429,381,232,41,353,183,245,834,253,1232,283,879,309,972,235,1184,392,664,542,529,298,580,330,102,388,477,265,1047,420);
         this.WORM_COORDS[1912] = new Array(1291,578,1125,368,1212,283,202,596,1083,439,242,174,388,212,13,510,471,265,677,544,1186,390,111,392,889,295,598,527,624,358,742,460,64,323,998,317,183,245,348,280);
         this.WORM_COORDS[1913] = new Array(389,212,139,407,577,538,1121,373,1189,385,666,542,1092,441,736,448,556,355,1023,326,754,307,226,355,1261,445,935,168,77,321,623,358,498,270,158,301,765,238,5,517);
         this.WORM_COORDS[1914] = new Array(809,233,1143,356,968,235,687,496,642,354,40,353,524,296,752,308,738,453,214,349,193,600,585,330,837,364,1033,328,127,297,16,509,1232,436,1112,448,585,539,178,297);
         this.WORM_COORDS[1915] = new Array(17,509,792,234,136,299,1274,547,1042,348,958,233,740,457,685,496,1197,374,83,336,1135,359,1212,283,749,311,905,250,248,545,164,545,619,359,375,232,633,543,102,557);
         this.WORM_COORDS[1916] = new Array(950,237,719,424,577,330,415,211,1284,567,163,296,1229,280,668,542,67,321,792,234,234,550,331,262,498,270,1118,377,1236,437,12,511,900,250,986,306,841,340,1180,384);
         this.WORM_COORDS[1917] = new Array(643,355,165,296,830,249,461,338,453,273,1028,326,250,172,1136,358,710,428,511,265,1095,443,910,172,570,337,1285,568,186,237,208,592,348,280,77,321,20,509,1210,285);
         this.WORM_COORDS[1918] = new Array(822,241,772,235,600,357,1010,333,890,294,433,292,637,543,1141,356,1296,588,124,297,941,176,443,344,271,215,197,175,416,211,697,496,1081,437,494,264,71,319,534,356);
         this.WORM_COORDS[1919] = new Array(736,448,524,296,1171,365,1115,383,792,234,372,232,263,554,52,351,1087,440,1299,594,665,542,1208,289,198,172,638,354,866,280,1026,326,464,265,145,293,979,234,268,213);
         this.WORM_COORDS[1920] = new Array(1084,439,466,332,1187,388,763,240,852,290,1026,326,742,460,537,356,461,267,1198,333,295,288,981,249,689,496,29,363,428,214,595,528,357,287,2,518,152,290,749,311);
         this.WORM_COORDS[1921] = new Array(208,592,855,285,167,296,1215,281,845,340,1272,545,1035,418,1168,361,31,362,1113,448,783,233,734,445,421,213,616,359,953,237,484,262,561,340,1041,345,114,302,443,344);
         this.WORM_COORDS[1922] = new Array(486,262,763,434,1152,353,586,539,224,165,614,359,73,319,547,355,176,295,821,239,1289,576,899,250,284,255,371,233,763,309,648,542,542,477,439,343,424,213,1071,432);
         this.WORM_COORDS[1923] = new Array(168,296,1103,447,75,319,280,241,1152,353,783,233,749,311,111,392,245,174,197,598,686,496,586,331,525,296,984,307,879,383,22,509,572,501,1255,444,932,166,977,234);
         this.WORM_COORDS[1924] = new Array(1095,443,732,439,526,296,1164,358,1235,437,1225,279,656,540,603,526,400,199,18,509,834,253,1043,353,921,166,87,331,1285,568,444,344,608,358,250,546,172,295,558,353);
         this.WORM_COORDS[1925] = new Array(706,433,613,359,555,355,47,351,1270,541,422,213,1260,445,804,235,838,353,453,273,234,168,5,517,1111,447,951,237,528,297,1142,356,684,496,611,518,168,296,947,186);
         this.WORM_COORDS[1926] = new Array(552,355,992,306,245,545,1255,520,5,517,298,290,514,265,395,203,38,354,208,171,647,542,803,237,1294,584,1084,439,120,297,118,397,588,539,757,307,606,358,1260,445);
         this.WORM_COORDS[1927] = new Array(859,282,1268,538,104,389,976,234,5,517,1239,299,568,339,518,265,716,424,300,289,1180,384,169,296,754,307,1060,427,1128,364,925,165,1243,441,651,541,89,331,1298,592);
         this.WORM_COORDS[1928] = new Array(129,298,695,496,544,355,538,474,885,299,1272,545,13,510,209,591,1205,291,337,265,48,351,1127,366,591,539,277,230,1225,434,1108,447,751,310,511,265,179,300,612,359);
         this.WORM_COORDS[1929] = new Array(543,355,1123,448,1062,428,299,289,965,234,884,300,119,297,721,424,187,234,473,266,44,351,178,297,1247,441,628,356,393,203,1279,557,1123,370,1032,327,111,392,1201,331);
         this.WORM_COORDS[1930] = new Array(134,299,490,264,1157,354,961,233,109,391,1081,437,432,341,775,234,561,491,630,355,61,331,573,333,264,213,194,222,1277,552,4,518,1209,288,903,250,685,496,734,445);
         this.WORM_COORDS[1931] = new Array(1179,380,514,265,1234,286,803,237,569,338,969,235,955,355,1008,335,1129,364,551,483,842,340,651,541,1267,537,739,455,1108,447,859,282,921,166,280,241,187,234,174,295);
         this.WORM_COORDS[1932] = new Array(639,354,940,174,1222,279,338,266,90,331,30,362,1138,357,646,542,711,427,980,249,514,265,854,286,1262,529,105,564,112,393,267,213,5,517,777,233,1082,438,190,229);
         this.WORM_COORDS[1933] = new Array(1174,370,1296,588,261,552,69,319,729,433,1027,326,773,235,318,264,1210,285,534,470,878,311,21,509,456,269,406,200,893,253,1244,441,1062,428,530,300,172,295,758,307);
         this.WORM_COORDS[1934] = new Array(661,540,507,267,314,269,1167,360,5,573,827,245,374,232,637,354,1088,440,1265,447,548,355,724,425,157,300,950,237,843,340,1297,590,80,326,1223,279,942,177,198,598);
         this.WORM_COORDS[1935] = new Array(178,297,637,354,814,236,660,540,413,211,1181,390,234,550,965,234,340,269,63,323,507,267,231,168,578,330,931,166,1080,437,1264,446,1291,578,109,391,724,425,1219,279);
         this.WORM_COORDS[1936] = new Array(22,509,198,598,469,265,990,306,958,233,1178,379,1127,366,32,362,195,220,248,172,1105,447,574,331,93,333,665,542,330,262,889,384,450,344,521,273,1026,415,427,214);
         this.WORM_COORDS[1937] = new Array(709,429,1154,353,760,248,264,213,260,551,1299,594,542,477,241,353,114,302,845,340,855,285,182,336,412,217,30,362,667,542,534,356,1217,280,752,308,1076,435,106,391);
         this.WORM_COORDS[1938] = new Array(402,199,306,281,716,424,858,282,1221,279,911,170,447,276,159,301,107,391,509,265,31,362,92,541,1188,386,539,355,1077,435,246,173,23,510,1003,337,839,342,1244,441);
         this.WORM_COORDS[1939] = new Array(671,542,302,286,822,241,1159,354,1268,538,882,304,255,548,1225,606,395,203,607,358,547,355,1045,420,1105,447,133,299,997,308,207,171,1240,300,714,424,47,351,172,551);
         this.WORM_COORDS[1940] = new Array(112,393,721,424,1103,447,680,496,1192,381,158,301,1016,328,219,175,1135,359,592,351,859,282,928,165,809,233,541,355,1224,279,837,364,84,331,387,212,951,237,496,264);
         this.WORM_COORDS[1941] = new Array(42,352,1181,390,446,276,888,296,532,355,1068,430,504,267,701,441,648,542,5,517,623,358,572,501,818,237,205,170,427,214,318,264,850,348,109,391,121,297,1289,576);
         this.WORM_COORDS[1942] = new Array(728,431,541,355,1250,442,1099,444,285,258,960,233,1045,420,46,471,126,297,44,351,691,496,1197,337,382,232,764,239,523,296,351,284,460,267,843,340,174,555,106,391);
         this.WORM_COORDS[1943] = new Array(107,527,285,258,767,237,449,275,1123,370,1064,428,1295,585,59,459,151,290,20,509,652,541,406,200,1212,283,1192,381,516,265,896,252,220,174,595,356,766,306,84,331);
         this.WORM_COORDS[1944] = new Array(55,331,128,297,1286,570,693,549,813,236,564,536,1063,428,1264,446,853,289,579,330,1042,348,1117,378,233,550,741,459,316,266,689,496,748,311,469,265,107,391,7,514);
         this.WORM_COORDS[1945] = new Array(526,296,1118,377,51,351,1203,298,557,353,1062,428,762,435,914,166,154,298,188,599,589,539,423,213,641,354,463,265,759,309,803,237,1183,392,652,541,349,282,13,510);
         this.WORM_COORDS[1946] = new Array(889,295,322,262,30,362,469,265,1094,442,1226,279,548,355,628,356,1115,383,147,290,1272,545,806,233,1261,445,737,451,1168,361,12,511,77,468,767,306,394,203,124,524);
         this.WORM_COORDS[1947] = new Array(678,497,700,443,941,176,84,474,1218,279,419,211,1280,558,577,538,365,241,261,552,802,238,759,309,228,165,447,276,1045,420,84,331,1262,446,1125,368,540,476,1178,379);
         this.WORM_COORDS[1948] = new Array(1266,448,707,433,1095,443,18,509,882,304,1030,326,216,176,753,307,41,353,1124,369,295,288,830,249,581,539,1296,588,562,340,162,297,687,496,516,265,1236,630,396,202);
         this.WORM_COORDS[1949] = new Array(1281,561,763,240,12,569,1083,439,224,165,656,540,187,234,846,340,942,177,833,252,167,296,446,276,747,311,116,299,989,306,1231,282,617,359,1119,375,327,262,396,202);
         this.WORM_COORDS[1950] = new Array(39,354,1273,546,342,271,36,506,1064,428,713,425,461,267,846,340,696,496,1230,435,138,299,870,281,103,389,1031,327,290,274,551,355,764,309,190,599,978,234,189,231);
         this.WORM_COORDS[1951] = new Array(461,267,1075,434,9,512,730,434,1281,561,147,290,1160,354,693,496,342,271,567,339,783,233,532,468,111,392,956,235,400,199,1025,326,195,220,84,331,274,221,845,340);
         this.WORM_COORDS[1952] = new Array(49,351,988,306,1096,443,107,391,194,222,1258,445,164,296,584,330,319,264,534,356,213,586,518,265,741,459,654,541,568,496,396,202,770,235,1,519,1114,386,759,309);
         this.WORM_COORDS[1953] = new Array(598,356,644,543,4,518,115,300,1270,541,1124,369,284,255,726,428,862,280,357,245,1061,427,943,179,1113,448,1239,299,1266,448,174,295,846,340,998,317,548,481,218,176);
         this.WORM_COORDS[1954] = new Array(1029,416,1112,448,566,339,773,235,644,356,834,306,1261,528,421,213,86,475,287,264,674,544,910,172,508,266,212,348,75,319,713,425,199,170,977,234,1,519,754,307);
         this.WORM_COORDS[1955] = new Array(570,498,898,251,972,235,633,354,1152,353,834,378,1259,445,290,274,1071,432,229,165,76,539,138,299,698,496,103,389,1290,577,782,233,406,200,923,166,239,546,561,340);
         this.WORM_COORDS[1956] = new Array(340,269,115,395,7,514,56,331,1282,562,1003,337,717,424,814,236,140,298,505,267,1165,358,1049,421,914,166,865,280,1218,279,261,552,846,340,1249,442,439,343,688,496);
         this.WORM_COORDS[1957] = new Array(250,546,196,599,1049,421,743,460,533,469,487,262,1252,443,3,518,172,295,43,351,782,233,1282,562,1232,283,235,172,858,282,670,542,758,307,597,356,95,333,1118,377);
         this.WORM_COORDS[1958] = new Array(1291,578,526,296,726,428,249,545,993,306,648,542,408,204,100,333,867,280,1251,442,1045,420,36,358,816,236,233,168,532,468,293,284,2,518,1229,280,533,355,1193,380);
         this.WORM_COORDS[1959] = new Array(784,233,1293,582,586,539,600,357,197,598,401,199,762,309,1074,434,686,496,474,266,441,344,733,442,92,333,947,186,1264,446,867,280,1040,342,1141,356,29,508,1203,298);
         this.WORM_COORDS[1960] = new Array(1085,439,445,344,638,543,616,359,296,289,1233,436,11,511,1141,356,881,305,377,232,244,545,736,448,565,339,73,319,231,168,932,166,1235,290,112,393,159,301,965,234);
         this.WORM_COORDS[1961] = new Array(353,287,650,541,187,234,270,213,754,307,816,236,96,333,1176,374,871,282,389,212,957,234,147,290,604,358,1253,443,738,453,457,268,210,171,1063,428,1229,280,25,511);
         this.WORM_COORDS[1962] = new Array(1167,360,1068,430,88,331,1289,576,613,359,1040,342,1228,280,744,460,470,265,674,544,337,265,253,172,531,355,907,176,24,511,142,293,78,469,890,294,1265,447,33,362);
         this.WORM_COORDS[1963] = new Array(20,509,757,307,771,416,1181,390,944,180,278,234,1010,333,138,299,212,171,1095,443,1045,420,845,340,1280,558,897,252,331,262,531,467,644,356,189,231,670,542,1238,298);
         this.WORM_COORDS[1964] = new Array(947,186,35,506,187,598,44,351,651,541,1095,443,448,275,875,287,848,344,273,219,234,168,105,564,1128,364,1260,445,784,233,614,359,384,219,106,391,1299,594,239,546);
         this.WORM_COORDS[1965] = new Array(996,307,29,363,384,219,1116,381,1045,420,866,280,491,264,953,237,205,170,1177,376,298,290,1300,597,5,517,531,355,435,295,723,425,790,234,174,295,1254,444,1238,298);
         this.WORM_COORDS[1966] = new Array(565,536,829,245,263,554,633,354,748,456,266,213,893,253,120,297,357,245,188,336,1294,584,1101,445,695,496,761,244,44,351,952,237,1200,332,182,246,1219,279,414,211);
         this.WORM_COORDS[1967] = new Array(1087,440,545,355,938,171,645,543,356,246,1157,354,638,354,72,319,704,437,751,310,1219,432,1294,584,110,392,439,343,151,525,17,509,286,261,1223,279,446,276,228,165);
         this.WORM_COORDS[1968] = new Array(1199,332,663,541,1091,441,634,354,177,295,438,343,846,340,729,433,546,355,1224,279,1183,392,491,264,830,249,964,234,1258,445,209,171,27,365,327,262,29,508,1133,359);
         this.WORM_COORDS[1969] = new Array(532,355,681,496,1080,437,1288,574,617,518,1240,640,1159,354,1248,442,381,232,185,239,132,300,488,262,719,424,865,280,434,293,1038,337,45,351,615,359,103,389,20,509);
         this.WORM_COORDS[1970] = new Array(493,264,59,331,766,238,569,338,991,306,1179,380,115,300,377,232,169,296,327,262,863,280,1122,371,1283,564,429,214,1042,348,679,497,752,308,15,509,1096,443,223,167);
         this.WORM_COORDS[1971] = new Array(609,358,684,496,555,355,172,295,93,333,1187,388,5,517,909,174,1073,434,1002,339,816,236,322,262,103,389,875,287,1252,443,1123,370,885,383,267,213,80,538,1282,562);
         this.WORM_COORDS[1972] = new Array(429,214,8,512,462,265,518,344,784,233,323,262,4,573,194,599,734,445,1167,360,933,166,142,293,865,280,1025,326,1050,421,605,358,1234,286,1289,576,1251,442,965,234);
         this.WORM_COORDS[1973] = new Array(618,359,150,290,103,389,21,509,282,247,730,434,373,232,837,364,209,591,188,233,1292,580,855,285,521,273,1133,359,27,365,1101,445,466,265,1243,441,575,538,979,234);
         this.WORM_COORDS[1974] = new Array(250,172,206,594,1243,441,105,390,743,460,448,275,537,356,48,467,648,542,137,299,1283,564,915,166,1240,300,1059,426,11,569,289,271,815,236,373,232,60,331,1171,365);
         this.WORM_COORDS[1975] = new Array(860,281,502,267,1113,448,1009,334,318,264,703,439,111,392,144,293,577,330,699,496,18,509,1176,374,432,291,1052,423,76,320,940,174,957,234,265,213,575,538,370,234);
         this.WORM_COORDS[1976] = new Array(463,265,671,542,205,170,616,359,103,389,1300,597,168,296,883,302,189,599,970,235,403,199,1139,356,37,506,1192,381,1019,327,561,340,943,179,779,306,1267,537,1125,448);
         this.WORM_COORDS[1977] = new Array(388,212,862,280,1295,585,679,497,1060,427,166,296,719,424,560,341,1162,356,96,333,1,519,1013,330,1207,289,495,264,919,166,255,172,1231,619,896,383,346,278,643,355);
         this.WORM_COORDS[1978] = new Array(1182,394,1090,441,727,429,870,281,529,298,526,459,150,290,791,234,954,237,1039,339,551,355,312,272,674,544,1274,547,163,545,1207,289,31,362,0,519,1252,443,196,178);
         this.WORM_COORDS[1979] = new Array(500,268,622,358,766,238,169,296,1235,290,905,250,461,338,844,340,679,497,969,235,91,333,1290,577,1092,441,303,285,112,393,1266,448,1167,360,550,355,247,545,178,555);
         this.WORM_COORDS[1980] = new Array(1171,365,951,237,234,168,84,331,619,359,696,496,1261,445,534,470,428,214,176,295,494,264,543,355,176,597,441,344,752,308,1284,567,709,429,15,509,863,280,302,286);
         this.WORM_COORDS[1981] = new Array(683,496,592,351,259,551,1265,447,878,311,295,288,1172,366,116,395,226,165,1275,548,898,251,127,297,1051,422,814,236,706,433,468,265,1241,303,542,355,2,518,611,518);
         this.WORM_COORDS[1982] = new Array(1071,432,371,233,32,362,516,265,603,358,423,213,207,593,155,298,1217,280,1169,362,859,282,304,284,106,391,692,496,240,174,1283,564,631,544,9,512,192,226,764,239);
         this.WORM_COORDS[1983] = new Array(887,296,63,323,651,541,1139,356,703,439,1058,426,230,554,989,306,478,263,1236,292,547,355,795,235,1287,572,239,174,417,211,963,233,154,298,614,359,756,307,363,242);
         this.WORM_COORDS[1984] = new Array(632,355,716,424,481,262,1045,420,1138,357,1111,447,1295,585,53,351,822,241,11,511,762,309,1036,332,1192,381,265,213,570,337,206,170,171,295,207,593,657,540,879,309);
         this.WORM_COORDS[1985] = new Array(659,540,485,262,926,165,391,211,1191,383,12,511,553,355,79,326,709,429,1288,574,342,271,954,237,221,173,185,598,1106,447,1045,420,1252,443,889,295,835,255,200,338);
         this.WORM_COORDS[1986] = new Array(981,249,593,355,1122,371,75,319,993,306,645,543,1300,597,1190,384,902,250,329,262,879,309,440,343,1066,429,199,598,1219,279,5,517,164,545,267,213,715,424,825,244);
         this.WORM_COORDS[1987] = new Array(1013,330,1294,584,874,285,1232,283,657,540,543,355,198,598,453,273,392,208,84,331,312,272,28,509,768,424,1085,439,271,215,1114,386,1256,444,28,364,127,533,82,473);
         this.WORM_COORDS[1988] = new Array(791,234,649,541,70,319,160,302,1171,365,13,510,939,172,1237,633,1021,326,839,342,318,264,541,355,399,199,166,545,965,234,1262,529,729,433,218,176,435,295,1258,445);
         this.WORM_COORDS[1989] = new Array(280,241,823,241,1062,428,770,235,846,340,1220,279,333,263,473,266,1296,588,170,295,590,338,875,287,98,333,736,448,1041,345,105,390,195,599,1268,538,978,234,559,489);
         this.WORM_COORDS[1990] = new Array(1267,537,748,456,514,265,843,340,661,540,573,333,235,172,81,342,1113,448,1141,356,418,211,759,309,569,497,1200,332,194,222,349,282,459,267,988,306,238,547,1253,443);
         this.WORM_COORDS[1991] = new Array(787,233,288,269,728,431,437,343,53,351,550,355,1181,390,961,233,1026,326,270,213,131,299,261,552,651,541,370,234,449,275,888,296,1084,439,1206,290,1274,547,623,358);
         this.WORM_COORDS[1992] = new Array(1017,328,13,510,539,355,466,265,722,424,825,244,230,554,1200,332,1264,446,302,286,172,295,1188,386,674,544,770,304,96,333,1085,439,893,253,934,167,516,265,959,233);
         this.WORM_COORDS[1993] = new Array(338,266,756,445,1005,336,1237,506,1087,440,16,509,392,208,133,299,60,331,461,338,1234,626,903,250,694,496,1190,384,753,307,526,296,1211,284,635,354,1239,439,943,179);
         this.WORM_COORDS[1994] = new Array(1181,390,1262,446,392,208,966,234,539,355,504,267,1225,279,1099,444,896,252,216,176,253,548,38,354,647,542,1271,543,833,252,987,306,174,295,437,343,16,509,293,284);
         this.WORM_COORDS[1995] = new Array(1044,358,744,460,1297,590,869,280,38,506,1088,440,752,308,370,234,572,501,694,496,624,358,104,389,547,355,77,321,1258,445,988,306,183,245,259,551,962,233,305,282);
         this.WORM_COORDS[1996] = new Array(729,433,498,270,659,540,1279,557,858,282,559,342,921,166,279,237,956,235,1235,437,604,525,1178,379,759,309,296,289,636,354,247,173,70,319,1057,425,1040,342,354,288);
         this.WORM_COORDS[1997] = new Array(1112,448,463,265,219,575,1208,289,57,331,714,424,518,265,950,237,677,544,1276,551,588,333,445,344,337,265,940,174,1233,436,1150,353,156,299,184,242,1049,421,281,245);
         this.WORM_COORDS[1998] = new Array(1122,371,77,321,597,356,812,235,1262,529,130,298,20,509,569,497,752,308,978,234,183,245,493,264,871,282,299,289,108,391,650,541,544,355,1094,442,990,306,741,459);
         this.WORM_COORDS[1999] = new Array(1223,279,751,452,1295,585,1089,440,270,213,870,281,1242,440,106,391,23,510,502,267,698,496,558,353,1201,331,1035,330,141,297,623,358,208,592,61,331,788,233,1121,373);
      }
      
      public function init_coords_sheovar() : *
      {
         this.WORM_COORDS[2000] = new Array(1235,431,772,512,194,509,700,487,865,499,828,419,1105,176,487,314,120,449,856,228,1030,178,105,216,260,410,525,367,920,502,558,302,47,367,473,368,629,511,718,558);
         this.WORM_COORDS[2001] = new Array(148,258,546,302,386,326,756,505,917,516,801,245,262,408,723,569,659,482,302,219,608,541,946,197,1244,447,60,507,148,446,1096,175,67,311,456,363,1157,195,88,418);
         this.WORM_COORDS[2002] = new Array(864,207,773,256,658,483,216,431,438,307,548,302,316,218,1141,198,387,331,824,440,609,540,1192,470,34,373,211,547,916,335,96,243,1218,419,909,503,994,461,1064,174);
         this.WORM_COORDS[2003] = new Array(579,501,1208,609,861,210,896,500,416,291,272,401,1139,196,1177,460,512,342,992,215,307,217,1241,443,754,261,1299,396,706,493,854,410,189,497,143,360,643,491,141,258);
         this.WORM_COORDS[2004] = new Array(46,369,555,302,254,414,823,239,731,508,1265,425,758,261,516,379,148,446,198,520,616,534,73,290,1000,220,793,512,1105,176,847,410,445,332,370,304,963,314,111,216);
         this.WORM_COORDS[2005] = new Array(239,422,439,307,236,526,1149,200,1162,447,1137,347,642,492,1241,443,181,493,838,412,141,258,388,332,529,323,35,373,279,253,759,505,755,261,83,280,1011,206,451,362);
         this.WORM_COORDS[2006] = new Array(754,261,835,412,676,480,60,350,460,365,1297,395,1210,439,131,263,182,493,1104,176,437,307,205,435,306,375,803,488,580,391,1050,174,555,302,879,500,929,485,605,542);
         this.WORM_COORDS[2007] = new Array(443,311,37,372,354,285,693,483,150,258,783,252,1292,396,597,539,1148,200,1241,443,1121,347,1297,537,86,278,226,427,282,237,65,503,169,463,557,302,283,562,743,505);
         this.WORM_COORDS[2008] = new Array(337,255,945,417,1279,393,1100,175,780,517,128,267,164,461,653,484,777,254,590,396,236,424,714,532,989,213,1210,439,1147,350,1297,537,883,500,916,221,275,256,1154,197);
         this.WORM_COORDS[2009] = new Array(1216,423,1137,347,66,321,183,493,911,338,917,516,519,370,684,481,1073,173,269,266,424,301,883,190,760,505,95,243,769,256,1292,396,1157,442,296,557,217,431,1187,185);
         this.WORM_COORDS[2010] = new Array(149,258,705,492,536,305,805,245,178,522,1207,449,519,370,56,635,783,518,348,262,398,293,585,393,605,542,854,410,1106,176,19,378,137,352,1288,402,207,434,948,197);
         this.WORM_COORDS[2011] = new Array(524,368,2,386,816,241,1169,187,405,298,288,236,244,520,917,516,107,435,92,243,488,600,1252,411,256,412,175,520,839,411,773,513,480,314,588,394,864,498,204,437);
         this.WORM_COORDS[2012] = new Array(425,303,1229,419,1059,174,260,410,749,505,859,410,588,394,99,219,361,297,875,500,906,201,448,361,54,637,1122,183,44,369,137,352,535,306,1287,408,162,461,242,521);
         this.WORM_COORDS[2013] = new Array(59,353,912,219,828,419,2,386,564,302,680,480,431,309,762,507,718,558,1130,190,1254,410,866,499,291,236,1159,444,481,314,819,241,166,461,582,391,579,501,237,423);
         this.WORM_COORDS[2014] = new Array(1256,410,1103,176,1184,184,251,415,60,507,406,302,674,480,353,282,739,505,121,228,311,217,799,246,18,378,888,500,984,208,924,225,821,475,81,281,507,315,622,525);
         this.WORM_COORDS[2015] = new Array(1196,470,25,375,598,539,990,214,707,496,374,306,581,391,801,245,149,258,270,402,554,302,191,502,282,237,1172,185,883,500,921,223,271,532,493,314,214,431,95,426);
         this.WORM_COORDS[2016] = new Array(265,406,359,295,626,516,17,378,1109,177,470,367,211,433,1176,459,1277,393,761,506,682,480,951,197,188,496,1160,193,846,231,210,546,474,314,527,333,282,237,1028,178);
         this.WORM_COORDS[2017] = new Array(608,541,1232,424,700,487,230,426,134,450,560,302,523,369,754,261,55,360,837,412,869,207,924,225,649,487,461,365,75,614,1296,395,131,263,977,308,326,229,579,390);
         this.WORM_COORDS[2018] = new Array(33,520,1155,438,729,510,60,350,415,291,966,199,178,522,659,482,1243,446,131,263,1116,180,448,361,781,517,501,316,1177,184,824,238,206,435,1061,174,352,275,272,564);
         this.WORM_COORDS[2019] = new Array(221,429,279,253,5,384,81,281,1158,442,1078,173,928,201,601,540,760,260,50,511,133,262,571,389,701,488,997,219,62,342,182,493,1257,410,844,231,450,362,1289,470);
         this.WORM_COORDS[2020] = new Array(387,331,49,366,777,515,1200,466,1119,182,850,230,716,549,635,501,1275,393,1062,174,132,263,455,363,193,507,989,465,959,198,693,483,573,389,210,433,519,370,262,408);
         this.WORM_COORDS[2021] = new Array(594,536,724,572,802,489,823,239,737,506,922,224,1065,174,555,302,164,461,279,253,867,499,354,285,761,259,858,410,1166,450,482,314,248,418,1137,347,1185,184,46,369);
         this.WORM_COORDS[2022] = new Array(398,293,888,500,151,455,909,203,739,505,579,390,629,511,28,374,553,302,1244,447,1291,397,822,239,486,314,578,498,288,236,499,603,1071,173,213,432,850,410,78,283);
         this.WORM_COORDS[2023] = new Array(766,257,1005,219,1237,435,1060,174,599,539,918,334,895,500,732,508,646,489,64,333,273,260,355,289,857,410,214,431,504,315,1117,180,568,303,946,197,798,497,136,261);
         this.WORM_COORDS[2024] = new Array(155,473,1117,180,828,237,20,378,1216,423,1158,442,920,223,429,323,777,254,736,506,982,207,240,422,375,307,891,500,634,502,813,484,898,579,557,302,914,336,308,217);
         this.WORM_COORDS[2025] = new Array(322,228,503,315,1058,174,1173,185,1260,410,590,396,905,574,165,461,230,426,667,480,873,500,305,546,719,520,205,539,800,491,613,538,757,261,157,261,940,197,86,278);
         this.WORM_COORDS[2026] = new Array(656,483,1237,435,909,503,864,412,452,362,921,223,263,407,744,505,1039,175,357,292,65,325,158,262,1158,442,206,435,501,604,440,307,207,541,15,380,779,253,591,533);
         this.WORM_COORDS[2027] = new Array(179,522,688,482,1250,419,561,302,784,251,10,382,1297,537,425,303,1037,176,982,305,240,422,166,461,370,304,500,322,913,219,965,199,588,394,623,523,858,228,65,503);
         this.WORM_COORDS[2028] = new Array(1296,395,48,367,1183,184,134,261,655,484,178,522,851,230,1200,466,249,417,321,227,950,197,166,461,358,293,577,389,784,251,718,558,1081,174,875,500,309,373,754,505);
         this.WORM_COORDS[2029] = new Array(915,335,293,223,1285,396,875,500,625,519,33,520,157,261,197,517,864,207,687,482,584,392,925,205,767,509,1076,173,478,314,1026,179,546,302,215,431,72,291,43,369);
         this.WORM_COORDS[2030] = new Array(897,500,773,256,171,474,511,342,795,507,1128,347,1293,395,986,209,1073,173,63,338,370,304,613,538,279,563,25,526,687,482,1194,470,714,532,441,308,330,252,230,426);
         this.WORM_COORDS[2031] = new Array(624,520,209,433,869,499,35,373,853,229,534,307,98,227,902,580,919,505,845,410,774,256,405,298,698,485,941,197,1300,398,581,391,189,497,81,607,1177,460,288,388);
         this.WORM_COORDS[2032] = new Array(1164,189,1284,395,272,401,956,197,446,339,1196,470,877,193,308,217,678,480,532,311,98,227,217,431,47,514,49,366,1070,173,891,500,520,370,585,393,390,337,1129,347);
         this.WORM_COORDS[2033] = new Array(234,424,245,520,1290,398,697,485,608,541,774,256,6,384,519,370,499,603,360,296,161,461,1226,417,748,505,1084,174,424,301,130,345,827,238,1006,217,1164,189,578,390);
         this.WORM_COORDS[2034] = new Array(5,384,756,261,993,216,577,389,523,369,855,410,291,236,1269,405,1201,465,817,478,1143,199,699,486,542,303,594,536,85,278,908,502,926,330,394,294,717,556,463,365);
         this.WORM_COORDS[2035] = new Array(718,558,70,298,893,188,567,473,1254,410,435,307,911,505,1190,469,375,307,575,389,457,363,105,216,256,412,770,256,1090,174,710,504,845,410,270,264,2,386,990,214);
         this.WORM_COORDS[2036] = new Array(228,427,18,378,1283,395,336,253,1227,418,406,302,192,504,149,258,1071,173,72,291,688,482,624,520,1219,626,134,349,545,465,902,501,985,209,781,252,858,228,275,256);
         this.WORM_COORDS[2037] = new Array(154,259,779,517,574,389,1176,184,868,499,447,361,577,497,633,504,701,488,888,188,1229,419,352,275,405,298,1280,393,504,315,123,529,1142,348,855,410,753,262,917,334);
         this.WORM_COORDS[2038] = new Array(189,497,723,514,293,559,816,478,75,288,550,302,1289,399,837,235,216,552,247,419,668,480,294,222,920,333,936,197,858,410,458,364,594,536,350,265,56,359,136,447);
         this.WORM_COORDS[2039] = new Array(1201,465,214,431,874,193,507,315,644,490,59,353,276,255,451,362,941,197,606,542,1292,396,365,300,803,488,1064,174,189,497,249,519,431,309,734,507,582,391,1156,196);
         this.WORM_COORDS[2040] = new Array(981,207,714,532,431,309,173,519,930,200,495,314,59,353,1163,448,205,435,9,382,687,482,128,267,1179,184,878,500,33,520,834,413,821,240,1216,423,572,389,605,542);
         this.WORM_COORDS[2041] = new Array(748,505,1294,395,896,500,160,461,413,291,671,480,105,216,889,571,569,304,914,220,1111,179,330,252,473,368,1200,466,134,520,619,529,25,375,787,251,276,397,578,390);
         this.WORM_COORDS[2042] = new Array(401,293,832,413,308,373,686,481,117,219,1286,398,1069,174,776,254,1126,347,890,500,853,229,175,520,546,302,1172,185,741,505,56,359,78,283,573,389,300,553,477,314);
         this.WORM_COORDS[2043] = new Array(60,350,431,309,1275,393,41,516,1083,174,639,495,159,462,1200,466,177,521,243,520,518,371,377,309,501,316,319,222,1179,184,785,518,903,200,571,389,699,486,880,500);
         this.WORM_COORDS[2044] = new Array(608,541,518,371,393,296,974,203,706,493,25,375,534,307,291,560,772,256,173,519,257,412,1117,300,1197,470,1072,173,282,237,857,410,1173,185,590,396,161,461,1248,434);
         this.WORM_COORDS[2045] = new Array(711,507,1092,174,595,537,79,282,225,428,467,366,661,481,541,304,785,518,328,231,911,338,488,314,741,594,164,461,1004,220,133,262,37,372,356,290,178,522,1249,424);
         this.WORM_COORDS[2046] = new Array(986,209,148,258,820,476,50,365,1254,410,755,505,205,435,79,282,282,392,1190,185,637,499,1087,174,691,483,518,371,194,509,589,395,752,606,341,256,572,476,490,314);
         this.WORM_COORDS[2047] = new Array(100,218,531,312,208,433,1269,405,927,202,451,362,379,310,78,611,659,482,267,404,196,515,118,454,432,309,1195,471,1084,174,75,288,746,505,1134,347,819,477,822,239);
         this.WORM_COORDS[2048] = new Array(224,546,610,540,212,433,1120,182,944,322,109,216,647,488,977,471,463,365,409,293,491,314,746,505,1197,470,765,258,1294,395,358,293,185,493,3,385,965,199,35,519);
         this.WORM_COORDS[2049] = new Array(627,515,234,424,723,569,297,221,127,446,585,393,485,315,378,310,1025,179,790,250,1236,432,822,442,27,374,946,322,946,197,793,512,551,302,83,280,727,511,1171,186);
         this.WORM_COORDS[2050] = new Array(113,216,53,362,715,544,807,485,1103,176,1052,174,84,279,373,305,598,539,241,422,166,461,542,303,932,483,663,480,572,389,1200,466,879,500,55,637,875,193,827,420);
         this.WORM_COORDS[2051] = new Array(665,480,384,321,200,526,1248,434,123,274,1009,212,1184,184,345,259,1090,174,866,499,486,314,32,373,582,391,148,446,596,538,913,219,919,505,861,210,67,311,458,364);
         this.WORM_COORDS[2052] = new Array(537,305,1046,174,117,219,74,288,571,389,12,380,175,520,912,337,356,290,433,308,681,480,1256,410,882,500,764,258,1198,469,866,207,1145,348,238,423,457,363,614,537);
         this.WORM_COORDS[2053] = new Array(517,379,872,196,929,485,588,394,320,224,226,427,178,522,693,483,872,499,40,371,1162,191,628,513,265,525,1205,456,859,410,761,259,748,505,1030,178,561,302,1284,395);
         this.WORM_COORDS[2054] = new Array(1007,216,893,500,737,506,563,302,880,192,519,370,242,422,862,410,1244,447,456,363,592,534,1186,467,383,319,443,311,770,256,788,519,91,243,199,523,510,316,332,253);
         this.WORM_COORDS[2055] = new Array(841,411,863,498,731,508,842,232,463,365,151,455,590,396,384,321,1000,220,1109,177,757,261,1056,174,484,314,267,404,49,366,939,197,718,558,194,509,1250,419,649,487);
         this.WORM_COORDS[2056] = new Array(695,484,418,291,226,427,49,366,542,303,936,197,1297,537,820,476,514,378,139,445,626,516,105,216,304,376,333,253,805,245,158,262,1026,179,52,639,276,255,1251,413);
         this.WORM_COORDS[2057] = new Array(345,259,1288,402,699,486,612,539,1202,463,1041,175,1283,465,213,432,555,302,824,238,142,444,142,258,924,225,647,488,453,362,200,526,766,257,879,500,982,207,1100,175);
         this.WORM_COORDS[2058] = new Array(871,208,708,498,955,197,51,364,1095,174,989,465,1206,453,502,316,230,426,110,216,311,217,371,304,622,525,889,571,1290,398,918,512,190,500,470,367,1189,185,776,254);
         this.WORM_COORDS[2059] = new Array(999,219,693,483,1120,347,224,428,404,296,781,517,562,302,886,500,521,370,296,381,904,200,585,393,1200,466,836,235,1058,174,178,522,905,574,286,236,311,525,931,328);
         this.WORM_COORDS[2060] = new Array(346,260,1217,420,619,529,940,197,1224,633,22,533,1077,173,690,482,504,315,101,217,126,269,1000,220,834,413,113,442,1282,394,882,190,450,362,385,324,211,433,77,612);
         this.WORM_COORDS[2061] = new Array(538,305,261,409,792,514,955,197,660,482,290,236,608,541,1228,418,407,297,1298,395,802,245,63,338,128,267,721,516,173,519,3,385,1119,347,521,370,1073,173,1192,470);
         this.WORM_COORDS[2062] = new Array(134,261,960,199,512,342,771,511,194,509,241,422,564,388,1050,174,388,332,29,374,1222,630,666,480,576,496,779,253,1230,421,864,207,1146,349,568,303,449,361,305,217);
         this.WORM_COORDS[2063] = new Array(876,500,400,293,660,482,784,251,746,505,1033,177,1203,460,827,420,137,261,293,384,47,367,176,520,234,424,1104,176,863,208,575,389,604,541,958,198,492,314,1292,473);
         this.WORM_COORDS[2064] = new Array(273,400,859,227,978,204,669,480,376,308,213,432,883,500,443,311,563,302,471,367,726,511,86,278,602,541,1237,435,1154,437,801,245,10,382,571,389,67,623,1136,194);
         this.WORM_COORDS[2065] = new Array(268,403,1237,435,217,431,989,213,632,505,691,483,454,363,39,371,73,290,48,513,762,507,1184,465,1087,174,193,507,1287,408,142,258,300,221,283,562,365,300,805,245);
         this.WORM_COORDS[2066] = new Array(470,367,230,426,541,304,775,255,1224,417,1164,189,654,484,763,508,973,309,491,314,332,253,188,496,571,389,20,378,1065,174,592,534,819,477,929,485,277,254,956,197);
         this.WORM_COORDS[2067] = new Array(173,519,677,480,1153,435,50,365,570,474,1072,173,1235,431,73,290,886,188,781,252,438,307,1292,396,547,302,876,500,745,505,1179,184,586,393,843,410,613,538,107,216);
         this.WORM_COORDS[2068] = new Array(60,632,402,294,56,359,772,256,1083,174,651,486,73,290,178,522,839,234,477,314,165,461,990,214,347,260,332,354,808,484,572,389,1208,446,710,504,1278,393,569,304);
         this.WORM_COORDS[2069] = new Array(380,311,246,419,155,261,879,193,808,243,182,493,653,484,1044,174,735,506,1246,450,346,260,885,500,496,315,960,199,602,541,441,308,310,372,830,415,820,476,27,374);
         this.WORM_COORDS[2070] = new Array(8,382,464,365,221,429,568,303,776,254,52,510,365,300,723,514,491,314,178,522,277,254,1007,216,819,477,1153,435,1229,419,156,261,103,216,576,389,1160,193,604,541);
         this.WORM_COORDS[2071] = new Array(526,335,235,528,437,307,619,529,263,407,774,513,1283,395,167,461,1232,424,935,198,849,231,303,550,333,253,701,488,1075,173,79,282,24,375,1162,191,277,254,461,365);
         this.WORM_COORDS[2072] = new Array(112,216,657,483,476,368,7,383,296,221,1259,410,873,195,376,308,1202,463,740,505,187,494,991,464,498,603,528,332,261,409,288,561,820,241,879,500,1189,185,751,264);
         this.WORM_COORDS[2073] = new Array(422,293,174,519,51,364,256,412,642,492,738,505,881,500,819,477,576,389,1258,410,1204,459,1156,196,301,220,787,251,355,289,528,332,900,195,1071,173,448,361,838,234);
         this.WORM_COORDS[2074] = new Array(337,255,851,230,215,431,5,384,998,219,1107,177,934,326,589,530,696,484,755,261,503,315,131,263,119,459,1235,431,78,283,1169,452,844,410,931,200,589,395,325,359);
         this.WORM_COORDS[2075] = new Array(1158,195,39,371,1178,460,211,433,760,505,700,487,272,261,192,504,475,314,1275,393,493,553,247,519,648,487,113,442,953,197,613,538,520,370,158,262,777,254,863,208);
         this.WORM_COORDS[2076] = new Array(928,201,776,514,408,350,248,418,1132,347,1262,412,418,291,165,461,783,252,101,217,621,527,290,236,1196,470,723,514,547,302,856,410,89,419,128,267,200,526,499,603);
         this.WORM_COORDS[2077] = new Array(600,540,4,385,769,511,431,309,512,342,888,188,213,432,685,481,1160,193,1144,348,381,313,833,236,447,361,1282,394,1040,175,158,262,108,216,340,256,1192,470,1111,290);
         this.WORM_COORDS[2078] = new Array(6,384,388,332,1246,450,797,246,221,549,892,500,664,480,805,485,725,512,1270,398,220,429,341,256,590,396,84,603,188,496,73,290,941,197,496,315,749,603,273,400);
         this.WORM_COORDS[2079] = new Array(1283,395,953,197,784,518,474,314,46,369,729,510,1210,439,865,207,1018,187,414,291,459,364,147,258,900,501,1127,188,239,422,840,411,759,260,87,278,595,537,570,389);
         this.WORM_COORDS[2080] = new Array(330,252,720,518,1029,178,518,371,770,511,416,291,927,487,101,217,1158,442,201,530,91,421,616,534,28,374,559,302,1217,420,757,261,1287,408,670,480,934,198,875,500);
         this.WORM_COORDS[2081] = new Array(113,216,195,512,244,420,872,196,727,511,990,302,511,342,596,538,57,356,1068,174,659,482,805,485,575,389,785,251,928,201,84,279,1212,433,1158,442,994,217,163,461);
         this.WORM_COORDS[2082] = new Array(1008,214,287,562,321,227,169,463,1260,410,743,505,655,484,35,373,197,517,549,302,600,540,834,236,756,261,391,339,478,314,931,200,90,245,902,580,799,494,887,500);
         this.WORM_COORDS[2083] = new Array(514,378,138,260,19,378,957,198,424,301,1296,395,88,247,565,302,824,440,887,188,918,512,664,480,1111,179,482,314,1214,428,757,261,278,395,275,564,825,238,172,485);
         this.WORM_COORDS[2084] = new Array(180,493,662,481,138,260,1300,398,470,367,581,391,376,308,1197,470,279,253,565,302,207,434,916,221,1081,174,966,199,72,291,781,252,506,315,747,505,807,485,874,500);
         this.WORM_COORDS[2085] = new Array(234,424,1150,200,38,372,971,201,1280,393,756,505,701,488,843,231,101,217,1195,471,329,241,645,489,271,532,506,315,189,497,756,261,362,298,610,540,431,309,157,261);
         this.WORM_COORDS[2086] = new Array(1201,465,804,486,205,435,403,295,739,505,198,520,992,215,919,505,915,221,284,236,775,255,604,541,69,300,577,389,20,540,294,383,470,367,1111,290,39,371,115,218);
         this.WORM_COORDS[2087] = new Array(699,486,1096,175,1245,448,914,220,183,493,101,217,416,291,1024,181,923,493,751,264,1178,460,252,415,358,293,614,537,43,369,514,378,567,473,837,412,873,500,1189,185);
         this.WORM_COORDS[2088] = new Array(532,311,795,507,319,222,606,542,682,480,260,410,74,288,1287,408,108,216,296,557,497,602,578,390,1222,417,1032,177,461,365,361,297,179,522,744,505,439,307,823,239);
         this.WORM_COORDS[2089] = new Array(624,520,861,210,82,280,397,293,753,262,889,500,255,413,683,480,111,216,1174,185,216,552,346,260,45,369,1239,439,1112,179,575,389,992,215,533,309,950,320,182,493);
         this.WORM_COORDS[2090] = new Array(828,419,242,422,794,248,659,482,310,530,19,378,1245,448,367,301,997,219,1074,173,186,493,713,524,426,310,109,216,1173,185,867,499,525,367,118,454,791,515,1295,395);
         this.WORM_COORDS[2091] = new Array(929,329,160,461,721,516,435,307,1287,408,122,530,59,353,531,312,455,363,231,425,281,238,1230,421,901,197,576,389,584,521,117,219,639,495,1030,178,1178,184,851,230);
         this.WORM_COORDS[2092] = new Array(249,417,736,506,1149,200,892,500,959,198,1232,424,608,541,24,375,404,296,157,463,831,236,495,314,114,217,661,481,42,515,75,288,318,222,992,464,1010,208,522,369);
         this.WORM_COORDS[2093] = new Array(723,514,229,427,810,484,191,502,1138,347,1264,431,357,292,1080,174,941,197,600,540,35,373,848,410,1211,436,754,261,445,332,100,218,588,394,515,378,127,526,665,480);
         this.WORM_COORDS[2094] = new Array(1209,443,164,461,581,391,17,378,958,198,706,493,61,506,281,238,1120,347,1280,393,1053,174,651,486,417,291,232,425,356,290,972,310,124,339,550,302,448,361,892,188);
         this.WORM_COORDS[2095] = new Array(565,302,293,223,404,296,747,505,1066,174,810,484,1249,424,684,481,599,539,1194,470,892,188,802,245,78,283,914,529,494,314,180,493,942,197,222,548,11,381,236,424);
         this.WORM_COORDS[2096] = new Array(588,394,424,301,772,256,689,482,52,363,1184,184,1131,347,827,420,1233,427,224,428,1056,174,472,367,921,332,171,474,483,314,932,199,283,236,137,261,617,532,352,275);
         this.WORM_COORDS[2097] = new Array(580,391,612,539,948,197,879,500,197,517,740,505,1024,181,3,385,446,339,834,236,853,410,384,321,956,318,1241,443,515,378,1098,175,687,482,474,598,234,424,1277,393);
         this.WORM_COORDS[2098] = new Array(1254,410,826,238,487,314,1174,185,187,494,731,508,1127,347,672,480,157,261,1288,469,409,293,556,302,233,425,592,534,949,197,248,519,1196,470,304,217,459,364,81,281);
         this.WORM_COORDS[2099] = new Array(720,518,1060,174,860,410,749,267,667,480,52,363,917,221,504,607,221,429,1273,394,458,364,283,236,891,500,1217,420,609,540,564,302,215,552,163,461,780,517,287,389);
         this.WORM_COORDS[2100] = new Array(536,245,649,328,24,537,809,356,1248,446,816,284,61,469,213,318,885,283,390,296,471,214,1042,474,724,325,128,288,1290,517,987,221,278,306,13,632,880,135,1217,511);
         this.WORM_COORDS[2101] = new Array(1038,488,319,287,908,525,239,422,124,287,914,293,911,175,791,274,621,292,1133,335,844,189,1211,505,1257,448,183,314,699,256,19,631,25,537,379,293,483,211,1189,384);
         this.WORM_COORDS[2102] = new Array(336,284,6,636,129,288,931,325,513,272,1186,380,960,267,430,275,1058,472,86,462,1093,358,616,291,833,561,696,256,453,364,798,276,1242,446,182,314,1282,513,740,165);
         this.WORM_COORDS[2103] = new Array(46,479,1087,455,944,184,387,295,271,396,624,292,553,248,784,270,1258,449,1122,337,1187,381,305,290,757,331,943,308,874,541,763,179,474,211,121,287,849,186,443,272);
         this.WORM_COORDS[2104] = new Array(352,283,79,463,1042,474,1296,596,284,301,914,293,258,407,1171,356,566,276,1117,558,1284,513,79,330,25,537,1222,513,669,254,504,277,191,309,1252,446,717,323,815,573);
         this.WORM_COORDS[2105] = new Array(833,196,1254,446,1073,346,11,633,239,422,742,600,1278,512,379,293,71,466,938,511,1297,596,272,315,1044,474,443,369,605,320,888,135,1001,536,143,319,680,253,510,274);
         this.WORM_COORDS[2106] = new Array(395,297,549,242,243,420,1141,334,825,204,1280,513,759,176,791,274,499,242,1278,589,992,218,797,599,1219,512,44,481,590,320,892,137,206,306,730,328,1065,471,718,485);
         this.WORM_COORDS[2107] = new Array(658,326,1271,510,1202,407,790,273,1206,493,767,186,528,254,947,508,472,214,778,625,838,193,893,137,1086,353,337,284,34,491,723,325,201,306,21,630,956,282,1058,472);
         this.WORM_COORDS[2108] = new Array(1238,451,1285,514,21,630,1089,355,643,295,1296,596,727,170,408,304,1194,393,217,336,1004,532,146,319,905,153,1146,335,776,266,246,418,1221,513,1142,562,276,309,349,283);
         this.WORM_COORDS[2109] = new Array(1296,596,852,185,1256,448,1041,475,680,253,199,307,320,286,444,272,997,218,0,640,225,377,731,328,738,507,1070,347,62,469,528,254,741,165,926,179,595,321,106,285);
         this.WORM_COORDS[2110] = new Array(730,328,981,229,180,315,636,293,256,409,766,184,1025,489,689,254,502,277,911,292,747,605,1244,446,105,285,11,633,65,561,892,532,1222,513,376,292,1158,340,1079,348);
         this.WORM_COORDS[2111] = new Array(1258,449,242,421,284,301,813,353,71,466,841,192,1010,222,1165,348,725,326,405,301,763,618,1080,349,1296,596,911,175,1060,472,861,278,961,555,502,277,171,318,633,293);
         this.WORM_COORDS[2112] = new Array(1220,512,1282,513,1159,341,432,274,693,275,59,471,959,556,901,138,1106,342,527,256,306,379,231,407,839,192,597,323,794,605,737,505,780,268,1048,473,5,636,970,249);
         this.WORM_COORDS[2113] = new Array(315,288,823,205,986,546,1168,352,309,377,76,464,910,174,11,633,1234,474,769,261,108,285,1056,472,227,385,472,214,848,554,1300,599,725,326,780,624,575,301,694,461);
         this.WORM_COORDS[2114] = new Array(155,319,869,281,460,274,1217,511,741,165,1068,348,1263,458,303,290,936,182,488,213,684,253,793,606,1282,513,1125,336,364,288,650,327,1012,224,250,415,1038,488,422,337);
         this.WORM_COORDS[2115] = new Array(1254,446,1207,497,961,555,915,176,1149,335,240,422,713,481,59,471,298,293,116,286,661,325,1043,474,402,299,831,562,213,318,727,170,456,359,692,256,940,312,828,199);
         this.WORM_COORDS[2116] = new Array(788,271,519,267,1251,446,330,284,766,336,198,307,741,165,9,634,31,537,1068,471,1137,334,46,479,426,278,906,526,743,601,1085,352,913,293,664,324,143,319,1187,381);
         this.WORM_COORDS[2117] = new Array(529,254,265,401,1254,446,371,290,1017,474,428,276,857,275,1072,346,159,319,734,502,1220,512,937,182,821,208,634,293,784,270,1153,337,467,219,936,318,27,537,762,618);
         this.WORM_COORDS[2118] = new Array(438,273,1247,446,1271,510,777,266,920,177,899,286,1132,335,1014,226,66,468,761,618,30,537,724,325,859,175,386,295,89,321,835,561,668,254,163,319,277,307,1058,472);
         this.WORM_COORDS[2119] = new Array(676,254,1200,403,226,381,518,267,579,308,64,469,296,294,844,556,1287,592,1289,516,650,327,7,636,1101,345,714,322,882,283,151,319,1032,511,1021,238,772,340,752,171);
         this.WORM_COORDS[2120] = new Array(620,291,1269,509,277,392,947,302,1091,356,1047,473,210,309,19,631,979,549,715,322,946,185,1151,336,438,361,110,286,28,537,278,306,850,186,361,286,541,241,66,468);
         this.WORM_COORDS[2121] = new Array(220,351,453,273,1219,512,992,218,1246,446,279,305,510,274,47,479,930,326,1093,358,375,292,868,154,596,322,81,329,151,319,1156,338,1296,596,808,281,994,542,883,537);
         this.WORM_COORDS[2122] = new Array(653,326,349,283,1035,492,819,214,1122,337,873,135,974,239,144,319,514,272,786,618,23,538,586,316,209,308,1192,389,85,326,61,469,285,300,680,253,227,385,737,328);
         this.WORM_COORDS[2123] = new Array(2,638,837,194,1228,478,401,298,312,289,664,324,100,462,112,286,977,232,259,406,1155,338,481,211,564,270,215,325,902,288,814,352,1280,513,46,479,676,254,970,553);
         this.WORM_COORDS[2124] = new Array(1242,446,1293,594,67,467,1192,389,589,320,10,633,355,284,1085,352,467,219,546,241,810,281,1061,472,305,290,244,420,733,328,639,294,928,316,927,179,835,561,979,229);
         this.WORM_COORDS[2125] = new Array(662,324,403,299,848,187,984,225,1154,337,839,296,1076,498,15,632,466,219,1242,446,244,420,41,483,1279,512,867,545,196,307,1293,594,1195,394,272,315,328,285,738,594);
         this.WORM_COORDS[2126] = new Array(392,296,1230,476,248,417,302,290,704,256,761,178,1204,416,973,243,165,319,656,326,795,275,508,275,934,180,1016,477,1157,339,1095,359,1297,596,717,323,884,135,847,187);
         this.WORM_COORDS[2127] = new Array(1257,448,100,288,251,413,1126,336,1198,398,996,218,430,275,866,546,525,259,606,319,72,466,688,254,206,306,728,327,855,183,291,296,913,175,377,292,747,169,27,537);
         this.WORM_COORDS[2128] = new Array(896,531,987,546,698,466,393,297,751,171,1237,474,864,167,75,464,935,319,1079,505,18,631,445,272,1126,336,504,277,775,626,1296,596,1186,380,1008,222,287,387,139,319);
         this.WORM_COORDS[2129] = new Array(1052,472,12,632,1210,504,886,135,1190,385,706,257,593,320,242,421,283,301,119,286,769,261,204,306,1283,591,35,488,1266,509,716,322,445,272,343,284,1094,358,836,560);
         this.WORM_COORDS[2130] = new Array(694,263,1059,472,1155,338,1257,448,180,315,14,632,858,181,261,404,537,244,23,538,347,283,475,211,965,250,71,466,1292,519,1088,354,868,544,816,284,748,605,444,272);
         this.WORM_COORDS[2131] = new Array(741,165,17,632,990,544,1038,488,381,294,810,281,169,319,1077,347,918,176,27,537,630,292,82,328,549,242,906,526,728,495,58,471,480,211,448,272,1287,515,1025,241);
         this.WORM_COORDS[2132] = new Array(191,309,1210,504,1257,448,674,254,227,385,880,538,51,476,708,319,304,290,760,617,21,630,1150,336,570,286,966,249,94,314,1034,513,495,240,1098,362,853,185,1283,513);
         this.WORM_COORDS[2133] = new Array(327,285,192,309,62,469,1226,483,1287,515,508,275,825,204,761,178,644,297,857,550,253,411,379,293,989,545,121,287,574,297,1125,336,805,279,903,288,1031,269,981,229);
         this.WORM_COORDS[2134] = new Array(1055,472,617,291,190,310,1075,346,358,286,1193,390,564,270,292,296,769,622,470,214,50,477,784,270,790,359,966,249,671,254,934,180,860,548,94,314,252,412,103,462);
         this.WORM_COORDS[2135] = new Array(723,325,311,289,1087,354,69,466,582,313,26,537,1138,334,1287,515,778,267,145,319,929,179,496,240,433,274,1031,269,269,397,876,134,3,638,634,293,870,543,1003,535);
         this.WORM_COORDS[2136] = new Array(1190,385,339,284,1056,472,1136,334,415,323,608,312,163,319,20,630,506,276,680,253,83,327,968,553,981,229,244,420,769,261,792,608,868,154,1244,446,1078,347,1272,510);
         this.WORM_COORDS[2137] = new Array(690,255,120,286,354,284,1182,374,1091,356,1226,483,652,327,748,169,866,161,1064,471,11,633,587,317,513,272,887,535,810,281,48,479,1003,220,183,314,244,420,714,481);
         this.WORM_COORDS[2138] = new Array(711,321,7,636,371,290,608,312,1101,345,171,318,86,325,1207,497,296,294,1040,476,517,269,823,205,804,278,923,178,481,211,68,466,232,410,1260,451,1181,372,25,537);
         this.WORM_COORDS[2139] = new Array(425,280,607,318,537,244,1149,335,903,527,966,249,733,328,1297,596,28,537,1074,346,983,547,763,179,1041,475,1283,513,1241,447,290,297,350,283,264,402,905,153,164,319);
         this.WORM_COORDS[2140] = new Array(731,165,599,324,420,334,1190,385,112,286,429,276,192,309,516,271,57,472,931,325,1249,446,283,301,950,187,248,417,25,537,1069,347,344,284,1029,263,1040,476,689,254);
         this.WORM_COORDS[2141] = new Array(56,473,1043,474,405,301,924,178,1249,446,1082,350,308,289,257,409,797,599,880,538,30,537,183,314,1156,338,992,543,1220,512,783,270,987,221,1286,515,741,165,666,255);
         this.WORM_COORDS[2142] = new Array(1225,513,1138,334,559,260,1072,346,1188,382,196,307,1003,220,421,335,244,420,462,274,977,549,818,572,39,484,273,314,839,192,338,284,917,176,767,186,141,319,1279,512);
         this.WORM_COORDS[2143] = new Array(186,312,1070,347,1225,513,506,276,938,511,75,464,595,321,761,618,978,230,680,253,103,285,647,312,1258,449,279,305,236,420,558,257,1122,337,803,278,730,165,299,386);
         this.WORM_COORDS[2144] = new Array(362,287,34,491,456,273,1032,511,580,309,1234,474,810,281,517,269,904,527,1295,595,241,422,10,633,302,290,729,167,161,319,954,288,705,256,742,600,416,326,1174,361);
         this.WORM_COORDS[2145] = new Array(1098,362,3,638,66,468,793,274,1168,352,435,274,516,271,243,420,916,521,1251,446,1051,473,964,251,1292,519,616,291,122,287,1015,237,685,253,446,371,740,165,1297,596);
         this.WORM_COORDS[2146] = new Array(549,242,455,273,705,473,846,243,166,319,67,467,761,178,590,320,31,537,307,290,714,322,969,249,671,254,1181,372,1244,446,653,326,788,615,388,295,933,180,440,363);
         this.WORM_COORDS[2147] = new Array(378,292,17,632,1119,337,1291,518,863,279,1026,260,46,479,280,304,238,422,1199,400,861,170,191,309,502,277,810,281,688,254,969,249,926,179,1074,491,614,292,754,611);
         this.WORM_COORDS[2148] = new Array(259,406,1299,597,832,196,35,488,1055,472,192,309,1092,357,869,281,10,633,357,285,668,254,778,267,766,184,133,301,52,552,1258,449,295,294,599,324,881,135,1195,394);
         this.WORM_COORDS[2149] = new Array(760,617,562,266,1258,449,99,462,29,537,827,201,136,306,1151,565,21,630,953,290,1035,492,1163,345,262,403,621,292,817,572,1087,354,752,171,1220,512,348,283,416,326);
         this.WORM_COORDS[2150] = new Array(214,322,605,320,854,183,388,295,1273,511,755,612,1105,343,695,262,1202,407,27,628,662,324,456,273,863,547,919,177,322,286,1036,492,527,256,148,319,1211,505,1260,451);
         this.WORM_COORDS[2151] = new Array(1075,346,193,309,722,325,652,327,1145,335,52,476,348,283,109,461,1215,511,918,520,766,184,954,190,1256,448,789,613,787,271,271,396,25,537,1270,509,830,198,1046,474);
         this.WORM_COORDS[2152] = new Array(153,319,58,471,1123,337,444,272,500,243,942,309,894,137,4,637,90,321,690,255,360,286,990,218,810,281,828,199,1261,453,238,422,421,335,306,290,942,509,1296,596);
         this.WORM_COORDS[2153] = new Array(1232,474,555,250,445,272,1013,225,170,319,1191,387,957,280,772,624,685,253,970,553,338,284,1154,337,797,276,1040,476,935,181,753,172,1082,350,222,362,70,466,388,295);
         this.WORM_COORDS[2154] = new Array(633,293,1030,508,21,630,319,287,435,274,496,240,295,386,769,622,816,284,1104,443,217,336,383,294,229,396,1223,514,33,492,696,256,82,328,944,184,552,245,577,304);
         this.WORM_COORDS[2155] = new Array(59,471,895,531,1173,359,1051,473,1223,514,695,262,1246,446,258,407,948,186,186,312,409,305,920,300,13,632,77,333,790,273,1102,344,554,249,134,302,765,620,716,322);
         this.WORM_COORDS[2156] = new Array(217,336,794,274,1047,473,1091,356,236,420,1013,225,1299,597,632,292,1181,372,147,319,904,289,391,296,20,630,35,488,324,286,1234,474,505,277,736,504,946,185,490,216);
         this.WORM_COORDS[2157] = new Array(1296,596,1063,471,149,319,216,332,1092,357,47,479,1239,449,903,142,776,266,23,538,999,218,1181,372,1224,514,408,304,571,288,298,293,511,273,1276,512,768,468,783,621);
         this.WORM_COORDS[2158] = new Array(791,274,1272,510,870,543,374,292,438,273,120,286,859,175,1121,337,184,313,958,274,633,293,303,290,61,469,1070,347,932,324,1,639,541,241,1027,501,1178,368,1018,237);
         this.WORM_COORDS[2159] = new Array(950,187,1157,339,150,319,402,299,35,488,11,633,587,317,741,165,279,391,1101,345,795,362,492,240,1202,407,1060,472,924,304,1271,586,207,307,662,324,889,135,833,196);
         this.WORM_COORDS[2160] = new Array(833,196,921,519,1035,492,1169,354,457,274,1250,446,1092,357,975,233,892,285,744,602,92,319,249,416,289,298,682,253,560,261,1286,515,0,640,63,469,755,174,145,319);
         this.WORM_COORDS[2161] = new Array(1268,509,206,306,290,297,449,272,247,418,40,483,771,624,670,254,1197,397,1296,596,761,178,472,214,1098,362,358,286,578,307,962,555,13,632,1052,472,924,178,866,161);
         this.WORM_COORDS[2162] = new Array(1063,471,81,463,1072,346,504,277,1005,531,475,211,429,276,1155,338,799,277,1297,596,200,306,289,298,680,253,925,178,1230,476,738,507,82,328,1002,220,732,164,776,345);
         this.WORM_COORDS[2163] = new Array(1058,472,482,211,1299,597,425,280,902,140,875,541,508,275,1,639,663,324,1091,356,39,484,575,301,307,290,1243,446,310,377,806,584,713,322,741,515,1249,581,689,254);
         this.WORM_COORDS[2164] = new Array(1246,446,352,283,463,274,876,134,636,293,1088,354,11,633,795,603,842,298,73,465,77,333,253,411,1194,393,163,319,1140,334,572,292,733,328,292,296,127,453,998,218);
         this.WORM_COORDS[2165] = new Array(35,488,1053,472,981,229,1180,371,344,284,522,262,1096,360,213,318,724,325,696,464,1280,513,788,615,980,549,22,630,693,275,628,292,423,340,99,288,1300,599,782,270);
         this.WORM_COORDS[2166] = new Array(899,529,1122,337,804,278,204,306,691,256,60,470,1215,511,948,186,1174,361,621,292,1015,237,310,289,244,420,719,324,546,241,1041,475,31,537,1254,446,961,260,1294,594);
         this.WORM_COORDS[2167] = new Array(1286,592,125,287,802,590,1246,446,441,273,9,634,1100,346,1029,263,24,537,790,273,518,267,351,283,866,546,727,327,1063,471,836,194,641,294,1185,379,211,311,966,553);
         this.WORM_COORDS[2168] = new Array(1086,353,1160,342,1033,512,58,471,726,327,1197,397,1220,512,336,284,816,284,511,273,387,295,664,324,1248,446,225,377,760,177,85,326,881,283,911,175,1291,518,156,319);
         this.WORM_COORDS[2169] = new Array(98,462,381,294,806,279,753,610,1122,337,713,322,1178,368,512,272,1249,446,651,327,5,636,236,420,84,326,311,289,1287,515,670,254,921,177,47,479,988,219,868,154);
         this.WORM_COORDS[2170] = new Array(870,137,767,186,549,242,1076,346,387,295,1214,509,1267,509,44,481,574,297,228,392,657,326,189,310,940,510,1262,454,814,574,306,290,1297,596,1045,474,870,281,1196,395);
         this.WORM_COORDS[2171] = new Array(381,294,936,318,1076,346,35,622,175,317,510,274,613,294,292,296,889,135,26,537,722,325,47,479,740,165,1021,238,459,274,1046,474,801,592,1196,395,246,418,809,281);
         this.WORM_COORDS[2172] = new Array(713,322,267,399,496,240,1019,237,334,284,1154,337,109,461,1280,513,829,291,443,369,31,537,1102,344,213,318,40,483,1059,472,557,255,691,256,954,190,767,186,411,310);
         this.WORM_COORDS[2173] = new Array(841,192,595,321,1082,350,461,274,1177,367,231,407,523,261,1280,513,185,313,118,459,95,312,705,256,275,311,731,328,659,326,870,137,22,630,983,226,940,312,771,263);
         this.WORM_COORDS[2174] = new Array(1100,346,779,268,1288,515,698,256,1243,446,10,633,420,334,27,537,124,287,48,479,497,240,321,286,424,282,267,399,174,317,1170,355,1218,512,828,199,1088,455,1024,483);
         this.WORM_COORDS[2175] = new Array(1108,342,1196,395,712,321,247,418,212,314,1205,487,1297,596,817,285,127,453,598,323,820,211,516,271,26,537,1022,238,958,274,313,289,739,510,1015,484,766,184,1279,512);
         this.WORM_COORDS[2176] = new Array(981,229,1162,344,897,530,166,319,610,309,724,325,271,396,513,272,3,638,804,587,1226,483,925,178,363,287,995,542,82,328,676,254,1094,450,419,333,1042,474,1204,416);
         this.WORM_COORDS[2177] = new Array(35,488,909,291,540,241,851,186,1090,453,314,288,954,190,408,304,146,319,802,278,631,292,246,418,1253,446,1148,335,1032,511,1273,511,11,633,219,347,1217,511,889,135);
         this.WORM_COORDS[2178] = new Array(406,302,675,254,1227,478,649,328,1285,514,1035,492,244,420,1276,589,716,322,57,472,278,306,895,137,221,356,508,275,27,537,1122,337,843,190,964,251,1022,238,573,294);
         this.WORM_COORDS[2179] = new Array(305,290,600,324,685,253,1187,381,63,469,1039,479,1103,344,248,417,758,175,553,248,1027,261,772,264,901,138,650,327,182,314,958,556,394,297,776,626,1267,509,1206,493);
         this.WORM_COORDS[2180] = new Array(430,275,638,294,911,175,861,548,34,491,525,259,806,279,207,307,1037,490,747,169,705,256,7,636,803,588,139,319,1227,478,948,508,964,251,272,315,259,406,695,463);
         this.WORM_COORDS[2181] = new Array(1223,514,181,314,890,135,832,196,1248,446,406,302,706,257,766,621,1041,475,446,371,1078,347,465,224,868,544,39,484,652,327,130,451,1014,226,125,287,3,638,253,411);
         this.WORM_COORDS[2182] = new Array(180,315,312,289,726,327,1016,477,1213,508,1093,358,947,302,525,259,1270,509,1251,446,8,635,45,480,399,298,1158,340,874,541,838,193,1299,597,663,324,258,407,1004,532);
         this.WORM_COORDS[2183] = new Array(805,586,1261,453,330,284,1,639,91,319,72,466,1111,340,785,354,702,471,970,553,480,211,310,377,279,305,189,310,886,535,734,164,535,246,1269,509,400,298,819,214);
         this.WORM_COORDS[2184] = new Array(1252,446,1012,224,551,245,679,253,70,466,1183,375,1295,595,578,307,893,137,187,311,455,273,312,289,1223,514,896,531,1096,360,1037,490,137,319,797,276,1277,512,27,537);
         this.WORM_COORDS[2185] = new Array(1246,446,1076,498,245,419,619,291,1293,594,949,186,1114,339,948,508,331,284,671,254,858,181,22,630,508,275,160,319,905,289,48,479,274,312,85,326,751,608,1285,514);
         this.WORM_COORDS[2186] = new Array(440,273,324,286,786,271,1297,596,227,385,592,320,1038,488,1021,238,19,631,34,491,111,286,905,153,916,295,1257,448,1192,389,988,545,212,314,380,293,846,188,1268,509);
         this.WORM_COORDS[2187] = new Array(404,300,1276,512,242,421,772,340,542,241,1157,339,817,285,276,309,1043,474,604,325,1299,597,838,559,657,326,107,285,766,184,1263,458,1101,345,31,537,736,504,59,471);
         this.WORM_COORDS[2188] = new Array(1024,240,985,546,539,242,29,537,186,312,889,534,1150,336,939,314,1035,492,136,306,618,291,77,333,777,266,4,637,714,322,1067,351,1242,446,931,180,870,137,72,466);
         this.WORM_COORDS[2189] = new Array(184,313,6,636,1177,367,527,256,72,466,121,287,313,289,673,254,252,412,1293,594,977,232,442,367,767,186,25,537,822,207,1235,474,776,266,662,324,370,290,1127,336);
         this.WORM_COORDS[2190] = new Array(844,189,118,286,764,180,715,322,1240,448,267,399,512,272,1014,489,436,273,581,311,1286,515,55,474,372,290,1194,393,805,279,1263,585,1115,339,2,638,273,314,868,544);
         this.WORM_COORDS[2191] = new Array(1084,351,210,309,2,638,1272,510,143,319,850,186,257,409,361,286,771,263,487,212,972,249,642,295,1184,377,1253,446,1093,451,734,164,587,317,72,466,424,341,304,290);
         this.WORM_COORDS[2192] = new Array(639,294,15,632,911,175,445,272,1293,594,357,285,232,410,794,274,1185,379,795,603,152,320,27,537,1057,472,1101,345,89,321,95,462,1266,509,576,302,998,218,954,288);
         this.WORM_COORDS[2193] = new Array(813,575,778,267,216,332,407,303,1066,471,885,135,1258,449,1182,374,275,311,622,292,156,319,1299,597,22,630,830,198,38,485,523,261,1271,510,112,460,759,615,690,255);
         this.WORM_COORDS[2194] = new Array(268,398,1239,449,368,289,452,272,584,315,513,272,187,311,1005,531,673,254,1130,335,660,325,742,600,754,173,44,481,81,329,814,574,306,290,963,255,1300,599,905,526);
         this.WORM_COORDS[2195] = new Array(1189,384,1240,448,264,402,573,294,1289,516,1081,350,399,298,179,316,9,634,500,243,324,286,36,487,126,454,1285,591,802,278,1029,263,1074,491,106,285,848,187,774,625);
         this.WORM_COORDS[2196] = new Array(221,356,255,410,569,284,84,326,713,322,1111,340,441,273,28,537,36,487,299,292,1249,446,154,319,881,135,357,285,802,278,17,632,1176,365,1294,594,975,233,1042,474);
         this.WORM_COORDS[2197] = new Array(53,475,1086,353,713,322,753,172,144,319,635,293,893,137,846,188,289,298,1048,473,1217,511,10,633,1285,514,754,611,457,274,26,537,485,211,938,511,255,410,78,332);
         this.WORM_COORDS[2198] = new Array(766,621,55,474,1036,492,1237,474,475,211,167,319,522,262,918,176,704,256,342,284,395,297,1297,596,966,249,899,286,1191,387,1101,345,709,319,761,178,600,324,1025,241);
         this.WORM_COORDS[2199] = new Array(440,273,280,304,219,347,1261,453,766,184,1196,395,342,284,71,466,650,327,1274,511,851,186,514,272,1028,504,267,399,1300,599,721,325,815,283,770,623,87,325,953,189);
         this.WORM_COORDS[2200] = new Array(479,476,596,495,861,210,280,182,721,333,108,584,831,306,1063,327,1131,321,20,542,1208,367,914,212,276,603,587,280,153,199,778,325,13,294,343,166,190,611,1027,216);
         this.WORM_COORDS[2201] = new Array(315,187,1005,441,1001,247,954,172,492,497,420,492,580,206,1244,360,542,544,885,188,826,310,198,210,377,260,1210,463,87,240,30,543,613,258,251,614,736,302,317,437);
         this.WORM_COORDS[2202] = new Array(1215,369,881,413,716,339,77,565,118,203,558,192,1199,452,1084,310,227,210,624,411,444,478,632,246,986,228,281,181,686,272,529,552,1042,237,1151,631,793,343,1149,321);
         this.WORM_COORDS[2203] = new Array(148,189,497,506,861,210,767,301,1045,243,1191,583,28,543,1243,361,246,217,404,463,653,264,880,414,1159,330,323,169,298,576,39,269,202,614,1056,475,102,581,944,172);
         this.WORM_COORDS[2204] = new Array(953,172,1073,318,555,190,570,523,285,348,404,463,777,322,1146,319,498,507,116,205,28,543,1010,236,138,369,249,219,1242,362,384,327,44,264,318,182,621,478,254,613);
         this.WORM_COORDS[2205] = new Array(115,206,1160,331,388,270,45,264,1217,370,441,483,864,199,980,209,1183,444,794,343,1109,337,242,216,562,194,130,368,744,289,1179,583,29,543,1113,583,532,552,104,481);
         this.WORM_COORDS[2206] = new Array(181,216,582,511,325,441,562,194,861,371,1028,215,296,186,199,478,294,582,760,288,369,381,875,191,507,522,454,465,69,248,611,260,358,198,952,172,390,272,30,543);
         this.WORM_COORDS[2207] = new Array(577,519,968,190,780,328,833,454,160,219,1018,227,1216,370,292,183,446,475,835,302,1116,461,1121,327,871,195,674,274,730,316,382,265,1286,329,1191,583,607,278,360,201);
         this.WORM_COORDS[2208] = new Array(466,463,503,515,61,253,849,216,283,596,811,321,18,345,534,189,376,260,1204,582,691,280,837,463,293,184,408,470,1002,246,1249,357,1088,304,972,190,213,208,1173,346);
         this.WORM_COORDS[2209] = new Array(1282,333,59,253,241,216,1175,347,173,221,157,337,660,277,1154,631,812,320,1210,582,1008,239,5,301,117,204,100,581,1225,369,397,455,1094,302,481,479,220,603,898,372);
         this.WORM_COORDS[2210] = new Array(861,210,603,489,483,482,868,442,12,543,389,333,266,610,712,342,199,210,1118,330,266,220,1007,240,39,269,127,369,349,169,823,315,64,558,407,467,940,176,754,284);
         this.WORM_COORDS[2211] = new Array(768,304,867,196,185,215,254,220,13,542,606,487,1135,320,978,197,1214,582,846,479,428,498,1104,585,104,481,549,186,553,536,887,398,683,272,295,581,1218,370,1294,326);
         this.WORM_COORDS[2212] = new Array(1138,319,1200,364,799,346,894,382,344,166,1000,248,166,600,1052,334,967,179,136,368,593,498,638,248,57,554,185,313,379,262,403,461,145,188,897,193,278,183,490,495);
         this.WORM_COORDS[2213] = new Array(1288,328,580,514,1186,445,712,342,273,203,378,261,1039,231,1166,636,429,497,311,435,361,202,189,611,1209,368,500,510,576,203,956,173,984,429,1107,339,120,201,590,279);
         this.WORM_COORDS[2214] = new Array(397,455,987,231,778,325,610,269,522,547,104,219,12,543,1212,369,270,214,599,493,945,172,318,437,1075,316,174,325,1155,325,478,474,45,264,249,604,71,562,1281,333);
         this.WORM_COORDS[2215] = new Array(1173,346,282,181,585,508,243,594,625,411,853,216,664,277,81,243,586,210,1119,329,764,296,228,211,1286,329,506,521,1126,584,140,188,298,576,1023,220,7,300,1062,327);
         this.WORM_COORDS[2216] = new Array(236,593,46,549,832,305,455,465,114,207,321,438,635,246,1280,333,1042,337,103,583,640,393,1125,325,926,209,405,464,1129,585,336,167,1204,457,747,285,562,529,550,187);
         this.WORM_COORDS[2217] = new Array(33,275,539,186,1256,352,297,187,190,212,895,192,895,380,382,265,1063,327,495,503,620,251,571,522,40,547,788,339,122,200,1022,221,421,493,760,288,314,555,118,425);
         this.WORM_COORDS[2218] = new Array(1209,368,706,345,402,460,45,264,1148,321,129,369,1285,330,244,217,675,274,799,346,576,519,1060,589,185,215,91,574,319,172,1214,474,1098,301,602,279,891,188,869,439);
         this.WORM_COORDS[2219] = new Array(826,310,1221,370,370,203,284,423,919,211,415,484,380,263,1166,636,498,507,1191,583,348,510,286,592,315,187,251,219,1077,315,20,542,549,538,95,578,1070,462,189,611);
         this.WORM_COORDS[2220] = new Array(1010,443,900,193,1154,439,218,603,1099,301,164,222,604,278,1235,366,1178,350,389,451,329,168,804,334,39,269,1211,465,853,475,279,182,1206,582,1039,231,692,287,593,498);
         this.WORM_COORDS[2221] = new Array(1154,324,1273,338,606,278,1174,638,41,266,435,491,326,441,161,220,820,316,679,272,922,210,272,606,852,216,706,345,506,521,1004,244,288,181,536,187,917,327,215,208);
         this.WORM_COORDS[2222] = new Array(284,423,808,325,438,487,1278,335,310,199,1016,228,1166,337,48,261,561,529,387,270,563,194,105,218,1145,437,142,371,1107,339,620,410,699,347,941,174,158,215,626,246);
         this.WORM_COORDS[2223] = new Array(907,198,374,257,298,188,296,429,726,323,425,498,792,342,1024,219,517,539,84,570,239,593,182,317,1079,313,334,371,1263,346,10,296,1201,454,484,484,640,250,907,351);
         this.WORM_COORDS[2224] = new Array(652,264,493,498,1104,340,879,191,1249,357,80,568,119,414,532,300,1069,593,1024,445,178,218,388,331,994,251,285,348,30,543,1166,337,346,166,434,492,378,438,1211,582);
         this.WORM_COORDS[2225] = new Array(482,480,75,564,393,276,1184,444,577,203,571,522,839,292,231,594,30,279,871,195,161,220,847,481,746,286,1270,340,1197,363,186,313,992,250,1124,326,943,172,615,256);
         this.WORM_COORDS[2226] = new Array(702,346,1157,633,1165,336,164,599,1041,235,782,331,531,552,1208,461,1096,301,474,468,349,370,1230,369,618,256,179,319,418,489,841,218,1038,592,69,248,568,198,187,214);
         this.WORM_COORDS[2227] = new Array(511,529,592,215,71,562,766,299,860,211,698,347,471,465,419,491,349,169,144,188,1134,320,587,505,384,266,108,466,256,221,1218,370,1019,335,1012,234,140,369,241,593);
         this.WORM_COORDS[2228] = new Array(1243,361,374,257,495,503,1158,328,72,247,577,519,1079,313,65,558,302,191,892,188,617,256,1043,239,676,273,367,379,1215,585,1173,442,948,172,117,429,12,543,249,219);
         this.WORM_COORDS[2229] = new Array(460,463,571,200,1222,370,993,250,927,304,1053,333,1106,339,256,613,684,272,546,541,187,214,828,308,928,195,612,259,1116,583,104,583,1071,461,1168,440,81,243,158,337);
         this.WORM_COORDS[2230] = new Array(807,330,214,603,599,279,916,330,22,339,425,498,1173,346,1145,627,296,429,173,221,541,544,206,283,477,473,755,284,1284,331,1063,590,1055,332,1227,369,872,194,701,347);
         this.WORM_COORDS[2231] = new Array(1107,339,334,371,587,211,201,614,1183,354,743,289,342,166,23,542,469,464,611,484,850,216,1025,218,401,459,277,602,378,261,97,579,280,182,971,190,24,284,1296,326);
         this.WORM_COORDS[2232] = new Array(230,595,1284,331,384,266,8,298,129,369,361,202,815,318,1139,319,982,213,634,246,1213,582,363,373,1194,449,1155,632,878,419,1035,215,1079,313,509,526,419,491,1210,368);
         this.WORM_COORDS[2233] = new Array(51,258,397,455,1088,618,92,575,848,216,1140,319,814,319,947,172,450,470,246,597,693,347,619,253,618,409,547,541,886,400,206,208,751,284,997,250,1271,340,330,442);
         this.WORM_COORDS[2234] = new Array(74,246,531,552,995,252,130,193,276,188,491,496,911,342,831,449,26,542,222,603,367,203,1263,346,439,485,333,371,1056,331,792,342,850,291,736,302,189,213,1133,320);
         this.WORM_COORDS[2235] = new Array(1110,582,741,293,552,536,274,195,1298,326,339,167,1067,323,567,198,213,208,118,203,1162,635,603,278,138,369,47,261,1148,321,899,193,876,423,988,237,481,479,415,484);
         this.WORM_COORDS[2236] = new Array(1047,450,260,221,524,549,825,311,208,607,1178,443,1046,336,1024,219,384,449,334,167,1017,608,739,296,129,369,579,205,1179,351,61,253,700,347,1022,511,874,191,1286,329);
         this.WORM_COORDS[2237] = new Array(1158,328,1118,583,124,198,535,549,852,476,298,188,1055,332,669,276,886,400,1264,345,22,286,790,341,695,347,423,496,481,479,376,319,750,284,864,199,194,211,604,408);
         this.WORM_COORDS[2238] = new Array(81,243,1228,369,220,603,57,554,878,419,405,464,772,312,564,528,1064,465,706,345,333,443,1145,319,1300,326,577,203,276,188,461,463,1194,581,903,361,386,269,849,216);
         this.WORM_COORDS[2239] = new Array(885,188,247,218,666,277,1129,323,1285,330,383,449,486,487,53,257,50,551,798,346,281,598,1190,359,307,195,196,613,965,177,588,212,759,287,168,223,427,499,1182,583);
         this.WORM_COORDS[2240] = new Array(379,438,1051,334,556,533,571,200,1041,235,264,221,769,305,325,169,6,300,1248,357,1197,363,659,267,1148,629,488,490,121,380,920,210,419,491,1298,326,603,408,862,294);
         this.WORM_COORDS[2241] = new Array(790,341,137,189,1028,215,640,250,45,264,525,550,344,166,411,474,477,473,971,190,1049,335,1102,540,582,208,631,397,858,465,1229,369,218,209,884,188,224,604,68,560);
         this.WORM_COORDS[2242] = new Array(94,234,925,308,87,573,505,519,318,550,663,277,383,265,1220,370,884,188,416,485,707,344,619,409,1007,240,292,183,1116,332,802,336,1050,334,32,276,1282,333,555,533);
         this.WORM_COORDS[2243] = new Array(862,209,1276,337,819,317,97,579,258,221,379,262,731,314,638,248,1154,631,1142,319,161,335,1023,220,907,351,38,547,420,492,932,184,1058,330,345,166,503,515,1026,445);
         this.WORM_COORDS[2244] = new Array(188,213,699,347,570,523,1121,327,1179,351,1190,447,213,603,741,293,443,480,1030,215,1165,636,85,571,626,246,184,314,63,252,315,187,803,334,506,521,1060,329,854,216);
         this.WORM_COORDS[2245] = new Array(1154,631,1003,245,74,563,757,285,914,212,1046,336,1281,333,1180,352,670,275,202,209,323,543,415,484,887,398,530,552,787,338,38,270,649,407,620,251,491,496,696,347);
         this.WORM_COORDS[2246] = new Array(505,519,429,497,1143,319,1047,245,1291,327,776,320,591,214,990,244,132,368,117,204,275,191,315,437,1063,590,1207,367,866,446,667,277,859,211,603,278,826,310,29,279);
         this.WORM_COORDS[2247] = new Array(1010,236,1160,331,117,204,483,482,1261,348,520,543,858,465,925,209,38,270,1113,583,242,216,1004,441,727,322,827,308,553,189,214,603,365,202,655,265,1171,637,421,493);
         this.WORM_COORDS[2248] = new Array(195,211,423,496,1199,364,27,542,486,487,1077,315,542,544,1268,343,1128,323,918,211,141,370,369,312,316,552,290,182,99,580,234,593,43,264,708,344,1195,581,1007,240);
         this.WORM_COORDS[2249] = new Array(1255,352,1011,235,291,426,1071,320,262,611,946,172,426,498,562,529,508,524,240,216,858,211,1186,584,765,297,1193,361,24,284,354,371,102,581,331,167,1067,463,876,423);
         this.WORM_COORDS[2250] = new Array(98,230,518,541,471,465,324,441,100,581,1105,340,750,284,416,485,1184,354,870,438,302,571,718,337,348,169,954,172,281,181,832,305,611,484,181,216,1283,331,875,191);
         this.WORM_COORDS[2251] = new Array(227,606,599,279,933,182,1153,631,291,182,487,489,344,166,557,532,88,239,750,284,1019,225,1187,356,1090,303,64,558,27,281,822,315,609,486,573,201,181,216,680,272);
         this.WORM_COORDS[2252] = new Array(182,607,758,286,340,167,1013,233,896,193,1050,477,600,279,460,463,1239,364,830,306,7,300,678,272,510,528,117,204,294,582,1187,445,865,449,1051,334,1144,319,715,340);
         this.WORM_COORDS[2253] = new Array(1090,303,867,196,991,436,277,185,688,273,808,325,1031,215,1093,618,1210,582,412,476,1166,636,189,213,369,203,467,463,187,311,536,187,1195,362,214,603,79,567,910,344);
         this.WORM_COORDS[2254] = new Array(1103,585,1193,361,1081,311,469,464,1260,350,754,284,99,580,511,529,818,317,151,342,161,220,997,250,396,455,571,200,610,484,108,214,313,436,1157,439,618,256,1187,585);
         this.WORM_COORDS[2255] = new Array(908,200,287,181,543,186,301,572,17,292,507,522,1180,352,1110,582,427,499,125,370,1300,326,1178,443,665,277,762,291,245,596,193,212,896,377,115,206,1189,601,365,202);
         this.WORM_COORDS[2256] = new Array(887,398,258,221,393,276,627,246,823,315,212,274,192,212,705,345,473,467,134,368,1007,240,1126,324,762,291,1278,335,886,188,593,498,1210,368,208,607,911,342,547,186);
         this.WORM_COORDS[2257] = new Array(569,524,36,546,114,569,199,210,249,604,467,463,857,212,533,190,367,203,1095,301,1210,368,114,207,798,346,923,209,603,278,284,181,119,414,996,251,749,284,402,460);
         this.WORM_COORDS[2258] = new Array(1116,332,500,510,1181,352,200,294,178,218,795,344,614,409,889,188,895,380,1209,462,872,433,653,264,36,272,237,214,1009,239,73,562,1172,638,362,202,1061,328,1106,585);
         this.WORM_COORDS[2259] = new Array(49,550,441,483,1081,311,1077,599,1017,228,808,325,1194,361,354,192,695,347,740,294,3,303,859,211,239,215,643,250,494,501,554,534,1148,629,296,429,1139,319,100,581);
         this.WORM_COORDS[2260] = new Array(803,334,37,546,209,208,1279,335,157,213,515,536,299,575,104,481,283,181,1136,319,435,491,726,323,221,603,103,220,1086,307,314,436,14,293,612,259,1000,248,905,356);
         this.WORM_COORDS[2261] = new Array(341,167,127,195,68,249,1210,463,1273,338,1028,215,528,552,419,491,266,220,1213,582,772,312,674,274,64,558,535,188,865,198,719,335,481,479,1117,583,595,496,904,358);
         this.WORM_COORDS[2262] = new Array(1103,585,969,190,96,232,1124,326,590,501,1228,369,320,170,403,461,257,221,180,318,688,273,1021,222,24,542,811,321,207,208,558,192,721,333,635,246,521,545,230,595);
         this.WORM_COORDS[2263] = new Array(271,212,332,371,914,212,1064,326,310,435,20,288,806,331,1141,319,888,396,420,492,560,530,185,313,550,187,1222,370,1287,329,733,309,971,190,296,579,508,524,651,264);
         this.WORM_COORDS[2264] = new Array(926,209,324,542,1189,358,621,250,203,209,538,187,1259,350,633,395,1025,512,1069,322,990,244,73,247,791,342,125,197,67,560,391,452,568,525,855,214,264,611,334,167);
         this.WORM_COORDS[2265] = new Array(1227,369,981,211,22,286,1105,340,1280,333,694,347,638,248,1158,633,1091,524,1049,452,818,317,260,221,400,459,497,506,1048,336,1177,349,139,188,234,593,908,348,384,266);
         this.WORM_COORDS[2266] = new Array(865,449,1137,319,1037,447,785,335,177,218,1239,364,74,246,446,475,1152,631,1176,442,285,181,984,429,1073,318,338,523,17,292,42,548,523,548,671,275,598,279,1020,335);
         this.WORM_COORDS[2267] = new Array(489,492,1003,245,1143,627,105,218,543,543,931,185,267,219,1149,321,1272,339,378,261,38,547,536,187,721,333,1088,304,114,569,1070,594,632,246,202,209,875,295,602,408);
         this.WORM_COORDS[2268] = new Array(527,551,1043,239,1051,334,332,443,308,197,1116,332,194,613,93,575,394,453,180,216,1271,340,44,264,909,204,296,579,1191,583,844,217,718,337,1049,586,542,186,1203,456);
         this.WORM_COORDS[2269] = new Array(615,256,434,492,1232,368,1187,445,998,249,50,551,21,287,130,575,728,320,216,208,608,408,163,334,286,181,510,528,206,615,1103,304,969,190,778,325,333,443,1072,452);
         this.WORM_COORDS[2270] = new Array(1060,469,321,170,1071,320,492,497,794,343,420,492,242,216,616,409,331,372,890,391,1183,354,190,611,928,195,1032,215,191,212,64,251,1125,584,1192,448,540,186,736,302);
         this.WORM_COORDS[2271] = new Array(603,278,1022,221,562,529,1050,334,773,314,264,221,833,304,196,210,1214,369,452,467,899,193,838,219,121,201,1135,320,394,277,562,194,68,560,173,327,1270,340,53,257);
         this.WORM_COORDS[2272] = new Array(1148,321,712,342,827,308,24,284,1188,590,1074,318,203,209,530,552,494,501,59,555,904,358,335,167,428,498,881,190,1298,326,575,202,141,370,1232,368,1012,607,965,177);
         this.WORM_COORDS[2273] = new Array(384,266,506,521,1243,361,115,439,18,290,696,347,317,550,408,470,982,213,1096,614,121,380,583,511,19,542,138,188,1123,327,1187,356,641,393,862,455,586,280,315,187);
         this.WORM_COORDS[2274] = new Array(325,441,1205,367,854,216,1050,334,1154,324,336,167,515,536,280,182,7,300,744,289,714,341,447,474,129,369,1272,339,830,306,1031,215,379,262,1186,584,143,188,918,211);
         this.WORM_COORDS[2275] = new Array(805,332,615,256,197,297,137,189,237,593,281,181,61,556,1202,365,1276,337,408,470,392,274,674,274,701,347,487,489,1150,630,217,209,64,251,545,186,122,575,292,427);
         this.WORM_COORDS[2276] = new Array(94,234,870,438,733,309,1067,323,677,272,39,269,410,473,303,192,1111,582,1131,321,515,536,473,467,825,311,1214,369,611,260,897,193,74,563,136,368,1010,236,1279,335);
         this.WORM_COORDS[2277] = new Array(153,199,710,343,509,526,237,593,337,167,426,498,42,548,1112,334,1300,326,1199,364,744,289,1160,635,1211,582,891,388,243,216,54,257,612,259,622,410,1089,618,1169,440);
         this.WORM_COORDS[2278] = new Array(188,310,77,565,764,296,300,574,103,220,1224,370,120,404,868,196,690,277,705,345,299,188,459,463,936,182,29,279,229,595,322,438,558,192,1213,582,162,221,1170,637);
         this.WORM_COORDS[2279] = new Array(37,271,1038,227,30,543,506,521,242,216,868,196,439,485,317,437,649,407,772,312,1276,337,163,222,1102,302,872,433,585,209,1175,347,1131,585,165,332,599,493,348,169);
         this.WORM_COORDS[2280] = new Array(193,212,502,513,1051,334,1117,583,613,258,972,190,578,204,212,603,82,243,401,459,978,420,1142,319,740,294,704,345,29,279,464,463,200,294,1248,357,65,558,682,272);
         this.WORM_COORDS[2281] = new Array(1222,370,319,549,65,250,1033,599,882,190,772,312,977,193,514,534,265,221,140,369,74,563,1039,231,602,279,1287,329,443,480,1103,304,556,190,718,337,596,495,204,615);
         this.WORM_COORDS[2282] = new Array(1190,359,830,447,1300,326,1092,302,408,470,1038,227,298,188,29,279,640,250,79,567,542,186,356,194,478,474,837,221,1166,636,374,257,538,283,783,333,214,603,16,542);
         this.WORM_COORDS[2283] = new Array(1102,302,466,463,107,584,607,408,1289,327,1152,323,902,364,1217,370,888,188,764,296,258,613,385,450,208,208,272,207,1050,477,591,214,863,453,144,371,118,425,502,513);
         this.WORM_COORDS[2284] = new Array(470,465,519,542,1125,584,1296,326,1115,332,321,438,792,342,866,198,1195,362,144,371,1008,239,402,460,1060,329,718,337,185,608,69,248,935,182,322,169,293,583,252,219);
         this.WORM_COORDS[2285] = new Array(538,187,1288,328,503,515,198,210,49,550,447,474,688,273,1047,587,566,526,1039,231,1154,324,349,169,632,246,334,530,42,265,175,324,1089,304,1222,370,208,607,896,193);
         this.WORM_COORDS[2286] = new Array(997,439,708,344,914,335,891,188,548,186,998,249,395,454,656,265,96,232,889,393,217,209,1281,333,21,542,307,195,777,322,1168,339,503,515,1077,599,1067,463,161,220);
         this.WORM_COORDS[2287] = new Array(1212,468,759,287,200,614,32,276,529,552,1149,321,273,203,412,476,1172,638,1252,354,886,188,131,368,92,236,533,295,1186,584,1016,443,462,463,1089,304,603,278,1036,216);
         this.WORM_COORDS[2288] = new Array(1252,354,328,441,1064,326,198,475,1138,602,488,490,424,497,114,207,58,254,291,586,869,196,976,192,856,293,1121,327,173,221,782,331,23,542,138,369,547,541,1024,513);
         this.WORM_COORDS[2289] = new Array(709,344,1019,225,1205,367,117,204,462,463,13,542,250,219,367,203,1120,328,1063,327,307,195,132,368,190,212,866,198,578,516,587,211,50,259,252,614,788,339,930,186);
         this.WORM_COORDS[2290] = new Array(518,541,1008,239,407,467,382,265,1139,319,606,278,648,411,1092,524,35,546,1086,307,464,463,853,216,1254,353,549,186,60,253,1140,625,277,185,155,206,679,272,201,614);
         this.WORM_COORDS[2291] = new Array(714,341,745,287,332,167,843,217,1287,329,498,507,1016,228,1145,627,404,463,1218,370,1092,302,225,210,1042,337,556,533,1194,449,390,272,955,173,594,217,681,272,151,194);
         this.WORM_COORDS[2292] = new Array(549,186,216,208,1073,318,811,321,610,269,598,493,1198,363,873,430,288,590,368,380,490,495,403,461,530,552,1050,477,67,249,1136,597,923,209,49,550,213,271,107,584);
         this.WORM_COORDS[2293] = new Array(58,254,1059,330,208,208,497,506,586,210,589,502,404,463,985,225,362,202,1246,360,845,217,177,322,375,258,950,172,608,278,290,588,134,189,202,614,702,346,355,372);
         this.WORM_COORDS[2294] = new Array(542,544,79,244,1054,333,165,223,1228,369,425,498,647,252,713,342,742,291,594,217,12,295,489,492,1161,332,941,174,802,336,280,182,87,573,1100,607,1106,339,1006,242);
         this.WORM_COORDS[2295] = new Array(528,552,12,295,416,485,301,572,1296,326,321,170,472,466,1016,228,299,430,237,214,774,316,1121,327,1190,584,1043,449,1176,348,1243,361,670,275,884,188,218,603,615,409);
         this.WORM_COORDS[2296] = new Array(575,519,712,342,423,496,1226,369,319,172,829,307,1014,231,1071,320,64,558,121,575,537,187,1154,324,1054,475,76,246,476,471,1291,327,229,595,777,322,515,536,301,572);
         this.WORM_COORDS[2297] = new Array(520,543,73,562,42,265,585,209,488,490,278,183,634,394,154,203,1197,363,1262,347,647,252,585,508,909,204,317,550,1055,332,1117,331,1004,244,1118,583,1059,469,98,230);
         this.WORM_COORDS[2298] = new Array(564,195,410,473,1007,240,1137,319,153,199,715,340,601,279,297,187,529,552,674,274,217,603,460,463,1080,312,41,266,17,542,793,343,1222,370,912,212,753,284,1188,590);
         this.WORM_COORDS[2299] = new Array(892,188,1293,326,586,506,652,264,871,435,423,496,210,603,256,221,636,394,571,200,1151,322,369,203,1058,588,1204,582,763,294,1096,301,1152,438,490,495,1242,362,383,265);
         this.WORM_COORDS[2300] = new Array(612,270,259,362,1242,509,665,250,1182,487,746,246,1175,602,501,172,220,172,782,406,72,529,1091,207,919,245,548,295,359,351,316,156,855,377,1116,307,13,502,91,327);
         this.WORM_COORDS[2301] = new Array(1287,487,804,223,1164,447,5,636,988,175,563,254,722,224,1100,209,1018,232,814,371,409,231,629,240,1085,321,1229,482,51,328,205,185,273,138,1095,581,886,268,107,294);
         this.WORM_COORDS[2302] = new Array(632,239,1093,207,177,170,1179,482,275,302,762,259,557,254,1082,326,947,159,481,169,398,239,1181,607,1288,488,360,352,352,163,1007,229,937,240,1153,372,102,295,787,398);
         this.WORM_COORDS[2303] = new Array(1239,501,117,220,975,166,850,376,1026,234,323,157,181,172,893,257,538,286,731,226,1300,504,446,437,609,243,423,227,38,340,1169,463,865,317,258,362,1104,304,109,293);
         this.WORM_COORDS[2304] = new Array(839,382,1135,325,368,358,1185,492,897,253,1284,485,357,163,211,182,813,238,494,171,229,333,1,509,633,239,738,240,96,328,64,260,392,451,291,314,441,216,287,151);
         this.WORM_COORDS[2305] = new Array(408,232,229,333,382,373,1291,501,894,257,1056,218,769,234,4,506,695,227,1155,379,521,176,199,186,146,166,835,382,94,327,1162,436,111,230,1131,572,95,483,1120,309);
         this.WORM_COORDS[2306] = new Array(1002,229,12,502,1195,509,129,207,335,162,537,286,1143,341,480,328,297,318,246,139,76,505,393,452,699,227,375,364,1063,315,916,246,968,157,179,171,428,227,839,382);
         this.WORM_COORDS[2307] = new Array(162,166,974,163,709,227,540,288,64,260,20,503,843,382,1108,304,1272,481,1204,489,336,162,587,237,761,257,420,227,274,138,82,495,91,327,1013,231,509,173,790,394);
         this.WORM_COORDS[2308] = new Array(311,324,166,167,371,361,437,222,697,227,31,364,1279,485,24,502,932,242,810,233,840,382,111,292,598,239,1068,210,351,163,496,172,1117,308,1216,483,82,495,946,159);
         this.WORM_COORDS[2309] = new Array(1133,323,1230,482,254,358,1291,501,324,158,866,314,1045,226,783,208,611,316,462,195,543,291,1178,481,649,242,82,495,385,379,258,134,715,226,852,376,72,260,207,184);
         this.WORM_COORDS[2310] = new Array(498,240,426,227,902,250,728,224,380,370,1094,208,822,376,1253,492,1010,229,68,260,129,207,955,166,516,172,1192,505,664,250,425,302,35,347,565,255,808,230,440,448);
         this.WORM_COORDS[2311] = new Array(739,240,680,308,582,237,339,163,254,136,899,251,1188,498,948,159,802,386,1283,485,1121,310,666,250,550,296,857,335,85,289,439,220,0,511,1074,208,371,361,203,186);
         this.WORM_COORDS[2312] = new Array(283,143,875,293,1272,481,678,308,1132,321,1205,486,1062,214,718,224,652,243,507,173,566,256,153,166,1070,338,216,176,19,503,981,177,822,376,83,289,446,207,402,345);
         this.WORM_COORDS[2313] = new Array(46,331,1086,207,1271,481,779,212,591,239,268,302,1142,338,840,382,706,227,61,263,1008,229,478,181,1184,610,128,208,343,342,416,228,287,151,976,170,1197,512,1162,436);
         this.WORM_COORDS[2314] = new Array(386,381,1154,373,89,293,1204,489,601,239,1088,207,154,166,242,347,1266,481,4,506,117,220,999,229,35,347,1127,315,494,171,847,376,748,250,415,229,331,160,238,144);
         this.WORM_COORDS[2315] = new Array(366,163,286,150,616,258,297,318,1243,511,413,230,1092,207,14,502,513,172,90,293,695,227,1300,504,1178,481,1138,330,380,370,1001,229,559,254,960,158,197,185,820,371);
         this.WORM_COORDS[2316] = new Array(341,163,797,387,4,506,254,136,545,293,618,254,1213,484,1286,486,141,168,90,293,943,161,515,172,253,358,891,260,442,445,310,324,385,379,790,208,679,308,1095,581);
         this.WORM_COORDS[2317] = new Array(799,217,668,251,28,385,878,405,106,294,464,192,1132,321,1242,509,128,208,279,305,306,154,740,240,1072,209,187,177,1292,501,1171,600,598,239,903,249,13,502,865,317);
         this.WORM_COORDS[2318] = new Array(423,227,1049,223,816,371,1243,511,1174,473,631,239,22,502,430,396,1125,313,758,255,896,253,143,168,484,169,985,175,54,273,1201,627,325,158,611,316,687,231,371,361);
         this.WORM_COORDS[2319] = new Array(477,182,1202,500,311,155,592,240,873,297,1274,481,1090,207,1122,311,7,505,732,236,47,330,278,304,331,335,825,380,548,295,189,179,28,385,138,170,1199,624,449,430);
         this.WORM_COORDS[2320] = new Array(631,239,432,396,1243,511,802,222,491,169,850,376,138,287,224,168,902,250,1056,218,73,529,992,175,1151,364,1176,476,365,355,576,242,46,331,697,227,413,230,134,176);
         this.WORM_COORDS[2321] = new Array(1171,467,674,257,1234,482,1101,210,13,502,5,636,119,218,43,333,420,227,971,159,244,349,105,294,246,139,1158,389,304,321,795,387,540,288,586,237,1029,233,593,316);
         this.WORM_COORDS[2322] = new Array(1164,447,479,171,1158,389,845,382,955,166,1050,222,54,273,404,397,5,505,416,228,1205,629,790,208,682,308,1247,506,732,236,91,487,211,182,589,314,1188,498,884,272);
         this.WORM_COORDS[2323] = new Array(528,276,997,190,1262,483,209,182,25,502,136,172,714,226,892,258,294,156,587,237,1208,484,409,231,62,261,38,340,770,232,1099,306,376,365,321,329,358,163,6,635);
         this.WORM_COORDS[2324] = new Array(11,502,1063,213,919,245,774,225,382,373,522,176,597,239,1170,465,959,159,683,308,1213,639,1279,485,825,380,1114,306,440,448,435,227,208,183,280,307,284,143,36,344);
         this.WORM_COORDS[2325] = new Array(1237,484,331,335,733,236,783,208,893,257,401,236,818,371,685,307,1296,502,110,233,537,286,953,160,1148,353,90,293,25,502,674,257,255,135,168,167,471,334,620,250);
         this.WORM_COORDS[2326] = new Array(840,382,388,385,30,372,1089,207,786,208,1115,306,868,309,723,224,1208,484,623,245,13,502,759,413,117,220,324,158,526,181,272,138,1155,379,91,327,1263,482,7,634);
         this.WORM_COORDS[2327] = new Array(855,377,296,317,565,255,1106,304,660,247,770,232,325,158,1193,508,1265,481,202,186,980,178,874,295,3,506,1083,207,921,245,477,182,90,293,1167,457,1196,621,1031,233);
         this.WORM_COORDS[2328] = new Array(282,308,742,242,158,166,1251,495,1149,358,990,175,901,250,625,243,614,314,541,289,434,298,1014,231,1170,465,324,158,1090,207,1079,329,29,379,490,169,96,328,853,376);
         this.WORM_COORDS[2329] = new Array(90,293,301,320,1120,309,14,502,582,237,1292,501,1080,207,946,237,806,388,235,155,390,391,119,460,341,163,1223,483,728,224,122,215,484,169,1153,591,1156,382,1028,234);
         this.WORM_COORDS[2330] = new Array(292,156,864,318,1286,486,353,347,1148,589,814,242,609,243,170,167,455,198,242,141,816,371,1233,482,1045,226,1182,487,905,247,534,282,730,225,92,327,1109,304,344,163);
         this.WORM_COORDS[2331] = new Array(1295,501,812,393,612,270,392,451,1125,313,899,251,954,165,495,239,1218,483,148,166,1164,596,706,227,258,362,336,162,1018,232,1100,209,776,219,408,232,695,304,468,188);
         this.WORM_COORDS[2332] = new Array(542,290,1233,482,856,338,690,230,897,413,73,529,1177,479,756,254,952,159,78,263,465,335,47,330,941,239,607,241,294,317,10,502,1133,323,140,168,1002,229,371,361);
         this.WORM_COORDS[2333] = new Array(1256,492,1191,617,1040,229,591,239,512,172,93,485,827,382,55,269,343,342,1108,304,611,316,19,503,1170,465,113,227,184,176,272,302,397,398,864,318,706,227,966,157);
         this.WORM_COORDS[2334] = new Array(596,242,1243,511,299,320,695,227,1027,234,1293,501,304,154,1146,348,253,136,899,251,845,382,758,255,85,289,434,227,138,170,188,178,538,286,1079,207,1190,501,488,169);
         this.WORM_COORDS[2335] = new Array(833,382,1093,207,1199,514,576,242,645,240,419,227,868,309,478,181,121,290,259,133,1,509,1157,386,944,239,351,163,32,360,401,346,1291,501,66,260,1198,623,262,363);
         this.WORM_COORDS[2336] = new Array(1013,231,1082,207,1255,492,4,506,385,379,40,337,246,139,887,266,1182,487,1159,397,881,407,464,192,393,452,222,326,827,382,289,313,580,237,731,226,1128,317,546,293);
         this.WORM_COORDS[2337] = new Array(253,358,1038,230,1270,481,186,176,840,382,1113,306,637,239,100,296,1168,598,1,509,880,282,347,345,1192,505,1152,368,735,237,567,256,812,235,273,138,1164,447,120,217);
         this.WORM_COORDS[2338] = new Array(1180,483,1240,503,919,245,6,635,1035,231,790,208,240,346,1099,209,185,176,680,308,10,502,778,410,401,236,57,265,133,199,989,175,461,196,331,160,1108,304,723,224);
         this.WORM_COORDS[2339] = new Array(813,238,119,218,3,638,781,407,108,471,418,227,62,261,18,560,1245,516,326,331,170,167,358,163,1040,229,837,382,703,228,933,242,1187,495,760,256,253,136,579,237);
         this.WORM_COORDS[2340] = new Array(67,526,721,224,356,350,329,160,834,382,421,227,151,166,931,243,111,230,633,239,559,254,866,314,1196,510,0,511,1092,207,770,414,1278,484,269,132,797,215,471,334);
         this.WORM_COORDS[2341] = new Array(815,371,30,372,538,286,86,289,1149,358,934,241,1113,306,307,323,125,211,1075,208,474,183,950,159,628,240,1185,492,29,502,206,185,423,227,1245,516,1120,571,705,228);
         this.WORM_COORDS[2342] = new Array(1259,487,849,376,1197,622,447,204,634,239,1191,503,909,247,1114,306,698,227,379,370,1018,232,408,318,312,155,980,178,10,502,812,235,548,295,94,327,1068,210,756,411);
         this.WORM_COORDS[2343] = new Array(220,324,1210,484,756,411,510,173,735,237,1274,481,15,502,909,247,439,449,961,157,428,227,40,337,398,397,1091,313,1045,226,400,347,216,176,812,393,624,243,551,281);
         this.WORM_COORDS[2344] = new Array(772,230,14,502,1203,498,692,229,1160,402,834,382,478,329,1266,481,564,254,29,379,1040,229,260,363,98,299,1212,637,952,159,299,154,524,177,1112,306,131,204,864,318);
         this.WORM_COORDS[2345] = new Array(68,260,1190,616,868,309,1234,482,279,138,556,255,1132,321,905,247,723,224,475,182,844,383,1046,225,1284,485,133,199,331,335,189,179,614,263,610,317,20,558,17,503);
         this.WORM_COORDS[2346] = new Array(733,236,1021,233,19,503,1221,483,399,238,40,337,565,255,104,295,619,252,384,377,163,166,1300,504,816,371,1139,332,261,133,790,208,1092,207,71,527,984,175,27,393);
         this.WORM_COORDS[2347] = new Array(20,503,1187,613,640,240,305,154,921,245,1270,481,578,238,298,319,225,167,33,354,825,380,506,173,115,222,441,216,700,228,156,166,463,336,89,293,1059,216,546,293);
         this.WORM_COORDS[2348] = new Array(457,316,1261,484,372,361,364,163,26,502,1049,223,36,344,1126,314,296,155,412,230,1165,453,752,252,1193,508,581,237,1096,581,870,304,781,407,959,159,809,232,685,234);
         this.WORM_COORDS[2349] = new Array(3,638,303,154,637,239,777,217,179,171,580,237,697,227,439,220,1212,484,978,183,306,322,1106,304,9,503,382,373,1155,379,1207,632,525,178,237,145,61,263,1284,485);
         this.WORM_COORDS[2350] = new Array(799,217,1186,612,1225,483,744,244,107,294,879,284,625,243,935,241,356,163,306,154,302,320,41,499,416,228,1284,485,1122,311,1009,229,569,257,857,335,410,417,43,333);
         this.WORM_COORDS[2351] = new Array(685,234,480,170,987,175,55,269,276,138,1108,304,132,201,1149,358,78,501,876,290,1295,501,346,344,400,237,1238,485,1016,232,1067,211,1165,453,608,242,714,296,842,382);
         this.WORM_COORDS[2352] = new Array(1283,485,1004,229,710,227,204,186,1104,304,404,234,500,323,813,373,111,230,262,363,14,502,1188,498,1093,207,941,239,764,244,653,243,291,156,105,294,500,172,558,254);
         this.WORM_COORDS[2353] = new Array(1050,222,1125,313,683,308,10,502,382,373,500,240,1272,481,576,242,133,199,641,240,277,304,829,382,977,171,903,249,222,169,345,163,485,169,739,240,70,260,400,237);
         this.WORM_COORDS[2354] = new Array(703,228,1000,229,896,253,1067,211,138,170,567,256,948,159,825,380,308,154,129,288,1278,484,807,228,47,330,1121,310,123,456,1185,611,420,227,626,241,358,163,317,327);
         this.WORM_COORDS[2355] = new Array(1299,504,800,219,705,228,867,311,1164,596,410,231,1244,516,366,163,1098,208,473,184,429,396,34,499,175,169,906,247,29,379,547,294,1125,313,1157,386,65,260,653,243);
         this.WORM_COORDS[2356] = new Array(738,240,616,258,1036,231,539,287,86,289,31,501,1131,320,392,451,411,317,324,158,824,380,410,231,957,162,1173,471,1276,483,443,443,524,343,1214,639,1226,483,37,342);
         this.WORM_COORDS[2357] = new Array(1165,453,852,376,1138,330,8,504,304,321,862,323,93,327,1287,487,725,224,276,138,79,265,796,213,43,333,1216,483,664,250,379,370,990,175,403,235,347,163,927,243);
         this.WORM_COORDS[2358] = new Array(91,327,144,167,1106,304,42,499,1172,469,120,460,423,227,1271,481,805,225,660,247,525,178,214,178,744,244,413,317,679,308,931,243,992,175,860,327,1034,232,0,640);
         this.WORM_COORDS[2359] = new Array(1175,475,216,176,1299,504,857,335,74,260,798,216,730,225,880,282,412,397,473,332,626,241,1076,208,3,506,512,250,325,158,1237,484,437,222,812,393,49,330,156,166);
         this.WORM_COORDS[2360] = new Array(37,342,982,177,637,239,97,329,1143,341,745,245,471,185,372,361,16,503,1076,208,689,306,239,345,902,250,256,134,1208,484,442,445,1274,481,798,216,1152,591,354,163);
         this.WORM_COORDS[2361] = new Array(451,201,1135,325,1280,485,1227,483,1080,207,1026,234,2,507,182,173,894,257,864,318,389,388,976,170,107,294,1175,475,615,260,257,360,550,296,784,208,709,227,1080,328);
         this.WORM_COORDS[2362] = new Array(74,260,729,224,1194,508,607,241,396,242,346,344,1160,402,195,184,1261,484,958,160,855,377,35,347,223,328,670,311,804,223,870,304,942,239,459,196,1122,311,611,316);
         this.WORM_COORDS[2363] = new Array(320,157,1081,207,444,213,702,228,503,172,235,155,260,363,368,358,1258,488,957,233,822,376,560,254,162,166,762,259,710,298,625,243,1186,494,85,289,1164,596,1106,304);
         this.WORM_COORDS[2364] = new Array(332,161,1058,217,13,502,383,375,1228,482,749,250,292,315,1283,485,653,243,903,249,572,257,78,263,15,565,244,140,1136,326,133,342,133,199,829,382,991,175,1213,639);
         this.WORM_COORDS[2365] = new Array(12,502,8,590,946,159,77,262,132,201,1280,485,264,132,514,172,884,408,642,240,760,256,1147,350,32,360,708,227,1178,481,256,360,775,411,881,280,397,240,932,242);
         this.WORM_COORDS[2366] = new Array(803,223,1240,503,310,154,373,362,691,305,25,555,843,382,1188,498,909,247,154,166,707,227,972,159,209,182,638,239,436,227,7,505,252,357,271,302,43,333,120,217);
         this.WORM_COORDS[2367] = new Array(1203,498,871,302,1095,208,1267,481,820,371,272,138,958,160,27,393,163,166,78,263,391,450,1141,335,744,244,328,160,404,234,10,502,637,239,1069,336,213,178,1202,627);
         this.WORM_COORDS[2368] = new Array(37,342,1187,495,1239,501,880,282,953,160,1087,318,344,163,20,503,761,257,199,186,405,321,86,289,812,235,337,339,120,460,1163,443,697,303,581,237,130,207,387,382);
         this.WORM_COORDS[2369] = new Array(1104,304,1292,501,233,339,724,224,581,237,371,361,1150,360,321,157,14,502,801,386,1012,230,905,247,659,247,48,330,805,225,504,241,414,230,267,132,1092,207,430,298);
         this.WORM_COORDS[2370] = new Array(1031,233,784,208,58,265,1125,313,1235,484,855,377,537,286,124,212,1178,481,364,163,18,503,696,227,47,330,952,159,1124,571,388,385,476,182,303,154,1155,379,876,290);
         this.WORM_COORDS[2371] = new Array(220,172,5,505,751,251,1030,233,670,253,1242,509,367,164,45,332,462,195,333,336,899,251,1295,501,1189,615,1189,499,567,256,68,260,277,304,620,250,608,317,274,138);
         this.WORM_COORDS[2372] = new Array(340,163,877,288,1204,489,514,172,4,506,411,230,537,286,245,140,96,328,424,302,1097,208,746,246,1077,333,690,230,1289,489,185,176,1158,389,798,387,814,242,336,338);
         this.WORM_COORDS[2373] = new Array(295,317,1281,485,496,172,348,346,752,408,8,504,877,288,668,251,341,163,742,242,1172,469,30,372,234,340,806,226,1136,565,254,136,1089,207,1159,397,1214,639,424,227);
         this.WORM_COORDS[2374] = new Array(388,385,1046,225,758,255,150,166,335,337,1197,622,20,503,1251,495,37,342,792,390,79,265,1132,321,1178,481,669,252,455,198,608,242,551,281,260,363,360,163,1103,213);
         this.WORM_COORDS[2375] = new Array(838,382,1207,485,802,222,20,503,682,308,430,227,1112,306,285,149,574,246,1287,487,971,159,1070,210,347,163,40,337,737,239,321,329,392,451,939,240,54,273,265,305);
         this.WORM_COORDS[2376] = new Array(1207,485,602,239,800,219,100,296,315,156,42,334,1145,345,177,170,838,382,1027,234,303,321,691,305,608,317,1149,590,747,249,898,252,408,405,427,227,1077,208,1274,481);
         this.WORM_COORDS[2377] = new Array(1107,304,765,242,1071,209,856,338,223,169,376,365,975,166,320,157,296,317,586,237,1020,233,487,169,130,207,1218,483,1290,501,653,243,543,291,906,247,24,502,432,227);
         this.WORM_COORDS[2378] = new Array(324,330,466,189,922,245,3,506,612,270,44,332,1252,493,217,176,966,157,813,373,1077,208,68,260,388,385,354,163,532,282,1162,436,1128,317,409,231,1184,490,1121,571);
         this.WORM_COORDS[2379] = new Array(707,227,299,154,380,370,1008,229,1251,495,220,172,793,389,561,254,144,167,620,250,492,169,889,263,1181,485,1081,207,797,215,847,376,980,178,393,452,1159,397,1134,324);
         this.WORM_COORDS[2380] = new Array(390,448,11,502,804,386,31,364,906,247,965,157,505,173,1240,503,343,342,208,183,349,163,628,240,560,254,1143,341,687,231,860,327,1160,594,99,298,415,317,751,251);
         this.WORM_COORDS[2381] = new Array(398,239,330,160,381,372,1256,492,680,308,821,373,1001,229,882,277,565,255,1090,207,111,468,1126,571,451,201,1133,323,981,177,782,208,100,296,1193,508,693,228,216,176);
         this.WORM_COORDS[2382] = new Array(385,379,1298,502,685,234,338,162,1217,483,546,293,829,382,1074,208,401,236,392,451,14,502,493,170,884,272,198,185,270,134,116,221,91,327,255,359,278,304,736,238);
         this.WORM_COORDS[2383] = new Array(1250,496,812,235,632,239,839,382,1070,210,994,177,874,295,235,155,587,314,359,163,39,339,708,227,1175,602,1150,360,101,296,1020,233,157,166,1162,436,372,361,526,181);
         this.WORM_COORDS[2384] = new Array(983,176,1259,487,358,163,283,143,38,340,856,338,113,227,1114,306,780,210,14,502,448,204,908,247,394,453,179,171,102,295,1103,213,563,254,310,324,630,239,1200,503);
         this.WORM_COORDS[2385] = new Array(1219,483,897,253,323,157,381,372,1168,461,42,334,1115,572,136,172,731,226,496,172,803,223,963,157,27,393,836,382,329,334,1006,229,418,227,1290,501,210,182,1084,207);
         this.WORM_COORDS[2386] = new Array(517,173,803,223,1254,492,349,163,17,503,1122,571,1035,231,208,183,703,301,99,298,722,224,121,216,1118,308,984,175,42,334,377,366,615,260,1095,208,838,382,545,293);
         this.WORM_COORDS[2387] = new Array(1080,328,1217,483,20,503,327,159,43,333,595,245,255,135,63,260,513,172,305,322,798,387,508,326,198,185,1166,456,810,233,1097,208,1140,334,450,426,411,230,706,300);
         this.WORM_COORDS[2388] = new Array(1282,485,834,382,1225,483,578,238,810,233,228,160,4,637,883,274,380,370,352,163,499,172,740,240,1025,234,259,362,1168,461,116,463,1080,328,4,506,1076,208,933,242);
         this.WORM_COORDS[2389] = new Array(1094,208,824,380,1175,475,760,256,1282,485,317,327,1232,482,614,263,20,503,1145,345,110,233,814,242,402,235,914,246,707,227,90,293,464,192,159,166,449,430,533,282);
         this.WORM_COORDS[2390] = new Array(274,138,564,254,1164,447,771,231,303,321,407,319,369,165,846,376,505,173,1012,230,1156,592,1288,488,131,341,1104,304,15,502,122,215,717,226,41,335,1157,386,647,241);
         this.WORM_COORDS[2391] = new Array(981,177,673,256,1284,485,2,507,777,217,116,221,1216,483,1081,327,880,282,221,170,283,143,444,213,1029,233,367,357,818,371,607,241,547,294,1093,207,1147,350,475,331);
         this.WORM_COORDS[2392] = new Array(1236,484,577,239,94,327,746,246,880,282,370,360,318,328,815,371,1061,215,113,227,184,176,802,222,976,170,44,332,403,235,506,243,498,172,1180,606,939,240,18,503);
         this.WORM_COORDS[2393] = new Array(1071,209,368,164,1123,312,570,267,1273,481,4,637,787,208,105,294,950,159,329,334,642,240,1171,600,392,451,838,382,230,334,449,430,246,139,27,393,883,274,1011,230);
         this.WORM_COORDS[2394] = new Array(1099,209,88,291,277,138,403,344,994,177,942,162,888,265,9,582,818,371,265,305,1195,509,620,250,1282,485,130,207,326,331,1108,304,417,228,714,226,1015,231,482,169);
         this.WORM_COORDS[2395] = new Array(323,157,1069,210,683,308,587,237,1113,306,382,373,32,360,1291,501,1171,467,705,228,540,288,94,327,834,382,864,318,329,334,430,227,984,175,235,155,508,173,651,243);
         this.WORM_COORDS[2396] = new Array(853,376,1227,483,583,237,97,329,1099,209,990,175,20,503,790,208,193,182,413,230,70,260,382,373,889,263,361,163,309,324,40,337,511,172,124,212,1290,501,1039,229);
         this.WORM_COORDS[2397] = new Array(1122,311,1205,486,250,356,24,502,282,138,1095,208,712,227,880,282,387,382,560,254,172,168,651,243,499,172,1294,501,782,208,438,450,104,295,122,215,331,335,815,371);
         this.WORM_COORDS[2398] = new Array(970,157,760,256,821,373,9,503,394,357,919,245,586,237,1152,368,1201,503,343,342,96,328,44,332,1006,229,1103,213,518,174,765,414,399,238,518,260,367,164,70,260);
         this.WORM_COORDS[2399] = new Array(1217,483,899,251,681,308,7,505,287,312,867,311,201,187,540,288,785,208,608,242,401,236,1147,350,1288,488,56,268,1037,230,320,157,117,220,393,452,711,227,466,189);
         this.WORM_COORDS[2400] = new Array(831,221,1113,375,1035,298,255,425,463,364,170,285,253,203,122,421,928,365,42,497,914,185,1198,446,523,359,652,353,999,225,754,300,225,554,808,350,191,214,271,286);
         this.WORM_COORDS[2401] = new Array(459,360,293,302,942,193,27,557,1231,389,866,194,530,355,1157,371,653,353,148,363,1037,298,106,479,672,290,679,453,359,311,186,214,179,277,19,474,222,554,1286,443);
         this.WORM_COORDS[2402] = new Array(293,302,32,485,204,601,647,354,1224,381,436,329,173,283,1267,439,566,339,74,551,588,417,218,371,1174,422,1105,381,18,567,374,306,1067,314,153,370,1294,550,869,192);
         this.WORM_COORDS[2403] = new Array(161,391,422,335,260,588,677,456,1063,304,817,229,608,376,234,266,1089,392,1257,437,897,184,493,390,1152,363,1232,383,751,294,688,270,100,563,1010,232,265,200,2,577);
         this.WORM_COORDS[2404] = new Array(450,355,824,226,23,477,636,472,263,618,1109,377,616,369,277,298,737,287,1193,444,791,286,687,270,1222,380,335,323,1019,345,1164,394,918,366,1271,439,910,185,530,355);
         this.WORM_COORDS[2405] = new Array(951,393,1116,372,1193,444,688,270,1245,437,458,359,91,559,3,509,1020,338,282,303,845,212,129,395,526,357,345,319,1232,383,833,311,1007,229,1289,540,1045,422,238,553);
         this.WORM_COORDS[2406] = new Array(551,344,1274,440,109,466,677,274,999,225,1166,401,586,408,69,547,1240,383,647,354,334,323,267,203,167,590,872,363,228,275,803,236,139,364,410,333,1031,299,485,396);
         this.WORM_COORDS[2407] = new Array(497,387,422,335,652,353,343,319,572,339,26,479,1122,368,1218,532,600,440,154,373,790,286,968,211,90,558,205,229,119,431,1025,303,720,319,1236,383,1271,439,905,185);
         this.WORM_COORDS[2408] = new Array(1300,566,701,511,542,348,690,269,1273,440,1050,298,84,556,163,395,1193,444,418,335,1128,365,282,474,776,438,885,186,598,436,218,270,816,229,608,376,163,589,1225,381);
         this.WORM_COORDS[2409] = new Array(514,366,1254,436,378,306,699,510,746,288,619,368,260,200,845,212,267,551,1142,361,1213,381,430,329,88,558,121,424,106,479,827,352,977,220,1292,545,1046,298,38,493);
         this.WORM_COORDS[2410] = new Array(933,367,745,287,1214,381,178,278,684,271,1187,441,232,269,642,356,72,549,145,363,839,308,30,483,1300,566,586,408,847,209,270,547,1030,299,113,453,1157,371,366,308);
         this.WORM_COORDS[2411] = new Array(489,394,1178,429,199,367,392,327,19,474,229,273,1257,437,603,443,721,316,1092,390,170,285,943,396,122,421,855,293,787,286,316,285,544,347,96,561,1235,383,201,223);
         this.WORM_COORDS[2412] = new Array(1131,363,804,235,145,363,232,269,260,200,1210,381,1270,525,63,538,872,190,1037,298,449,355,873,362,195,216,20,474,114,569,323,280,1201,447,645,355,948,197,105,484);
         this.WORM_COORDS[2413] = new Array(607,449,385,309,1130,363,71,548,180,594,975,218,1055,299,819,351,17,474,1047,422,131,386,248,208,271,286,1198,446,492,391,1296,556,764,323,117,438,705,268,632,361);
         this.WORM_COORDS[2414] = new Array(283,304,578,340,3,509,1280,441,405,325,250,205,117,438,727,303,2,577,1213,381,720,489,915,366,504,377,273,543,803,288,809,233,206,602,1141,361,1011,235,950,198);
         this.WORM_COORDS[2415] = new Array(775,286,965,208,1158,374,126,405,721,316,324,280,374,306,1052,299,42,497,232,269,1236,383,1246,437,857,201,663,336,81,554,223,608,1291,542,426,335,839,308,478,388);
         this.WORM_COORDS[2416] = new Array(1197,446,163,395,474,381,750,293,420,335,692,269,20,474,172,283,590,423,611,372,71,548,1274,440,529,355,819,228,240,430,1068,318,995,224,246,573,884,186,689,449);
         this.WORM_COORDS[2417] = new Array(58,525,826,224,1044,298,1290,541,248,428,681,272,285,305,263,200,146,363,615,369,1133,362,225,554,913,367,1260,438,175,592,13,474,1225,381,201,223,794,301,342,320);
         this.WORM_COORDS[2418] = new Array(77,552,440,349,146,363,1166,401,957,202,192,214,26,479,1257,437,206,602,645,355,177,278,949,394,1300,566,568,339,1097,386,225,384,307,292,1046,422,695,269,263,200);
         this.WORM_COORDS[2419] = new Array(1,577,726,304,1016,270,1300,566,88,558,944,396,874,189,925,188,1147,361,1078,399,580,344,1286,443,14,474,324,280,513,367,1069,323,670,300,242,255,715,496,184,595);
         this.WORM_COORDS[2420] = new Array(446,354,1241,383,602,442,861,198,221,281,95,560,1036,298,204,228,1,577,830,332,1074,401,176,593,232,555,744,287,306,293,632,361,150,365,26,479,170,285,957,202);
         this.WORM_COORDS[2421] = new Array(262,200,583,353,742,287,127,402,131,577,269,548,1246,437,819,228,920,186,680,272,327,280,516,365,1111,376,392,327,937,390,71,548,221,281,23,477,1178,429,1049,298);
         this.WORM_COORDS[2422] = new Array(161,391,585,404,482,393,265,273,866,194,330,280,37,491,105,484,1033,299,251,204,190,214,757,308,1176,426,428,336,1265,438,94,560,551,344,801,238,1133,362,958,202);
         this.WORM_COORDS[2423] = new Array(1217,380,1253,436,346,319,163,395,789,286,220,279,826,224,496,387,911,367,110,463,82,556,891,184,608,376,253,556,1189,442,153,586,990,223,29,482,421,335,205,229);
         this.WORM_COORDS[2424] = new Array(665,336,536,350,600,440,236,263,32,485,710,270,0,578,242,554,167,291,1189,442,1136,362,610,373,842,214,926,365,397,341,91,559,1000,226,1048,298,1197,543,183,594);
         this.WORM_COORDS[2425] = new Array(409,332,1191,443,501,382,1035,298,1099,385,81,554,896,184,198,219,176,593,597,435,1268,439,111,460,167,291,566,339,26,479,999,225,315,285,691,269,943,396,139,364);
         this.WORM_COORDS[2426] = new Array(289,303,1163,390,395,338,6,489,942,193,150,365,543,348,614,371,835,219,185,274,196,599,9,572,1263,438,1016,270,1113,375,1204,446,741,287,216,371,676,277,730,464);
         this.WORM_COORDS[2427] = new Array(686,270,1187,441,1153,365,600,440,79,554,418,335,817,229,917,366,1095,387,495,389,228,409,1242,408,234,266,195,598,164,397,1298,561,767,330,1018,346,5,494,6,574);
         this.WORM_COORDS[2428] = new Array(359,311,618,368,1298,561,993,224,1181,433,1237,383,105,565,547,346,208,234,1222,529,717,326,1247,437,472,377,593,429,10,476,119,431,880,187,1088,392,699,269,1143,361);
         this.WORM_COORDS[2429] = new Array(913,185,294,301,55,517,1208,381,667,334,259,200,556,343,1024,305,4,501,140,363,445,352,1260,438,123,415,799,240,147,583,1126,366,1,577,1075,401,177,278,783,433);
         this.WORM_COORDS[2430] = new Array(239,259,717,326,44,500,1087,393,313,286,1148,361,96,561,1,577,542,348,1250,436,249,206,807,234,125,410,108,472,702,511,445,352,1233,383,836,308,680,272,968,211);
         this.WORM_COORDS[2431] = new Array(219,276,1110,377,705,268,26,479,139,364,455,358,1231,389,930,190,1024,305,762,447,68,546,1189,442,634,360,687,449,769,286,0,578,1266,439,857,201,1269,524,349,316);
         this.WORM_COORDS[2432] = new Array(732,462,580,344,807,234,275,295,63,538,1004,227,1126,366,1221,380,512,369,1042,298,940,193,788,286,1293,547,328,280,16,474,1267,439,587,414,1186,440,937,390,148,363);
         this.WORM_COORDS[2433] = new Array(225,384,550,345,1292,545,133,380,217,267,371,307,1157,371,6,489,600,440,306,293,987,223,828,223,1203,447,1073,402,1050,298,779,286,64,540,901,380,644,355,899,184);
         this.WORM_COORDS[2434] = new Array(940,193,122,421,380,307,1177,428,532,354,1074,401,208,234,777,286,713,274,616,369,245,556,29,482,1124,367,105,484,593,429,999,225,1246,437,1041,298,1294,550,714,330);
         this.WORM_COORDS[2435] = new Array(38,493,727,303,245,556,819,228,512,369,996,225,597,435,1098,386,87,557,273,290,1214,381,928,189,350,316,217,267,1151,363,620,368,122,421,1185,439,797,288,873,190);
         this.WORM_COORDS[2436] = new Array(305,293,1212,381,139,364,445,352,62,536,941,193,1250,436,538,350,212,243,640,356,239,430,1145,361,838,217,694,269,1199,447,762,318,951,393,1094,388,271,546,593,429);
         this.WORM_COORDS[2437] = new Array(534,352,166,590,145,363,440,349,340,321,911,367,1168,406,255,202,852,206,173,283,24,478,241,430,1072,403,1244,437,221,608,608,376,940,193,223,280,697,269,606,448);
         this.WORM_COORDS[2438] = new Array(130,390,793,306,1263,438,1136,362,724,309,585,404,1032,299,550,345,52,511,170,591,474,381,253,426,1289,540,421,335,931,190,872,190,705,508,639,357,815,230,181,277);
         this.WORM_COORDS[2439] = new Array(895,184,1274,440,696,269,910,367,453,356,719,320,569,339,808,234,1186,440,590,423,181,277,1234,383,130,390,333,285,199,600,651,353,44,500,1087,393,964,208,504,377);
         this.WORM_COORDS[2440] = new Array(1211,381,1188,441,643,355,1104,381,601,441,876,188,537,350,118,435,456,358,76,551,771,286,688,270,260,422,339,321,6,489,142,363,258,557,1244,437,1006,228,1154,366);
         this.WORM_COORDS[2441] = new Array(1272,439,1199,447,861,198,665,336,527,356,211,240,688,270,66,543,294,301,193,598,403,325,138,366,794,301,615,369,1143,361,1291,542,265,200,807,234,39,493,1198,546);
         this.WORM_COORDS[2442] = new Array(923,187,1218,380,493,390,98,562,664,336,1080,398,547,346,428,336,203,227,1256,437,705,268,588,417,1192,444,808,350,773,286,292,302,202,601,1064,306,851,206,46,502);
         this.WORM_COORDS[2443] = new Array(225,554,484,396,1255,437,1058,300,432,329,105,565,919,366,327,280,1075,401,217,267,717,326,1218,380,381,308,114,448,929,189,638,358,305,363,249,206,42,497,164,397);
         this.WORM_COORDS[2444] = new Array(772,286,297,299,585,404,818,228,233,268,1281,441,415,335,1092,390,83,556,280,535,1008,230,901,184,33,487,1067,314,518,363,722,314,231,412,1150,362,2,577,645,355);
         this.WORM_COORDS[2445] = new Array(108,472,401,325,286,305,859,200,1035,298,67,544,1298,561,699,269,173,400,552,344,780,286,1163,390,923,187,997,225,1247,437,37,491,716,327,603,443,642,356,166,590);
         this.WORM_COORDS[2446] = new Array(1088,392,138,366,122,573,985,222,303,295,49,506,575,339,1253,436,1239,383,1037,298,589,421,194,216,377,306,498,385,803,236,442,351,702,511,768,333,916,186,250,556);
         this.WORM_COORDS[2447] = new Array(804,235,763,321,652,353,698,269,552,344,77,552,1127,365,1073,402,488,395,588,417,1069,323,391,321,1004,227,1018,346,1240,383,30,483,139,364,146,583,1,577,869,363);
         this.WORM_COORDS[2448] = new Array(770,286,1216,381,176,593,1076,401,882,187,359,311,121,424,667,334,50,507,1011,235,286,305,188,214,1272,439,614,371,489,394,147,363,1204,544,434,329,1293,547,222,281);
         this.WORM_COORDS[2449] = new Array(305,363,444,352,369,308,674,279,821,226,1290,541,726,304,125,410,176,279,1051,418,1252,436,558,341,890,185,668,333,250,205,1236,383,797,288,90,558,1144,361,230,272);
         this.WORM_COORDS[2450] = new Array(811,232,1282,441,1067,314,351,316,185,274,605,447,562,340,1098,386,90,558,1180,432,779,286,414,335,770,442,621,367,976,220,190,214,507,374,295,362,130,390,115,445);
         this.WORM_COORDS[2451] = new Array(379,307,613,371,607,449,1029,299,176,395,1258,437,1097,386,314,285,954,200,430,329,716,327,559,341,113,453,878,188,792,288,487,396,1228,383,75,551,663,336,242,255);
         this.WORM_COORDS[2452] = new Array(732,462,987,223,460,361,712,271,1123,368,363,310,16,567,110,463,554,343,1238,383,1294,550,1259,437,311,288,1020,338,52,511,1185,439,136,578,936,385,145,363,169,287);
         this.WORM_COORDS[2453] = new Array(151,366,202,601,522,359,667,334,223,280,1095,387,1290,541,285,305,889,185,969,212,1264,438,86,557,17,474,114,448,354,314,440,349,167,291,1017,284,698,269,809,233);
         this.WORM_COORDS[2454] = new Array(74,551,807,234,456,358,987,223,549,345,1049,298,1299,564,390,318,1231,389,226,409,908,185,124,412,319,282,602,442,620,368,188,596,19,566,753,299,1075,401,698,269);
         this.WORM_COORDS[2455] = new Array(1228,383,447,355,1080,398,81,554,632,361,547,346,965,208,1041,298,218,270,688,270,0,578,1278,440,369,308,1188,441,159,588,110,463,738,287,262,618,894,184,733,461);
         this.WORM_COORDS[2456] = new Array(539,350,459,360,621,367,1185,439,626,468,1006,228,1132,363,737,458,1286,443,260,200,342,320,126,405,240,430,1021,331,1293,547,84,556,41,495,881,187,942,193,701,268);
         this.WORM_COORDS[2457] = new Array(1111,376,123,415,993,224,780,286,825,225,287,305,1041,298,1298,561,47,503,924,366,80,554,244,429,929,189,710,502,561,340,1163,390,199,220,499,384,612,371,389,315);
         this.WORM_COORDS[2458] = new Array(654,353,1063,304,692,453,256,556,515,365,203,227,25,479,416,335,795,294,1265,438,74,551,671,299,927,188,820,351,289,303,837,218,1172,417,1099,385,135,373,1222,380);
         this.WORM_COORDS[2459] = new Array(603,443,256,202,980,221,420,335,1177,428,184,595,511,370,682,271,1262,438,865,194,1238,383,1300,566,795,294,141,363,132,577,1136,362,721,486,334,323,168,289,736,288);
         this.WORM_COORDS[2460] = new Array(243,253,367,308,984,222,929,189,693,269,617,369,220,607,1138,361,255,202,1242,408,42,497,289,303,834,220,73,550,688,449,714,330,1068,406,162,393,178,278,1178,429);
         this.WORM_COORDS[2461] = new Array(1129,364,234,266,1285,442,8,480,757,308,1299,564,591,425,834,220,68,546,454,357,387,311,690,269,1239,383,164,397,729,465,541,349,945,195,1045,298,328,280,176,279);
         this.WORM_COORDS[2462] = new Array(1213,381,287,305,798,288,91,559,1190,443,342,320,680,272,240,554,500,382,1075,401,207,232,168,289,613,456,1280,441,1236,622,917,186,173,400,1292,545,413,336,1028,300);
         this.WORM_COORDS[2463] = new Array(402,325,834,220,1101,383,646,354,697,269,242,255,708,340,121,572,525,358,119,431,962,206,1171,416,1210,540,186,214,1286,443,136,371,287,362,312,287,68,546,761,317);
         this.WORM_COORDS[2464] = new Array(219,606,1149,361,886,186,1263,438,957,202,27,480,607,449,293,302,1013,239,565,339,1178,429,79,554,186,214,754,300,635,360,1033,299,234,266,1093,389,447,355,885,359);
         this.WORM_COORDS[2465] = new Array(684,271,275,295,180,277,74,551,934,191,737,287,445,352,1080,398,1182,434,558,341,835,219,698,508,1061,302,329,280,176,593,787,286,5,494,194,216,1220,380,158,385);
         this.WORM_COORDS[2466] = new Array(1193,444,754,300,1228,383,424,335,657,352,564,340,161,391,1300,566,9,478,1276,440,586,408,1011,235,85,557,1104,381,484,396,682,271,231,554,331,280,905,368,820,227);
         this.WORM_COORDS[2467] = new Array(1192,444,1044,298,861,198,514,366,41,495,986,222,1227,381,164,590,252,203,433,329,1112,376,718,323,115,445,693,269,136,371,1255,437,296,467,338,322,645,355,0,578);
         this.WORM_COORDS[2468] = new Array(1204,446,114,448,81,554,476,384,1219,380,1093,389,583,353,151,366,270,284,1268,439,762,318,1016,270,347,317,194,216,1259,513,398,343,252,203,910,185,36,490,28,556);
         this.WORM_COORDS[2469] = new Array(268,280,779,286,396,339,713,274,172,592,1068,318,536,350,290,469,1244,437,1178,429,841,215,465,366,716,327,68,546,905,185,611,372,1091,391,972,215,197,218,598,436);
         this.WORM_COORDS[2470] = new Array(145,583,1167,404,18,474,1036,298,668,333,946,196,574,339,233,553,1101,383,222,281,937,390,407,327,237,422,292,302,293,362,760,314,1236,383,1039,426,185,383,599,438);
         this.WORM_COORDS[2471] = new Array(9,478,232,412,428,336,1220,380,525,358,1118,370,237,262,261,200,1246,437,132,384,59,529,733,291,789,286,606,448,612,371,843,213,290,303,954,200,1039,298,1183,436);
         this.WORM_COORDS[2472] = new Array(621,367,87,557,532,354,283,304,863,196,1178,429,758,309,429,335,886,358,18,474,1070,327,156,378,593,429,338,322,218,270,983,222,258,557,1291,542,176,593,481,392);
         this.WORM_COORDS[2473] = new Array(771,286,556,343,1196,446,66,543,1203,546,268,280,381,308,469,372,1061,302,720,319,326,280,620,368,820,351,1268,439,32,485,1095,387,986,222,589,421,155,375,0,578);
         this.WORM_COORDS[2474] = new Array(969,212,1081,397,548,345,174,592,658,350,193,269,348,317,771,286,495,389,1017,284,1245,437,291,303,819,228,1224,381,711,270,1180,432,135,373,1149,361,110,463,22,476);
         this.WORM_COORDS[2475] = new Array(1299,564,1194,445,1250,436,885,359,382,308,769,286,1115,372,173,283,282,303,563,340,149,364,1029,299,967,210,198,599,734,461,858,200,1183,624,223,280,455,358,191,214);
         this.WORM_COORDS[2476] = new Array(216,263,269,548,1032,299,102,564,545,347,1260,438,220,607,250,205,1137,361,1183,436,156,378,786,285,645,355,336,322,276,297,430,329,906,185,587,414,966,209,483,394);
         this.WORM_COORDS[2477] = new Array(1209,381,85,557,465,366,838,217,1245,437,718,323,334,323,1146,361,150,365,111,460,6,574,1018,346,407,327,517,364,1293,547,836,308,226,409,292,468,167,291,920,186);
         this.WORM_COORDS[2478] = new Array(306,293,108,472,496,387,805,234,1253,436,187,214,187,596,49,506,862,197,984,222,96,561,738,287,0,578,1126,366,607,449,1051,298,1181,433,268,416,627,363,1205,381);
         this.WORM_COORDS[2479] = new Array(511,370,1139,361,942,193,675,278,750,293,327,280,637,358,97,562,1243,504,1217,380,261,618,1072,403,184,595,572,339,217,267,448,355,31,484,840,216,1267,439,10,571);
         this.WORM_COORDS[2480] = new Array(750,293,1103,382,528,356,140,580,1027,301,1268,439,146,363,619,368,343,319,914,185,87,557,229,273,475,382,280,301,433,329,236,553,262,618,117,438,965,208,749,453);
         this.WORM_COORDS[2481] = new Array(555,343,268,280,1036,298,160,388,1273,526,715,328,374,306,216,263,1158,374,710,502,1265,438,1222,380,628,363,40,494,228,554,290,469,1101,383,319,282,711,270,1201,447);
         this.WORM_COORDS[2482] = new Array(78,553,530,355,4,575,424,335,170,591,1297,558,1194,445,1081,397,821,226,117,438,1261,438,696,496,43,498,760,447,943,194,747,289,214,250,291,303,1000,226,1208,541);
         this.WORM_COORDS[2483] = new Array(16,474,1271,439,526,357,1110,377,60,531,669,329,1067,314,765,325,676,277,236,553,408,329,278,299,969,212,136,578,1216,381,462,363,609,451,206,230,287,528,948,395);
         this.WORM_COORDS[2484] = new Array(177,394,263,200,878,188,1179,431,704,268,86,557,716,495,1261,438,555,343,588,417,120,427,1042,298,32,551,251,427,1122,368,233,268,298,298,669,329,164,590,7,483);
         this.WORM_COORDS[2485] = new Array(865,194,13,474,748,290,1102,382,1166,401,154,373,414,335,902,380,0,578,1064,306,949,197,88,558,197,599,265,273,565,339,511,370,107,475,590,423,1259,437,200,222);
         this.WORM_COORDS[2486] = new Array(683,271,1224,381,652,353,394,333,175,280,1118,370,160,388,1280,441,53,514,772,286,567,339,1029,299,481,392,265,556,599,438,947,197,1223,529,236,263,327,280,151,585);
         this.WORM_COORDS[2487] = new Array(1246,506,1079,399,282,303,500,382,920,186,706,268,1038,298,338,322,1151,363,846,210,13,474,560,340,1001,226,928,365,410,333,1218,380,1259,437,664,336,187,596,108,472);
         this.WORM_COORDS[2488] = new Array(1216,381,1127,365,35,489,715,328,502,380,1196,446,1070,327,276,297,626,364,247,428,937,192,204,228,1,577,194,598,862,197,1281,441,75,551,774,341,190,375,792,288);
         this.WORM_COORDS[2489] = new Array(250,427,136,371,496,387,1272,439,1181,433,174,281,934,191,325,280,58,525,1142,361,230,272,438,330,1018,346,120,427,795,294,689,269,379,307,841,215,628,363,199,220);
         this.WORM_COORDS[2490] = new Array(1154,366,727,303,501,382,671,299,94,560,49,506,268,280,1103,382,335,323,431,329,164,397,7,573,187,214,1240,383,551,344,978,220,1049,420,1257,437,625,364,807,234);
         this.WORM_COORDS[2491] = new Array(14,569,14,474,503,378,563,340,784,285,1196,534,80,554,1218,380,811,232,1258,437,1180,432,119,431,397,341,323,280,961,204,947,395,707,269,175,592,237,262,747,454);
         this.WORM_COORDS[2492] = new Array(427,335,1029,299,715,496,340,321,82,556,722,314,885,186,575,339,1188,441,940,396,794,425,1267,439,607,449,1151,363,128,399,974,217,109,466,236,553,14,474,830,222);
         this.WORM_COORDS[2493] = new Array(593,429,1228,383,130,390,277,298,1177,620,709,504,1004,227,1267,439,1024,305,448,355,611,372,260,200,521,360,28,481,391,321,759,313,1082,397,220,279,662,336,327,280);
         this.WORM_COORDS[2494] = new Array(1132,363,1188,441,308,291,77,552,988,223,684,449,19,474,623,365,1228,383,158,385,389,315,902,380,1300,566,705,508,717,326,1017,284,1068,318,846,210,1248,437,273,543);
         this.WORM_COORDS[2495] = new Array(925,365,901,184,436,329,1203,447,1227,381,165,399,544,347,78,553,489,394,5,494,363,310,708,269,1103,382,1032,299,310,289,833,220,211,240,648,354,1277,440,626,468);
         this.WORM_COORDS[2496] = new Array(661,336,97,562,789,286,1125,366,1200,447,949,394,857,201,383,308,542,348,52,511,1060,301,294,301,172,283,604,446,248,557,196,217,927,188,124,412,1279,441,767,443);
         this.WORM_COORDS[2497] = new Array(489,394,172,283,1169,410,1280,441,87,557,1210,540,697,269,224,381,718,323,907,185,427,335,1082,397,144,582,222,281,684,449,1295,552,22,476,310,289,988,223,613,371);
         this.WORM_COORDS[2498] = new Array(900,184,1037,298,1298,561,97,562,627,363,337,322,181,594,570,339,211,240,801,288,888,358,441,351,746,454,161,391,1086,394,1251,436,829,222,750,293,502,380,1166,401);
         this.WORM_COORDS[2499] = new Array(631,362,508,373,733,461,154,373,602,442,673,288,82,556,1185,439,296,300,839,216,371,307,1152,363,182,594,440,349,1083,396,39,493,790,286,1042,298,1296,556,177,278);
      }
      
      public function init_coords_forbidden() : *
      {
         this.WORM_COORDS[2500] = new Array(969,489,674,210,596,322,1126,536,838,315,773,451,1180,432,802,621,167,202,607,414,951,251,66,606,325,303,1257,595,486,316,1248,540,148,530,402,375,955,439,384,288);
         this.WORM_COORDS[2501] = new Array(464,319,179,204,21,592,360,277,1288,597,1090,530,85,599,911,339,98,231,1232,457,760,155,239,245,942,437,104,541,471,465,299,337,921,233,759,453,639,221,1040,518);
         this.WORM_COORDS[2502] = new Array(388,297,1175,432,316,305,456,326,1278,596,767,155,774,450,974,487,844,615,584,194,531,296,44,615,1065,526,441,433,915,280,234,238,777,601,121,411,1252,542,1134,535);
         this.WORM_COORDS[2503] = new Array(588,194,304,338,1149,437,1244,540,971,488,140,202,263,249,564,268,9,603,1215,431,381,380,1114,532,207,243,485,316,379,286,953,251,1021,481,60,609,706,463,940,437);
         this.WORM_COORDS[2504] = new Array(1209,431,523,296,1264,595,979,485,1254,542,7,602,1042,518,1152,437,960,251,104,541,96,233,666,211,86,598,584,194,431,417,122,411,1177,530,805,169,1103,530,316,305);
         this.WORM_COORDS[2505] = new Array(571,205,859,242,325,303,494,318,1087,530,1239,540,47,617,656,213,273,334,925,230,450,444,1031,482,1146,437,700,457,1284,597,239,245,589,413,179,204,545,304,198,315);
         this.WORM_COORDS[2506] = new Array(477,471,513,303,122,202,874,192,240,245,413,381,1010,480,48,618,797,165,1099,530,292,336,663,212,1286,597,1166,432,941,240,568,205,246,570,454,330,400,300,946,437);
         this.WORM_COORDS[2507] = new Array(302,337,676,210,1076,530,95,597,992,483,1286,597,531,426,150,205,928,342,574,205,10,603,770,594,1231,451,502,340,465,459,760,453,770,155,105,541,1141,439,235,239);
         this.WORM_COORDS[2508] = new Array(1246,540,844,311,1220,434,1007,536,1157,436,1264,595,370,276,1130,536,215,237,478,323,742,160,75,602,882,441,435,424,836,238,758,587,1080,531,1030,481,517,422,932,436);
         this.WORM_COORDS[2509] = new Array(1207,432,853,613,653,214,1157,436,1033,519,212,239,286,335,1259,595,491,317,937,237,449,443,342,304,147,202,35,596,1255,544,966,489,700,457,737,163,556,258,1118,534);
         this.WORM_COORDS[2510] = new Array(1130,536,1056,522,488,466,532,296,949,438,1298,601,1000,483,1194,434,564,207,43,614,154,205,928,230,298,336,781,157,414,383,203,510,110,539,469,319,399,299,1240,540);
         this.WORM_COORDS[2511] = new Array(835,236,112,207,854,429,907,339,54,621,843,312,951,251,1050,520,500,339,2,602,767,454,439,431,900,208,1238,540,110,421,241,244,1205,432,1152,437,606,227,408,377);
         this.WORM_COORDS[2512] = new Array(1119,535,860,439,74,602,203,263,265,315,1263,595,506,341,849,308,170,434,730,166,717,477,1240,540,576,205,419,390,1135,464,258,241,931,230,937,437,471,465,1045,518);
         this.WORM_COORDS[2513] = new Array(777,156,416,385,1050,520,1262,595,997,483,340,304,499,338,109,207,921,233,1252,542,1219,433,288,335,65,606,567,205,197,314,548,261,170,201,763,457,863,240,842,616);
         this.WORM_COORDS[2514] = new Array(66,606,114,538,119,205,1044,518,934,230,505,340,259,243,298,336,953,438,1246,540,843,312,1283,597,1111,532,693,212,548,261,186,210,826,221,882,189,1151,437,1235,475);
         this.WORM_COORDS[2515] = new Array(416,385,762,155,99,214,744,577,454,330,394,297,97,543,660,212,1013,480,542,308,597,322,316,305,470,465,819,212,901,210,1147,531,81,600,223,586,571,205,245,238);
         this.WORM_COORDS[2516] = new Array(1071,528,1271,595,611,233,5,602,301,337,809,206,64,606,547,263,1201,433,369,276,570,398,1008,481,864,239,1241,540,260,244,964,256,688,212,449,443,890,363,743,159);
         this.WORM_COORDS[2517] = new Array(888,189,628,228,120,204,1195,434,768,155,20,592,232,236,1098,530,80,601,958,251,407,377,1022,481,1262,595,1249,541,853,248,295,336,773,296,928,436,545,304,377,286);
         this.WORM_COORDS[2518] = new Array(1203,432,672,210,1051,520,370,276,933,230,213,238,312,310,534,296,156,204,28,592,493,455,796,619,1133,536,971,488,590,187,1278,596,481,317,769,155,84,599,1141,439);
         this.WORM_COORDS[2519] = new Array(1072,529,1293,598,462,457,26,592,844,311,167,615,887,189,645,217,864,454,266,334,142,202,726,167,497,338,230,235,164,434,825,219,1201,433,778,602,324,303,123,536);
         this.WORM_COORDS[2520] = new Array(62,608,697,209,1147,437,992,483,383,288,1118,534,302,337,1061,523,848,309,409,377,160,526,538,311,483,316,175,618,792,617,797,311,472,467,1243,540,859,242,940,353);
         this.WORM_COORDS[2521] = new Array(753,584,449,443,3,602,359,277,985,484,1038,518,1234,466,1102,530,254,237,941,240,1143,438,802,167,458,321,568,205,64,606,701,201,178,420,108,207,299,337,865,239);
         this.WORM_COORDS[2522] = new Array(269,335,755,156,469,319,1054,520,1245,540,1152,437,373,384,625,230,1003,482,1297,600,352,308,176,202,1126,536,1220,434,36,599,524,296,464,458,242,242,98,231,810,621);
         this.WORM_COORDS[2523] = new Array(984,484,304,338,1125,536,1234,466,197,314,39,608,1063,525,1171,432,613,235,544,306,382,287,717,185,790,615,1264,595,850,428,110,207,263,249,121,536,413,381,96,597);
         this.WORM_COORDS[2524] = new Array(990,483,1065,526,28,592,96,597,546,303,495,319,1260,595,144,202,321,303,721,179,195,245,1213,431,103,541,838,243,249,235,432,419,850,428,906,226,375,286,169,524);
         this.WORM_COORDS[2525] = new Array(1129,536,506,341,318,305,1168,432,1047,518,175,429,641,219,1287,597,966,489,727,167,828,223,906,226,380,286,842,313,65,606,606,416,8,602,570,205,767,454,116,411);
         this.WORM_COORDS[2526] = new Array(439,431,1091,530,310,339,1227,441,945,241,779,301,378,286,1251,541,132,534,507,341,1006,482,720,180,772,451,552,258,33,594,640,221,248,235,848,309,118,411,814,541);
         this.WORM_COORDS[2527] = new Array(1256,595,555,258,1224,438,141,202,79,601,1072,529,1005,482,865,239,3,602,432,419,570,205,273,334,670,210,245,238,488,316,745,578,943,437,740,161,329,303,495,449);
         this.WORM_COORDS[2528] = new Array(984,484,466,319,92,597,106,207,710,191,350,306,1274,596,1141,439,428,411,1131,536,627,229,277,334,1199,433,1057,522,492,458,192,227,612,325,925,230,25,592,256,239);
         this.WORM_COORDS[2529] = new Array(1079,530,1233,460,82,600,151,529,1001,482,1295,599,640,221,574,205,197,314,212,239,1243,540,780,447,758,155,835,236,805,540,410,378,704,198,964,256,524,296,267,334);
         this.WORM_COORDS[2530] = new Array(984,484,67,606,293,336,872,195,1140,441,772,155,1249,541,358,279,1089,530,452,446,1282,597,417,386,237,241,917,278,503,340,630,226,574,271,999,539,719,182,1213,431);
         this.WORM_COORDS[2531] = new Array(801,621,511,305,949,245,1030,481,136,302,1172,432,77,601,1240,540,448,441,166,615,378,286,748,580,308,338,718,476,9,603,1273,595,565,343,1129,536,786,304,670,210);
         this.WORM_COORDS[2532] = new Array(351,307,36,599,748,580,1085,530,458,321,1204,432,488,466,271,335,258,241,848,309,163,202,1017,480,522,296,612,234,851,614,140,408,1260,595,89,598,791,162,959,251);
         this.WORM_COORDS[2533] = new Array(307,338,240,245,886,439,68,605,10,603,835,236,894,196,679,211,1029,481,391,297,741,160,1231,451,798,165,1148,437,517,299,963,490,623,231,1241,540,824,620,434,423);
         this.WORM_COORDS[2534] = new Array(993,483,88,598,200,263,127,202,454,330,800,166,10,603,896,201,159,432,1259,595,1054,520,399,299,590,187,920,273,1247,540,294,336,1104,530,1195,434,504,340,451,445);
         this.WORM_COORDS[2535] = new Array(420,392,1115,533,1008,481,384,288,170,201,687,212,1062,524,1197,434,1259,595,553,258,240,245,954,251,1239,540,1144,438,68,605,954,439,13,596,483,316,140,531,538,311);
         this.WORM_COORDS[2536] = new Array(605,186,167,434,875,445,98,543,194,236,84,599,1066,527,372,277,1009,480,1145,437,668,211,793,617,1228,442,520,297,275,334,824,218,117,207,239,577,410,378,1278,596);
         this.WORM_COORDS[2537] = new Array(70,603,984,484,665,212,377,286,745,578,170,201,732,165,1300,602,140,531,284,335,506,341,753,452,1062,524,1195,434,8,602,1249,541,445,437,406,377,801,166,1119,535);
         this.WORM_COORDS[2538] = new Array(845,311,1225,439,974,487,315,306,24,592,151,205,368,276,844,428,532,296,1101,530,954,251,1256,595,701,201,90,597,463,319,836,618,600,184,706,463,107,540,1038,518);
         this.WORM_COORDS[2539] = new Array(202,263,1090,530,598,416,470,319,1250,541,811,206,419,390,1015,480,7,602,963,254,1252,594,163,525,952,438,72,603,391,297,592,185,1204,432,160,203,123,411,321,303);
         this.WORM_COORDS[2540] = new Array(273,334,83,600,1250,541,170,201,464,319,1290,597,1033,519,579,344,735,552,982,485,701,201,231,236,393,297,873,193,559,259,1090,530,31,592,451,445,804,169,1159,434);
         this.WORM_COORDS[2541] = new Array(1027,481,513,303,904,225,968,489,745,159,1118,534,1150,437,435,424,674,210,305,338,162,202,1263,595,360,277,251,235,379,381,1243,540,53,621,804,169,485,471,595,462);
         this.WORM_COORDS[2542] = new Array(884,189,71,603,1065,526,1159,434,211,239,356,321,791,162,963,254,564,207,989,483,1248,540,1122,536,304,338,471,319,1260,595,21,592,530,296,122,411,388,378,1226,440);
         this.WORM_COORDS[2543] = new Array(171,523,891,437,395,297,1069,528,193,231,86,598,471,319,1285,597,850,253,1139,444,442,434,609,231,1237,540,318,305,889,190,258,241,410,378,1189,434,795,310,985,484);
         this.WORM_COORDS[2544] = new Array(1159,434,207,243,93,597,310,339,802,167,1255,544,774,598,1290,597,1006,482,1112,532,143,202,37,601,482,473,830,227,943,437,844,428,953,251,1216,432,845,311,700,202);
         this.WORM_COORDS[2545] = new Array(1162,432,927,342,82,600,845,311,800,451,1072,529,111,207,207,243,1287,597,271,335,438,430,404,375,387,295,535,297,122,411,461,319,1241,540,708,195,240,577,893,194);
         this.WORM_COORDS[2546] = new Array(1292,597,23,592,609,323,93,597,109,422,1245,540,1230,448,602,184,363,276,1071,528,182,409,861,241,989,483,139,202,875,191,785,159,944,240,511,305,787,611,1129,536);
         this.WORM_COORDS[2547] = new Array(22,592,691,212,1168,432,598,184,1239,540,1044,518,124,202,516,300,428,411,386,291,236,240,954,439,753,156,813,207,956,251,315,306,877,189,1292,597,844,311,75,602);
         this.WORM_COORDS[2548] = new Array(271,335,79,601,934,230,169,201,264,251,1146,437,1042,518,725,167,101,210,186,518,657,212,540,309,1202,432,335,304,989,483,13,596,604,185,544,431,99,543,461,319);
         this.WORM_COORDS[2549] = new Array(1074,530,978,486,94,597,1130,536,504,340,113,413,231,236,284,335,601,184,382,287,1248,540,100,211,956,251,432,419,1186,432,702,459,12,598,105,541,814,207,893,194);
         this.WORM_COORDS[2550] = new Array(351,307,93,597,734,164,15,594,744,442,416,385,1194,434,479,318,153,205,1125,536,1248,540,621,233,114,412,953,251,213,238,778,602,965,490,1277,596,120,537,1039,518);
         this.WORM_COORDS[2551] = new Array(347,305,961,492,1074,530,288,335,26,592,100,542,877,189,1022,481,962,253,725,431,688,212,1249,593,180,414,424,403,1218,432,166,525,546,303,123,202,77,601,1149,437);
         this.WORM_COORDS[2552] = new Array(407,377,93,597,1234,466,504,340,823,216,1173,432,841,313,301,337,398,298,1044,518,159,203,1242,540,600,184,892,193,955,251,1278,596,38,604,796,165,445,437,560,259);
         this.WORM_COORDS[2553] = new Array(971,488,1100,530,1237,540,827,618,1021,481,109,539,415,384,4,602,1289,597,810,206,587,194,463,457,489,316,396,297,223,586,863,455,188,213,115,411,252,235,1163,432);
         this.WORM_COORDS[2554] = new Array(1213,431,304,338,808,317,834,618,230,235,64,606,813,207,421,396,1116,534,367,276,1061,523,742,160,1158,435,472,319,172,616,466,460,1255,544,573,205,664,212,121,536);
         this.WORM_COORDS[2555] = new Array(1105,530,0,603,397,297,138,202,1252,542,1002,482,54,621,1230,448,837,241,541,309,244,240,839,429,927,436,467,319,627,229,270,335,482,473,886,189,695,211,606,416);
         this.WORM_COORDS[2556] = new Array(1276,596,95,597,428,411,1146,437,16,593,240,245,1093,530,1245,540,340,304,132,534,123,202,760,588,638,223,583,194,156,431,967,489,902,213,1233,460,393,297,183,620);
         this.WORM_COORDS[2557] = new Array(1063,525,467,319,354,324,1219,433,419,390,756,156,240,245,610,232,923,342,1255,544,76,601,972,488,15,594,534,296,187,620,537,427,1259,595,1135,464,131,202,452,446);
         this.WORM_COORDS[2558] = new Array(493,317,1109,530,235,239,36,599,334,304,852,249,124,202,124,536,1154,437,402,375,984,484,1250,541,1035,518,625,230,921,233,1275,596,158,432,745,159,445,437,687,212);
         this.WORM_COORDS[2559] = new Array(413,381,117,207,1214,431,298,336,1049,518,859,242,931,230,712,189,878,189,1263,595,52,620,1133,536,1158,435,191,221,581,280,100,542,356,321,1243,540,603,184,506,341);
         this.WORM_COORDS[2560] = new Array(473,319,72,603,300,337,978,486,127,202,391,297,424,403,861,241,1261,595,528,296,1066,527,811,206,1235,475,628,228,201,263,1238,540,744,577,182,207,594,462,580,343);
         this.WORM_COORDS[2561] = new Array(174,201,794,618,79,601,863,455,995,483,1126,536,0,603,937,237,333,304,111,418,385,289,850,253,489,464,224,586,740,161,434,423,281,334,148,530,724,431,232,236);
         this.WORM_COORDS[2562] = new Array(292,336,878,189,1098,530,1196,434,691,212,38,604,794,618,631,226,358,279,552,258,216,236,778,156,88,598,960,251,428,411,818,211,477,322,1023,481,1270,595,758,452);
         this.WORM_COORDS[2563] = new Array(16,593,1092,530,275,334,803,168,794,448,401,302,424,403,1223,437,759,587,1243,540,73,602,480,472,916,279,873,447,1033,519,1167,432,140,408,698,207,1294,598,186,210);
         this.WORM_COORDS[2564] = new Array(329,303,488,316,1014,480,394,297,162,202,1067,527,843,428,1166,529,584,335,103,541,847,310,36,599,632,226,1212,431,738,162,423,401,1249,541,1266,595,571,205,684,211);
         this.WORM_COORDS[2565] = new Array(1036,518,974,487,80,601,413,381,214,237,1112,532,901,210,503,340,1169,432,920,273,745,159,129,535,644,217,1259,595,696,210,1221,435,265,315,579,196,182,620,374,283);
         this.WORM_COORDS[2566] = new Array(994,483,1250,541,2,602,775,600,93,597,297,336,596,184,420,392,124,411,575,272,1130,536,1137,461,1067,527,1273,595,709,467,449,443,229,235,759,155,501,340,112,207);
         this.WORM_COORDS[2567] = new Array(619,235,143,202,827,618,749,450,32,593,1160,433,907,226,455,329,547,263,100,542,1015,480,1284,597,332,304,771,155,89,598,237,241,197,314,1075,530,400,300,139,408);
         this.WORM_COORDS[2568] = new Array(944,240,1144,438,987,484,1237,540,440,432,815,208,89,598,537,312,248,235,669,211,514,422,1256,595,460,319,266,334,149,529,605,417,594,184,147,202,392,297,1133,536);
         this.WORM_COORDS[2569] = new Array(355,322,94,597,1223,437,420,392,803,168,193,231,1145,437,32,593,568,205,1298,601,108,423,284,335,545,304,1023,481,947,242,628,228,753,452,757,515,1243,540,706,197);
         this.WORM_COORDS[2570] = new Array(694,212,811,206,177,202,940,240,19,592,612,325,1288,597,1005,482,1219,433,1116,534,566,206,384,288,885,440,1250,541,254,237,369,385,746,158,733,541,90,597,880,189);
         this.WORM_COORDS[2571] = new Array(214,237,719,182,104,541,1041,518,485,316,617,236,1127,537,113,413,919,275,65,606,901,210,393,297,1169,432,384,378,308,338,976,487,452,446,1266,595,1236,482,123,202);
         this.WORM_COORDS[2572] = new Array(72,603,376,286,5,602,783,608,230,235,507,341,422,398,867,524,274,334,1206,432,1067,527,994,483,174,201,788,161,618,235,677,210,955,251,751,452,943,437,842,428);
         this.WORM_COORDS[2573] = new Array(513,303,1156,437,757,156,564,268,33,594,321,303,1035,518,83,600,448,441,1260,595,1088,530,904,225,1221,435,394,297,588,194,132,202,754,452,210,590,955,439,604,322);
         this.WORM_COORDS[2574] = new Array(515,300,379,381,245,238,329,303,780,604,819,212,387,295,1119,535,80,601,161,203,737,163,994,539,1262,595,1140,441,605,186,966,489,445,437,454,330,6,602,116,538);
         this.WORM_COORDS[2575] = new Array(1267,595,511,305,840,314,33,594,1072,529,213,238,850,253,1178,432,316,305,600,184,872,195,208,590,94,597,1236,540,144,202,695,211,457,451,383,288,407,377,1235,475);
         this.WORM_COORDS[2576] = new Array(834,234,1202,432,1124,536,81,600,1260,595,390,297,957,251,447,440,963,490,542,430,523,296,296,336,629,227,815,621,1042,518,736,163,237,241,1255,544,810,449,946,437);
         this.WORM_COORDS[2577] = new Array(133,202,358,279,648,217,478,323,9,603,289,335,543,307,1233,460,410,378,976,487,1171,432,694,451,1074,530,102,542,439,431,1251,541,202,263,597,184,740,161,810,206);
         this.WORM_COORDS[2578] = new Array(258,241,1193,434,0,603,64,606,1037,518,435,424,487,316,809,622,1252,542,1118,534,288,335,751,156,621,233,143,531,502,433,969,489,202,263,382,287,917,278,839,246);
         this.WORM_COORDS[2579] = new Array(102,600,1284,597,169,434,859,242,1227,441,209,241,1098,530,41,612,1031,482,762,455,111,418,652,215,433,421,944,437,938,240,583,337,315,306,846,310,504,340,1243,540);
         this.WORM_COORDS[2580] = new Array(615,237,1069,528,444,436,1253,542,47,617,1227,441,160,203,555,258,1135,464,880,189,266,334,958,441,1290,597,109,422,822,215,403,375,772,155,477,322,171,523,692,449);
         this.WORM_COORDS[2581] = new Array(1084,530,60,609,311,339,1,602,553,258,1262,595,987,484,755,156,1172,432,1223,437,121,411,643,218,99,543,827,319,391,297,200,263,404,375,456,326,1253,542,881,189);
         this.WORM_COORDS[2582] = new Array(1141,439,1017,480,706,197,887,189,531,296,1278,596,145,530,577,200,91,597,113,207,19,592,814,207,465,319,1071,528,231,236,959,442,601,416,960,251,1228,442,187,397);
         this.WORM_COORDS[2583] = new Array(1045,518,1257,595,323,303,1123,536,907,226,500,437,104,541,757,156,584,280,1226,440,102,209,429,414,24,592,1162,432,397,297,520,297,839,616,207,319,588,461,205,246);
         this.WORM_COORDS[2584] = new Array(1242,540,4,602,383,288,501,340,1207,432,1017,480,1257,595,567,205,841,313,1121,535,629,227,233,582,777,156,561,259,307,338,88,598,173,201,572,347,98,543,160,615);
         this.WORM_COORDS[2585] = new Array(1200,433,1292,597,865,239,459,320,715,187,1092,530,227,235,405,375,78,601,523,296,664,212,762,455,779,157,100,211,1140,441,953,251,100,542,842,313,943,437,382,287);
         this.WORM_COORDS[2586] = new Array(0,603,1031,482,798,165,63,607,625,230,1214,431,224,235,1242,540,1280,597,453,331,1127,537,839,246,161,203,690,212,532,296,303,337,917,278,558,438,430,416,108,423);
         this.WORM_COORDS[2587] = new Array(880,357,1240,540,313,308,1296,600,1101,530,1003,482,757,452,447,440,750,157,51,620,365,276,648,217,128,411,476,321,1201,433,584,194,108,207,220,235,797,620,872,447);
         this.WORM_COORDS[2588] = new Array(232,236,1251,593,1013,480,1203,432,28,592,87,598,789,161,835,236,716,186,902,340,634,224,760,588,451,445,781,447,1146,437,474,320,280,334,155,431,353,325,234,582);
         this.WORM_COORDS[2589] = new Array(1150,437,726,167,1259,595,944,240,352,308,1122,536,790,447,158,204,149,529,80,601,269,335,1059,523,567,205,102,209,239,245,837,241,527,296,981,485,1246,540,533,426);
         this.WORM_COORDS[2590] = new Array(604,185,656,213,984,484,499,338,142,202,950,249,1199,433,785,159,296,336,1114,532,548,261,869,237,361,276,823,620,171,434,1263,595,751,527,49,619,847,310,734,164);
         this.WORM_COORDS[2591] = new Array(2,602,658,212,752,156,919,275,1129,536,580,457,171,201,505,340,1243,540,420,392,852,249,118,537,1071,528,72,603,1207,432,173,523,365,276,1011,480,1270,595,883,189);
         this.WORM_COORDS[2592] = new Array(971,488,1069,528,719,474,1210,431,172,201,20,592,97,232,1297,600,289,335,367,276,194,516,1139,444,552,258,498,338,235,239,808,173,726,167,80,601,800,620,1246,540);
         this.WORM_COORDS[2593] = new Array(490,316,1049,518,94,597,104,541,392,297,405,375,776,156,725,167,120,411,832,230,1271,595,965,490,285,335,878,444,1194,434,171,434,627,229,1116,534,840,314,125,202);
         this.WORM_COORDS[2594] = new Array(915,280,365,276,121,411,658,212,874,446,226,235,720,180,904,225,954,439,830,227,1090,530,2,602,55,618,1193,434,441,433,365,387,805,169,1295,599,304,338,742,574);
         this.WORM_COORDS[2595] = new Array(588,194,1060,523,965,490,782,606,894,196,675,210,543,307,1283,597,417,386,1243,540,383,288,190,620,1131,536,16,593,824,218,101,542,760,155,279,334,471,319,235,239);
         this.WORM_COORDS[2596] = new Array(11,604,500,339,969,489,107,207,919,275,947,437,1202,432,68,605,1149,437,1083,530,296,336,790,162,1240,540,1029,481,637,223,404,375,203,263,843,615,821,215,712,189);
         this.WORM_COORDS[2597] = new Array(145,202,200,263,1201,433,589,193,1142,439,1257,595,828,223,423,401,91,597,355,322,914,280,511,305,172,616,998,483,1100,530,794,164,275,334,110,421,17,593,904,225);
         this.WORM_COORDS[2598] = new Array(542,308,245,238,291,336,977,486,20,592,428,411,1216,432,934,230,1051,520,801,621,809,449,1297,600,388,297,92,597,857,244,1243,540,1126,536,173,201,1150,437,481,473);
         this.WORM_COORDS[2599] = new Array(211,239,950,249,671,210,335,304,618,235,850,428,1096,530,444,436,126,536,1296,600,158,204,857,612,88,598,24,592,783,447,1037,518,985,484,1152,437,479,318,1239,540);
         this.WORM_COORDS[2600] = new Array(922,230,208,221,70,271,320,200,489,606,1267,494,502,179,1063,298,1224,240,511,307,1299,272,684,430,425,170,304,605,286,448,586,603,127,491,617,255,1126,236,149,208);
         this.WORM_COORDS[2601] = new Array(10,285,820,176,158,206,931,228,691,434,630,253,666,343,374,334,101,500,511,474,1072,169,1182,356,394,391,65,273,400,611,559,381,225,233,1256,241,426,169,532,270);
         this.WORM_COORDS[2602] = new Array(504,284,86,258,350,312,1282,507,594,253,794,182,719,216,252,414,880,191,204,331,298,212,1136,375,1222,240,591,603,266,495,188,213,330,614,1014,175,949,217,953,343);
         this.WORM_COORDS[2603] = new Array(564,292,446,173,490,479,1300,273,418,524,87,257,231,243,351,312,341,613,672,423,536,572,824,176,653,264,928,228,31,377,610,602,778,240,1040,344,661,340,1071,171);
         this.WORM_COORDS[2604] = new Array(1197,300,561,292,633,253,279,558,1155,367,517,458,77,266,1025,342,178,209,933,316,736,219,783,303,377,328,282,440,962,204,252,203,487,177,853,177,1225,483,1095,272);
         this.WORM_COORDS[2605] = new Array(206,221,568,293,480,457,24,284,327,208,335,614,618,254,187,332,697,361,1154,367,729,211,1027,343,1062,196,422,171,20,585,277,182,927,229,127,220,1012,176,1279,503);
         this.WORM_COORDS[2606] = new Array(39,284,861,175,737,220,708,358,632,253,362,324,214,225,974,194,1197,300,1163,364,888,286,331,218,438,171,299,600,101,242,1113,179,1024,176,271,298,1051,337,1108,286);
         this.WORM_COORDS[2607] = new Array(415,177,620,602,122,225,305,606,997,182,396,300,643,256,1237,243,691,434,550,281,1042,344,58,279,892,288,278,182,530,376,1158,366,715,222,583,396,981,382,483,173);
         this.WORM_COORDS[2608] = new Array(1155,367,926,229,1294,539,722,213,266,308,342,613,349,312,1228,241,954,345,1281,247,1121,195,709,358,185,212,266,192,683,430,453,171,104,498,654,266,592,253,71,270);
         this.WORM_COORDS[2609] = new Array(1173,360,249,204,326,205,243,267,597,252,140,485,666,343,1247,243,78,265,1111,177,951,217,173,208,542,273,566,578,487,177,1041,187,683,430,807,179,517,458,279,436);
         this.WORM_COORDS[2610] = new Array(573,598,791,183,1295,249,223,231,545,281,57,279,895,290,1049,339,412,181,165,206,486,471,1081,164,685,431,1281,505,1229,241,659,340,727,211,305,205,647,258,959,353);
         this.WORM_COORDS[2611] = new Array(1296,251,1162,364,386,313,851,177,932,228,266,420,568,293,34,282,1259,490,1113,179,560,568,891,288,292,226,776,239,98,246,795,182,1018,175,230,289,548,376,706,358);
         this.WORM_COORDS[2612] = new Array(1261,241,264,194,347,312,775,226,1061,197,273,427,1126,372,603,252,577,603,292,589,211,222,1196,349,424,170,849,177,672,423,899,291,316,200,531,270,93,250,1045,343);
         this.WORM_COORDS[2613] = new Array(378,326,41,288,288,452,1234,243,431,169,992,386,923,230,272,192,155,206,1063,193,786,206,671,421,256,292,351,420,1154,367,546,281,818,286,701,360,656,270,713,227);
         this.WORM_COORDS[2614] = new Array(403,229,1105,174,98,246,268,304,1152,368,580,257,702,358,573,598,338,314,395,301,1031,178,194,216,334,230,867,176,1198,287,1283,247,900,292,802,182,265,193,677,426);
         this.WORM_COORDS[2615] = new Array(485,608,994,385,790,302,203,219,849,177,657,340,321,317,134,216,898,291,1012,176,275,184,1119,346,953,213,688,434,593,253,5,285,478,170,1182,356,481,458,1252,389);
         this.WORM_COORDS[2616] = new Array(349,312,169,207,100,243,580,257,831,177,1128,374,1217,242,1278,245,523,566,780,240,692,367,1191,352,230,241,412,369,487,473,951,340,676,425,1044,191,1256,640,314,611);
         this.WORM_COORDS[2617] = new Array(399,298,277,552,504,183,1093,166,1190,352,88,256,1247,243,596,603,888,286,278,435,526,275,1251,383,841,180,546,567,763,212,584,396,1133,376,252,203,82,504,656,270);
         this.WORM_COORDS[2618] = new Array(842,179,673,423,40,285,1185,354,72,504,1128,374,1276,243,354,612,620,254,243,411,597,603,891,288,150,208,545,281,484,271,1205,254,416,176,272,296,1126,236,943,222);
         this.WORM_COORDS[2619] = new Array(39,284,1198,287,584,255,454,171,325,317,806,180,532,270,917,231,1057,200,47,362,858,176,262,310,1279,503,1132,376,1296,251,898,291,1032,344,1119,187,665,410,319,612);
         this.WORM_COORDS[2620] = new Array(817,176,377,328,1287,247,1118,342,93,250,717,219,416,176,564,384,899,291,1026,176,256,292,956,210,1279,503,1175,359,42,304,883,203,385,612,554,283,93,501,682,429);
         this.WORM_COORDS[2621] = new Array(1133,376,565,292,501,177,139,213,363,328,1273,498,88,256,548,566,15,589,1201,268,240,267,822,176,24,284,907,297,253,203,1054,199,42,366,304,605,712,292,665,343);
         this.WORM_COORDS[2622] = new Array(253,414,537,270,1152,368,414,178,266,192,872,181,992,184,312,610,720,215,1029,343,1297,252,79,264,1046,192,653,337,614,256,269,302,1268,494,179,331,1236,243,3,286);
         this.WORM_COORDS[2623] = new Array(688,434,48,307,313,611,404,222,907,297,871,180,498,607,712,292,464,170,103,240,973,195,273,191,1286,515,692,367,633,253,1275,242,380,322,767,214,1176,358,1200,276);
         this.WORM_COORDS[2624] = new Array(1065,188,1156,367,303,604,487,473,533,270,235,274,669,418,1121,195,863,175,56,280,960,206,1256,241,456,171,132,218,30,475,291,186,558,567,465,271,4,286,596,253);
         this.WORM_COORDS[2625] = new Array(1251,383,40,285,648,259,269,192,363,328,488,176,246,413,513,312,1203,261,1152,368,202,219,1292,533,782,303,731,211,296,596,607,603,666,343,411,184,571,264,919,304);
         this.WORM_COORDS[2626] = new Array(1007,178,731,211,581,256,302,603,904,295,270,501,537,374,49,482,800,182,1278,502,1138,374,952,215,500,489,384,315,483,608,77,266,190,214,497,176,1277,244,657,272);
         this.WORM_COORDS[2627] = new Array(1266,493,116,495,274,428,388,310,562,384,463,170,83,262,250,203,589,254,751,211,169,207,307,203,1147,371,17,586,962,357,825,176,1228,241,297,597,1080,165,905,296);
         this.WORM_COORDS[2628] = new Array(467,170,60,494,627,254,543,277,732,212,1004,377,1148,370,906,296,319,612,168,207,1085,164,1243,245,499,489,523,566,699,360,1014,175,258,203,397,299,961,204,317,200);
         this.WORM_COORDS[2629] = new Array(1261,491,28,282,1027,177,1050,339,723,212,335,233,925,229,672,423,268,192,212,223,321,613,370,342,155,477,1150,369,514,318,270,501,250,273,108,234,260,416,560,381);
         this.WORM_COORDS[2630] = new Array(1160,365,833,177,1198,287,891,288,56,280,779,240,119,226,218,227,1027,177,472,284,1261,241,1060,304,712,292,979,381,527,273,341,314,676,425,567,580,1110,176,885,216);
         this.WORM_COORDS[2631] = new Array(1179,357,191,214,44,305,589,254,666,412,308,202,344,314,252,414,419,174,1110,176,1297,552,999,181,639,254,482,464,815,176,884,206,696,362,1054,199,894,289,12,593);
         this.WORM_COORDS[2632] = new Array(413,179,516,324,497,176,1182,356,542,571,347,312,800,182,722,213,971,196,631,253,1296,251,319,612,231,243,42,304,1238,243,14,590,1131,376,817,287,225,307,302,207);
         this.WORM_COORDS[2633] = new Array(435,170,699,360,501,177,18,286,503,487,1290,247,1140,374,607,253,1291,528,264,194,728,211,1200,276,358,317,193,215,307,607,1094,167,317,414,1017,175,967,200,99,244);
         this.WORM_COORDS[2634] = new Array(1013,175,554,566,355,613,212,223,1289,523,52,285,692,367,507,202,500,607,886,285,1103,172,917,231,800,182,13,591,777,240,272,192,1265,241,1201,268,274,428,1151,368);
         this.WORM_COORDS[2635] = new Array(522,320,1057,200,248,205,359,318,43,305,947,219,499,607,665,343,685,431,721,214,598,252,1161,365,86,503,303,604,460,171,146,210,94,249,535,270,24,490,484,467);
         this.WORM_COORDS[2636] = new Array(1079,280,912,234,192,332,452,172,1082,164,510,477,1194,351,570,266,339,314,90,503,575,603,825,176,981,382,172,208,253,203,1239,243,781,303,1133,376,672,423,39,284);
         this.WORM_COORDS[2637] = new Array(515,320,945,220,399,298,571,264,1030,178,691,369,1251,242,602,603,101,242,1184,355,675,424,784,208,714,224,288,580,1056,321,301,208,199,218,847,178,969,367,1283,509);
         this.WORM_COORDS[2638] = new Array(232,248,113,231,406,205,1050,339,311,201,1226,483,550,281,974,375,1165,363,1293,536,886,221,1231,242,401,295,730,211,340,613,782,303,350,312,123,493,323,415,1064,191);
         this.WORM_COORDS[2639] = new Array(561,569,385,612,228,237,1289,247,686,432,328,209,640,254,490,479,13,285,780,240,1093,166,1165,363,278,435,953,213,398,299,861,175,178,209,258,299,1201,268,659,340);
         this.WORM_COORDS[2640] = new Array(1293,536,1038,185,374,334,27,381,587,603,89,255,483,173,601,252,189,213,115,496,1164,364,1223,240,235,274,807,179,964,361,930,228,870,179,12,285,535,270,498,488);
         this.WORM_COORDS[2641] = new Array(309,610,1106,174,738,221,1152,368,713,435,368,341,829,177,619,254,537,605,501,489,1287,247,215,226,1035,345,523,319,106,237,284,444,24,580,1200,472,1092,272,409,190);
         this.WORM_COORDS[2642] = new Array(15,285,497,488,1144,372,1038,185,109,496,295,594,932,228,521,321,1208,249,900,292,261,198,154,207,1287,247,319,415,601,252,212,328,605,530,739,220,1237,485,1041,344);
         this.WORM_COORDS[2643] = new Array(642,255,1098,272,173,208,104,239,933,227,322,613,14,590,1247,243,1257,490,870,179,253,281,51,307,777,240,417,175,545,281,717,219,1107,175,356,315,702,358,1143,372);
         this.WORM_COORDS[2644] = new Array(1125,371,1106,174,903,294,117,228,674,423,310,414,845,178,484,174,42,304,1179,357,1282,507,387,311,1269,241,263,194,941,223,356,546,296,596,316,200,1039,185,665,343);
         this.WORM_COORDS[2645] = new Array(878,186,1123,222,1044,191,379,324,92,252,24,284,660,340,680,429,254,203,494,606,13,398,1144,372,462,170,1215,243,776,239,495,485,1068,290,189,213,1038,345,212,328);
         this.WORM_COORDS[2646] = new Array(246,208,671,421,1193,351,473,283,1222,240,1106,174,1296,548,327,208,269,500,1005,178,779,240,62,274,17,391,501,177,509,478,360,319,701,360,315,612,471,608,937,321);
         this.WORM_COORDS[2647] = new Array(1138,374,540,374,370,342,987,186,326,614,216,226,658,275,563,292,311,201,0,292,936,226,109,233,1293,248,771,218,1229,483,1078,165,642,335,667,414,502,179,437,171);
         this.WORM_COORDS[2648] = new Array(1244,245,280,561,533,270,682,429,483,173,491,606,1259,490,1032,344,1187,354,89,255,391,306,339,500,45,306,353,612,917,304,240,267,772,304,756,211,270,192,954,212);
         this.WORM_COORDS[2649] = new Array(569,584,1197,300,954,212,140,212,1294,248,1054,330,831,177,319,200,685,431,749,211,46,306,1168,362,640,254,407,373,485,469,1228,241,203,331,312,414,195,216,234,277);
         this.WORM_COORDS[2650] = new Array(206,221,1269,241,805,181,500,489,110,233,1208,249,43,366,700,360,261,417,257,485,686,432,389,612,593,603,711,295,382,319,40,285,1036,345,305,205,1166,363,510,302);
         this.WORM_COORDS[2651] = new Array(520,322,60,276,165,206,799,182,1102,171,230,241,284,444,321,613,1185,354,944,221,573,598,742,215,498,607,32,573,315,200,1283,509,678,427,1221,240,385,313,410,187);
         this.WORM_COORDS[2652] = new Array(400,296,613,256,557,292,442,171,994,183,806,180,336,236,55,281,719,216,1151,368,21,506,1058,199,215,226,158,206,339,314,373,422,1253,488,269,192,308,608,265,494);
         this.WORM_COORDS[2653] = new Array(715,435,1151,368,362,612,1235,484,389,404,593,253,923,230,370,342,1116,182,48,307,774,223,291,186,98,246,529,271,999,384,20,585,1231,242,869,178,1298,271,714,224);
         this.WORM_COORDS[2654] = new Array(647,258,701,360,450,174,906,296,126,222,1166,363,478,449,293,592,248,413,1264,493,589,397,1297,252,22,289,687,433,236,272,993,184,801,182,1075,283,1201,473,512,309);
         this.WORM_COORDS[2655] = new Array(907,297,439,171,504,183,533,270,250,414,100,500,1247,243,1125,232,1197,300,772,220,598,252,107,236,20,585,1029,177,301,208,2,287,508,584,590,603,952,215,1217,480);
         this.WORM_COORDS[2656] = new Array(1123,222,806,180,93,250,712,292,1155,367,1081,164,323,613,1254,242,745,212,588,603,82,504,973,195,417,175,260,416,189,213,1263,493,20,287,395,301,343,314,579,257);
         this.WORM_COORDS[2657] = new Array(388,310,588,254,587,396,871,180,10,285,939,224,1296,251,1042,344,1172,360,1221,240,436,170,1036,183,84,261,404,376,175,329,318,414,517,324,1261,491,669,347,254,203);
         this.WORM_COORDS[2658] = new Array(945,331,1073,167,1236,484,935,226,533,568,55,281,363,328,161,206,517,324,1132,376,1232,242,307,203,628,253,225,233,1066,293,666,343,527,273,329,614,16,392,264,310);
         this.WORM_COORDS[2659] = new Array(200,218,1234,243,981,190,595,253,21,506,236,272,787,303,839,179,586,396,708,358,119,226,914,231,1178,357,518,323,364,330,540,271,50,307,906,296,1287,247,713,227);
         this.WORM_COORDS[2660] = new Array(988,385,1265,493,385,313,1016,175,1104,173,233,280,599,252,1184,355,855,176,901,293,138,213,171,326,952,215,1197,300,1228,241,315,612,209,221,692,367,34,282,676,425);
         this.WORM_COORDS[2661] = new Array(259,203,490,176,381,612,1130,377,384,315,797,182,885,216,580,257,300,601,1212,479,1198,287,966,200,513,382,410,187,1048,194,73,504,233,280,1250,242,319,200,377,420);
         this.WORM_COORDS[2662] = new Array(650,337,784,303,1126,236,1294,248,449,174,1023,176,1163,364,187,213,582,256,766,214,104,239,1268,494,894,289,271,192,648,259,1041,344,698,437,1115,181,12,407,562,570);
         this.WORM_COORDS[2663] = new Array(244,267,663,342,26,282,406,611,421,172,771,218,838,178,1068,178,388,310,260,488,632,253,1143,372,333,224,34,374,65,499,306,606,543,277,255,203,1209,248,90,253);
         this.WORM_COORDS[2664] = new Array(1238,243,20,287,732,212,649,260,488,176,917,231,1023,176,794,182,334,417,1175,359,1223,482,319,200,513,312,1077,165,978,379,894,289,690,434,12,407,1288,247,595,603);
         this.WORM_COORDS[2665] = new Array(1017,175,602,252,1138,374,920,230,193,215,365,334,683,430,398,384,309,201,351,612,764,212,8,285,1251,242,584,603,98,501,404,222,72,270,490,606,507,482,328,416);
         this.WORM_COORDS[2666] = new Array(59,277,661,340,1267,241,196,216,651,262,675,424,820,176,517,324,382,319,1121,195,285,181,1013,175,2,287,1175,359,601,252,124,223,124,492,531,566,962,204,314,414);
         this.WORM_COORDS[2667] = new Array(335,233,1163,364,1252,242,241,267,553,283,296,596,666,343,1022,176,269,192,368,341,434,170,947,219,798,182,499,177,712,292,688,434,157,206,94,249,15,589,1275,499);
         this.WORM_COORDS[2668] = new Array(706,358,680,429,76,266,221,316,27,381,353,313,1045,343,526,275,1148,370,904,295,504,486,309,610,880,191,628,253,532,376,1220,240,230,241,168,207,1067,182,472,420);
         this.WORM_COORDS[2669] = new Array(1298,271,897,291,534,270,1173,360,1206,252,1123,364,977,192,327,208,21,584,841,180,168,207,1089,165,225,233,370,342,801,299,672,423,641,255,1250,380,46,306,428,169);
         this.WORM_COORDS[2670] = new Array(335,233,1200,276,909,299,1272,497,351,312,555,284,1066,185,53,486,32,282,1151,368,282,181,998,182,700,360,716,221,341,419,321,613,794,182,1047,341,186,332,1269,241);
         this.WORM_COORDS[2671] = new Array(1044,191,477,170,321,613,1258,241,592,253,711,295,274,516,1122,214,642,255,325,416,132,218,963,360,1201,268,396,387,523,319,857,176,37,283,1145,372,1254,401,262,195);
         this.WORM_COORDS[2672] = new Array(592,603,39,284,1018,175,941,223,386,313,805,181,292,589,542,273,652,263,1077,281,960,354,688,434,1293,536,1277,244,369,423,457,171,92,502,270,300,186,212,535,374);
         this.WORM_COORDS[2673] = new Array(1293,248,1028,177,79,264,254,287,348,312,295,218,636,254,1108,175,495,176,1243,245,717,219,149,208,309,610,1172,360,970,197,1066,293,1277,501,324,416,514,318,700,360);
         this.WORM_COORDS[2674] = new Array(1050,196,259,203,201,218,779,240,724,211,679,428,968,198,1125,232,381,320,37,283,335,233,1180,357,910,299,580,257,29,379,1285,247,431,169,123,224,235,274,1230,242);
         this.WORM_COORDS[2675] = new Array(1241,244,489,176,1175,359,388,612,373,337,918,304,520,322,328,209,280,437,161,206,950,217,1071,171,701,437,782,303,604,532,1056,321,1125,232,93,250,639,254,3,286);
         this.WORM_COORDS[2676] = new Array(530,270,194,332,1275,499,126,222,409,190,564,384,1275,242,1199,471,949,217,1063,193,25,580,360,319,232,248,556,566,704,358,1152,368,49,307,685,431,880,282,788,186);
         this.WORM_COORDS[2677] = new Array(312,610,610,253,49,307,559,292,103,240,340,419,469,170,1190,352,686,432,935,318,1237,243,729,211,347,312,696,362,1131,376,393,393,336,236,810,176,407,200,402,293);
         this.WORM_COORDS[2678] = new Array(104,239,579,257,487,177,839,179,1227,241,36,283,237,270,418,524,1177,358,374,422,315,612,180,210,912,234,639,254,758,211,598,603,537,374,345,312,1106,174,999,181);
         this.WORM_COORDS[2679] = new Array(576,321,448,173,1177,358,85,260,1276,243,387,311,801,182,333,224,562,384,889,286,635,254,691,369,755,307,265,309,12,285,883,203,1085,164,953,343,504,183,231,243);
         this.WORM_COORDS[2680] = new Array(685,431,447,173,309,201,640,254,277,552,102,241,1040,186,696,362,902,294,961,356,159,206,492,481,810,176,1067,292,504,183,25,283,349,312,1284,247,576,603,1146,371);
         this.WORM_COORDS[2681] = new Array(317,200,725,211,440,171,575,391,901,293,292,589,1164,364,151,208,981,190,568,293,1218,241,517,324,1295,545,230,241,880,191,1063,193,1114,180,620,254,497,271,359,318);
         this.WORM_COORDS[2682] = new Array(1009,176,600,603,362,324,301,208,940,324,546,567,180,210,626,254,1238,485,985,383,24,284,1073,167,749,211,535,270,1187,354,347,612,243,267,438,171,309,414,1267,241);
         this.WORM_COORDS[2683] = new Array(578,257,1144,372,1081,164,945,220,1291,247,328,614,263,491,686,432,763,212,632,253,157,206,88,503,4,286,56,280,249,413,344,314,1237,243,581,603,1069,290,21,387);
         this.WORM_COORDS[2684] = new Array(590,603,922,230,148,208,698,360,1224,240,482,172,577,258,1039,185,355,314,1227,483,1105,278,430,169,318,200,522,320,1149,370,277,552,789,184,240,267,278,435,98,246);
         this.WORM_COORDS[2685] = new Array(448,173,319,415,351,612,294,592,974,375,1135,376,896,290,609,253,341,314,1007,178,14,590,840,180,75,504,23,289,1096,168,1209,248,173,208,513,312,678,427,255,203);
         this.WORM_COORDS[2686] = new Array(88,256,365,334,375,421,28,282,517,458,953,213,232,282,1284,247,875,183,598,252,1029,177,165,206,1148,370,808,178,1216,242,478,278,287,449,307,203,292,589,567,386);
         this.WORM_COORDS[2687] = new Array(93,250,295,218,654,266,716,221,1295,545,49,307,1048,194,540,271,1294,248,342,314,235,274,1202,264,690,434,925,229,1262,492,208,221,804,182,1181,356,465,170,872,181);
         this.WORM_COORDS[2688] = new Array(371,422,371,340,611,254,305,205,1034,180,791,183,785,303,321,613,685,431,1281,247,412,181,1205,254,518,323,12,593,273,427,1190,352,1097,169,456,269,111,232,50,307);
         this.WORM_COORDS[2689] = new Array(14,590,86,258,1279,246,1113,179,714,224,296,216,829,177,1253,488,710,333,771,218,136,214,520,322,682,429,1135,376,301,602,450,174,941,327,1194,351,24,284,885,216);
         this.WORM_COORDS[2690] = new Array(545,281,380,322,482,172,899,291,681,429,1123,222,57,279,770,217,863,175,286,448,295,218,1040,186,1190,352,1269,495,975,376,928,228,229,239,597,252,652,263,1076,282);
         this.WORM_COORDS[2691] = new Array(1292,247,106,237,312,610,329,416,1231,242,277,284,984,383,453,171,861,175,1274,499,936,226,634,253,989,186,525,316,1188,354,1039,185,899,291,1133,376,681,429,575,603);
         this.WORM_COORDS[2692] = new Array(1179,357,1217,242,735,218,682,429,273,427,548,281,696,362,1075,165,95,248,40,285,828,276,1019,176,951,217,365,612,633,253,573,598,1283,509,356,315,985,383,858,176);
         this.WORM_COORDS[2693] = new Array(1261,241,569,268,289,454,239,267,475,438,427,169,1123,364,110,496,866,176,1041,344,648,259,261,198,132,218,752,211,594,603,928,228,992,184,325,614,667,344,1071,171);
         this.WORM_COORDS[2694] = new Array(959,353,599,252,713,227,245,267,259,203,1199,281,16,588,25,283,1290,247,1269,495,793,182,910,299,377,328,502,179,334,230,327,416,1063,298,1184,355,703,358,142,211);
         this.WORM_COORDS[2695] = new Array(1009,176,988,385,1231,242,231,243,315,612,369,343,20,287,1288,247,1146,371,692,367,681,429,574,261,1288,521,1260,641,510,302,486,176,1045,343,117,495,891,288,159,206);
         this.WORM_COORDS[2696] = new Array(185,212,319,612,1116,182,847,178,116,229,323,317,519,322,495,485,710,333,1142,373,248,413,119,494,1282,247,941,223,480,170,593,253,476,608,755,211,237,270,1227,241);
         this.WORM_COORDS[2697] = new Array(578,603,230,241,914,231,231,410,1288,521,871,180,291,186,652,263,516,462,158,206,682,429,595,253,36,283,1048,341,1217,242,212,328,326,614,1101,171,967,200,536,270);
         this.WORM_COORDS[2698] = new Array(46,306,1038,345,742,215,497,488,499,177,179,209,75,504,1166,363,704,358,100,243,337,245,1053,198,1297,252,1239,243,1295,545,630,253,844,179,930,228,372,338,507,292);
         this.WORM_COORDS[2699] = new Array(893,289,257,296,698,360,299,600,983,189,288,182,392,304,1222,240,1196,349,548,281,135,215,1289,247,743,214,814,176,320,415,1113,314,1049,195,480,170,191,214,625,254);
         this.WORM_COORDS[2700] = new Array(860,223,1117,512,471,315,235,343,1095,201,1222,271,67,416,433,534,767,358,725,241,94,624,487,444,530,393,1017,206,592,207,1236,500,295,566,195,440,331,499,1181,457);
         this.WORM_COORDS[2701] = new Array(631,213,348,493,216,436,1164,241,545,309,948,195,971,377,836,226,1263,512,332,433,287,299,759,355,251,351,1227,270,151,313,540,398,445,300,57,427,176,374,1031,196);
         this.WORM_COORDS[2702] = new Array(502,352,1013,216,214,437,1291,545,26,445,317,358,709,235,340,495,1013,344,112,309,421,283,1131,206,290,299,879,228,311,575,1072,193,413,368,481,442,249,352,164,355);
         this.WORM_COORDS[2703] = new Array(459,308,102,306,554,298,404,524,314,575,795,364,82,395,396,363,159,542,619,205,1184,240,969,374,280,310,352,493,1115,210,215,326,742,265,1237,500,18,448,523,386);
         this.WORM_COORDS[2704] = new Array(525,391,883,231,1294,551,367,400,1239,502,595,212,721,238,267,341,58,426,325,505,1171,258,1029,345,169,363,96,306,207,439,97,623,646,262,763,357,1235,272,551,301);
         this.WORM_COORDS[2705] = new Array(764,357,40,447,574,218,1145,213,459,308,549,301,658,239,850,223,1044,195,71,319,301,571,422,534,305,340,742,265,357,493,805,282,1246,504,136,306,637,328,1003,346);
         this.WORM_COORDS[2706] = new Array(1042,194,822,232,454,306,1255,506,43,448,112,309,252,350,349,493,989,357,546,305,907,257,622,206,793,363,1118,513,230,427,409,369,911,181,1163,239,321,416,1159,460);
         this.WORM_COORDS[2707] = new Array(437,292,1292,548,631,213,1123,515,170,364,785,362,201,440,291,299,92,625,33,444,572,286,1056,197,886,232,70,321,950,196,981,369,1211,235,296,567,367,495,146,310);
         this.WORM_COORDS[2708] = new Array(53,434,357,493,878,228,386,367,321,416,422,282,253,350,1146,214,155,319,585,205,709,235,314,575,297,299,961,210,814,236,204,439,796,364,1153,463,1235,272,1300,562);
         this.WORM_COORDS[2709] = new Array(1040,194,285,301,612,205,1202,234,359,493,311,575,862,223,1234,497,1094,261,56,428,1097,203,139,307,482,443,166,359,788,363,1284,536,438,294,1112,510,320,371,540,398);
         this.WORM_COORDS[2710] = new Array(1194,242,813,237,979,372,280,531,792,363,635,233,386,506,306,342,431,285,1096,202,968,237,25,445,391,363,506,352,121,305,1238,501,1126,517,333,569,218,326,731,241);
         this.WORM_COORDS[2711] = new Array(365,494,332,433,802,286,1225,270,844,223,1251,505,88,306,434,288,909,181,301,301,1237,640,574,218,392,363,198,440,772,359,551,301,55,430,536,396,478,442,237,344);
         this.WORM_COORDS[2712] = new Array(182,442,429,282,161,351,1269,517,393,363,80,310,590,205,944,191,1104,218,1211,235,702,235,533,394,331,432,317,358,805,282,825,231,948,343,1045,195,757,354,1004,345);
         this.WORM_COORDS[2713] = new Array(356,493,226,431,485,444,373,398,1062,194,79,311,241,347,1211,235,169,363,984,362,1254,506,693,236,923,182,545,309,789,363,58,426,886,232,455,307,1152,222,1299,560);
         this.WORM_COORDS[2714] = new Array(1147,215,936,187,513,357,186,440,431,285,658,239,831,228,145,309,67,416,296,299,1038,346,476,441,245,351,789,363,726,241,368,399,1190,459,1026,198,153,540,431,534);
         this.WORM_COORDS[2715] = new Array(645,265,182,442,510,353,908,181,317,575,1262,511,1151,464,806,363,299,299,344,493,624,207,490,445,856,223,984,362,67,416,1083,195,151,313,14,450,1140,210,430,283);
         this.WORM_COORDS[2716] = new Array(224,330,1177,271,39,447,1274,523,337,495,772,359,556,298,288,299,1133,207,107,307,526,391,1235,272,1012,344,1061,194,474,317,615,205,824,231,159,348,906,181,214,437);
         this.WORM_COORDS[2717] = new Array(1186,458,949,195,309,344,468,440,184,441,1030,345,16,449,702,235,1218,243,1275,524,77,312,508,352,820,345,1238,641,437,292,245,351,174,371,767,358,406,526,334,437);
         this.WORM_COORDS[2718] = new Array(618,318,406,368,1263,512,337,495,330,431,161,351,275,319,473,316,1070,193,894,187,1131,514,30,444,545,309,223,329,517,366,597,215,121,580,682,237,195,440,1048,346);
         this.WORM_COORDS[2719] = new Array(70,416,400,363,1069,193,174,371,851,223,149,311,484,443,365,494,631,213,295,299,1296,553,461,310,313,575,1126,517,1224,486,540,398,1194,242,910,181,552,300,773,359);
         this.WORM_COORDS[2720] = new Array(56,428,1290,544,1186,240,632,214,287,299,460,309,357,493,1238,501,921,182,371,398,489,444,119,579,1095,201,759,355,130,306,976,378,813,357,557,298,77,312,511,354);
         this.WORM_COORDS[2721] = new Array(891,196,133,306,772,359,656,240,312,575,720,237,1099,205,991,354,449,304,557,298,528,393,1014,213,482,443,438,533,198,440,71,416,131,583,1292,548,241,347,1227,270);
         this.WORM_COORDS[2722] = new Array(739,243,996,350,1150,465,327,426,586,205,571,288,1274,523,70,416,906,181,247,352,204,439,353,493,312,575,792,363,318,360,484,443,681,237,724,340,1058,196,1191,240);
         this.WORM_COORDS[2723] = new Array(266,341,1100,207,407,371,141,308,619,205,793,363,33,444,1292,548,570,299,1004,345,438,294,190,515,867,224,809,278,1228,270,508,352,403,524,341,494,211,438,321,416);
         this.WORM_COORDS[2724] = new Array(412,531,1188,240,492,355,408,370,875,227,32,444,710,235,351,493,1005,345,149,543,817,234,483,443,652,244,278,313,584,205,770,359,966,227,1266,515,207,439,546,305);
         this.WORM_COORDS[2725] = new Array(312,575,1286,539,1185,240,741,246,366,401,236,344,140,307,66,416,1129,206,417,533,86,307,150,541,1231,493,307,342,808,279,417,302,998,348,532,394,743,350,871,225);
         this.WORM_COORDS[2726] = new Array(790,363,481,442,632,214,427,281,297,569,888,233,212,438,1172,259,1247,504,1037,194,371,398,369,496,43,448,234,341,728,241,645,265,1100,207,129,305,533,394,915,181);
         this.WORM_COORDS[2727] = new Array(1211,468,870,225,165,551,1039,194,37,446,692,236,342,494,585,205,529,393,1225,633,1191,240,1138,209,621,319,304,340,381,401,938,189,235,343,161,351,327,426,745,268);
         this.WORM_COORDS[2728] = new Array(230,336,115,306,335,439,479,442,295,299,535,395,924,183,1009,344,619,205,50,447,1167,249,701,235,811,238,1241,505,1085,196,391,511,201,440,389,364,306,574,467,313);
         this.WORM_COORDS[2729] = new Array(777,360,58,426,352,493,828,229,643,280,1141,210,131,306,624,207,1119,514,714,235,1219,471,482,443,980,372,938,189,252,350,319,363,325,423,452,305,1026,198,412,368);
         this.WORM_COORDS[2730] = new Array(884,231,195,440,665,234,73,317,339,495,371,398,772,359,827,230,67,416,1229,270,431,534,565,298,1126,206,1176,268,516,365,144,309,957,356,1249,504,484,443,713,337);
         this.WORM_COORDS[2731] = new Array(172,368,868,224,86,632,1220,273,775,360,106,525,676,236,104,307,337,495,520,372,730,241,17,448,1110,211,1271,520,446,301,556,298,397,517,969,241,400,363,1163,239);
         this.WORM_COORDS[2732] = new Array(908,181,382,402,316,354,1221,271,131,306,462,311,16,449,1219,471,989,357,766,358,356,493,76,313,636,328,266,341,326,425,177,377,479,442,192,440,1139,210,887,233);
         this.WORM_COORDS[2733] = new Array(843,223,282,304,148,311,648,252,315,575,629,324,351,493,489,444,51,438,1126,206,436,290,979,372,1289,543,276,522,1058,196,1188,240,807,362,742,265,568,298,321,416);
         this.WORM_COORDS[2734] = new Array(91,306,1206,466,1225,270,591,206,395,363,462,311,796,364,200,440,1047,195,1280,531,523,386,345,493,324,421,293,299,990,355,652,244,919,182,1120,514,166,359,1120,207);
         this.WORM_COORDS[2735] = new Array(340,495,553,299,1208,234,305,340,1292,548,473,316,77,312,834,226,750,352,74,416,192,440,1158,230,325,423,538,397,392,363,1018,205,3,460,704,235,1237,500,979,372);
         this.WORM_COORDS[2736] = new Array(593,209,974,380,543,318,13,451,299,299,757,354,1230,270,80,396,368,399,480,442,314,575,423,281,882,230,1080,194,221,327,526,391,1166,248,180,442,668,234,937,188);
         this.WORM_COORDS[2737] = new Array(1286,539,1031,196,633,216,790,363,1199,236,803,284,181,442,970,376,500,352,1147,466,1226,489,713,235,447,303,133,306,939,189,266,341,827,230,348,493,56,428,640,329);
         this.WORM_COORDS[2738] = new Array(898,183,346,493,761,356,967,233,997,349,573,220,27,445,1125,516,1215,237,13,504,526,391,802,286,369,398,218,326,440,295,831,228,679,237,336,567,1136,208,1300,562);
         this.WORM_COORDS[2739] = new Array(111,557,90,306,745,268,282,304,555,298,665,234,877,228,1050,196,408,370,50,447,978,375,1232,494,1283,536,1231,270,210,438,330,431,454,306,965,225,226,332,1133,207);
         this.WORM_COORDS[2740] = new Array(983,365,499,352,1236,273,315,352,742,265,319,574,205,439,880,229,1238,501,296,299,26,445,344,493,116,306,819,234,1172,457,625,207,1214,626,1176,268,1297,555,1121,207);
         this.WORM_COORDS[2741] = new Array(58,426,270,340,984,362,696,236,757,354,627,209,184,441,445,300,110,308,1089,197,1241,505,944,191,1218,243,399,363,341,563,1109,509,558,298,803,284,337,495,330,431);
         this.WORM_COORDS[2742] = new Array(986,360,1194,242,962,214,499,352,763,357,317,358,662,235,741,246,1245,504,206,439,78,311,146,310,51,438,1100,207,897,184,482,443,290,299,1045,195,347,493,605,206);
         this.WORM_COORDS[2743] = new Array(1260,511,517,366,588,205,945,191,205,439,62,418,236,344,835,226,999,347,1130,206,142,308,1113,511,380,399,351,493,424,281,812,359,1300,562,6,457,719,236,639,234);
         this.WORM_COORDS[2744] = new Array(506,352,390,364,428,281,274,320,362,494,484,443,586,205,62,418,1,461,126,305,166,359,969,241,417,533,1230,637,204,439,1229,492,1004,345,909,181,845,223,1054,196);
         this.WORM_COORDS[2745] = new Array(1003,346,1019,204,759,355,881,230,204,439,63,418,296,567,1200,462,1151,220,161,351,690,237,462,311,545,309,1261,511,403,524,1100,207,10,454,255,350,73,317,337,495);
         this.WORM_COORDS[2746] = new Array(1242,505,543,318,321,416,1024,345,741,246,386,506,641,330,602,209,653,243,12,452,176,374,73,317,205,439,520,372,816,235,393,363,462,311,1031,277,480,442,894,187);
         this.WORM_COORDS[2747] = new Array(130,306,1190,240,1281,532,1122,207,59,422,389,509,332,433,394,363,544,313,771,359,310,345,526,391,172,368,693,236,884,231,453,306,1036,195,248,352,1127,517,186,440);
         this.WORM_COORDS[2748] = new Array(1102,222,563,298,495,352,375,498,1215,470,30,444,598,215,1213,236,153,315,411,368,1294,551,1032,196,226,332,975,379,430,283,308,343,315,575,73,317,705,235,919,182);
         this.WORM_COORDS[2749] = new Array(362,494,1267,516,751,352,990,355,79,449,888,233,5,458,696,236,1024,199,1087,196,569,298,161,351,520,372,267,341,208,439,71,319,1206,466,626,208,949,195,824,231);
         this.WORM_COORDS[2750] = new Array(497,352,738,242,553,299,944,191,394,363,62,418,267,341,1001,347,1229,492,355,493,418,297,1047,195,485,444,180,442,652,244,754,353,122,580,1108,213,1161,235,332,433);
         this.WORM_COORDS[2751] = new Array(536,396,1185,458,768,358,1236,500,345,493,264,343,872,225,685,238,58,426,214,437,370,398,1062,194,164,355,990,355,319,363,1178,273,1134,207,121,305,552,300,1296,553);
         this.WORM_COORDS[2752] = new Array(1267,516,97,306,47,450,978,375,237,344,396,363,1167,457,917,182,1218,243,460,309,532,394,350,493,801,364,557,298,489,444,675,236,322,573,970,249,321,416,1075,194);
         this.WORM_COORDS[2753] = new Array(733,344,156,320,519,370,295,299,1245,504,383,373,1100,207,207,439,102,306,644,275,1038,194,422,282,998,348,1179,244,1131,514,796,364,548,302,626,208,358,493,817,234);
         this.WORM_COORDS[2754] = new Array(1137,208,1014,344,303,339,808,279,647,332,599,213,789,363,524,391,1173,263,177,377,229,335,375,398,1201,463,1057,197,92,306,935,187,1254,506,309,574,885,232,1076,488);
         this.WORM_COORDS[2755] = new Array(117,560,1150,218,205,439,311,346,769,358,377,398,221,327,555,298,668,234,87,307,457,308,638,328,153,315,1266,515,888,233,483,443,574,218,353,493,55,430,1231,270);
         this.WORM_COORDS[2756] = new Array(438,294,1047,195,695,236,212,438,266,341,611,205,478,442,69,324,918,182,1275,524,33,444,809,278,1009,344,803,364,372,497,887,233,401,363,132,306,115,558,640,329);
         this.WORM_COORDS[2757] = new Array(519,370,122,305,271,339,414,368,774,360,339,495,5,458,1242,505,1141,210,77,400,1069,193,593,209,211,438,1214,626,840,224,543,318,449,304,1297,555,1016,208,481,442);
         this.WORM_COORDS[2758] = new Array(191,440,775,360,343,493,1259,509,134,306,534,395,880,229,39,447,412,368,457,308,235,343,1217,240,333,435,481,442,663,235,316,575,954,200,742,265,1076,194,1135,472);
         this.WORM_COORDS[2759] = new Array(165,357,1170,254,455,307,1102,222,384,370,35,445,628,210,340,495,1036,195,971,377,98,306,967,233,1239,502,491,357,305,340,806,281,802,364,185,440,329,429,1087,498);
         this.WORM_COORDS[2760] = new Array(947,341,357,493,282,304,189,440,466,312,569,298,111,309,890,234,684,238,166,359,329,429,840,224,34,445,1286,539,484,443,635,328,739,243,803,284,388,365,753,352);
         this.WORM_COORDS[2761] = new Array(1006,345,22,446,1201,463,236,344,705,235,340,564,638,234,837,225,442,297,407,371,1156,227,1268,517,562,298,523,386,727,341,950,196,1018,205,158,347,954,352,166,553);
         this.WORM_COORDS[2762] = new Array(1237,500,467,313,401,363,948,343,201,440,719,236,9,455,857,223,1199,236,489,444,784,362,242,349,566,298,87,307,621,206,1001,347,325,423,916,181,145,309,168,361);
         this.WORM_COORDS[2763] = new Array(192,440,49,451,1293,550,772,359,228,335,699,236,320,371,301,301,827,230,618,205,107,307,498,352,885,232,567,298,396,363,446,301,169,363,1234,271,989,357,358,493);
         this.WORM_COORDS[2764] = new Array(964,220,425,281,206,439,324,421,404,365,1009,344,1191,240,619,205,535,395,550,301,908,181,1264,513,311,575,830,228,154,316,265,342,707,235,1051,196,476,320,98,306);
         this.WORM_COORDS[2765] = new Array(372,398,1161,235,278,313,1298,558,916,181,1251,505,425,281,710,235,79,311,507,352,1098,204,991,354,204,439,485,444,342,494,588,205,1091,500,307,574,1218,629,1,461);
         this.WORM_COORDS[2766] = new Array(606,206,728,241,153,315,321,416,1277,527,324,573,877,228,469,314,1095,201,1211,468,949,195,213,437,759,355,381,401,345,493,564,298,98,306,527,392,7,456,306,342);
         this.WORM_COORDS[2767] = new Array(97,306,8,507,408,370,687,239,1081,195,325,423,499,352,988,358,235,343,1217,240,1230,492,832,227,489,444,1159,231,809,278,765,357,430,283,970,249,293,299,363,494);
         this.WORM_COORDS[2768] = new Array(981,369,277,315,177,377,1262,511,9,455,148,311,750,352,1218,243,453,306,1188,459,562,298,355,493,734,241,610,205,1139,210,403,365,187,440,91,306,323,419,464,438);
         this.WORM_COORDS[2769] = new Array(843,223,249,352,211,438,504,352,86,307,47,450,1186,240,1046,195,416,309,921,182,355,493,803,284,982,367,145,309,129,583,1125,206,764,357,1271,520,1200,462,489,444);
         this.WORM_COORDS[2770] = new Array(163,548,411,368,739,243,1297,555,261,344,56,428,965,369,768,358,1198,462,1145,467,191,440,1125,206,874,226,71,319,936,187,556,298,137,306,1060,195,324,421,637,234);
         this.WORM_COORDS[2771] = new Array(32,444,80,310,797,364,161,351,323,419,660,237,1178,273,1241,505,1123,207,513,357,817,234,185,440,361,493,482,443,1138,470,1002,346,888,233,742,265,605,206,373,398);
         this.WORM_COORDS[2772] = new Array(1165,458,101,306,664,234,368,399,494,353,1275,524,360,493,928,184,416,532,1088,197,440,295,971,377,811,238,295,299,779,360,56,428,1144,212,570,299,221,327,1123,515);
         this.WORM_COORDS[2773] = new Array(748,351,1039,194,484,443,521,373,1242,505,329,429,122,305,337,495,62,418,881,230,1201,234,988,358,264,343,131,583,738,242,1104,218,381,401,932,186,278,526,316,354);
         this.WORM_COORDS[2774] = new Array(25,445,261,344,716,235,337,495,313,349,1212,235,805,282,526,391,1271,520,370,398,404,524,1122,514,1037,194,552,300,417,302,1003,346,799,364,855,223,166,359,133,306);
         this.WORM_COORDS[2775] = new Array(529,393,328,428,1147,215,365,494,1225,270,473,316,123,581,689,239,958,204,594,210,420,286,754,353,315,352,261,344,802,286,1046,195,1272,521,865,224,978,375,1224,632);
         this.WORM_COORDS[2776] = new Array(455,307,1190,240,348,493,899,182,42,448,116,306,1274,523,278,313,1035,195,394,363,484,443,541,399,849,223,937,329,1215,470,796,364,808,279,552,300,172,368,1126,206);
         this.WORM_COORDS[2777] = new Array(435,289,410,369,1285,537,898,183,664,234,353,493,568,298,6,457,1200,235,967,233,527,392,99,306,1058,196,983,365,217,326,180,442,487,444,328,428,1222,483,750,352);
         this.WORM_COORDS[2778] = new Array(604,207,470,314,293,299,411,530,237,344,156,320,478,442,344,493,297,569,1197,238,1001,347,417,302,723,240,562,298,1265,514,47,450,1212,469,940,333,1096,202,842,223);
         this.WORM_COORDS[2779] = new Array(763,357,665,234,385,368,78,398,1168,457,89,306,909,181,243,351,575,216,178,379,182,442,844,223,1195,242,1297,555,538,397,342,494,1053,196,478,442,28,444,1242,505);
         this.WORM_COORDS[2780] = new Array(740,347,459,308,528,393,207,439,588,205,976,378,241,347,1210,468,649,250,376,499,1212,235,707,235,323,419,547,304,319,363,478,442,1159,460,1135,208,859,223,63,418);
         this.WORM_COORDS[2781] = new Array(764,357,356,493,104,620,1288,542,1220,273,965,225,151,313,874,226,1166,248,251,351,641,330,15,449,448,303,977,376,1097,203,198,440,477,442,292,299,1111,510,814,356);
         this.WORM_COORDS[2782] = new Array(907,181,851,223,1237,500,177,377,347,493,259,346,1290,544,75,314,327,426,565,298,966,370,391,363,454,306,188,440,57,427,490,445,600,211,749,352,1149,217,1221,271);
         this.WORM_COORDS[2783] = new Array(1131,206,940,189,1007,345,615,205,257,347,953,350,709,235,209,439,552,300,77,312,1070,193,463,311,1224,270,297,569,853,223,533,394,11,453,136,306,1258,508,411,368);
         this.WORM_COORDS[2784] = new Array(397,363,1019,344,431,534,5,458,1107,508,218,326,1273,522,532,394,352,493,825,231,153,540,1059,195,1217,240,674,235,67,416,876,227,965,225,427,281,576,215,180,442);
         this.WORM_COORDS[2785] = new Array(787,363,1237,500,969,374,126,305,296,567,454,306,527,392,384,370,638,328,188,440,584,205,1108,213,5,458,262,344,171,366,487,444,745,268,326,425,363,494,1168,250);
         this.WORM_COORDS[2786] = new Array(179,383,1218,243,486,444,75,314,634,218,795,364,1055,197,13,451,439,533,935,187,984,362,221,327,880,229,358,493,457,308,200,440,530,393,1045,347,714,235,1236,500);
         this.WORM_COORDS[2787] = new Array(72,416,1297,555,188,440,475,318,164,355,70,321,241,347,478,442,952,198,1217,628,1212,235,411,368,7,456,297,299,387,507,650,248,804,283,1241,505,596,214,321,416);
         this.WORM_COORDS[2788] = new Array(458,308,774,360,837,225,1005,345,28,444,1189,240,1288,542,300,300,134,583,405,367,1203,332,672,235,805,282,1060,195,950,196,333,435,144,309,198,440,534,395,598,215);
         this.WORM_COORDS[2789] = new Array(146,310,1114,512,479,442,461,310,78,311,782,361,315,575,405,367,885,232,563,298,1183,240,342,494,652,244,305,340,1240,502,139,583,524,391,60,420,184,441,216,326);
         this.WORM_COORDS[2790] = new Array(1300,562,18,448,636,233,786,362,306,342,464,438,1117,208,364,494,1009,344,289,555,200,440,157,347,447,303,223,329,1031,196,1231,270,1249,504,935,187,857,223,493,354);
         this.WORM_COORDS[2791] = new Array(742,265,345,493,464,527,823,232,1244,504,496,446,626,208,82,309,234,341,297,299,17,448,932,186,550,301,686,238,1018,205,1295,552,536,396,1011,344,1117,512,475,318);
         this.WORM_COORDS[2792] = new Array(140,307,561,298,338,495,527,392,618,205,369,398,1136,471,69,324,1293,550,23,445,1081,195,673,235,217,326,275,319,445,300,982,367,918,182,806,281,132,583,739,243);
         this.WORM_COORDS[2793] = new Array(258,347,879,228,1239,502,1120,207,104,620,187,440,86,307,1061,194,793,363,570,299,398,363,1087,498,67,416,645,265,1224,270,297,569,730,241,991,354,16,449,1300,562);
         this.WORM_COORDS[2794] = new Array(523,386,982,367,750,352,371,497,861,223,148,311,1015,210,552,300,300,571,938,189,49,451,1134,207,1233,496,206,439,252,350,734,241,624,207,803,284,387,366,296,299);
         this.WORM_COORDS[2795] = new Array(326,425,46,450,726,241,958,358,141,308,381,502,524,391,1035,195,448,531,1076,488,573,220,238,345,950,196,207,439,883,231,401,363,313,575,1256,507,1192,240,626,208);
         this.WORM_COORDS[2796] = new Array(1297,555,124,305,235,343,17,448,308,574,1192,240,687,239,1246,504,741,246,1046,195,449,304,328,428,407,371,899,182,491,357,837,225,1007,345,614,205,180,442,887,233);
         this.WORM_COORDS[2797] = new Array(399,520,715,235,795,364,853,223,184,441,88,306,1289,543,61,419,999,347,945,191,1092,501,165,357,538,397,430,283,1104,218,1222,271,635,233,1041,194,346,493,413,368);
         this.WORM_COORDS[2798] = new Array(1017,206,676,236,317,575,1079,194,838,225,125,305,1145,467,418,297,536,396,965,369,1257,507,1095,503,772,359,210,438,389,364,167,360,620,205,1165,243,342,494,22,446);
         this.WORM_COORDS[2799] = new Array(368,399,1186,240,822,232,422,282,527,392,1270,518,773,359,250,352,920,271,1211,622,151,313,716,235,1072,193,198,440,648,252,344,493,1017,206,995,351,951,197,484,443);
         this.WORM_COORDS[2800] = new Array(568,249,112,208,854,245,1007,429,1218,288,324,281,1233,435,241,347,754,266,71,341,1123,271,114,548,59,457,1052,491,520,303,416,338,658,294,970,354,1068,556,873,475);
         this.WORM_COORDS[2801] = new Array(253,365,678,281,50,351,920,331,211,242,762,267,842,364,549,243,1114,247,1061,543,501,317,1276,441,6,445,618,358,430,282,782,360,99,289,402,342,366,234,1034,449);
         this.WORM_COORDS[2802] = new Array(1073,546,1021,419,1236,434,984,351,287,258,181,212,369,239,509,311,259,364,410,342,795,333,844,255,432,281,1110,245,38,449,748,269,862,411,43,349,691,269,564,244);
         this.WORM_COORDS[2803] = new Array(21,435,1251,401,1002,353,138,204,1190,278,246,358,797,333,337,265,880,269,697,269,949,374,915,323,645,282,102,287,225,232,1139,291,1294,599,1025,426,514,307,962,503);
         this.WORM_COORDS[2804] = new Array(1098,349,468,237,811,328,1113,247,507,313,1233,435,300,248,377,254,0,446,1166,277,1042,467,603,352,703,270,1013,416,920,331,44,349,200,251,976,350,850,254,405,342);
         this.WORM_COORDS[2805] = new Array(675,292,870,273,76,311,1205,279,131,207,193,257,404,342,20,435,931,350,990,354,1299,602,579,352,156,332,842,509,1232,435,750,359,1133,347,583,253,1041,466,872,361);
         this.WORM_COORDS[2806] = new Array(938,359,604,352,447,275,190,260,1262,416,101,289,233,320,393,340,328,282,769,364,921,458,878,269,67,339,1149,281,1028,434,1206,279,1066,251,500,318,19,435,673,299);
         this.WORM_COORDS[2807] = new Array(638,286,272,358,962,374,791,418,722,238,88,296,376,253,405,342,1088,249,49,350,835,264,1133,347,495,321,1228,435,474,232,804,331,155,228,582,253,900,299,708,447);
         this.WORM_COORDS[2808] = new Array(563,243,826,269,157,335,1226,434,111,209,1127,347,38,351,215,238,91,293,1062,560,1004,353,254,365,679,279,464,245,340,261,628,333,934,353,1033,448,40,454,287,258);
         this.WORM_COORDS[2809] = new Array(1096,243,230,311,318,238,1229,494,31,549,1004,353,613,354,32,437,1044,472,792,333,429,282,400,342,908,310,660,298,226,232,761,266,37,352,1280,441,89,295,1134,347);
         this.WORM_COORDS[2810] = new Array(1034,449,399,341,488,323,681,418,746,239,100,289,1261,414,919,329,530,238,57,340,665,305,1075,243,1142,286,839,264,226,304,885,470,823,332,103,551,1296,600,4,445);
         this.WORM_COORDS[2811] = new Array(1155,279,112,208,56,340,138,534,238,336,308,240,37,447,1001,353,508,312,552,242,798,333,714,237,650,284,875,269,927,342,104,286,1112,348,600,352,444,275,1048,480);
         this.WORM_COORDS[2812] = new Array(671,305,982,350,189,259,1227,435,1187,279,898,296,620,360,426,285,1114,247,1034,449,719,237,818,328,826,269,530,297,399,341,1081,531,340,261,691,450,130,211,263,362);
         this.WORM_COORDS[2813] = new Array(758,266,1275,441,655,290,1021,419,46,349,558,241,252,364,1055,498,913,319,619,359,13,439,811,328,947,483,759,361,1174,278,209,244,46,550,364,232,1064,563,148,210);
         this.WORM_COORDS[2814] = new Array(47,526,278,355,999,353,1184,280,93,293,880,269,469,235,21,435,624,365,768,364,1032,444,410,342,499,319,1260,413,824,333,1104,243,1055,498,733,232,195,256,134,204);
         this.WORM_COORDS[2815] = new Array(700,269,1149,281,559,241,281,262,452,272,860,243,929,346,812,328,1073,243,1044,472,8,445,60,339,345,252,504,315,117,207,1267,434,912,461,616,358,983,350,1200,278);
         this.WORM_COORDS[2816] = new Array(632,318,0,446,1109,245,189,259,934,353,408,342,1293,598,255,365,958,508,697,269,1090,514,1282,441,782,360,900,299,314,238,48,349,759,266,543,245,1024,425,861,243);
         this.WORM_COORDS[2817] = new Array(1298,602,209,244,1145,283,153,227,728,233,1260,413,661,299,295,253,849,254,1071,550,1212,282,1131,347,161,338,920,331,1051,489,516,305,10,446,893,467,64,513,46,349);
         this.WORM_COORDS[2818] = new Array(313,238,755,266,943,365,477,232,1292,598,1229,435,517,304,1189,278,430,282,870,273,818,328,825,519,137,204,389,340,90,294,188,257,553,242,684,271,1065,252,3,445);
         this.WORM_COORDS[2819] = new Array(1096,243,934,353,1065,562,216,237,270,359,371,242,632,318,838,264,151,226,505,315,938,461,423,290,55,341,1270,439,709,241,408,342,1214,429,6,445,1248,496,802,335);
         this.WORM_COORDS[2820] = new Array(681,275,160,229,814,328,240,344,1291,598,1251,401,940,361,1064,253,602,352,521,303,846,254,1222,295,1134,347,106,551,994,353,1039,461,315,238,61,448,386,339,1143,285);
         this.WORM_COORDS[2821] = new Array(469,235,1250,401,810,328,90,294,269,359,689,269,519,303,1214,283,1031,442,1299,602,905,463,202,249,414,339,859,413,968,492,981,350,316,238,384,272,865,243,1147,282);
         this.WORM_COORDS[2822] = new Array(257,365,1179,279,691,269,52,344,1293,598,749,267,954,376,801,334,1237,404,306,247,1041,466,379,258,508,312,214,239,25,435,828,266,526,240,606,352,389,340,578,249);
         this.WORM_COORDS[2823] = new Array(687,270,1293,598,57,340,977,350,97,290,384,272,574,351,14,438,1027,431,1050,486,696,449,178,212,539,241,1073,546,1190,278,806,329,390,340,919,329,1122,270,112,622);
         this.WORM_COORDS[2824] = new Array(1199,278,789,334,662,301,491,324,151,226,568,249,268,361,284,259,910,313,987,357,853,416,605,352,1290,443,1057,507,756,266,1293,598,37,352,156,332,1228,435,862,243);
         this.WORM_COORDS[2825] = new Array(695,269,982,471,881,269,1059,353,173,216,513,308,863,411,780,361,1022,420,606,352,461,251,246,358,1275,441,27,435,1088,249,61,339,380,261,643,282,1003,353,115,276);
         this.WORM_COORDS[2826] = new Array(838,264,1021,419,799,333,1240,495,740,233,1270,439,358,231,1295,600,1207,280,165,230,395,341,644,282,6,445,574,248,41,349,522,302,1048,480,992,353,228,307,1218,432);
         this.WORM_COORDS[2827] = new Array(1023,422,517,304,1224,434,409,342,836,361,934,353,729,233,1080,245,451,273,564,244,1204,279,95,291,1138,346,280,354,850,254,1150,281,15,437,343,256,1052,491,641,283);
         this.WORM_COORDS[2828] = new Array(767,364,1271,440,812,421,85,297,247,361,336,267,867,245,824,333,1192,278,217,236,106,628,557,241,1077,540,668,435,396,341,610,352,1076,243,1033,448,1112,348,736,232);
         this.WORM_COORDS[2829] = new Array(268,361,755,266,214,239,356,231,1221,483,518,304,49,461,460,253,550,243,695,269,610,352,142,530,1131,347,1238,403,394,341,56,340,1293,598,908,310,944,366,1025,426);
         this.WORM_COORDS[2830] = new Array(625,349,120,207,508,312,1105,243,1168,277,859,243,1258,410,452,272,53,343,584,254,943,365,996,353,816,421,307,245,806,329,700,269,1134,347,222,233,393,340,1071,550);
         this.WORM_COORDS[2831] = new Array(963,373,728,233,571,248,903,304,109,212,1129,347,31,436,1178,278,377,254,1235,434,1063,255,843,392,634,309,105,285,1297,601,62,339,188,257,1049,483,842,256,883,470);
         this.WORM_COORDS[2832] = new Array(681,275,1293,598,1242,401,984,351,358,231,517,304,757,361,7,445,1062,257,811,328,921,333,40,349,1035,451,880,269,327,285,568,249,256,365,91,293,1173,277,587,352);
         this.WORM_COORDS[2833] = new Array(248,362,314,238,415,339,1028,434,701,449,853,247,15,437,605,352,530,238,1149,281,210,243,113,207,977,350,703,270,1274,440,822,330,1199,278,926,341,1057,507,1130,347);
         this.WORM_COORDS[2834] = new Array(435,279,85,297,520,303,1277,441,250,363,1213,283,842,256,1065,252,34,439,717,237,767,364,40,349,1029,437,816,421,49,518,110,210,535,238,161,229,379,340,821,329);
         this.WORM_COORDS[2835] = new Array(407,342,423,290,1158,278,579,250,330,278,149,225,844,255,957,376,616,358,1286,595,488,323,25,435,565,349,705,271,1059,353,1230,435,52,344,95,291,1079,244,789,334);
         this.WORM_COORDS[2836] = new Array(530,238,958,375,819,328,635,301,1117,250,612,354,1292,598,1265,423,1134,347,391,340,756,360,861,243,1053,492,256,365,145,590,81,301,1177,278,1027,431,377,254,753,266);
         this.WORM_COORDS[2837] = new Array(529,238,155,331,503,316,777,362,1192,278,940,361,366,234,13,439,1284,441,1226,434,675,292,411,341,131,207,55,341,719,237,889,281,183,214,300,340,128,607,624,365);
         this.WORM_COORDS[2838] = new Array(1249,401,1103,243,874,270,1010,364,156,332,703,270,1062,560,694,450,1168,277,530,238,444,275,14,438,185,219,600,352,317,238,785,359,46,349,246,358,1292,598,88,296);
         this.WORM_COORDS[2839] = new Array(959,375,1075,243,1021,419,603,352,296,251,864,243,795,333,1262,416,125,207,77,307,1166,277,407,342,693,269,845,418,448,274,371,242,639,284,1135,347,263,362,218,235);
         this.WORM_COORDS[2840] = new Array(1248,401,704,270,86,297,111,209,1030,439,489,323,610,352,897,294,209,244,1074,243,1154,279,980,350,327,285,684,448,830,265,269,359,770,364,651,285,405,342,467,239);
         this.WORM_COORDS[2841] = new Array(390,340,1038,460,923,457,1172,277,920,331,1003,353,109,212,489,323,376,253,209,244,1294,599,624,365,1253,402,47,349,279,354,837,264,33,438,745,237,535,238,852,454);
         this.WORM_COORDS[2842] = new Array(956,376,1198,278,804,331,15,437,570,249,424,288,1287,442,1148,282,277,356,223,233,615,356,1038,460,90,294,1225,491,1074,243,649,283,727,234,136,204,908,310,1214,429);
         this.WORM_COORDS[2843] = new Array(935,355,335,269,702,269,842,392,182,213,1209,280,416,338,279,354,1005,354,63,339,583,352,1290,443,694,450,635,301,783,360,19,435,280,264,885,274,1020,417,104,286);
         this.WORM_COORDS[2844] = new Array(413,340,86,297,1143,285,1239,402,505,315,818,328,589,252,1001,353,277,356,1072,244,23,435,157,228,663,302,226,232,569,350,710,239,1054,495,356,231,1130,347,882,269);
         this.WORM_COORDS[2845] = new Array(317,238,968,372,820,329,96,291,406,342,626,341,1231,435,248,362,841,257,494,322,23,435,1073,546,1024,425,656,291,907,462,1163,278,454,272,578,249,122,546,1130,347);
         this.WORM_COORDS[2846] = new Array(1150,281,869,477,747,322,121,266,1271,440,69,340,999,446,259,364,412,341,202,249,808,328,660,298,1050,486,605,352,430,282,380,261,43,547,1010,364,21,435,533,238);
         this.WORM_COORDS[2847] = new Array(670,306,1110,245,293,259,1203,279,499,319,800,333,870,273,553,242,887,469,31,436,88,296,400,342,958,508,973,351,1248,401,346,249,599,351,1027,431,273,357,152,227);
         this.WORM_COORDS[2848] = new Array(901,301,304,248,1011,365,186,227,1096,243,1119,347,540,242,678,281,495,321,865,466,935,355,1271,440,752,266,255,365,849,254,783,360,118,207,625,349,9,445,413,340);
         this.WORM_COORDS[2849] = new Array(981,472,546,245,780,361,1002,353,116,207,441,276,253,365,1059,353,1059,519,827,267,336,267,177,212,1110,245,1242,401,690,269,600,352,118,617,1178,278,85,297,878,269);
         this.WORM_COORDS[2850] = new Array(769,364,632,318,57,340,1192,278,1288,442,1022,420,403,342,1127,347,296,251,892,286,581,352,1051,489,254,365,1087,250,512,309,954,376,126,208,591,252,12,440,96,552);
         this.WORM_COORDS[2851] = new Array(760,266,490,324,440,277,1276,441,1299,602,598,351,894,290,577,249,647,282,819,328,14,438,385,276,226,232,850,416,1031,442,1208,280,697,269,94,640,942,364,37,547);
         this.WORM_COORDS[2852] = new Array(794,333,903,304,53,343,714,237,36,443,104,286,1248,401,385,276,1092,509,623,364,1191,278,835,264,1082,249,1004,353,500,318,202,249,737,322,462,249,241,347,1264,498);
         this.WORM_COORDS[2853] = new Array(1163,278,1029,437,241,347,892,286,42,547,1110,245,787,338,1000,353,508,312,844,392,1133,347,1271,440,136,204,950,376,422,292,699,449,1061,543,627,337,679,279,291,258);
         this.WORM_COORDS[2854] = new Array(1030,439,1173,277,743,234,589,252,203,248,915,323,261,363,632,318,973,351,1103,243,1254,402,683,272,334,271,518,304,858,244,113,207,759,361,411,341,850,416,137,535);
         this.WORM_COORDS[2855] = new Array(47,349,509,311,947,372,762,267,409,342,1227,435,572,351,1004,436,1061,317,1117,250,1007,356,181,212,488,236,806,329,276,356,584,254,630,324,2,445,911,315,1213,283);
         this.WORM_COORDS[2856] = new Array(1021,419,1070,246,590,351,567,249,688,269,121,207,228,232,301,248,93,293,1175,278,378,256,1296,600,990,354,52,344,1223,434,921,333,277,356,821,329,4,445,1046,476);
         this.WORM_COORDS[2857] = new Array(732,232,539,241,1216,285,1226,434,183,214,1108,244,420,298,511,309,918,459,833,264,1284,441,241,347,789,334,323,242,967,372,618,358,674,296,51,515,49,350,1082,529);
         this.WORM_COORDS[2858] = new Array(713,237,1172,277,1133,347,875,269,1036,455,1290,443,216,237,852,416,826,341,615,356,232,316,61,448,938,359,87,296,770,364,44,349,32,549,833,516,937,459,1010,364);
         this.WORM_COORDS[2859] = new Array(232,316,70,340,969,357,543,245,860,243,6,445,1259,411,1046,476,797,333,156,228,1024,425,63,513,341,259,678,281,309,330,616,358,1156,278,456,271,945,472,800,423);
         this.WORM_COORDS[2860] = new Array(1200,278,546,245,222,233,660,298,499,319,1058,510,37,447,758,266,738,321,279,354,1252,401,901,464,155,228,901,301,73,519,351,237,822,330,1060,323,467,239,1010,364);
         this.WORM_COORDS[2861] = new Array(902,302,1108,244,1292,598,390,340,632,318,39,350,1172,277,515,306,261,363,993,353,1048,480,434,280,717,237,61,513,92,293,1022,420,1263,418,152,227,814,328,1070,552);
         this.WORM_COORDS[2862] = new Array(828,266,1091,245,1014,416,636,296,1,445,623,364,1283,441,388,340,915,323,220,297,363,232,126,208,723,239,256,365,964,373,972,487,534,238,427,284,1225,434,495,321);
         this.WORM_COORDS[2863] = new Array(227,305,916,325,1258,410,1115,248,29,435,216,237,1171,277,537,238,658,294,611,353,711,238,497,320,1142,346,261,363,403,342,142,204,989,355,314,238,430,282,1039,461);
         this.WORM_COORDS[2864] = new Array(296,251,1274,440,384,272,595,252,781,360,901,301,967,494,689,269,62,339,229,308,615,356,48,461,93,641,1105,243,1234,496,1070,552,1022,420,125,544,973,351,1163,278);
         this.WORM_COORDS[2865] = new Array(986,353,207,246,1286,441,775,363,327,285,1189,278,669,308,1228,435,871,402,261,363,617,358,476,232,73,343,571,248,1013,416,33,438,825,336,101,289,151,226,979,475);
         this.WORM_COORDS[2866] = new Array(359,231,1288,596,694,269,950,376,1281,441,1039,461,1076,243,179,212,554,242,108,217,772,363,411,341,458,265,504,315,157,335,1130,347,55,341,854,454,622,362,1211,282);
         this.WORM_COORDS[2867] = new Array(991,354,559,241,1074,243,669,308,244,354,1289,442,396,341,794,333,313,238,61,339,1206,279,455,271,1086,521,379,258,1151,280,700,449,21,435,1219,432,1300,604,894,290);
         this.WORM_COORDS[2868] = new Array(625,349,305,248,546,245,848,254,66,514,92,293,960,374,655,290,523,301,1232,435,796,333,744,236,1052,491,1285,441,357,231,1079,244,457,271,1136,347,970,490,574,351);
         this.WORM_COORDS[2869] = new Array(1212,282,485,233,725,236,873,359,1238,434,1143,285,39,453,44,349,266,361,308,240,539,241,597,351,822,330,1058,510,1080,245,171,222,950,502,716,440,966,372,670,306);
         this.WORM_COORDS[2870] = new Array(156,332,27,435,779,361,688,449,88,296,1043,470,133,205,497,320,100,551,664,304,345,252,1084,252,576,248,480,232,1185,279,1227,435,591,351,386,339,962,374,1291,598);
         this.WORM_COORDS[2871] = new Array(1215,284,1280,441,643,282,990,354,748,269,1130,347,167,230,543,245,470,234,323,242,222,233,9,445,925,457,860,412,783,360,619,359,1158,278,1023,422,75,347,112,208);
         this.WORM_COORDS[2872] = new Array(688,449,1248,401,635,301,1078,243,701,269,66,339,13,439,951,376,1132,347,172,219,1000,444,917,326,585,254,497,320,401,342,615,356,1199,278,268,361,936,459,1293,598);
         this.WORM_COORDS[2873] = new Array(142,530,750,267,896,293,503,316,1057,507,1237,404,246,358,667,307,222,233,1294,599,60,339,986,353,571,248,573,351,447,275,1147,282,361,231,106,219,778,361,701,449);
         this.WORM_COORDS[2874] = new Array(153,227,597,351,59,457,464,245,1028,434,70,340,869,248,706,272,497,320,780,361,1167,277,1249,401,577,249,104,286,1092,245,228,232,938,359,1137,346,372,244,1067,558);
         this.WORM_COORDS[2875] = new Array(347,247,907,308,776,363,278,355,41,547,970,490,125,207,664,304,1034,449,1091,245,66,339,982,350,724,239,843,255,1148,282,1219,289,516,305,296,251,850,416,1280,441);
         this.WORM_COORDS[2876] = new Array(845,392,452,272,755,360,737,232,856,244,844,456,41,455,503,316,946,371,904,304,1045,474,54,342,1267,434,369,239,569,249,1210,281,269,359,662,301,308,240,1129,347);
         this.WORM_COORDS[2877] = new Array(1049,483,408,342,130,211,1148,282,749,267,307,245,456,271,617,358,966,372,262,363,508,312,1091,245,811,328,1235,434,65,339,34,439,1212,282,130,604,565,245,670,306);
         this.WORM_COORDS[2878] = new Array(56,513,984,351,1245,401,702,269,904,304,18,435,846,254,1069,247,946,479,442,276,1157,278,184,216,1054,495,768,364,378,256,521,303,245,357,760,266,1023,422,120,207);
         this.WORM_COORDS[2879] = new Array(832,419,973,351,1013,416,1285,441,1115,248,586,253,87,556,943,467,1177,278,21,435,1297,601,520,303,1138,346,722,238,316,238,647,282,776,363,152,227,1058,510,603,352);
         this.WORM_COORDS[2880] = new Array(31,436,1143,285,168,230,808,328,732,232,840,262,711,445,551,242,1215,284,458,265,493,324,907,308,1090,246,284,259,67,339,1008,358,561,348,413,340,378,256,658,294);
         this.WORM_COORDS[2881] = new Array(340,261,254,365,78,306,713,237,952,508,909,312,566,247,488,236,35,440,983,350,1271,440,1043,470,619,359,838,264,1012,416,499,319,1126,347,414,339,820,329,1279,510);
         this.WORM_COORDS[2882] = new Array(96,291,1077,540,1235,434,996,353,1149,281,651,285,466,242,226,232,11,447,73,343,289,258,777,362,613,354,1063,255,1210,281,1295,600,123,207,1287,442,583,253,865,243);
         this.WORM_COORDS[2883] = new Array(194,257,1258,410,604,352,689,269,423,290,1158,278,854,245,25,435,1003,353,531,238,1092,245,351,237,1214,283,760,361,84,298,1272,591,588,253,1062,560,40,349,473,232);
         this.WORM_COORDS[2884] = new Array(715,237,998,353,207,246,849,254,10,446,938,359,1033,448,106,628,662,301,68,339,1251,401,1127,347,391,340,1163,278,785,359,1056,501,104,286,926,457,606,352,330,278);
         this.WORM_COORDS[2885] = new Array(1,445,88,296,426,285,180,212,1275,593,1069,554,1229,435,762,267,590,351,483,232,128,209,699,269,841,257,1139,291,1122,347,1202,279,1000,353,1290,443,923,336,1015,416);
         this.WORM_COORDS[2886] = new Array(1275,441,104,551,8,445,1292,598,768,364,493,324,151,226,1067,249,889,281,975,350,326,284,548,244,935,458,398,341,52,344,1059,353,1147,282,248,362,643,282,203,248);
         this.WORM_COORDS[2887] = new Array(950,502,1038,460,1090,246,406,342,98,552,843,392,177,212,538,239,435,279,354,232,991,354,2,445,486,234,1146,283,735,232,598,351,62,339,103,631,286,259,1272,440);
         this.WORM_COORDS[2888] = new Array(654,289,1007,356,226,232,62,339,436,278,780,361,601,352,1115,248,490,324,109,212,1194,278,719,237,288,258,56,465,920,331,102,287,1032,444,850,254,339,262,538,239);
         this.WORM_COORDS[2889] = new Array(718,237,1217,287,665,305,853,247,1013,416,501,317,911,315,168,230,803,333,46,349,334,271,218,235,946,371,436,278,1226,434,557,241,263,362,1050,486,942,465,1099,243);
         this.WORM_COORDS[2890] = new Array(60,339,1038,460,1187,279,1234,435,801,334,625,349,517,304,96,552,1,445,444,275,390,340,1005,354,718,237,891,285,1098,349,556,241,244,354,1064,253,952,508,198,254);
         this.WORM_COORDS[2891] = new Array(297,250,364,232,1210,281,1238,403,980,350,41,349,751,266,656,291,896,466,1154,279,773,363,857,244,492,324,456,271,241,347,1051,489,595,351,29,435,148,210,1067,249);
         this.WORM_COORDS[2892] = new Array(465,243,949,374,174,214,675,292,333,273,720,237,118,207,800,333,1256,404,235,327,1171,277,583,253,102,551,151,273,225,232,872,272,1055,498,607,352,1070,246,1130,347);
         this.WORM_COORDS[2893] = new Array(105,285,158,229,1255,403,915,323,42,547,1067,249,496,321,980,474,1037,457,38,351,541,243,996,353,292,258,617,358,688,269,210,243,358,231,845,392,429,282,1291,598);
         this.WORM_COORDS[2894] = new Array(978,350,129,209,524,301,384,339,1126,347,816,328,661,299,1013,416,48,461,750,267,1238,403,1146,283,869,248,1200,278,942,465,1082,249,439,277,42,349,534,238,625,349);
         this.WORM_COORDS[2895] = new Array(1242,401,362,232,437,278,1122,270,41,349,259,364,1061,259,395,341,963,373,905,305,782,360,308,240,531,238,955,512,96,291,1033,448,582,253,25,435,490,324,192,258);
         this.WORM_COORDS[2896] = new Array(202,249,901,301,71,341,386,339,323,242,866,244,279,354,1287,442,599,351,1201,278,829,362,498,319,1001,353,1082,249,481,232,1042,467,15,437,775,363,1078,537,652,287);
         this.WORM_COORDS[2897] = new Array(797,333,1107,243,0,446,985,351,262,363,97,552,880,269,400,342,281,262,38,351,658,294,185,219,551,242,1193,278,877,473,1217,432,713,237,85,297,1267,434,1299,602);
         this.WORM_COORDS[2898] = new Array(224,232,404,342,1057,507,90,294,1007,356,752,266,135,537,1221,293,828,266,463,247,333,273,246,358,1075,243,35,440,141,593,949,374,599,351,806,329,682,273,929,457);
         this.WORM_COORDS[2899] = new Array(137,535,407,342,609,352,1118,252,653,288,797,333,48,349,223,233,999,353,533,238,1182,281,899,465,909,312,697,449,751,266,1287,442,60,452,1077,540,85,557,423,290);
         this.WORM_COORDS[2900] = new Array(150,343,610,311,506,410,1048,375,563,410,1285,500,58,372,1104,390,363,412,1149,267,748,188,854,261,1207,274,267,528,53,453,227,311,415,421,909,211,460,472,123,273);
         this.WORM_COORDS[2901] = new Array(1204,272,855,262,795,368,161,330,854,416,1019,329,352,429,771,188,1236,492,93,273,965,310,630,337,541,443,285,447,952,213,29,382,1154,269,227,311,429,418,456,474);
         this.WORM_COORDS[2902] = new Array(851,260,1206,273,192,307,431,419,6,389,128,293,347,442,683,221,618,319,1053,379,1229,625,441,508,1011,328,1255,506,565,410,273,486,782,188,1151,268,1202,436,490,407);
         this.WORM_COORDS[2903] = new Array(21,384,361,414,909,257,279,455,1168,429,162,329,466,409,1195,272,220,307,36,504,89,273,1255,506,650,340,1008,329,827,288,902,203,1099,394,564,410,184,568,672,221);
         this.WORM_COORDS[2904] = new Array(352,429,1135,266,491,407,68,279,1298,507,180,311,692,229,808,196,112,460,266,506,427,418,1004,330,836,285,286,446,37,379,1075,416,1244,491,819,381,438,511,251,361);
         this.WORM_COORDS[2905] = new Array(32,381,1176,267,163,320,477,408,416,420,1281,498,334,421,613,312,946,212,851,260,1068,390,252,362,544,437,271,486,451,484,967,312,91,275,797,193,780,350,1219,445);
         this.WORM_COORDS[2906] = new Array(257,383,437,512,858,264,19,385,637,341,1271,496,865,198,336,425,245,320,773,188,96,269,1037,366,1215,440,689,224,1121,282,164,319,394,455,466,409,966,311,1113,381);
         this.WORM_COORDS[2907] = new Array(44,377,332,417,430,418,1165,267,1035,364,176,314,1090,402,822,291,1208,438,718,215,774,188,486,407,641,342,317,575,268,489,1265,496,104,266,1156,415,556,416,620,399);
         this.WORM_COORDS[2908] = new Array(1298,507,47,376,1103,391,742,188,401,454,106,266,521,425,421,594,576,405,190,307,1124,275,1010,328,831,287,805,194,1176,267,876,192,1178,433,589,321,1230,500,442,507);
         this.WORM_COORDS[2909] = new Array(1143,267,250,361,308,409,1080,412,1258,498,5,390,159,333,927,213,439,510,434,422,876,429,238,461,582,322,658,235,826,289,640,342,8,511,209,305,985,329,103,266);
         this.WORM_COORDS[2910] = new Array(1092,402,253,363,988,330,68,279,1265,496,420,418,942,210,719,210,62,372,784,188,354,425,205,305,448,505,279,455,1211,295,1,391,118,451,868,198,127,293,568,408);
         this.WORM_COORDS[2911] = new Array(306,413,254,366,574,406,905,208,274,486,88,271,1157,269,582,322,182,310,29,382,1093,401,185,569,1266,496,806,194,983,329,121,354,466,409,442,507,401,454,517,419);
         this.WORM_COORDS[2912] = new Array(535,447,1270,496,628,336,1123,277,891,187,83,266,295,434,1023,334,178,312,11,388,351,430,475,408,446,506,1175,267,244,319,767,188,682,221,25,507,1110,384,1216,441);
         this.WORM_COORDS[2913] = new Array(289,442,222,308,6,389,999,331,567,408,114,458,1060,383,441,508,1235,492,1186,267,261,388,882,188,790,190,396,455,687,222,1293,503,79,266,111,515,172,315,468,408);
         this.WORM_COORDS[2914] = new Array(30,382,489,407,213,305,757,191,543,440,415,421,249,474,127,293,33,508,457,473,939,210,1252,496,1206,438,781,353,978,325,359,415,815,293,1039,368,583,321,811,217);
         this.WORM_COORDS[2915] = new Array(134,352,262,491,1219,445,1172,267,1084,408,634,339,718,215,347,442,529,439,1293,503,398,454,1026,347,935,210,814,293,50,375,616,397,97,268,478,407,96,462,291,439);
         this.WORM_COORDS[2916] = new Array(1248,492,423,418,1085,407,164,319,94,272,526,434,896,189,217,306,10,389,678,221,956,216,1190,269,1012,328,753,190,445,507,839,281,1298,507,251,361,638,341,775,331);
         this.WORM_COORDS[2917] = new Array(263,494,1185,434,1257,501,89,273,0,393,52,375,809,375,440,509,1074,417,1201,272,754,190,597,313,888,187,291,439,1003,331,821,291,472,408,151,341,408,435,659,232);
         this.WORM_COORDS[2918] = new Array(14,387,1256,503,636,340,549,427,680,221,492,407,229,312,354,425,1102,392,841,403,1129,271,426,418,269,487,988,330,66,345,739,187,74,542,819,291,143,349,252,362);
         this.WORM_COORDS[2919] = new Array(1287,501,816,292,694,230,538,448,277,457,443,507,14,512,1059,382,331,415,1142,267,631,338,191,571,871,198,20,384,336,565,811,217,1196,272,262,389,943,210,165,318);
         this.WORM_COORDS[2920] = new Array(354,425,262,389,832,286,282,451,597,313,235,315,1083,410,785,188,458,472,693,231,431,419,885,187,27,382,1204,272,181,311,322,571,950,212,495,408,1273,496,996,331);
         this.WORM_COORDS[2921] = new Array(995,331,1062,385,649,341,421,418,1200,436,58,372,1268,496,148,346,436,514,269,487,271,612,572,407,704,221,906,209,793,193,844,260,304,416,1146,267,229,312,107,266);
         this.WORM_COORDS[2922] = new Array(1085,407,110,266,161,330,217,306,1269,496,585,405,80,542,460,472,637,341,105,465,1216,441,493,407,350,433,660,230,744,188,849,259,2,391,1035,364,286,446,868,428);
         this.WORM_COORDS[2923] = new Array(1110,384,216,306,572,407,642,342,836,285,2,391,508,411,1057,381,880,188,1139,266,281,452,1216,441,315,402,288,604,1241,491,670,222,799,193,145,348,971,317,6,511);
         this.WORM_COORDS[2924] = new Array(422,418,1092,402,218,307,581,322,162,329,1209,276,696,227,642,342,833,286,566,408,1029,356,1244,491,861,201,912,214,493,407,452,483,21,384,371,412,115,267,107,466);
         this.WORM_COORDS[2925] = new Array(1092,402,255,482,415,421,634,339,978,325,171,316,441,508,492,407,1300,509,33,380,1198,272,551,425,1030,356,338,429,919,217,694,230,827,288,862,425,1222,521,79,266);
         this.WORM_COORDS[2926] = new Array(240,316,284,448,382,458,907,210,635,340,679,221,1085,407,577,405,165,318,471,408,446,506,766,188,266,506,1282,499,16,513,59,443,78,266,10,389,989,331,1120,286);
         this.WORM_COORDS[2927] = new Array(673,221,644,342,315,402,923,215,92,275,838,282,533,445,411,429,1283,499,34,379,153,339,793,365,1069,391,255,382,787,188,1177,433,473,408,212,305,92,443,279,455);
         this.WORM_COORDS[2928] = new Array(56,374,213,305,772,288,76,447,426,418,1031,358,310,407,1104,390,699,222,866,269,771,188,911,213,571,407,1230,628,505,409,258,384,812,376,270,487,82,266,1216,441);
         this.WORM_COORDS[2929] = new Array(396,455,1041,369,1141,266,845,259,542,442,449,505,869,198,131,294,1230,500,243,318,269,487,584,321,329,567,931,212,475,408,1095,398,255,382,1285,500,723,197,970,316);
         this.WORM_COORDS[2930] = new Array(527,435,1094,399,848,411,892,187,41,574,368,412,442,507,11,511,464,409,854,261,975,323,1255,506,578,405,212,305,639,341,156,336,709,224,7,389,435,578,1026,347);
         this.WORM_COORDS[2931] = new Array(172,315,1231,497,714,230,903,422,431,419,272,486,1018,329,654,248,1198,436,1179,267,872,198,227,311,506,410,11,388,294,436,594,367,1103,391,1289,501,257,383,802,193);
         this.WORM_COORDS[2932] = new Array(134,352,528,438,964,307,175,564,195,306,313,403,1147,267,840,403,455,476,1272,496,791,191,958,217,54,374,1077,415,399,454,273,486,259,385,821,291,100,266,473,408);
         this.WORM_COORDS[2933] = new Array(345,441,1083,410,413,425,165,318,472,408,248,358,1207,274,638,341,583,321,583,405,996,331,88,271,1153,269,856,263,724,196,469,472,526,434,102,464,27,382,279,455);
         this.WORM_COORDS[2934] = new Array(109,266,776,188,1268,496,1152,268,537,448,304,416,814,293,868,198,250,361,392,456,617,317,1033,361,67,497,982,328,133,352,453,482,485,407,193,307,656,248,938,210);
         this.WORM_COORDS[2935] = new Array(264,496,342,436,489,407,200,305,816,292,1233,494,541,443,1055,380,961,223,287,444,980,327,1168,429,25,383,426,418,422,593,73,271,721,202,1176,267,621,329,889,187);
         this.WORM_COORDS[2936] = new Array(848,259,581,322,657,248,411,429,26,507,1075,416,529,439,205,575,1119,289,962,226,979,326,779,188,1295,504,103,266,725,195,1200,272,324,403,909,211,11,388,260,387);
         this.WORM_COORDS[2937] = new Array(629,337,121,271,972,319,910,212,1248,492,354,425,760,191,490,407,1109,385,1171,431,1175,267,293,437,187,308,11,388,447,505,553,421,1054,379,239,316,412,428,61,372);
         this.WORM_COORDS[2938] = new Array(1070,392,163,320,269,525,340,433,1226,507,9,389,579,325,1292,503,1119,289,505,409,813,218,1001,331,111,266,1171,267,630,337,402,454,733,188,282,451,663,226,567,408);
         this.WORM_COORDS[2939] = new Array(733,188,102,266,384,458,1110,384,618,319,8,389,975,323,1284,500,284,606,532,444,139,352,268,489,59,372,1215,440,328,409,29,507,236,315,443,507,797,368,1038,367);
         this.WORM_COORDS[2940] = new Array(988,330,295,434,1162,268,612,382,474,408,947,212,1252,496,884,187,55,374,383,458,532,444,190,307,266,506,693,231,760,191,86,268,1057,381,0,393,1217,443,584,321);
         this.WORM_COORDS[2941] = new Array(1029,356,435,514,725,195,523,428,1158,270,896,189,419,418,1221,522,1289,501,84,266,294,436,634,339,148,346,1078,414,255,382,780,188,233,314,368,412,796,368,848,259);
         this.WORM_COORDS[2942] = new Array(185,309,411,429,1299,508,1081,411,135,352,1156,269,801,314,847,259,440,509,108,266,56,374,780,188,360,414,278,455,1007,329,878,190,706,221,46,500,102,464,637,341);
         this.WORM_COORDS[2943] = new Array(1212,296,582,322,145,348,212,305,934,211,572,407,1275,497,324,403,833,286,52,375,258,384,388,457,1093,401,434,515,1017,329,102,464,1124,275,352,564,70,276,721,287);
         this.WORM_COORDS[2944] = new Array(1186,434,1223,514,1176,267,1033,361,633,339,159,333,438,511,718,215,1087,405,351,430,92,275,423,418,284,448,561,411,799,369,786,188,28,382,291,602,890,426,899,193);
         this.WORM_COORDS[2945] = new Array(1281,498,710,225,8,389,932,212,1188,434,86,268,644,342,224,309,372,412,1088,404,785,188,513,414,1008,329,592,322,449,505,1231,497,321,402,63,443,877,429,838,282);
         this.WORM_COORDS[2946] = new Array(848,259,386,457,1221,522,30,382,976,324,1298,507,638,341,188,307,447,505,1217,443,1127,272,298,428,1086,406,562,410,780,188,488,407,683,221,409,607,319,574,1185,267);
         this.WORM_COORDS[2947] = new Array(256,383,1029,356,438,511,373,412,88,271,33,380,244,319,581,322,646,343,1296,505,1090,402,461,412,522,427,872,198,1157,269,979,326,1216,441,702,221,179,312,264,496);
         this.WORM_COORDS[2948] = new Array(419,418,846,259,214,305,616,315,40,378,22,509,531,443,300,424,689,224,808,196,83,266,1275,497,461,472,1100,394,793,365,367,412,1178,433,901,199,1185,267,474,408);
         this.WORM_COORDS[2949] = new Array(332,417,205,305,95,270,312,581,486,407,674,221,11,388,272,486,880,188,445,507,1121,282,415,421,1270,496,645,343,991,332,1090,402,248,358,733,188,566,408,957,216);
         this.WORM_COORDS[2950] = new Array(169,317,1220,521,549,427,1077,415,834,286,1215,440,385,458,676,221,472,408,444,507,881,188,604,311,1125,274,327,407,275,462,1285,500,231,313,763,188,92,275,618,401);
         this.WORM_COORDS[2951] = new Array(518,421,13,387,710,225,789,189,309,408,1150,268,980,327,219,439,596,314,1279,498,122,272,139,352,466,409,1052,378,410,431,360,414,197,306,925,215,45,500,830,287);
         this.WORM_COORDS[2952] = new Array(1280,498,361,414,876,192,139,352,1065,388,50,375,617,317,659,232,750,189,74,270,244,319,295,434,947,212,437,512,484,407,128,293,265,499,564,410,268,613,836,397);
         this.WORM_COORDS[2953] = new Array(1065,388,113,266,165,318,1121,282,648,343,242,318,945,211,584,321,376,414,868,198,277,457,447,505,561,411,1162,426,990,332,1252,496,488,407,792,364,822,291,699,222);
         this.WORM_COORDS[2954] = new Array(1065,388,260,387,235,315,319,402,726,194,1,391,584,321,572,407,1218,443,822,291,1284,500,429,418,989,331,264,614,243,468,641,342,166,317,371,412,64,371,862,199);
         this.WORM_COORDS[2955] = new Array(748,188,314,403,606,311,979,326,1107,387,808,196,217,306,148,346,575,406,24,384,473,408,695,228,1200,272,423,418,100,266,628,388,880,188,932,212,1275,497,267,528);
         this.WORM_COORDS[2956] = new Array(112,460,908,211,421,418,1091,402,603,311,271,486,503,409,108,266,1174,267,23,508,7,389,459,472,1238,491,295,434,975,323,186,309,669,222,1296,505,134,352,596,367);
         this.WORM_COORDS[2957] = new Array(1052,378,276,610,60,372,439,510,367,412,409,607,508,411,126,278,1285,500,423,418,316,402,844,406,154,338,273,486,675,221,1204,272,22,509,818,291,973,320,250,361);
         this.WORM_COORDS[2958] = new Array(194,306,819,291,545,436,1021,331,440,509,266,506,668,222,610,311,863,198,39,379,428,418,375,413,67,282,947,212,1236,492,1162,268,1107,387,255,382,135,352,311,405);
         this.WORM_COORDS[2959] = new Array(592,322,854,261,510,413,395,455,281,452,1005,330,561,411,758,191,243,318,924,215,1185,267,328,567,1293,503,11,388,1201,436,1097,396,669,222,789,362,121,271,62,372);
         this.WORM_COORDS[2960] = new Array(713,229,844,260,449,505,903,422,508,411,164,319,273,486,333,419,50,375,73,271,929,212,1272,496,1021,331,1109,385,252,362,385,458,1170,430,599,312,793,193,332,566);
         this.WORM_COORDS[2961] = new Array(233,314,261,614,872,198,89,441,28,507,550,426,340,433,1170,267,47,376,459,472,838,282,1251,495,129,293,495,408,779,188,278,455,1021,331,1096,397,417,419,592,322);
         this.WORM_COORDS[2962] = new Array(563,410,400,454,65,370,1112,383,1248,492,296,598,653,249,894,188,812,217,198,574,10,389,288,443,1141,266,104,266,1048,375,453,482,832,286,220,307,739,187,584,321);
         this.WORM_COORDS[2963] = new Array(224,309,1077,415,844,260,1235,492,762,189,258,384,916,215,48,376,328,409,511,414,776,339,1145,267,36,504,690,226,164,319,576,405,457,473,1025,343,129,555,631,338);
         this.WORM_COORDS[2964] = new Array(498,408,219,307,40,378,838,282,1225,509,867,198,792,364,1019,329,1133,267,455,476,573,407,880,429,37,503,335,424,425,418,598,312,812,217,84,266,756,191,1113,381);
         this.WORM_COORDS[2965] = new Array(78,441,83,266,288,443,649,341,1206,273,222,308,1219,445,1221,522,1073,397,397,455,1281,498,693,231,841,277,1121,282,753,190,512,414,136,352,25,507,43,377,785,358);
         this.WORM_COORDS[2966] = new Array(143,349,1111,383,88,271,776,339,195,573,232,313,1262,496,874,198,438,511,38,379,1155,269,1057,381,981,328,1218,443,284,448,828,288,376,414,639,341,145,552,537,448);
         this.WORM_COORDS[2967] = new Array(169,317,1065,388,252,362,504,409,1226,507,928,212,839,400,12,511,110,266,468,472,357,419,818,291,1002,331,422,418,807,195,608,311,1161,269,698,224,750,189,286,446);
         this.WORM_COORDS[2968] = new Array(698,224,532,444,238,316,942,210,268,489,1213,515,1201,272,439,510,972,319,587,321,12,387,1296,505,316,402,163,320,86,441,371,412,822,291,1090,402,651,339,83,266);
         this.WORM_COORDS[2969] = new Array(79,542,631,338,732,189,437,512,373,412,192,307,1056,381,1253,513,578,405,1005,330,281,608,123,273,951,212,796,193,1106,389,1216,441,412,604,25,507,263,494,89,441);
         this.WORM_COORDS[2970] = new Array(355,423,1225,509,434,422,985,329,761,189,825,289,157,335,283,450,52,375,542,442,647,343,1283,499,98,267,1149,267,239,316,1069,391,881,188,586,321,1216,441,820,382);
         this.WORM_COORDS[2971] = new Array(173,315,504,409,64,371,330,414,561,411,1274,497,439,510,887,282,890,187,270,487,684,221,429,418,247,322,648,343,747,188,954,214,1211,295,1000,331,580,323,1064,386);
         this.WORM_COORDS[2972] = new Array(319,402,847,259,1064,386,1238,491,895,425,371,412,998,331,450,505,1204,272,672,221,770,188,1122,279,220,307,10,511,240,464,37,379,601,311,434,422,251,361,105,266);
         this.WORM_COORDS[2973] = new Array(492,407,329,410,590,321,855,419,107,266,22,384,935,210,395,455,1040,368,1186,434,844,260,1239,491,446,506,237,460,1224,604,1131,269,219,307,642,342,40,501,868,198);
         this.WORM_COORDS[2974] = new Array(285,606,79,266,1199,272,444,507,645,343,1214,439,543,440,409,433,964,307,9,389,1229,502,56,446,1075,416,225,310,1300,509,461,412,814,293,344,440,279,455,594,316);
         this.WORM_COORDS[2975] = new Array(636,340,427,525,356,422,1271,496,1211,295,1112,383,670,222,1204,437,49,375,507,410,578,405,161,330,798,326,1060,383,777,188,950,212,414,423,1117,300,262,389,1011,328);
         this.WORM_COORDS[2976] = new Array(947,212,1100,394,158,334,1280,498,260,488,286,605,609,311,103,465,1021,331,403,454,328,409,216,306,1202,272,52,375,491,407,95,270,697,225,20,511,1146,267,587,405);
         this.WORM_COORDS[2977] = new Array(644,342,761,189,342,436,778,346,48,376,151,341,896,189,577,405,224,309,458,472,1110,384,1266,496,258,384,505,409,670,222,832,286,1150,268,1207,438,859,422,285,447);
         this.WORM_COORDS[2978] = new Array(1238,491,754,190,274,486,178,312,556,416,27,382,991,332,1111,383,337,428,423,418,36,504,824,289,271,612,495,408,891,187,107,266,464,472,1160,270,899,270,591,322);
         this.WORM_COORDS[2979] = new Array(691,227,501,409,300,424,158,334,558,413,960,221,306,588,447,505,87,270,1192,271,1289,501,587,321,21,384,1050,376,408,435,814,293,1215,440,642,342,354,425,272,486);
         this.WORM_COORDS[2980] = new Array(53,374,930,212,637,341,844,260,701,221,221,308,480,407,533,445,1183,433,1265,496,304,590,283,450,863,425,114,267,341,434,444,507,1165,267,1085,407,258,384,974,321);
         this.WORM_COORDS[2981] = new Array(1012,328,437,512,77,267,283,450,106,357,163,320,1292,503,1117,300,1182,267,962,226,1217,443,639,341,18,385,578,405,1107,387,849,412,503,409,334,421,8,511,423,418);
         this.WORM_COORDS[2982] = new Array(1113,381,223,309,1270,496,965,310,72,273,601,311,258,384,292,438,407,437,952,213,486,407,571,407,1025,343,857,263,1130,270,721,202,450,505,1172,431,30,382,140,351);
         this.WORM_COORDS[2983] = new Array(1179,433,299,426,40,501,950,212,184,310,1286,500,63,371,968,313,238,461,508,411,108,266,1128,272,1038,367,640,342,1189,268,456,474,819,291,755,190,1226,507,11,388);
         this.WORM_COORDS[2984] = new Array(622,330,572,407,1128,272,235,315,500,408,1206,438,1294,503,338,429,859,265,415,421,124,275,928,212,1113,381,104,508,1234,493,1043,372,54,374,1184,267,971,317,178,312);
         this.WORM_COORDS[2985] = new Array(208,305,15,386,93,273,1089,403,284,606,410,431,513,414,261,490,1257,501,580,323,667,223,1137,266,962,226,443,507,292,438,351,430,1188,267,843,404,133,352,878,190);
         this.WORM_COORDS[2986] = new Array(36,379,173,315,900,196,1251,495,443,507,608,311,1232,636,1018,329,267,528,97,268,1205,273,401,454,961,223,786,188,715,231,1101,393,531,443,314,579,339,431,226,310);
         this.WORM_COORDS[2987] = new Array(1149,267,373,412,951,212,1079,413,168,317,546,434,300,424,294,601,972,319,98,267,59,372,656,248,870,198,456,474,616,315,628,388,1280,498,0,393,5,511,720,206);
         this.WORM_COORDS[2988] = new Array(156,336,609,311,36,379,535,447,276,459,316,402,1240,491,1007,329,105,266,1089,403,859,265,387,457,1120,286,1204,272,241,317,755,190,88,441,1299,508,447,505,790,363);
         this.WORM_COORDS[2989] = new Array(294,436,1204,272,1262,496,1030,356,84,266,861,201,1215,440,416,420,1098,395,139,352,266,506,677,221,554,419,352,429,252,362,53,374,816,292,774,188,597,313,190,307);
         this.WORM_COORDS[2990] = new Array(33,380,1171,267,916,215,421,418,1054,379,309,408,979,326,1268,496,134,352,77,267,31,508,252,478,499,408,830,287,1197,436,1224,604,756,191,219,307,701,221,580,323);
         this.WORM_COORDS[2991] = new Array(531,443,316,402,647,343,380,458,55,374,464,472,68,279,356,564,1166,428,205,305,55,447,1164,267,1235,492,1291,503,1003,331,288,604,473,408,875,199,853,260,752,190);
         this.WORM_COORDS[2992] = new Array(1245,491,385,458,602,311,1052,378,64,371,677,221,223,309,222,442,578,405,90,274,296,432,974,321,948,212,16,513,870,429,1166,428,266,506,791,364,339,565,1104,390);
         this.WORM_COORDS[2993] = new Array(359,415,753,190,236,458,442,507,189,307,966,311,905,208,1272,496,694,230,882,429,817,292,101,266,1206,273,32,381,1164,427,956,216,1078,414,1123,277,479,407,662,313);
         this.WORM_COORDS[2994] = new Array(505,409,936,210,582,322,174,314,1207,438,252,362,796,193,1239,491,99,267,314,403,372,412,1295,504,1187,267,443,507,660,230,911,420,965,310,562,410,423,418,279,455);
         this.WORM_COORDS[2995] = new Array(27,382,577,405,912,214,1296,505,822,291,82,266,633,339,373,412,1060,383,215,306,1185,434,256,383,1117,300,147,346,992,332,319,402,1226,507,1185,267,682,221,438,511);
         this.WORM_COORDS[2996] = new Array(1077,415,333,419,38,379,691,227,564,410,1213,297,272,486,427,418,630,337,1287,501,249,360,1224,511,175,314,71,444,44,500,759,191,478,407,932,212,827,388,828,288);
         this.WORM_COORDS[2997] = new Array(324,403,242,318,1051,378,870,198,837,398,243,468,393,456,635,340,527,435,1195,272,8,389,993,332,333,566,1291,503,1218,443,173,563,579,325,18,513,771,285,906,261);
         this.WORM_COORDS[2998] = new Array(427,525,683,221,359,415,1215,440,248,358,599,312,193,307,1272,496,417,419,299,426,1036,366,840,280,521,425,1131,269,1109,385,884,428,128,556,468,408,457,473,750,189);
         this.WORM_COORDS[2999] = new Array(152,340,598,312,862,199,952,213,336,425,1233,494,564,410,1186,267,1057,381,234,314,736,187,176,564,985,329,485,407,459,472,1290,502,278,455,679,221,288,604,877,429);
         this.WORM_COORDS[3000] = new Array(642,469,650,258,810,464,489,227,49,271,152,560,381,380,1082,272,802,335,311,410,837,398,1154,323,10,375,567,501,464,322,973,251,1249,330,958,423,907,378,714,274);
         this.WORM_COORDS[3001] = new Array(680,483,71,289,985,254,649,258,513,375,1281,325,727,268,590,428,387,356,845,331,269,347,332,369,205,241,815,460,1059,238,1288,575,1163,327,1105,297,493,228,778,316);
         this.WORM_COORDS[3002] = new Array(449,306,595,431,397,249,486,595,369,410,201,641,846,330,697,270,388,355,1258,330,910,374,814,388,868,442,167,282,1153,321,251,344,956,246,50,272,659,479,296,405);
         this.WORM_COORDS[3003] = new Array(370,410,182,246,7,377,238,294,1061,240,805,335,79,291,479,224,604,437,151,339,1108,356,546,425,865,442,287,396,801,469,1270,328,945,397,177,563,990,254,562,504);
         this.WORM_COORDS[3004] = new Array(828,394,572,496,207,241,904,382,500,230,637,465,748,288,1102,293,1182,325,819,337,421,398,1241,329,141,334,519,387,60,283,309,410,705,467,1272,468,7,377,254,343);
         this.WORM_COORDS[3005] = new Array(281,388,897,388,566,501,602,436,172,280,800,335,704,272,1177,330,1277,326,1007,254,194,559,481,334,104,299,985,458,505,233,954,246,1277,476,454,223,54,276,226,241);
         this.WORM_COORDS[3006] = new Array(1027,241,638,466,789,336,204,640,291,401,860,328,369,410,1280,326,939,382,412,245,227,241,538,594,1180,327,729,269,1105,297,114,304,1230,329,257,343,533,410,472,223);
         this.WORM_COORDS[3007] = new Array(677,270,843,331,468,507,949,406,540,417,501,231,224,241,1198,306,1097,289,216,570,893,393,1013,254,734,273,352,392,90,293,595,431,4,379,156,339,646,472,554,510);
         this.WORM_COORDS[3008] = new Array(524,397,189,243,1074,256,448,224,935,374,1176,331,235,634,376,405,105,300,642,469,1274,327,306,409,11,375,990,254,789,336,494,597,551,513,245,550,1285,570,244,297);
         this.WORM_COORDS[3009] = new Array(959,247,804,335,592,430,889,447,973,451,53,275,698,476,652,259,912,369,361,403,547,516,1250,330,426,234,1059,238,434,411,176,249,280,385,11,375,743,283,519,603);
         this.WORM_COORDS[3010] = new Array(145,336,1239,329,889,447,292,524,829,334,349,389,159,565,196,243,537,414,675,270,291,401,680,483,1028,240,29,260,553,510,421,238,763,309,266,345,1136,306,487,226);
         this.WORM_COORDS[3011] = new Array(617,448,156,339,368,410,430,232,1203,303,184,558,62,285,1117,355,1056,237,245,550,924,353,1083,477,839,332,874,443,526,401,512,602,688,270,1103,294,3,379,773,320);
         this.WORM_COORDS[3012] = new Array(16,279,1101,292,1058,238,621,453,708,273,927,358,1099,477,525,400,859,328,92,293,685,482,886,446,461,320,364,406,217,569,987,254,553,510,777,317,514,603,159,320);
         this.WORM_COORDS[3013] = new Array(1284,324,110,303,603,437,970,446,412,245,522,393,764,310,1041,237,938,380,953,246,366,407,1137,307,556,508,695,270,243,296,19,270,313,412,209,579,23,365,416,391);
         this.WORM_COORDS[3014] = new Array(64,286,515,380,378,397,499,230,1131,299,1208,300,846,330,521,602,595,431,151,339,429,232,695,270,1292,323,1008,348,932,368,1109,356,274,357,240,294,179,561,749,290);
         this.WORM_COORDS[3015] = new Array(995,445,192,243,965,248,811,336,21,367,1182,325,283,391,1116,356,685,270,1099,290,217,569,352,392,862,328,144,336,530,407,454,223,905,381,632,461,550,514,389,257);
         this.WORM_COORDS[3016] = new Array(625,455,843,331,927,358,1035,235,963,248,786,336,869,442,709,273,136,332,510,369,290,400,237,293,1110,356,1293,581,785,449,1239,329,176,641,377,402,654,260,545,423);
         this.WORM_COORDS[3017] = new Array(557,508,274,535,994,255,731,270,205,241,139,334,855,442,318,412,1267,329,438,228,919,351,1115,356,618,450,857,328,509,368,1061,240,1203,303,499,230,507,601,183,559);
         this.WORM_COORDS[3018] = new Array(555,509,1206,301,308,410,359,401,886,446,72,289,18,272,257,343,198,242,737,276,696,477,521,392,1028,240,657,262,633,462,897,388,175,641,400,248,976,456,832,445);
         this.WORM_COORDS[3019] = new Array(607,439,532,409,576,489,257,343,68,288,839,332,378,397,1267,329,127,323,1030,235,7,377,716,270,178,561,773,320,213,241,1164,327,416,241,319,411,887,446,496,346);
         this.WORM_COORDS[3020] = new Array(610,442,290,400,1221,309,90,293,169,281,1084,274,343,382,501,600,1159,325,1296,322,1037,422,229,242,162,566,559,506,823,336,894,391,651,259,501,231,242,551,990,254);
         this.WORM_COORDS[3021] = new Array(918,351,27,260,1241,329,777,317,665,266,986,458,623,454,1008,254,346,385,836,333,206,640,503,232,526,401,270,537,263,343,1103,294,224,241,179,561,481,542,718,268);
         this.WORM_COORDS[3022] = new Array(462,223,219,567,929,363,1237,329,98,295,631,460,671,268,1288,575,826,335,538,415,228,241,888,447,1177,330,11,375,1288,324,1063,241,773,320,257,343,342,381,567,501);
         this.WORM_COORDS[3023] = new Array(633,462,874,443,378,397,802,335,185,245,1109,356,1175,331,1055,237,316,412,1058,459,482,225,516,381,977,251,56,279,580,427,1261,330,552,511,662,264,185,558,421,238);
         this.WORM_COORDS[3024] = new Array(783,316,93,293,324,369,565,502,927,358,1241,329,574,430,512,374,964,248,683,483,271,351,980,349,224,241,1299,322,1079,266,839,400,1145,315,629,459,863,328,244,297);
         this.WORM_COORDS[3025] = new Array(941,388,1062,464,858,328,659,263,990,254,1171,330,158,321,233,291,584,427,315,412,1114,357,728,269,209,241,397,356,214,573,102,297,439,227,781,316,1291,323,516,381);
         this.WORM_COORDS[3026] = new Array(682,483,219,241,821,336,399,248,539,416,596,431,906,379,1218,302,1100,291,58,281,1287,573,10,375,999,254,1115,356,273,355,1106,477,710,273,335,372,469,223,398,356);
         this.WORM_COORDS[3027] = new Array(411,246,721,267,774,320,1252,331,1002,305,1129,298,577,427,514,377,979,458,238,553,276,365,853,329,504,600,47,268,629,459,878,444,148,337,999,254,6,377,914,361);
         this.WORM_COORDS[3028] = new Array(478,224,608,439,101,296,478,533,1113,357,968,442,351,391,1058,238,6,377,803,335,214,241,695,478,939,382,150,627,547,516,682,270,260,343,1298,322,192,558,287,396);
         this.WORM_COORDS[3029] = new Array(385,362,245,298,1054,237,760,305,9,376,693,270,903,383,455,314,172,280,954,246,604,437,853,329,545,423,463,223,532,532,314,412,987,457,80,291,1276,326,766,477);
         this.WORM_COORDS[3030] = new Array(1059,238,614,445,898,387,274,357,659,263,174,278,857,328,499,599,222,564,360,402,150,338,1184,323,418,240,968,322,72,289,1006,425,1268,389,1292,323,239,294,760,305);
         this.WORM_COORDS[3031] = new Array(100,296,891,448,938,380,177,248,524,397,649,258,839,332,1132,300,1262,330,17,274,1241,421,1071,470,1106,356,473,329,421,398,208,639,330,368,951,246,161,319,767,313);
         this.WORM_COORDS[3032] = new Array(436,229,611,442,855,442,67,287,332,369,473,329,207,640,733,272,1119,352,1276,326,184,245,1245,380,1066,244,162,318,255,544,804,335,281,388,930,364,552,511,1220,306);
         this.WORM_COORDS[3033] = new Array(1132,300,264,344,86,292,417,240,1239,329,467,223,341,381,508,601,890,448,795,335,639,467,154,339,1029,235,291,401,166,285,722,267,465,499,498,349,227,559,855,328);
         this.WORM_COORDS[3034] = new Array(1013,254,374,409,542,420,685,327,159,565,783,316,8,377,1218,302,252,344,851,329,216,570,391,254,30,260,898,387,615,446,867,442,109,302,958,247,512,602,304,408);
         this.WORM_COORDS[3035] = new Array(91,293,539,416,547,516,951,246,1286,324,366,407,446,225,932,368,300,406,844,331,782,316,604,437,194,243,1168,329,1041,237,882,445,482,382,185,558,697,270,32,260);
         this.WORM_COORDS[3036] = new Array(892,394,197,243,6,377,126,320,486,226,1295,322,1011,254,276,365,398,249,1072,253,664,482,742,282,338,376,507,364,1213,300,691,270,1292,580,836,333,601,435,565,502);
         this.WORM_COORDS[3037] = new Array(111,303,766,312,516,603,692,270,1085,277,902,383,222,241,1242,329,455,223,1179,328,227,559,400,248,540,417,994,446,291,401,343,382,5,378,670,484,198,641,608,439);
         this.WORM_COORDS[3038] = new Array(1266,329,757,301,1167,328,929,363,551,513,434,230,486,337,75,290,130,326,1004,254,316,412,1265,459,648,258,219,241,613,444,520,602,693,479,1087,279,661,340,386,358);
         this.WORM_COORDS[3039] = new Array(525,400,18,272,219,241,254,343,1099,290,796,335,1055,237,1162,327,103,298,470,223,634,463,703,271,374,409,269,538,584,427,553,510,517,603,902,455,393,252,858,328);
         this.WORM_COORDS[3040] = new Array(345,385,877,443,1071,251,151,339,1269,328,172,567,814,336,1162,327,243,296,589,428,400,359,933,370,390,255,66,286,754,296,993,255,573,495,972,319,457,223,514,377);
         this.WORM_COORDS[3041] = new Array(980,252,1300,322,903,383,1235,329,1183,324,852,410,503,232,134,331,534,597,219,241,683,270,133,638,47,268,332,369,856,328,227,559,479,333,1100,354,1125,296,438,411);
         this.WORM_COORDS[3042] = new Array(363,405,452,224,313,412,138,333,775,319,520,602,955,246,616,447,1277,326,1069,248,263,343,830,334,1222,315,67,287,686,270,561,504,1124,296,840,400,1016,254,390,255);
         this.WORM_COORDS[3043] = new Array(410,246,1279,326,637,465,1094,353,153,339,51,273,347,387,1252,445,1178,329,473,223,705,272,865,442,528,405,782,316,980,459,648,258,905,381,494,597,196,243,0,382);
         this.WORM_COORDS[3044] = new Array(579,427,1247,329,664,265,303,408,571,497,259,343,455,223,193,243,370,410,804,335,136,332,521,392,149,625,517,603,397,249,932,368,19,270,1073,254,874,443,14,372);
         this.WORM_COORDS[3045] = new Array(1103,294,250,343,296,405,992,254,851,329,615,446,886,446,1295,322,48,269,401,247,1241,329,1154,323,236,292,745,284,931,365,103,298,509,368,693,270,1042,237,280,532);
         this.WORM_COORDS[3046] = new Array(753,295,599,434,122,314,1190,315,1140,310,973,251,1086,278,349,389,189,640,835,333,460,406,277,370,56,279,499,230,270,537,245,298,479,333,541,418,476,629,1287,324);
         this.WORM_COORDS[3047] = new Array(888,447,298,406,71,289,542,420,398,356,628,457,781,316,567,501,685,270,1161,326,1038,424,490,227,367,408,10,375,1287,324,974,251,199,242,250,343,430,232,1037,237);
         this.WORM_COORDS[3048] = new Array(1085,277,682,483,749,290,130,326,1016,254,587,427,425,403,870,442,508,601,79,291,306,409,226,559,228,241,5,378,966,249,499,350,267,346,656,261,1069,470,553,510);
         this.WORM_COORDS[3049] = new Array(1266,329,1170,329,310,410,182,246,1114,357,864,328,498,599,866,442,946,399,270,348,756,299,537,414,66,286,759,470,182,640,1248,381,364,406,18,369,1082,476,998,254);
         this.WORM_COORDS[3050] = new Array(79,291,1294,583,159,320,187,244,1230,329,1083,477,820,336,896,390,293,403,1031,235,202,640,636,464,450,224,1297,322,450,408,1116,356,675,270,509,368,359,401,248,341);
         this.WORM_COORDS[3051] = new Array(772,319,504,232,367,408,704,272,69,288,994,255,215,241,316,412,539,416,604,437,420,396,1210,300,19,368,935,374,875,443,1282,325,856,328,1126,296,274,357,245,298);
         this.WORM_COORDS[3052] = new Array(1231,329,588,428,289,399,926,356,14,372,1008,254,518,603,162,566,770,317,496,229,825,335,108,302,507,364,679,483,1283,325,243,296,223,241,683,270,867,442,1102,293);
         this.WORM_COORDS[3053] = new Array(669,267,525,600,872,442,431,409,345,385,89,293,1290,577,1196,308,228,558,1137,307,961,429,167,282,255,343,1007,254,13,373,392,253,808,335,907,378,616,447,755,297);
         this.WORM_COORDS[3054] = new Array(874,443,1109,356,61,284,838,332,574,430,1263,329,904,382,1202,303,490,340,1039,238,173,279,420,238,413,385,260,343,1065,467,478,630,689,270,747,287,203,640,472,223);
         this.WORM_COORDS[3055] = new Array(659,263,574,430,224,241,881,445,720,267,328,368,1127,296,687,482,1293,322,448,224,852,329,1193,311,12,374,892,394,976,251,115,305,800,335,508,367,525,600,555,509);
         this.WORM_COORDS[3056] = new Array(1000,254,872,442,911,372,1261,330,687,270,657,478,530,407,306,409,841,332,971,448,1110,356,441,227,239,294,813,461,1165,327,1297,589,67,287,556,508,252,344,442,297);
         this.WORM_COORDS[3057] = new Array(1079,474,1149,318,712,274,1234,329,1002,254,496,229,864,328,362,403,652,475,296,405,811,463,1096,288,598,433,534,411,1284,324,112,303,886,446,774,320,242,295,171,280);
         this.WORM_COORDS[3058] = new Array(746,286,805,335,22,264,195,243,536,596,1087,279,1208,300,1027,241,570,498,400,248,692,270,1148,318,522,393,479,224,964,248,127,323,465,405,644,471,480,333,385,362);
         this.WORM_COORDS[3059] = new Array(899,387,326,368,1225,330,203,640,587,427,201,242,159,320,1273,470,669,267,216,570,504,232,449,409,830,334,1060,239,1288,324,100,296,891,448,552,511,1270,390,1130,298);
         this.WORM_COORDS[3060] = new Array(1098,289,562,504,799,335,1280,326,502,600,358,400,682,270,876,443,1058,238,812,462,995,255,1186,319,184,245,982,459,1288,575,593,430,525,400,42,264,470,223,1060,461);
         this.WORM_COORDS[3061] = new Array(303,408,246,299,1140,310,771,317,966,249,544,422,486,631,834,334,460,223,1231,329,867,442,1017,254,568,500,68,288,614,445,274,357,712,274,894,391,142,335,177,248);
         this.WORM_COORDS[3062] = new Array(1056,456,60,283,325,368,1075,259,731,270,960,247,210,578,1266,329,381,380,1163,327,569,500,675,331,578,427,640,468,932,368,840,332,157,322,523,601,195,243,271,351);
         this.WORM_COORDS[3063] = new Array(798,335,569,500,892,394,450,408,512,374,1138,308,732,271,107,301,482,546,272,352,1230,329,1062,240,853,329,3,379,314,412,17,274,619,451,969,250,168,282,810,464);
         this.WORM_COORDS[3064] = new Array(665,482,568,500,265,344,546,425,377,402,1111,477,615,446,771,317,225,241,1143,313,859,328,5,378,155,339,299,406,693,270,994,255,884,445,1227,329,46,267,467,223);
         this.WORM_COORDS[3065] = new Array(793,472,231,556,494,228,276,365,215,241,534,411,1159,325,908,377,882,445,137,332,246,299,853,329,1003,254,1272,327,717,268,490,340,359,401,54,276,404,246,1260,386);
         this.WORM_COORDS[3066] = new Array(158,321,927,358,254,343,570,498,1236,329,524,397,303,408,1174,331,479,333,480,224,417,240,176,641,687,482,1021,249,36,260,1296,587,1054,454,706,272,1094,286,857,328);
         this.WORM_COORDS[3067] = new Array(1299,322,252,344,943,392,579,427,505,233,696,270,19,270,1205,302,479,333,364,406,825,335,446,225,642,469,170,281,889,447,540,523,752,294,994,255,1128,296,91,293);
         this.WORM_COORDS[3068] = new Array(637,465,365,407,157,564,852,329,1131,299,148,337,1019,254,1072,470,1007,423,61,284,543,420,490,227,1181,326,933,370,264,540,226,241,174,278,550,514,1297,322,884,445);
         this.WORM_COORDS[3069] = new Array(850,329,870,442,474,330,1170,329,102,297,419,239,389,354,1022,247,611,442,774,320,1238,329,35,260,536,413,184,245,493,597,266,539,931,365,564,504,337,374,277,370);
         this.WORM_COORDS[3070] = new Array(255,343,838,332,462,490,1126,296,433,230,1244,329,68,288,221,241,501,231,667,484,723,267,909,375,496,346,206,640,586,427,262,541,373,410,284,393,874,443,1014,254);
         this.WORM_COORDS[3071] = new Array(617,448,5,378,377,402,966,249,320,410,649,258,802,335,443,226,273,355,1191,313,15,284,922,351,177,563,113,304,205,241,1043,434,251,547,750,291,521,392,879,444);
         this.WORM_COORDS[3072] = new Array(1026,242,758,303,506,363,1093,352,929,363,639,467,1212,300,95,294,262,343,373,410,538,415,890,448,1121,298,421,238,311,410,24,262,204,640,668,267,12,374,560,505);
         this.WORM_COORDS[3073] = new Array(485,336,657,478,856,328,368,410,425,403,216,638,161,565,1058,238,929,363,1131,299,981,253,251,344,61,284,146,336,1207,301,1114,357,305,408,1072,470,1267,329,831,447);
         this.WORM_COORDS[3074] = new Array(211,241,672,484,1060,461,1282,564,1261,330,118,308,877,443,807,335,435,229,1109,356,668,267,957,246,491,341,408,374,565,502,313,412,586,427,1169,329,33,260,950,408);
         this.WORM_COORDS[3075] = new Array(1176,331,418,240,109,302,1065,467,983,253,855,442,701,271,792,335,371,410,1071,251,846,330,160,319,305,408,914,361,504,600,184,245,401,360,160,565,1117,477,662,339);
         this.WORM_COORDS[3076] = new Array(273,355,1274,327,96,295,894,391,541,418,245,298,1104,295,863,328,189,441,761,306,870,442,333,370,39,262,639,467,170,568,550,514,495,598,1060,461,1020,252,707,273);
         this.WORM_COORDS[3077] = new Array(537,414,605,437,981,253,929,363,303,408,1138,308,646,258,1034,235,1247,329,891,448,149,558,467,223,240,294,198,641,16,279,790,335,96,295,732,271,226,241,691,324);
         this.WORM_COORDS[3078] = new Array(49,271,988,254,1107,300,990,453,224,636,668,335,143,335,250,547,694,270,186,244,862,328,1213,300,1045,237,395,250,853,411,18,369,763,475,480,333,549,514,542,420);
         this.WORM_COORDS[3079] = new Array(1253,331,501,600,319,411,620,452,1033,235,1145,315,374,409,157,322,224,241,548,515,687,270,974,251,503,232,71,289,816,337,1001,434,468,507,388,355,911,372,19,270);
         this.WORM_COORDS[3080] = new Array(320,410,671,333,786,336,1031,235,1212,300,16,279,17,370,558,508,73,289,221,565,152,339,581,427,909,375,840,332,1290,323,382,376,479,224,682,270,256,343,199,242);
         this.WORM_COORDS[3081] = new Array(1205,302,1059,238,463,223,468,626,168,282,344,384,948,404,433,411,721,267,840,332,104,299,995,255,558,508,616,447,522,393,864,442,482,334,272,352,1008,421,894,391);
         this.WORM_COORDS[3082] = new Array(296,405,130,326,881,445,1052,237,1110,356,565,502,797,335,652,475,997,441,724,267,428,233,5,378,509,368,801,469,682,328,588,428,652,259,850,329,1205,302,894,391);
         this.WORM_COORDS[3083] = new Array(1241,329,664,265,360,402,11,375,51,273,1109,356,638,466,145,336,143,608,950,408,390,255,295,404,578,427,874,443,462,223,1070,249,535,528,1003,254,815,337,256,343);
         this.WORM_COORDS[3084] = new Array(857,442,1291,579,1242,329,1189,315,703,271,1138,308,455,223,298,406,768,315,112,303,834,334,563,504,583,427,192,558,900,385,1017,254,6,377,262,541,1075,259,513,602);
         this.WORM_COORDS[3085] = new Array(948,404,34,260,1107,300,0,382,592,430,1000,254,368,410,167,282,862,328,1271,328,530,407,684,270,408,246,1158,324,745,284,918,351,490,595,283,391,785,336,653,475);
         this.WORM_COORDS[3086] = new Array(772,319,537,414,1058,238,689,270,158,321,1266,329,870,442,502,358,24,262,408,246,167,568,1127,296,844,331,196,243,632,461,907,378,459,223,1207,301,320,410,88,293);
         this.WORM_COORDS[3087] = new Array(656,261,291,401,602,436,1087,279,910,374,143,335,573,495,956,246,164,566,198,641,827,335,406,370,90,293,777,317,437,228,352,392,176,249,1257,331,28,260,1110,356);
         this.WORM_COORDS[3088] = new Array(464,623,926,356,1000,306,872,442,1213,300,623,454,275,362,472,328,674,332,339,377,112,303,1038,424,834,334,52,274,951,410,684,482,743,283,1271,328,164,318,953,246);
         this.WORM_COORDS[3089] = new Array(833,334,1201,304,611,442,537,414,979,252,435,229,680,483,308,410,947,402,1253,331,708,273,393,354,1116,356,228,241,62,285,494,228,162,318,178,247,487,338,228,558);
         this.WORM_COORDS[3090] = new Array(961,248,352,392,1095,287,645,472,510,369,127,323,575,428,229,557,727,268,57,280,265,344,473,520,923,352,1015,254,484,595,810,464,819,337,222,241,438,228,1224,330);
         this.WORM_COORDS[3091] = new Array(1147,317,320,410,552,511,6,377,523,396,694,479,886,446,206,241,605,437,940,385,1242,329,88,293,192,558,379,393,395,250,242,295,857,328,1008,254,452,224,1072,253);
         this.WORM_COORDS[3092] = new Array(142,335,1007,254,1088,280,338,376,678,270,1234,329,474,330,627,457,441,227,555,509,544,422,1157,324,6,377,882,445,815,337,42,264,182,559,697,477,470,512,263,343);
         this.WORM_COORDS[3093] = new Array(331,369,610,442,1024,245,1266,329,1137,307,248,341,1295,584,196,641,70,289,663,338,11,375,741,281,388,355,788,336,427,234,663,482,559,506,690,270,504,232,881,445);
         this.WORM_COORDS[3094] = new Array(406,246,1022,247,810,336,131,328,447,409,475,224,2,379,670,484,915,354,1151,320,1287,324,198,242,380,385,967,322,498,599,461,320,41,264,654,260,550,514,752,294);
         this.WORM_COORDS[3095] = new Array(978,252,191,558,301,407,266,345,698,270,258,542,936,376,390,255,577,427,562,504,1155,323,117,307,1231,329,467,505,1281,325,776,318,513,375,188,244,884,445,206,640);
         this.WORM_COORDS[3096] = new Array(574,430,1134,304,794,335,480,539,810,464,144,552,335,372,72,289,1023,246,541,522,227,241,1113,357,186,640,1252,331,258,343,500,599,171,280,1004,305,156,339,629,459);
         this.WORM_COORDS[3097] = new Array(1217,302,1141,311,263,343,656,261,779,316,294,404,457,223,404,246,621,453,547,516,1082,272,116,306,850,329,836,398,443,299,205,241,482,546,1283,488,368,410,889,447);
         this.WORM_COORDS[3098] = new Array(1144,314,1275,327,556,508,1032,235,755,297,188,244,931,365,339,377,884,445,641,469,1259,385,395,250,119,309,839,332,579,427,525,400,489,339,523,601,989,454,451,224);
         this.WORM_COORDS[3099] = new Array(371,410,1268,329,1074,256,647,473,696,270,862,328,906,379,466,223,785,336,238,294,179,246,397,249,1,380,508,367,22,264,976,251,1183,324,1284,568,194,640,306,409);
         this.WORM_COORDS[3100] = new Array(191,303,1052,463,513,456,555,539,622,508,856,444,985,242,970,503,614,260,458,395,1183,341,35,364,1094,411,295,262,1069,188,866,362,749,496,589,423,115,636,1300,411);
         this.WORM_COORDS[3101] = new Array(1218,318,1121,242,785,579,868,585,1061,210,112,358,603,269,948,271,481,396,169,564,429,451,185,229,540,436,538,543,46,357,881,292,665,597,423,205,1085,411,837,454);
         this.WORM_COORDS[3102] = new Array(756,516,580,422,1275,362,702,391,518,450,265,231,1075,186,976,596,912,262,173,224,833,455,1063,464,695,256,439,456,111,357,1091,547,676,601,618,510,741,448,423,205);
         this.WORM_COORDS[3103] = new Array(187,308,663,415,1010,197,799,450,1282,364,1038,620,36,364,255,217,93,343,596,270,901,298,1180,340,837,557,1076,186,607,438,730,429,658,595,682,251,374,207,608,515);
         this.WORM_COORDS[3104] = new Array(1187,614,29,370,795,450,115,359,424,205,706,615,905,298,1055,464,1292,410,1142,249,1026,626,206,230,649,588,768,535,472,394,1008,200,1227,318,1154,541,708,402,193,565);
         this.WORM_COORDS[3105] = new Array(232,218,1262,359,1107,410,68,347,6,396,1119,242,964,517,152,361,654,342,1044,226,861,442,1203,331,806,453,719,416,538,436,897,298,771,540,549,543,406,198,964,277);
         this.WORM_COORDS[3106] = new Array(919,577,615,512,827,457,1288,363,875,289,433,453,217,233,631,251,1192,342,414,198,73,345,730,429,761,524,288,489,126,364,289,262,1085,184,167,221,499,412,1047,460);
         this.WORM_COORDS[3107] = new Array(663,597,159,355,772,541,613,513,324,221,1067,190,108,355,939,267,209,231,492,410,1213,321,664,247,734,434,814,455,439,456,133,529,36,364,1146,247,570,427,911,564);
         this.WORM_COORDS[3108] = new Array(1045,227,477,394,1235,330,261,220,793,450,205,230,190,564,1064,557,1008,627,656,247,587,422,72,346,447,277,18,381,444,458,548,543,1075,461,1141,250,149,364,891,553);
         this.WORM_COORDS[3109] = new Array(833,455,548,543,1097,185,271,488,726,423,238,218,783,574,1092,411,1172,333,925,263,1162,241,567,433,105,353,894,364,128,525,1282,364,454,395,20,379,1009,199,233,546);
         this.WORM_COORDS[3110] = new Array(1251,355,179,228,675,249,432,452,316,248,460,395,22,377,1184,341,504,464,850,447,118,361,915,570,1081,412,767,534,243,541,1012,194,696,380,737,441,889,296,1062,464);
         this.WORM_COORDS[3111] = new Array(896,552,666,598,160,219,766,532,1175,338,858,443,548,543,458,395,1035,454,218,231,185,563,981,250,1232,323,127,365,709,403,304,257,406,198,1105,188,873,288,746,472);
         this.WORM_COORDS[3112] = new Array(535,436,1054,464,928,579,1160,241,721,418,965,514,689,365,774,546,959,275,144,369,874,362,44,358,1291,410,1173,335,1176,625,880,439,604,435,1239,339,862,578,982,438);
         this.WORM_COORDS[3113] = new Array(1276,362,1009,630,666,247,584,277,744,460,545,442,1067,190,972,267,275,252,878,291,657,423,615,512,352,208,1190,344,453,395,147,366,797,597,1113,241,431,452,855,444);
         this.WORM_COORDS[3114] = new Array(498,411,241,542,1065,464,669,248,1060,211,426,208,108,554,1279,363,785,579,549,543,38,362,571,426,311,252,142,369,919,577,804,452,856,444,1001,214,175,225,876,290);
         this.WORM_COORDS[3115] = new Array(1020,629,964,277,15,384,1251,355,193,230,116,360,921,579,1079,461,641,329,575,423,425,207,288,262,511,459,1144,248,830,456,778,557,704,394,1085,184,1066,556,613,261);
         this.WORM_COORDS[3116] = new Array(254,217,535,436,471,394,880,292,1163,315,910,562,784,577,1103,187,815,456,43,359,170,223,887,439,554,540,372,207,1044,226,1249,353,146,367,738,442,1111,241,760,522);
         this.WORM_COORDS[3117] = new Array(884,294,888,556,101,351,34,365,1128,244,357,207,752,507,447,277,501,464,305,257,1091,547,968,599,597,269,244,216,731,430,590,423,959,275,1007,201,484,401,1162,615);
         this.WORM_COORDS[3118] = new Array(1191,343,35,364,185,229,582,422,483,398,766,532,325,219,247,215,125,364,822,576,840,452,974,448,693,256,439,456,727,425,1123,242,602,269,1287,363,985,242,990,590);
         this.WORM_COORDS[3119] = new Array(550,543,274,488,856,444,1174,338,462,395,1057,212,788,586,763,527,910,298,333,215,671,248,60,350,149,364,741,448,160,560,1037,621,969,272,648,586,545,442,266,237);
         this.WORM_COORDS[3120] = new Array(1281,364,628,252,866,286,719,416,1198,337,830,456,680,250,1052,463,1041,226,747,486,1154,242,62,349,785,579,336,214,243,216,535,436,949,602,474,394,123,524,268,488);
         this.WORM_COORDS[3121] = new Array(779,560,170,223,1223,318,615,512,583,422,141,369,8,394,512,458,555,539,594,270,820,456,484,401,249,215,270,488,963,278,342,211,734,434,925,582,1055,214,218,554);
         this.WORM_COORDS[3122] = new Array(710,404,799,450,604,268,770,537,280,489,50,355,449,396,1173,335,1224,318,249,215,849,447,566,435,140,369,1024,173,1118,614,789,587,335,215,194,230,432,452,434,245);
         this.WORM_COORDS[3123] = new Array(1239,339,648,586,507,463,905,298,803,451,342,211,788,586,534,543,441,264,490,410,1234,581,213,231,1120,281,726,423,134,367,568,430,185,563,1081,460,751,503,1069,188);
         this.WORM_COORDS[3124] = new Array(1212,322,411,198,1069,188,346,211,1289,363,1189,610,767,534,54,353,1113,404,904,298,547,453,800,599,736,437,838,453,450,395,195,230,861,577,655,343,428,450,951,539);
         this.WORM_COORDS[3125] = new Array(1249,353,272,249,760,522,802,451,1098,185,23,376,892,552,638,510,527,441,883,293,733,433,897,362,1177,339,949,543,660,419,655,593,1149,245,1187,614,837,557,121,524);
         this.WORM_COORDS[3126] = new Array(19,380,787,583,498,411,914,262,1239,339,715,411,550,543,1110,241,1184,620,644,247,244,216,581,422,794,450,106,354,439,456,404,198,993,230,1186,342,1085,184,1287,410);
         this.WORM_COORDS[3127] = new Array(571,426,621,256,29,370,1062,210,122,363,214,232,717,414,867,584,331,216,800,450,1032,623,466,395,645,575,972,267,1258,359,1134,256,243,541,1296,410,612,514,670,354);
         this.WORM_COORDS[3128] = new Array(682,604,951,539,1229,319,135,368,547,453,40,361,836,454,873,288,492,410,1066,193,993,230,345,211,273,250,792,591,411,198,759,521,686,360,600,269,1279,363,1044,589);
         this.WORM_COORDS[3129] = new Array(855,444,923,263,355,207,515,455,1028,174,985,242,1060,326,1267,360,74,345,160,219,1080,412,684,252,1157,241,567,433,732,431,616,259,551,542,658,595,442,265,1293,410);
         this.WORM_COORDS[3130] = new Array(1294,410,739,444,822,457,435,248,80,344,999,586,884,294,865,582,522,446,376,206,662,597,767,534,643,247,1249,353,927,580,623,508,24,375,1180,340,146,367,477,394);
         this.WORM_COORDS[3131] = new Array(1260,359,984,244,448,396,1069,188,558,534,299,259,368,206,503,465,687,361,198,230,117,360,501,413,977,596,1058,465,833,455,605,267,11,390,1092,411,991,431,868,362);
         this.WORM_COORDS[3132] = new Array(1217,318,135,368,327,218,863,442,1272,361,263,225,777,553,1071,187,1007,201,1160,310,1084,411,581,422,511,459,751,503,960,276,654,247,31,368,555,539,666,351,709,403);
         this.WORM_COORDS[3133] = new Array(533,437,558,534,596,428,1188,343,953,535,747,486,216,232,1137,253,878,291,690,254,99,349,931,264,417,200,1080,185,701,390,639,248,811,454,1076,461,354,208,11,390);
         this.WORM_COORDS[3134] = new Array(742,451,102,351,678,250,858,443,899,298,438,257,258,218,978,256,1022,173,1173,335,1250,354,553,541,506,464,204,230,493,411,431,452,761,524,367,206,663,349,39,362);
         this.WORM_COORDS[3135] = new Array(447,277,1068,463,124,364,740,446,427,449,590,272,825,457,381,205,114,530,519,449,41,361,649,588,1246,350,1129,245,550,543,280,257,864,286,1018,630,1189,343,480,395);
         this.WORM_COORDS[3136] = new Array(154,359,284,260,1167,322,212,231,1012,194,623,255,1161,241,868,286,1121,614,825,457,436,252,768,535,916,572,1119,386,720,417,552,541,405,198,891,430,965,276,436,454);
         this.WORM_COORDS[3137] = new Array(657,247,8,394,877,290,1271,361,887,557,333,215,90,343,849,447,1097,459,440,261,171,223,160,352,786,582,514,455,1220,318,730,429,402,198,1020,176,606,266,562,523);
         this.WORM_COORDS[3138] = new Array(652,591,600,434,823,457,1007,201,48,356,451,395,927,580,589,272,437,254,175,329,1137,253,226,219,314,250,671,354,679,250,1067,556,394,339,1104,187,884,294,1117,396);
         this.WORM_COORDS[3139] = new Array(174,331,50,355,1036,226,104,353,621,509,405,198,828,457,748,491,616,259,1199,336,951,271,836,557,676,250,346,211,255,217,569,428,1090,411,1284,363,781,567,265,489);
         this.WORM_COORDS[3140] = new Array(994,429,115,359,838,453,397,200,513,456,728,427,346,211,948,271,931,574,1044,226,1187,342,864,286,476,394,606,266,774,546,674,249,1297,410,660,595,1250,354,36,364);
         this.WORM_COORDS[3141] = new Array(668,247,520,449,899,298,1295,410,49,356,1190,344,929,578,787,583,736,437,106,354,1255,357,445,458,550,543,1082,185,1021,173,853,445,192,230,1046,459,755,513,243,216);
         this.WORM_COORDS[3142] = new Array(1037,621,746,472,688,253,212,231,791,590,477,394,71,346,862,442,959,600,411,198,122,363,17,382,585,276,1073,462,1185,342,725,422,361,206,961,277,762,525,510,460);
         this.WORM_COORDS[3143] = new Array(600,269,784,577,275,252,554,540,191,230,801,451,1057,212,681,251,119,361,1132,258,897,298,1279,363,432,236,985,436,5,398,533,437,1006,203,719,416,1206,328,748,491);
         this.WORM_COORDS[3144] = new Array(840,452,591,423,167,221,243,216,40,361,1046,459,635,507,537,436,909,298,911,352,147,366,1009,199,412,342,408,198,584,277,671,354,746,472,1259,359,778,557,1061,210);
         this.WORM_COORDS[3145] = new Array(537,436,531,543,941,605,736,437,1243,346,786,582,435,248,419,350,48,356,614,512,191,230,279,255,1118,241,1089,184,1170,328,143,369,1044,589,365,206,935,265,481,396);
         this.WORM_COORDS[3146] = new Array(1070,463,1027,173,38,362,859,443,1232,323,1045,227,576,423,126,364,1125,242,697,381,973,266,384,203,509,461,614,260,686,252,888,296,492,410,791,590,216,232,855,568);
         this.WORM_COORDS[3147] = new Array(1164,241,961,277,588,423,69,347,360,206,192,230,156,557,737,441,446,275,255,217,1243,346,904,298,484,401,435,454,596,270,110,639,799,599,998,227,1103,187,893,552);
         this.WORM_COORDS[3148] = new Array(1299,410,563,435,743,454,625,508,481,396,771,540,506,464,1110,241,592,271,992,231,116,360,47,357,172,336,856,444,907,557,442,265,344,211,114,530,1052,230,551,542);
         this.WORM_COORDS[3149] = new Array(65,348,13,387,600,269,254,217,1196,339,587,422,1109,193,673,249,786,582,1165,241,985,242,608,515,931,264,528,440,1288,363,649,338,307,255,269,488,868,286,416,423);
         this.WORM_COORDS[3150] = new Array(139,369,802,451,445,458,149,551,1086,184,48,356,412,198,1121,614,228,218,1141,250,1182,624,716,412,678,358,702,614,1251,355,1169,325,963,519,454,395,916,572,162,219);
         this.WORM_COORDS[3151] = new Array(1097,185,66,348,1220,318,739,444,536,436,161,561,874,289,639,248,175,225,393,201,465,395,1021,173,859,573,886,440,999,227,386,308,700,388,325,219,1283,363,661,596);
         this.WORM_COORDS[3152] = new Array(29,370,132,471,1112,405,491,410,905,298,405,198,138,369,118,634,173,224,709,403,1156,242,86,343,1122,614,333,215,1289,363,652,247,677,601,562,435,1193,341,778,557);
         this.WORM_COORDS[3153] = new Array(52,354,805,452,1173,574,723,420,1170,328,1271,361,137,368,802,600,1062,210,440,261,957,529,1154,242,950,271,589,423,521,447,629,507,0,406,642,330,873,288,273,250);
         this.WORM_COORDS[3154] = new Array(272,249,1044,226,485,403,722,420,271,488,883,293,655,343,1160,241,93,343,1194,341,503,465,832,456,833,559,393,201,783,574,886,364,749,496,172,224,916,572,1232,571);
         this.WORM_COORDS[3155] = new Array(782,570,0,406,1190,344,526,442,340,213,224,221,432,236,1110,241,729,428,1093,411,553,541,587,422,940,559,79,344,288,262,196,564,1277,363,627,253,457,395,678,250);
         this.WORM_COORDS[3156] = new Array(349,209,155,358,736,437,405,198,969,272,818,456,540,543,110,639,2,402,516,454,1108,409,671,599,1188,343,810,595,764,529,653,247,1068,556,1147,246,1280,363,1052,230);
         this.WORM_COORDS[3157] = new Array(1176,625,480,395,850,447,1081,185,1283,363,130,366,268,244,423,205,798,450,1217,318,904,298,957,274,774,546,424,446,631,251,737,441,648,586,10,391,558,534,916,572);
         this.WORM_COORDS[3158] = new Array(179,563,797,597,118,361,676,601,417,200,813,455,440,456,354,208,856,569,1267,360,600,269,394,339,640,327,769,536,896,298,1300,411,745,465,1096,411,1149,245,626,508);
         this.WORM_COORDS[3159] = new Array(1219,318,266,237,956,274,55,352,773,544,446,402,716,412,684,252,954,600,216,232,1152,243,446,275,562,523,1060,211,197,563,1110,553,898,298,828,566,593,270,393,201);
         this.WORM_COORDS[3160] = new Array(274,251,145,368,558,534,1085,184,582,279,766,532,192,230,860,442,567,433,77,344,1280,363,173,564,1059,465,887,295,730,429,395,200,1225,318,1102,411,982,247,803,451);
         this.WORM_COORDS[3161] = new Array(834,455,635,249,749,496,1013,192,143,369,297,260,15,384,381,205,550,543,535,436,1296,410,1094,185,901,298,1217,318,418,431,200,230,600,434,1029,624,697,381,1128,244);
         this.WORM_COORDS[3162] = new Array(210,231,99,349,1086,184,801,599,1279,363,505,464,981,250,313,251,189,305,1048,587,384,203,888,296,756,516,1129,245,551,542,943,553,262,222,1175,338,840,452,583,422);
         this.WORM_COORDS[3163] = new Array(124,364,765,530,1084,411,832,456,1274,361,899,298,1031,225,247,215,502,466,39,362,669,248,581,422,1175,338,559,530,432,236,298,260,583,278,969,272,427,449,644,565);
         this.WORM_COORDS[3164] = new Array(326,219,904,298,114,359,1242,345,370,313,574,424,818,456,161,219,237,544,1119,242,678,601,643,539,821,579,420,202,523,445,653,247,1055,214,1300,411,747,486,58,351);
         this.WORM_COORDS[3165] = new Array(343,211,488,408,1110,241,1096,548,1273,361,872,288,1023,627,549,543,728,427,963,278,242,216,1187,342,89,343,827,457,611,262,1040,226,150,363,1099,186,172,224,943,553);
         this.WORM_COORDS[3166] = new Array(27,372,890,296,1027,625,292,262,175,225,862,442,673,355,1048,228,938,562,575,423,798,450,662,247,529,543,688,607,1110,241,1227,318,123,364,1056,560,802,600,1063,464);
         this.WORM_COORDS[3167] = new Array(1257,358,21,378,816,456,776,551,993,230,103,352,362,206,170,564,697,381,529,439,899,298,670,598,228,547,175,225,1073,462,1233,576,1080,412,1082,549,1207,327,284,260);
         this.WORM_COORDS[3168] = new Array(1032,225,980,252,475,394,142,369,642,247,1262,359,1199,336,887,295,551,542,435,248,852,446,723,420,534,437,58,351,1042,591,355,207,209,231,802,451,759,521,828,566);
         this.WORM_COORDS[3169] = new Array(548,543,863,442,741,448,775,548,579,422,107,641,335,215,102,351,1114,241,1027,173,1225,318,611,262,861,577,1036,621,400,199,1168,563,882,293,210,231,246,539,471,394);
         this.WORM_COORDS[3170] = new Array(543,437,469,394,26,373,127,365,781,567,379,205,989,590,1229,319,185,229,239,217,957,274,851,446,557,536,797,450,1152,243,1055,214,728,427,836,557,610,263,131,477);
         this.WORM_COORDS[3171] = new Array(864,441,436,454,254,217,687,361,789,587,957,600,1274,361,1150,244,1008,200,161,219,1167,322,471,394,859,573,514,455,672,248,38,362,901,298,393,201,986,435,1052,463);
         this.WORM_COORDS[3172] = new Array(66,348,527,441,664,597,1197,338,1039,226,757,517,791,590,109,550,1100,459,269,488,1141,250,833,455,592,271,887,295,925,582,1292,410,1159,597,336,214,211,231,399,199);
         this.WORM_COORDS[3173] = new Array(358,206,620,256,764,529,689,254,125,364,1266,360,256,217,619,510,1299,410,470,394,36,364,560,437,971,269,828,457,1058,212,830,563,183,229,1079,413,553,541,410,198);
         this.WORM_COORDS[3174] = new Array(759,521,1011,195,362,206,280,257,1271,361,135,368,973,266,926,581,1105,188,1174,338,509,461,177,226,848,448,494,411,241,542,897,298,67,347,664,247,642,525,174,564);
         this.WORM_COORDS[3175] = new Array(357,207,412,198,14,386,791,590,961,277,1275,362,1148,245,222,223,519,449,1040,226,800,450,890,296,1189,343,588,273,163,219,439,259,861,442,658,247,147,366,705,614);
         this.WORM_COORDS[3176] = new Array(514,455,959,275,449,396,186,230,849,447,978,595,1151,244,1175,625,750,500,868,286,1055,561,398,199,310,253,1217,318,564,435,1021,173,149,364,977,443,1282,364,49,356);
         this.WORM_COORDS[3177] = new Array(213,231,580,422,757,517,957,600,737,441,788,586,10,391,550,543,363,206,1035,621,1262,359,113,532,473,394,1158,241,1038,226,222,551,669,248,660,419,842,451,100,350);
         this.WORM_COORDS[3178] = new Array(903,298,1085,411,955,274,509,461,553,541,1215,320,805,452,108,355,404,198,641,247,689,608,755,513,658,346,718,414,330,217,202,230,591,271,490,410,31,368,1060,326);
         this.WORM_COORDS[3179] = new Array(228,218,144,369,967,274,662,349,866,286,762,525,837,454,1077,185,556,538,950,541,221,551,1151,244,1100,412,458,395,432,236,1175,625,820,580,357,207,694,256,867,362);
         this.WORM_COORDS[3180] = new Array(797,597,1167,322,881,292,211,231,1028,174,545,442,356,207,604,268,1127,243,774,546,294,262,840,452,1004,586,43,359,1234,581,1292,410,233,546,712,408,155,358,1258,359);
         this.WORM_COORDS[3181] = new Array(692,372,1183,623,194,230,973,493,21,378,1089,411,766,532,487,407,692,255,557,536,434,454,935,265,198,563,1150,244,1281,408,257,218,1234,328,565,435,988,237,630,251);
         this.WORM_COORDS[3182] = new Array(411,198,1279,363,343,211,832,456,957,529,999,227,59,351,655,427,1223,318,480,395,1128,244,172,336,893,297,655,247,234,218,534,437,654,593,1089,184,554,540,602,269);
         this.WORM_COORDS[3183] = new Array(585,276,125,524,1020,629,288,262,866,286,129,366,1055,464,1063,557,25,374,526,442,1300,411,843,556,1251,355,920,263,894,552,76,344,624,508,635,249,786,582,716,412);
         this.WORM_COORDS[3184] = new Array(1149,245,735,436,993,230,170,223,36,364,518,450,816,456,1202,333,1052,230,646,247,261,220,934,570,1276,362,440,261,860,575,373,207,314,250,763,527,553,541,997,587);
         this.WORM_COORDS[3185] = new Array(146,367,386,203,1078,413,518,450,747,486,1226,318,592,271,1032,225,840,452,331,216,280,257,871,287,951,539,875,580,990,432,63,349,721,418,785,579,575,423,464,395);
         this.WORM_COORDS[3186] = new Array(648,247,1116,241,1052,463,154,556,1063,209,455,395,846,449,777,553,964,277,28,371,322,223,1239,339,536,436,401,199,1189,343,1104,411,927,580,110,356,548,543,914,262);
         this.WORM_COORDS[3187] = new Array(949,271,735,436,97,348,1094,411,1124,242,1108,190,515,455,237,544,1209,325,677,250,300,259,646,580,1048,587,951,602,819,456,459,395,754,511,642,525,786,582,249,215);
         this.WORM_COORDS[3188] = new Array(604,268,942,268,795,595,692,255,234,546,1265,360,289,489,99,349,416,199,555,539,1096,185,828,457,359,206,526,442,1143,248,232,218,194,298,476,394,689,365,634,507);
         this.WORM_COORDS[3189] = new Array(208,230,790,588,831,456,666,247,273,488,484,401,46,357,1035,226,718,414,975,597,284,260,887,295,765,530,901,360,349,209,1265,360,647,336,874,582,667,598,513,456);
         this.WORM_COORDS[3190] = new Array(150,363,829,456,585,276,878,291,1019,178,750,500,356,207,1157,304,495,411,222,223,441,457,15,384,566,435,1122,242,67,347,678,250,443,268,169,222,996,229,1257,358);
         this.WORM_COORDS[3191] = new Array(710,404,1045,227,131,477,476,394,894,298,201,562,625,508,944,551,200,230,1060,558,26,373,545,442,761,524,1152,243,1172,333,792,591,1279,363,144,369,548,543,843,556);
         this.WORM_COORDS[3192] = new Array(876,578,927,264,1253,356,705,397,424,446,242,216,575,423,341,211,930,576,114,359,584,277,741,448,864,286,1115,241,39,362,750,500,669,248,1169,325,112,534,1190,609);
         this.WORM_COORDS[3193] = new Array(1276,362,471,394,104,353,418,200,333,215,791,590,960,525,531,438,833,455,897,298,1108,190,709,403,1219,318,642,330,438,257,989,235,1156,242,45,358,1115,556,141,538);
         this.WORM_COORDS[3194] = new Array(496,411,580,422,1290,363,67,347,1219,318,608,265,742,451,770,537,354,208,282,259,431,232,789,587,929,264,696,380,506,464,1133,257,207,230,9,393,834,455,1051,229);
         this.WORM_COORDS[3195] = new Array(1165,241,773,544,943,268,731,430,112,358,1155,543,582,279,1000,219,193,565,283,259,428,213,1257,358,1117,396,748,491,1299,410,814,455,551,542,470,394,1192,342,535,436);
         this.WORM_COORDS[3196] = new Array(209,231,564,435,855,444,693,256,319,241,1201,334,772,541,910,353,1097,185,708,402,1121,242,552,541,597,269,137,368,504,464,26,373,1045,227,83,343,803,451,922,263);
         this.WORM_COORDS[3197] = new Array(1299,410,1167,322,211,231,354,208,992,588,51,354,515,455,480,395,858,443,390,339,695,256,1036,226,1100,459,114,359,1254,356,952,272,248,539,806,453,665,351,868,286);
         this.WORM_COORDS[3198] = new Array(862,442,604,268,506,464,848,559,766,532,1213,321,194,565,489,409,91,343,949,271,1156,302,303,258,161,219,1117,241,24,375,728,427,607,438,660,347,794,594,899,298);
         this.WORM_COORDS[3199] = new Array(1290,363,17,382,930,264,602,435,159,219,540,436,1080,460,844,557,648,337,770,537,797,450,741,448,1234,328,880,292,1106,188,467,395,312,252,367,313,1018,180,118,361);
         this.WORM_COORDS[3200] = new Array(559,306,1201,473,680,332,776,313,27,601,1137,216,33,466,140,364,1087,280,626,384,913,354,240,395,1259,593,1025,278,972,279,94,414,346,266,310,467,302,530,1024,464);
         this.WORM_COORDS[3201] = new Array(72,414,154,395,862,368,603,390,1249,254,295,416,423,253,771,311,485,276,1187,474,1193,233,1114,232,986,273,673,338,578,298,330,276,1078,285,224,384,1257,592,210,616);
         this.WORM_COORDS[3202] = new Array(48,466,314,469,560,306,1144,215,75,414,786,389,217,375,885,361,627,382,1067,294,702,321,1262,422,1240,582,941,303,134,369,368,244,1285,321,1166,463,1018,446,426,258);
         this.WORM_COORDS[3203] = new Array(1103,237,1203,243,201,371,53,466,738,307,620,406,516,280,1213,509,822,399,325,282,965,283,1051,291,144,365,670,379,17,596,530,392,257,400,1298,340,401,230,307,521);
         this.WORM_COORDS[3204] = new Array(245,396,329,277,740,307,1240,252,1060,502,421,244,1168,222,545,307,907,355,985,273,857,373,623,409,1,459,308,467,239,589,135,366,684,390,1218,511,1035,284,388,425);
         this.WORM_COORDS[3205] = new Array(686,330,1225,252,308,467,889,360,441,268,990,271,176,400,1085,280,597,386,256,400,748,405,65,417,1240,431,226,598,824,398,1130,220,584,296,1139,297,1022,456,125,386);
         this.WORM_COORDS[3206] = new Array(1236,251,606,392,821,399,459,269,662,373,356,256,163,403,1170,466,323,502,53,466,570,302,763,309,1078,285,976,277,1239,580,1150,215,706,319,257,400,920,332,1281,316);
         this.WORM_COORDS[3207] = new Array(349,417,1010,268,546,389,578,298,465,270,1085,280,56,466,240,395,603,390,672,339,748,405,1221,252,807,402,128,380,380,235,730,308,891,359,1269,308,67,415,1146,215);
         this.WORM_COORDS[3208] = new Array(862,368,522,284,1004,268,291,413,193,377,124,389,997,436,707,318,1259,277,944,300,419,238,573,301,1106,236,53,466,364,248,736,395,1175,223,1061,293,1,459,632,375);
         this.WORM_COORDS[3209] = new Array(1196,473,739,307,469,270,682,331,570,302,878,360,1212,256,87,414,1105,237,693,398,1046,289,172,405,275,406,42,467,225,384,49,605,618,404,929,318,413,231,1243,585);
         this.WORM_COORDS[3210] = new Array(290,412,1115,320,560,385,1145,215,486,277,348,416,653,368,861,369,17,462,967,282,555,307,980,434,119,397,392,232,333,274,1213,255,1259,593,173,404,1291,329,69,414);
         this.WORM_COORDS[3211] = new Array(574,300,1175,470,627,382,280,408,872,362,500,277,1271,308,778,368,1160,219,230,389,1221,252,727,309,368,244,1070,294,952,352,7,459,102,413,984,273,439,266,1102,238);
         this.WORM_COORDS[3212] = new Array(792,396,663,374,1244,252,54,466,1033,283,328,279,928,320,156,397,416,234,1038,494,179,523,1091,280,877,360,745,307,1149,215,86,414,547,307,212,614,488,277,331,411);
         this.WORM_COORDS[3213] = new Array(675,382,1246,253,1003,268,1106,236,1296,337,989,436,1208,509,305,466,1053,292,585,296,721,311,926,322,496,277,150,390,220,378,787,391,860,371,40,467,420,241,336,272);
         this.WORM_COORDS[3214] = new Array(796,400,1108,236,0,459,973,353,509,278,411,231,227,386,1002,268,578,298,1252,256,297,528,753,307,55,466,355,257,748,458,18,596,592,384,1285,321,867,365,129,378);
         this.WORM_COORDS[3215] = new Array(1061,502,1,459,1268,308,982,274,807,402,93,414,323,284,1250,591,146,375,313,468,1238,528,610,396,771,311,542,308,1180,226,884,361,198,372,196,613,715,314,56,466);
         this.WORM_COORDS[3216] = new Array(459,269,913,354,725,310,404,230,142,364,320,470,582,296,797,401,271,405,526,290,1017,272,1130,220,670,379,849,383,37,466,84,414,204,618,605,391,1068,502,535,393);
         this.WORM_COORDS[3217] = new Array(5,459,656,369,1000,268,276,406,1160,219,817,400,552,308,239,589,173,404,91,414,1278,313,887,361,459,269,359,254,736,307,300,462,57,513,604,390,1243,252,981,435);
         this.WORM_COORDS[3218] = new Array(423,253,859,371,1172,542,293,415,1063,294,45,605,1255,592,1106,236,1133,307,1207,249,213,613,687,392,319,470,546,307,123,391,947,297,225,384,73,414,614,400,734,307);
         this.WORM_COORDS[3219] = new Array(1250,425,592,384,643,368,1151,215,831,396,88,414,1010,268,161,402,759,308,464,270,708,318,1164,461,313,468,9,460,241,395,918,336,1240,252,387,233,556,307,400,380);
         this.WORM_COORDS[3220] = new Array(1024,277,99,414,774,312,569,384,645,367,699,324,789,394,381,234,944,300,1295,335,1165,462,228,597,1092,280,274,406,566,304,840,394,432,262,1226,251,50,515,20,463);
         this.WORM_COORDS[3221] = new Array(1027,279,918,336,1133,307,1152,215,533,308,748,405,280,408,151,391,93,414,406,230,711,316,302,530,46,605,608,394,865,366,984,436,303,465,687,392,781,315,481,274);
         this.WORM_COORDS[3222] = new Array(836,395,19,462,173,404,239,394,971,279,895,358,1051,291,1286,322,1221,252,1163,527,104,412,542,308,472,270,1142,215,223,602,1042,497,302,464,1249,591,1219,512,704,410);
         this.WORM_COORDS[3223] = new Array(922,328,509,278,583,296,375,238,1084,280,329,412,764,309,9,460,137,364,1154,216,322,503,247,396,1052,501,708,318,1247,253,602,389,857,373,194,375,1275,312,380,424);
         this.WORM_COORDS[3224] = new Array(517,280,194,375,1170,466,954,291,1280,315,915,353,299,421,444,268,0,459,1160,219,1024,277,574,300,783,385,78,414,693,329,605,391,129,378,1257,422,1102,238,248,396);
         this.WORM_COORDS[3225] = new Array(293,415,470,270,335,273,721,311,867,365,537,308,413,231,1165,462,1122,226,221,604,235,392,1284,320,947,353,1226,251,80,414,312,468,1091,280,557,385,183,391,33,466);
         this.WORM_COORDS[3226] = new Array(296,417,399,230,870,362,568,303,1221,421,321,504,349,264,974,278,1247,253,98,414,1166,463,1262,597,215,374,161,402,668,378,704,320,818,400,480,274,547,389,771,311);
         this.WORM_COORDS[3227] = new Array(5,459,820,400,628,380,714,314,1215,254,891,359,225,384,332,275,567,304,1039,286,101,413,435,264,1145,215,220,605,555,386,311,468,54,514,1090,280,488,277,284,410);
         this.WORM_COORDS[3228] = new Array(1000,268,345,267,205,369,155,396,1092,280,350,418,203,618,694,328,38,466,464,270,538,308,634,373,793,397,278,407,295,460,880,360,1221,252,1237,527,1289,326,1037,493);
         this.WORM_COORDS[3229] = new Array(682,331,294,522,18,462,369,243,174,403,623,409,496,277,37,520,810,401,1072,292,297,418,885,361,1153,215,755,308,1258,277,547,389,942,354,439,266,968,281,247,396);
         this.WORM_COORDS[3230] = new Array(757,308,1232,251,2,459,998,269,738,397,268,404,1143,215,562,306,1270,308,1066,294,675,336,177,399,473,271,110,408,867,365,1199,473,1247,590,606,392,352,261,305,466);
         this.WORM_COORDS[3231] = new Array(727,309,1222,252,357,256,421,244,514,279,211,370,1013,268,1080,282,1149,215,618,404,11,594,23,464,671,380,932,314,1136,303,91,414,273,405,805,402,303,465,1277,313);
         this.WORM_COORDS[3232] = new Array(76,414,433,263,1282,317,1112,234,355,419,53,466,1231,251,322,285,894,359,551,308,972,279,612,397,173,404,686,330,245,587,271,405,737,307,805,402,1023,276,746,404);
         this.WORM_COORDS[3233] = new Array(1178,225,529,309,588,296,804,402,859,371,949,295,609,395,185,388,195,521,62,418,376,237,1276,313,1038,285,299,421,1120,227,544,390,1239,252,697,325,124,389,36,520);
         this.WORM_COORDS[3234] = new Array(479,273,589,384,1268,308,918,336,1115,231,392,422,970,280,275,406,664,375,808,402,1190,230,101,413,163,403,17,531,45,466,307,467,1245,252,1065,294,779,314,363,249);
         this.WORM_COORDS[3235] = new Array(1011,268,551,308,39,466,11,594,170,406,1227,251,437,266,1238,431,336,272,99,414,654,369,912,355,1168,222,307,467,1060,502,1187,474,1288,324,251,398,541,391,1100,286);
         this.WORM_COORDS[3236] = new Array(297,528,1058,293,393,232,160,401,221,379,7,459,293,415,756,308,549,307,1210,255,336,272,474,271,1230,428,105,411,908,355,1104,237,233,592,618,404,999,268,851,380);
         this.WORM_COORDS[3237] = new Array(598,387,500,277,824,398,1016,271,306,466,896,358,49,605,30,465,784,317,243,395,99,414,1147,215,246,587,1211,472,555,307,952,292,168,407,723,310,362,250,656,369);
         this.WORM_COORDS[3238] = new Array(534,308,449,268,831,396,147,382,1054,292,606,392,17,596,910,355,291,413,724,310,1043,498,1255,275,223,602,335,273,739,398,658,369,214,372,302,464,16,461,1187,229);
         this.WORM_COORDS[3239] = new Array(1256,275,372,241,1040,286,582,296,827,397,425,257,2,459,1195,234,638,370,499,277,188,384,1137,216,354,419,292,414,959,287,1056,502,774,312,898,358,38,605,76,414);
         this.WORM_COORDS[3240] = new Array(1060,293,952,292,345,267,227,386,668,378,51,466,547,307,164,404,589,384,857,373,96,414,1178,552,1163,220,325,500,452,268,1281,316,757,308,788,392,1217,253,1253,591);
         this.WORM_COORDS[3241] = new Array(792,396,673,338,1149,215,843,390,54,466,304,465,412,231,748,307,1176,548,214,372,479,273,1263,279,903,356,952,292,1079,284,334,273,537,308,93,414,1238,431,1187,474);
         this.WORM_COORDS[3242] = new Array(541,308,680,332,588,384,378,236,1143,215,7,459,972,279,135,366,246,587,246,396,449,268,1206,248,823,399,74,414,1094,280,779,314,915,353,701,406,1235,526,1298,340);
         this.WORM_COORDS[3243] = new Array(1161,220,614,400,1023,276,106,411,729,308,378,236,261,565,500,277,1226,251,565,305,705,413,1103,237,1264,422,1206,303,273,405,442,268,46,466,1235,526,939,305,840,394);
         this.WORM_COORDS[3244] = new Array(747,307,473,271,367,421,1184,474,611,396,314,469,1002,268,164,404,1273,310,1125,223,916,353,253,579,28,464,526,290,29,602,800,402,1253,591,1245,252,351,262,1264,422);
         this.WORM_COORDS[3245] = new Array(1233,526,432,262,691,329,1054,292,1239,252,513,279,566,304,1179,226,991,271,61,420,244,395,343,268,1278,313,186,386,932,314,302,464,303,603,746,307,1,459,333,411);
         this.WORM_COORDS[3246] = new Array(1289,326,1060,502,901,356,490,277,559,306,1244,431,109,409,252,398,707,318,265,557,1080,282,835,395,46,466,645,367,187,385,757,308,305,466,1017,272,1124,224,1188,229);
         this.WORM_COORDS[3247] = new Array(540,308,2,459,189,382,1264,280,264,404,1163,220,343,268,60,421,581,384,997,269,358,419,433,263,319,470,7,540,941,303,796,400,224,601,695,327,488,277,1218,511);
         this.WORM_COORDS[3248] = new Array(576,299,190,381,69,414,817,400,716,313,361,251,1141,215,948,296,1213,255,39,466,1268,308,916,353,1067,294,318,470,244,587,733,391,591,384,1011,268,267,404,1039,495);
         this.WORM_COORDS[3249] = new Array(1249,254,48,466,1114,232,818,400,919,334,384,233,215,374,276,406,247,587,97,414,587,296,502,277,963,284,444,268,568,384,1070,294,736,307,325,282,1232,429,1260,594);
         this.WORM_COORDS[3250] = new Array(1068,294,1275,312,359,254,85,414,568,303,826,398,654,369,1198,236,953,292,17,462,210,370,314,513,882,360,263,403,1115,231,517,280,435,264,1254,423,778,314,718,312);
         this.WORM_COORDS[3251] = new Array(864,367,1260,422,161,402,580,297,1130,220,190,588,1177,550,382,424,619,406,1189,229,486,277,701,322,383,233,24,464,102,413,1289,326,1039,495,946,298,317,509,242,395);
         this.WORM_COORDS[3252] = new Array(36,466,340,270,319,470,974,278,790,395,1271,308,615,401,732,308,89,414,1242,252,230,596,1097,242,246,396,174,403,561,306,296,417,479,273,1147,215,1172,542,396,410);
         this.WORM_COORDS[3253] = new Array(1232,251,404,230,347,415,616,402,536,308,84,414,858,372,42,467,1032,486,1133,218,1088,280,986,273,316,469,344,268,736,395,146,375,220,378,456,268,783,316,702,321);
         this.WORM_COORDS[3254] = new Array(580,297,134,369,1233,429,33,466,706,319,261,403,1259,277,1038,285,922,328,1174,223,524,286,441,268,613,398,364,248,192,379,1113,233,312,468,36,520,984,273,669,379);
         this.WORM_COORDS[3255] = new Array(92,414,851,380,254,577,333,274,239,394,1273,310,48,466,304,465,626,384,179,397,548,307,953,292,1240,431,1056,292,479,273,738,307,11,594,1168,222,1255,592,795,399);
         this.WORM_COORDS[3256] = new Array(150,390,792,396,532,308,359,254,744,307,585,296,648,367,453,268,324,501,842,391,236,392,1146,215,1005,268,1268,308,1,459,908,355,1222,252,1163,527,1059,293,588,384);
         this.WORM_COORDS[3257] = new Array(140,364,588,384,312,468,1257,276,1208,509,653,368,703,321,98,414,365,248,552,308,223,382,1123,225,860,371,1186,229,971,279,7,459,1248,590,1047,500,777,313,458,269);
         this.WORM_COORDS[3258] = new Array(1002,268,1257,422,615,401,94,414,749,307,3,459,1228,251,7,540,465,270,167,406,890,360,811,401,524,286,308,467,217,375,209,616,284,410,356,256,1056,292,1272,309);
         this.WORM_COORDS[3259] = new Array(1052,291,278,407,78,414,47,466,733,308,394,231,1262,422,491,277,954,291,1167,221,906,355,1288,324,612,397,1210,303,667,378,543,308,805,402,152,393,188,577,343,413);
         this.WORM_COORDS[3260] = new Array(542,308,882,360,365,248,248,396,163,403,466,270,954,291,698,325,592,384,671,380,1209,254,1016,271,1143,215,832,396,324,501,47,466,1050,501,1084,280,1256,592,1270,308);
         this.WORM_COORDS[3261] = new Array(524,286,282,409,1049,290,470,270,952,292,213,613,206,369,904,356,742,307,581,296,18,462,155,396,1280,315,1125,223,685,330,302,464,345,267,1202,242,671,380,823,399);
         this.WORM_COORDS[3262] = new Array(343,268,323,502,221,379,919,334,355,419,716,313,800,402,52,466,1173,544,102,413,426,258,987,273,513,279,153,394,598,387,1184,227,578,298,1289,326,1261,595,781,315);
         this.WORM_COORDS[3263] = new Array(1047,289,577,299,920,332,1223,423,210,370,433,263,383,233,0,459,134,369,856,374,750,307,52,605,699,324,326,280,1148,215,644,367,57,427,800,402,1272,309,265,404);
         this.WORM_COORDS[3264] = new Array(178,398,253,398,1187,229,940,304,1273,310,1,459,889,360,1051,291,387,233,243,587,65,417,326,280,335,411,744,307,1109,236,650,367,823,399,999,268,527,292,1241,431);
         this.WORM_COORDS[3265] = new Array(700,323,1070,294,776,313,1239,252,189,382,294,416,503,277,1143,215,56,466,284,510,95,414,884,361,1270,308,601,388,138,364,5,459,578,298,362,250,1038,494,818,400);
         this.WORM_COORDS[3266] = new Array(245,396,627,382,1148,215,1086,280,40,467,72,414,806,402,188,384,1220,252,1184,474,469,270,553,308,1006,268,393,232,129,378,541,391,1295,335,302,464,781,315,911,355);
         this.WORM_COORDS[3267] = new Array(889,360,144,365,626,384,299,421,1290,328,775,313,245,396,1226,251,811,401,1247,429,978,276,1127,317,1226,524,9,460,521,283,194,375,1144,215,77,414,440,268,1261,595);
         this.WORM_COORDS[3268] = new Array(653,368,337,411,1217,253,835,395,944,300,1039,286,727,309,468,270,231,389,1155,217,402,230,528,298,145,371,66,416,199,618,55,466,585,296,601,388,22,527,545,390);
         this.WORM_COORDS[3269] = new Array(1277,313,493,277,1023,276,673,338,107,410,1040,495,551,308,810,401,1118,229,393,232,36,466,207,369,296,417,941,303,903,356,748,307,193,521,1256,592,56,605,1174,469);
         this.WORM_COORDS[3270] = new Array(1141,215,1228,426,32,466,346,266,868,363,766,310,146,375,1204,245,319,470,971,279,455,268,573,385,813,401,569,303,1296,337,199,372,686,330,1046,289,270,405,330,411);
         this.WORM_COORDS[3271] = new Array(356,256,811,401,511,279,73,414,598,387,1283,319,991,436,267,404,1214,254,1031,281,162,403,1231,526,1253,424,782,316,443,268,208,617,652,367,36,466,981,275,1125,223);
         this.WORM_COORDS[3272] = new Array(330,276,317,469,662,373,162,403,949,295,246,396,42,467,474,271,343,413,546,307,772,312,793,397,610,396,1234,251,915,353,1300,342,242,587,73,414,850,381,720,311);
         this.WORM_COORDS[3273] = new Array(762,309,1130,220,19,462,102,413,372,241,318,470,1015,270,962,285,526,290,154,395,582,296,1298,340,790,395,752,458,458,269,543,390,647,367,879,360,13,534,57,605);
         this.WORM_COORDS[3274] = new Array(0,459,554,386,127,382,1027,279,731,308,443,268,359,254,1093,248,650,367,289,412,1158,457,881,360,1152,215,52,466,941,303,822,399,224,384,310,467,1217,253,517,280);
         this.WORM_COORDS[3275] = new Array(809,402,1081,282,230,389,112,406,1274,311,298,529,536,308,629,378,997,269,169,407,25,464,1191,231,1168,536,280,408,17,531,362,250,865,366,1204,472,481,274,932,314);
         this.WORM_COORDS[3276] = new Array(17,462,1006,268,897,358,636,370,1194,574,1166,221,802,402,1059,293,944,300,53,514,1115,320,318,470,333,411,491,277,231,389,411,231,733,308,572,301,95,414,1276,313);
         this.WORM_COORDS[3277] = new Array(747,307,1155,217,114,403,498,277,688,329,390,233,339,270,845,387,955,290,605,391,1263,279,1015,442,169,407,898,358,243,587,299,421,442,268,1027,279,60,421,1292,331);
         this.WORM_COORDS[3278] = new Array(139,364,207,617,812,401,1053,292,1283,319,216,374,698,325,992,270,1258,593,390,233,92,414,874,362,312,468,1164,220,784,317,1223,252,589,384,64,606,559,306,21,463);
         this.WORM_COORDS[3279] = new Array(1248,427,111,407,501,277,42,605,1300,342,661,372,744,307,1255,275,192,379,787,391,1147,215,392,232,320,289,268,404,866,365,57,427,987,273,565,305,214,613,367,421);
         this.WORM_COORDS[3280] = new Array(309,467,102,413,1148,215,285,410,665,376,1219,252,56,466,872,362,560,306,17,596,475,272,1097,242,188,384,1037,285,1299,341,547,389,1160,458,751,307,812,401,614,400);
         this.WORM_COORDS[3281] = new Array(173,404,464,270,1227,251,1067,294,928,320,630,376,526,290,804,402,7,459,287,412,197,616,987,436,1174,223,581,296,999,268,326,280,1286,322,85,414,232,390,701,322);
         this.WORM_COORDS[3282] = new Array(1057,292,504,277,822,399,640,369,928,320,715,314,256,400,53,466,180,395,385,233,1060,502,1245,252,1186,229,1005,268,782,316,92,414,877,360,563,305,444,268,1293,332);
         this.WORM_COORDS[3283] = new Array(840,394,325,282,708,318,788,392,784,317,916,353,257,572,227,386,1096,243,104,412,300,422,738,397,482,275,1245,588,54,466,628,380,997,269,154,395,1177,471,560,306);
         this.WORM_COORDS[3284] = new Array(903,356,589,384,327,280,666,377,11,460,457,269,12,535,840,394,209,370,380,235,66,607,723,310,108,410,783,385,1184,474,981,275,203,618,554,308,1210,255,284,410);
         this.WORM_COORDS[3285] = new Array(476,272,1214,254,1247,590,9,460,952,292,227,386,596,386,365,248,727,309,856,374,177,399,653,368,421,244,1056,292,313,468,1131,219,115,402,1277,313,786,389,259,568);
         this.WORM_COORDS[3286] = new Array(9,460,584,384,216,374,567,304,345,414,653,368,913,354,46,516,949,295,1205,246,309,467,801,402,89,414,754,308,223,602,275,406,1300,342,1012,268,1139,216,1063,294);
         this.WORM_COORDS[3287] = new Array(708,318,40,467,762,309,188,577,153,394,243,395,635,372,388,425,556,307,1157,218,320,289,947,297,387,233,799,402,854,377,1235,526,1135,304,238,589,1262,597,458,269);
         this.WORM_COORDS[3288] = new Array(126,384,43,467,1003,268,950,294,456,268,687,329,635,372,315,469,909,355,790,395,186,386,1159,458,285,410,1281,316,15,532,1104,237,547,307,767,310,1240,582,1130,312);
         this.WORM_COORDS[3289] = new Array(631,376,134,369,1240,582,73,414,915,353,342,268,224,384,951,293,1224,252,1149,215,507,278,1021,275,396,230,1277,313,691,329,743,401,772,312,857,373,333,411,587,296);
         this.WORM_COORDS[3290] = new Array(1005,268,93,414,1079,284,302,464,1243,252,652,367,729,308,812,401,741,458,994,436,12,594,364,248,250,398,26,524,40,467,1182,226,1272,309,903,356,451,268,522,284);
         this.WORM_COORDS[3291] = new Array(63,417,734,392,912,355,1248,427,357,256,646,367,10,460,719,312,1048,290,957,288,805,402,520,282,772,312,220,378,583,296,1176,224,1185,512,416,234,20,597,1244,587);
         this.WORM_COORDS[3292] = new Array(563,305,1001,268,25,525,1144,215,836,395,897,358,135,366,295,416,234,592,1294,334,220,378,29,465,759,308,321,504,1138,299,364,248,1251,425,649,367,490,277,85,414);
         this.WORM_COORDS[3293] = new Array(241,395,788,392,1257,592,926,322,1292,331,1247,429,33,603,42,467,169,407,595,386,334,273,294,416,994,270,82,414,1123,225,319,470,854,377,648,367,1188,474,758,308);
         this.WORM_COORDS[3294] = new Array(335,273,495,277,12,461,408,230,134,369,883,360,1042,287,626,384,955,290,780,315,196,373,1187,474,813,401,309,467,1297,338,294,416,1248,590,75,414,728,309,1223,423);
         this.WORM_COORDS[3295] = new Array(846,386,907,355,1005,438,1152,215,68,414,705,320,598,387,217,375,451,268,652,367,1255,275,158,399,286,411,1096,243,1296,337,12,461,345,267,517,280,30,602,957,288);
         this.WORM_COORDS[3296] = new Array(784,317,1036,284,16,461,306,523,586,384,214,613,140,364,685,330,285,410,94,414,496,277,853,378,359,254,1244,252,387,425,1287,323,671,380,231,389,733,391,1117,230);
         this.WORM_COORDS[3297] = new Array(860,371,7,594,109,409,786,389,342,268,250,398,409,230,306,466,3,459,984,273,1156,217,177,399,207,617,1206,248,687,392,731,308,552,387,1285,321,613,398,577,299);
         this.WORM_COORDS[3298] = new Array(299,421,443,268,247,396,1287,323,40,467,178,398,652,367,1080,282,515,280,1176,470,388,233,882,360,117,400,243,587,1009,268,783,316,327,280,1187,229,601,388,798,401);
         this.WORM_COORDS[3299] = new Array(126,384,463,269,1097,242,701,322,1017,272,961,285,1299,341,227,386,800,402,310,467,861,369,1193,233,60,421,292,414,751,307,327,280,531,309,1252,591,626,384,210,616);
         this.WORM_COORDS[3300] = new Array(150,218,1292,609,1276,552,102,336,725,398,742,572,1130,465,845,193,467,374,667,285,1233,396,1040,260,924,483,434,273,1032,456,506,320,592,332,1069,312,780,202,267,250);
         this.WORM_COORDS[3301] = new Array(556,321,925,239,738,232,719,456,1143,480,503,319,81,362,1273,543,354,427,839,189,278,376,344,197,1299,633,244,177,607,342,1001,529,217,472,1100,386,976,270,111,206);
         this.WORM_COORDS[3302] = new Array(1272,537,1290,602,377,492,694,436,616,345,1085,383,784,152,440,273,188,233,206,171,472,362,1169,376,297,232,747,238,674,200,914,230,1141,478,60,359,628,597,360,429);
         this.WORM_COORDS[3303] = new Array(150,218,1277,555,289,239,996,450,465,276,554,321,470,366,846,194,406,226,12,552,750,241,79,362,659,622,165,457,332,427,629,352,1052,273,1292,609,1204,347,911,228);
         this.WORM_COORDS[3304] = new Array(1086,383,1131,467,630,353,276,250,346,196,1051,272,655,624,425,532,1029,460,758,244,437,434,216,169,1187,533,526,326,1273,543,763,429,158,219,784,152,981,267,592,585);
         this.WORM_COORDS[3305] = new Array(838,163,973,272,1204,347,707,218,1275,548,662,619,762,566,1084,383,49,345,219,169,483,337,1125,459,1060,287,369,442,197,235,281,375,814,530,335,205,599,336,1258,450);
         this.WORM_COORDS[3306] = new Array(650,624,423,271,266,249,647,309,579,325,1013,244,83,362,392,513,1179,366,802,152,1075,375,1124,458,554,423,1243,419,132,211,110,515,1269,527,872,253,234,169,14,303);
         this.WORM_COORDS[3307] = new Array(1101,386,122,575,656,298,827,155,705,584,214,169,1149,488,472,362,866,254,58,358,1063,295,1013,244,369,338,1238,409,804,425,436,273,148,217,556,321,228,478,922,484);
         this.WORM_COORDS[3308] = new Array(100,337,1070,313,257,186,1225,368,572,323,132,580,1106,414,784,152,934,483,1299,633,756,243,515,330,926,241,1163,505,1035,254,376,208,1269,527,940,320,134,212,40,327);
         this.WORM_COORDS[3309] = new Array(1029,250,1249,430,1102,386,373,473,819,153,9,300,604,340,1178,366,689,206,270,252,1273,543,348,194,217,169,1027,463,478,349,1131,467,946,315,152,218,413,226,1207,545);
         this.WORM_COORDS[3310] = new Array(932,249,406,226,276,250,1136,473,1179,366,629,352,512,326,969,466,83,362,229,479,1048,380,19,305,954,302,421,357,326,213,117,574,733,228,549,426,380,506,714,578);
         this.WORM_COORDS[3311] = new Array(755,569,1124,458,898,221,210,169,259,368,126,208,1009,245,111,515,6,298,564,321,1205,347,746,238,473,359,957,294,145,350,1021,544,726,460,1259,455,637,416,341,200);
         this.WORM_COORDS[3312] = new Array(1064,297,574,323,547,428,916,231,180,229,658,296,740,232,119,575,1010,548,81,362,148,347,991,258,1206,347,1116,418,1154,493,1281,570,341,200,397,505,13,550,521,329);
         this.WORM_COORDS[3313] = new Array(452,273,1071,374,135,476,679,202,138,215,1261,462,627,350,142,583,539,323,280,247,1297,625,598,594,847,196,1169,376,243,365,875,312,1224,366,694,593,1002,451,1143,480);
         this.WORM_COORDS[3314] = new Array(619,598,708,218,1269,527,902,280,374,478,1193,353,372,206,837,160,614,345,144,350,88,359,702,427,1181,528,1238,409,278,376,295,234,1106,414,189,233,1018,244,412,262);
         this.WORM_COORDS[3315] = new Array(779,202,1101,386,1143,480,944,317,372,462,110,206,1015,244,1293,612,574,323,1273,543,806,152,790,433,750,486,1251,434,400,224,693,594,29,313,1213,549,481,342,1067,306);
         this.WORM_COORDS[3316] = new Array(1204,543,216,169,1076,376,43,332,706,217,539,323,425,224,589,330,640,605,1292,609,448,410,362,188,778,202,1009,245,1070,313,789,152,627,427,1038,451,34,547,140,354);
         this.WORM_COORDS[3317] = new Array(478,349,851,229,640,412,974,271,403,225,1155,494,1205,543,1291,604,1002,451,1194,352,698,213,353,190,406,340,942,481,151,218,1261,462,293,235,796,151,601,338,150,461);
         this.WORM_COORDS[3318] = new Array(90,357,93,544,556,421,789,433,669,283,25,310,489,327,1010,548,1093,384,127,208,680,605,594,333,1184,531,768,562,140,470,1297,625,442,424,1137,473,384,213,403,495);
         this.WORM_COORDS[3319] = new Array(714,221,1193,537,1246,425,1297,625,184,464,496,320,1164,384,584,327,969,275,72,362,954,544,869,253,253,186,842,364,122,575,1021,244,830,487,662,291,1068,308,623,598);
         this.WORM_COORDS[3320] = new Array(35,319,274,251,978,459,143,216,734,389,1163,505,608,601,823,487,1217,551,377,208,1181,364,181,461,604,340,642,410,92,545,542,561,247,182,389,533,847,196,537,323);
         this.WORM_COORDS[3321] = new Array(1140,476,46,553,412,474,938,269,65,361,1210,347,1065,300,599,456,982,456,624,348,793,151,134,212,529,326,432,528,404,226,457,274,354,189,183,463,131,363,670,614);
         this.WORM_COORDS[3322] = new Array(577,324,302,228,1247,427,1141,478,978,269,23,545,748,572,152,346,968,467,148,217,1167,378,1101,386,39,325,1222,361,744,236,1252,549,673,611,488,329,892,298,828,155);
         this.WORM_COORDS[3323] = new Array(129,209,117,372,396,506,1094,384,1171,374,788,152,51,350,552,321,655,300,555,422,899,222,213,239,81,562,1230,385,1274,545,1296,621,173,458,310,223,602,598,1252,436);
         this.WORM_COORDS[3324] = new Array(588,329,1153,492,1232,392,660,293,719,456,136,583,305,225,853,230,31,316,1006,247,520,329,434,273,670,614,806,419,119,371,1263,490,1277,555,1078,382,811,152,370,193);
         this.WORM_COORDS[3325] = new Array(1107,414,1269,527,463,275,39,325,1297,625,266,249,798,152,674,610,592,332,132,479,746,238,1143,480,1212,348,880,255,644,312,95,540,481,342,1187,533,1250,432,352,191);
         this.WORM_COORDS[3326] = new Array(1267,518,26,544,90,357,280,247,582,326,1207,347,1155,494,818,153,699,214,1250,432,11,301,899,222,465,276,540,560,175,225,1004,534,452,403,189,465,523,327,1031,251);
         this.WORM_COORDS[3327] = new Array(544,322,399,501,1214,349,307,224,700,214,870,253,715,411,1256,444,672,279,601,338,135,582,1129,463,41,329,745,573,425,224,1063,295,617,440,1288,594,1089,383,467,374);
         this.WORM_COORDS[3328] = new Array(656,298,60,359,1066,303,135,582,1135,471,534,324,899,497,964,281,390,218,226,169,848,228,676,609,112,375,278,248,1010,548,1293,612,178,227,1166,380,1091,384,810,152);
         this.WORM_COORDS[3329] = new Array(1151,490,144,216,918,233,235,169,446,414,404,493,1178,366,62,360,1088,383,12,301,1270,532,1291,604,509,323,652,625,1066,303,171,306,660,293,673,200,998,450,988,261);
         this.WORM_COORDS[3330] = new Array(41,329,616,345,1110,415,1017,244,109,364,766,563,967,468,197,235,434,273,765,212,1257,447,689,206,1243,551,933,252,300,230,1165,508,623,598,354,427,857,256,1064,297);
         this.WORM_COORDS[3331] = new Array(1257,447,1044,263,674,200,528,326,1133,469,868,253,1226,372,86,557,147,349,746,238,1281,570,799,431,975,271,208,170,1080,382,386,528,113,206,712,579,97,344,598,335);
         this.WORM_COORDS[3332] = new Array(1000,251,1236,404,1272,537,140,216,407,226,52,352,679,606,559,321,1081,382,839,367,487,330,20,546,625,348,440,427,1213,549,213,169,197,235,1197,350,938,320,809,152);
         this.WORM_COORDS[3333] = new Array(30,545,1079,382,409,226,694,361,128,482,287,241,600,337,654,301,793,434,874,254,981,267,226,169,548,564,1139,475,67,362,638,414,1035,254,934,483,497,320,1017,549);
         this.WORM_COORDS[3334] = new Array(193,234,172,458,431,224,1225,553,21,545,754,242,488,329,409,482,858,255,272,373,701,587,1278,558,1056,279,65,361,1158,498,653,302,1215,350,242,173,273,251,1099,385);
         this.WORM_COORDS[3335] = new Array(836,159,705,217,1267,518,851,229,1040,384,426,463,675,610,88,359,1188,534,1103,387,355,189,781,432,248,184,189,233,502,319,1029,250,139,471,1142,479,1195,351,666,286);
         this.WORM_COORDS[3336] = new Array(810,152,1005,248,1289,596,58,358,397,336,13,302,222,169,1130,465,644,409,481,342,1111,415,381,510,171,223,853,230,111,515,360,188,1192,354,728,227,120,575,906,225);
         this.WORM_COORDS[3337] = new Array(165,221,1094,384,714,412,548,321,948,313,16,304,681,203,699,590,488,329,887,267,406,226,1052,273,790,554,337,203,559,572,65,361,1225,368,1215,550,774,431,794,151);
         this.WORM_COORDS[3338] = new Array(1062,292,237,169,751,571,117,574,967,277,504,319,437,273,1160,501,1294,615,442,424,1095,384,602,338,115,205,61,359,767,209,847,196,284,243,166,311,655,300,1233,396);
         this.WORM_COORDS[3339] = new Array(360,188,705,584,1123,456,34,547,421,530,152,218,141,469,282,245,539,323,984,264,119,371,1165,381,623,348,943,318,24,310,855,232,461,275,807,413,1244,421,801,152);
         this.WORM_COORDS[3340] = new Array(1296,621,1068,374,762,566,679,269,609,344,1244,551,254,186,537,323,912,229,1137,473,90,357,1171,374,1232,392,1021,244,743,235,789,152,129,481,675,610,39,325,843,191);
         this.WORM_COORDS[3341] = new Array(425,224,1142,479,716,221,86,361,1047,266,877,254,218,169,524,327,1197,350,556,421,599,336,50,554,26,310,357,427,1221,553,413,347,1294,615,456,274,801,429,820,154);
         this.WORM_COORDS[3342] = new Array(573,323,1122,455,687,205,1284,581,334,206,758,417,677,608,450,273,868,253,1254,441,1063,295,947,314,57,357,124,207,993,257,623,348,390,218,1192,354,153,345,431,449);
         this.WORM_COORDS[3343] = new Array(1002,249,721,223,246,181,1190,355,657,297,303,227,45,337,1290,602,1252,436,584,327,625,597,921,236,1181,528,1085,383,129,209,114,568,403,495,780,202,938,481,124,484);
         this.WORM_COORDS[3344] = new Array(553,424,784,152,1157,497,19,546,316,219,494,320,641,411,923,237,5,298,166,311,390,523,1185,360,1238,409,192,233,914,487,1300,637,1261,462,869,253,608,343,203,469);
         this.WORM_COORDS[3345] = new Array(93,351,693,361,749,240,958,482,880,255,84,563,634,418,1009,245,259,368,938,269,393,220,1205,347,629,352,1006,538,1259,455,1284,581,441,273,529,326,702,586,1209,546);
         this.WORM_COORDS[3346] = new Array(421,224,795,151,548,321,1047,266,1146,483,1187,358,0,298,490,325,780,202,463,275,1248,428,324,215,370,449,205,172,707,218,78,561,193,234,119,205,634,418,698,590);
         this.WORM_COORDS[3347] = new Array(146,217,626,597,1018,244,769,207,490,325,1087,383,285,242,401,225,1187,358,107,515,1136,473,573,574,159,458,703,585,663,290,869,253,931,248,694,361,552,321,621,347);
         this.WORM_COORDS[3348] = new Array(1254,441,1160,501,758,417,766,210,95,348,474,357,326,213,16,304,367,437,539,323,406,489,802,152,406,226,690,207,981,457,647,619,179,228,927,242,1287,590,570,574);
         this.WORM_COORDS[3349] = new Array(593,332,457,274,932,249,754,382,809,152,705,217,881,256,1046,265,632,420,313,220,77,362,950,310,1254,441,1136,473,787,432,1279,563,753,570,776,204,1209,546,111,515);
         this.WORM_COORDS[3350] = new Array(1276,552,1010,244,954,302,1135,471,423,224,930,246,78,362,1243,419,747,238,667,285,452,403,375,338,220,474,781,160,156,219,764,429,702,427,641,607,623,348,949,542);
         this.WORM_COORDS[3351] = new Array(369,191,516,331,1099,385,1154,493,586,328,450,273,1017,244,1265,510,1168,377,680,202,793,151,1294,615,161,221,449,409,737,386,99,339,1259,455,755,569,218,169,952,306);
         this.WORM_COORDS[3352] = new Array(859,495,468,371,959,289,630,353,742,572,1073,324,231,169,1256,444,1217,352,991,452,860,254,1287,590,181,461,1266,514,1,298,679,606,827,155,714,221,1209,546,796,433);
         this.WORM_COORDS[3353] = new Array(472,362,1274,545,1237,407,529,326,790,152,796,433,594,333,700,214,779,557,1041,260,433,444,46,339,264,369,146,217,94,542,885,261,1174,371,661,292,563,414,101,336);
         this.WORM_COORDS[3354] = new Array(150,218,853,230,751,241,21,307,1119,421,584,327,265,247,994,255,402,338,920,234,18,546,1174,521,1209,347,673,200,1021,544,437,434,1250,432,1290,602,533,324,820,154);
         this.WORM_COORDS[3355] = new Array(270,252,672,200,1090,383,651,403,545,322,1156,495,414,474,159,219,601,338,1257,447,708,419,330,210,1288,594,37,323,874,254,421,357,995,450,658,296,1180,365,451,273);
         this.WORM_COORDS[3356] = new Array(255,186,1074,330,1098,385,728,227,172,224,1272,537,1171,374,600,337,512,326,264,247,546,428,83,362,779,557,462,275,1145,483,669,200,388,532,147,579,698,432,356,189);
         this.WORM_COORDS[3357] = new Array(326,427,917,232,603,339,1224,366,87,360,1294,615,1096,384,743,382,746,238,1206,545,686,363,449,273,672,200,142,583,505,319,371,339,1055,278,247,182,381,510,278,248);
         this.WORM_COORDS[3358] = new Array(1275,548,242,173,1000,450,865,254,436,273,1300,637,1030,251,494,320,1069,374,629,352,390,218,664,202,717,221,67,362,948,313,895,498,18,305,1223,363,793,552,271,252);
         this.WORM_COORDS[3359] = new Array(1208,347,728,227,273,251,943,318,913,489,1273,543,619,345,396,336,105,336,635,417,1139,475,410,226,2,298,840,190,390,523,1013,244,1106,414,106,209,777,557,199,235);
         this.WORM_COORDS[3360] = new Array(72,362,1214,349,828,155,370,193,281,246,438,273,1286,587,358,428,874,254,460,387,633,420,967,277,546,322,227,169,1024,245,1104,388,1199,541,650,305,174,225,1249,430);
         this.WORM_COORDS[3361] = new Array(240,171,804,425,216,472,337,203,608,343,1157,497,377,492,1041,260,509,323,273,251,91,546,1249,430,0,298,687,205,192,233,126,483,1296,621,90,357,1085,383,743,235);
         this.WORM_COORDS[3362] = new Array(1264,500,705,217,760,566,1216,351,414,474,859,254,935,255,487,330,1158,498,15,303,443,273,1090,383,820,154,1015,551,1052,273,65,361,353,190,1290,602,554,321,221,169);
         this.WORM_COORDS[3363] = new Array(1071,317,748,572,896,221,333,207,682,603,844,192,16,546,1138,474,351,427,201,468,197,235,713,413,739,232,1208,347,46,339,438,273,408,484,985,263,575,323,1295,619);
         this.WORM_COORDS[3364] = new Array(1160,501,309,223,110,206,192,233,1276,552,535,323,596,334,430,530,375,207,1250,432,1052,273,40,550,823,376,981,457,630,424,434,442,1184,361,37,323,732,227,859,254);
         this.WORM_COORDS[3365] = new Array(430,451,602,598,726,225,1217,551,277,376,626,428,1032,456,384,524,1143,480,1277,555,1240,414,346,196,62,556,813,388,1174,371,779,202,761,566,1012,244,201,236,136,213);
         this.WORM_COORDS[3366] = new Array(2,298,729,227,395,221,172,224,1009,245,1240,414,314,220,60,359,672,200,1269,527,1200,348,511,325,710,417,238,483,1114,417,591,331,424,271,1288,594,1150,489,408,484);
         this.WORM_COORDS[3367] = new Array(777,203,1062,292,1152,491,980,268,5,298,786,152,327,427,1242,417,393,220,72,362,1220,357,70,558,663,290,155,459,579,325,437,273,138,356,465,377,158,219,1095,384);
         this.WORM_COORDS[3368] = new Array(1271,535,166,221,1217,352,640,605,598,335,1083,382,421,530,242,173,1032,252,833,157,341,200,1240,414,695,362,708,581,96,538,773,559,944,317,66,362,122,487,126,366);
         this.WORM_COORDS[3369] = new Array(1019,244,1081,382,710,580,1222,361,560,321,51,554,162,221,1165,381,858,255,1212,548,158,458,888,305,164,314,956,296,953,544,687,205,114,519,646,309,910,227,504,319);
         this.WORM_COORDS[3370] = new Array(1073,324,721,403,777,557,282,375,162,221,58,358,951,544,628,351,977,270,1142,479,522,328,425,224,1286,587,1195,351,461,275,438,432,829,372,1018,549,316,219,887,267);
         this.WORM_COORDS[3371] = new Array(37,323,318,421,58,555,747,238,275,250,667,285,995,450,1191,354,975,271,1162,504,602,338,152,557,430,451,175,225,454,273,475,355,634,418,1281,570,866,254,387,531);
         this.WORM_COORDS[3372] = new Array(621,347,943,318,10,300,1153,492,433,273,79,362,137,215,1247,550,439,430,513,328,638,602,924,239,605,453,192,233,1206,347,1244,421,691,208,988,453,198,467,873,254);
         this.WORM_COORDS[3373] = new Array(1258,450,432,224,1181,364,311,221,147,349,48,553,665,201,1157,497,593,332,886,263,814,386,646,309,1290,602,128,209,1268,524,751,571,1110,415,969,275,461,386,213,169);
         this.WORM_COORDS[3374] = new Array(385,214,152,346,1002,249,818,153,1135,471,1206,347,452,273,583,327,20,546,896,221,645,311,1109,415,732,391,206,237,773,205,1266,514,1296,621,306,224,137,215,783,432);
         this.WORM_COORDS[3375] = new Array(1256,444,217,169,782,153,1278,558,1205,347,510,324,617,345,945,316,280,375,397,223,162,457,141,216,1114,417,448,273,67,362,280,247,1201,541,704,425,674,200,1138,474);
         this.WORM_COORDS[3376] = new Array(1283,575,695,210,127,208,3,298,893,221,205,172,1257,447,270,252,687,362,446,273,1012,244,957,294,131,479,634,418,646,309,1140,476,54,555,394,508,50,348,504,319);
         this.WORM_COORDS[3377] = new Array(354,189,328,427,1159,500,996,450,940,320,1116,418,513,328,433,444,725,225,61,359,666,616,633,420,39,550,756,494,759,420,224,169,1167,378,831,371,911,228,1284,581);
         this.WORM_COORDS[3378] = new Array(709,580,1181,364,1264,500,964,281,868,253,39,550,80,362,557,321,256,186,292,236,583,576,383,336,104,522,837,369,1242,417,1,298,462,275,1138,474,468,371,1043,262);
         this.WORM_COORDS[3379] = new Array(1137,473,1177,367,366,189,579,395,441,273,930,483,652,402,1051,272,499,319,995,255,1101,386,56,356,1239,411,606,341,905,224,394,508,74,559,136,213,1297,625,761,566);
         this.WORM_COORDS[3380] = new Array(868,253,367,189,370,449,1079,382,630,353,199,235,1162,504,385,336,531,325,920,234,185,290,743,235,1254,441,955,299,559,418,273,251,1019,548,71,362,447,273,388,532);
         this.WORM_COORDS[3381] = new Array(1088,383,451,404,1164,384,894,221,1277,555,491,323,1246,425,1143,480,1222,361,407,486,545,322,718,576,652,303,77,560,1070,313,19,305,1029,250,635,417,815,153,595,590);
         this.WORM_COORDS[3382] = new Array(173,225,1021,244,154,459,32,317,1024,475,786,555,966,279,444,273,1299,633,347,426,625,348,1013,552,250,366,547,322,1065,300,116,205,665,201,119,575,1180,365,421,530);
         this.WORM_COORDS[3383] = new Array(487,330,1037,256,1175,522,444,273,666,616,761,566,35,547,947,483,1296,621,540,323,896,221,968,276,50,348,1208,347,443,421,722,224,5,298,765,430,561,416,165,221);
         this.WORM_COORDS[3384] = new Array(789,433,367,189,907,491,234,169,1091,384,739,232,809,152,861,254,773,559,84,563,1168,377,49,345,631,355,503,319,573,323,173,225,1215,550,121,489,450,273,979,269);
         this.WORM_COORDS[3385] = new Array(20,546,720,457,875,254,481,342,1289,596,1184,361,24,310,93,351,1054,276,213,169,1127,462,127,482,621,347,1089,383,931,248,553,424,748,239,538,323,938,481,422,224);
         this.WORM_COORDS[3386] = new Array(665,201,883,258,576,324,679,606,1016,244,778,557,277,376,1276,552,93,351,303,227,629,352,1232,392,744,236,203,236,151,218,1300,637,1161,503,556,421,1067,306,37,323);
         this.WORM_COORDS[3387] = new Array(564,321,688,205,994,450,950,310,97,344,439,430,628,351,149,217,296,233,169,308,1280,566,1072,321,16,546,1028,249,1206,347,469,369,383,336,816,384,367,189,1083,382);
         this.WORM_COORDS[3388] = new Array(648,406,31,316,627,350,787,152,270,252,1160,501,810,537,891,300,520,329,1038,257,196,235,424,224,755,243,675,200,1223,363,1077,382,954,302,243,175,1213,549,132,362);
         this.WORM_COORDS[3389] = new Array(1117,419,1211,348,1006,538,974,271,185,290,1300,637,302,228,1254,441,567,322,725,225,135,359,248,184,182,230,66,362,511,325,773,431,1278,558,570,407,16,304,808,540);
         this.WORM_COORDS[3390] = new Array(521,329,61,359,440,273,1128,463,404,493,629,352,249,185,713,578,385,214,1239,411,187,233,959,289,1187,358,576,324,1269,527,756,243,412,345,680,267,230,480,23,309);
         this.WORM_COORDS[3391] = new Array(66,557,860,254,493,321,51,350,1090,383,624,348,1272,537,829,155,1136,473,691,208,277,249,948,313,414,226,733,572,773,205,720,404,993,451,1,298,746,480,248,184);
         this.WORM_COORDS[3392] = new Array(362,188,202,236,1148,486,1052,273,1209,347,18,305,1297,625,124,207,1216,551,957,484,874,254,99,339,1270,532,26,544,613,345,639,603,970,274,531,325,788,152,1254,441);
         this.WORM_COORDS[3393] = new Array(1114,417,167,221,321,217,1207,347,1162,504,492,322,657,395,669,200,631,598,572,323,963,281,242,483,1247,427,644,312,906,492,362,336,60,359,394,221,1071,317,14,303);
         this.WORM_COORDS[3394] = new Array(64,557,751,241,36,321,1145,483,1032,252,913,229,157,219,548,321,486,331,814,152,1020,546,1087,383,620,598,338,203,423,533,273,251,952,544,1207,347,193,511,960,288);
         this.WORM_COORDS[3395] = new Array(1160,501,1093,384,1061,290,677,608,1176,369,696,364,109,206,988,453,132,580,400,500,560,321,1285,583,632,420,452,273,166,221,129,364,757,408,1227,376,627,350,306,224);
         this.WORM_COORDS[3396] = new Array(535,323,1214,349,604,340,931,483,562,574,1238,409,1292,609,181,229,721,575,892,221,654,301,338,427,1190,535,252,186,1266,514,979,269,1047,381,808,152,671,200,1039,259);
         this.WORM_COORDS[3397] = new Array(124,367,722,224,1069,312,637,416,623,348,60,359,1248,428,418,353,395,221,107,515,227,169,847,196,490,325,1190,355,1083,382,660,293,734,572,1295,619,1128,463,1275,548);
         this.WORM_COORDS[3398] = new Array(606,600,8,299,373,206,158,219,51,554,506,320,567,322,1280,566,757,244,1200,348,1253,438,806,541,368,440,825,155,1117,419,855,232,664,202,459,390,998,252,713,413);
         this.WORM_COORDS[3399] = new Array(639,414,606,341,1158,498,1012,552,492,322,1048,267,998,450,199,235,788,152,1290,602,620,598,292,236,854,231,734,572,398,503,581,391,14,548,1246,425,684,364,370,449);
         this.WORM_COORDS[3400] = new Array(3,473,739,207,189,225,1181,224,473,491,124,424,1237,360,1215,611,330,336,829,207,1043,378,895,223,266,280,638,207,402,339,679,136,793,139,1259,444,562,223,409,487);
         this.WORM_COORDS[3401] = new Array(117,428,482,499,962,211,542,232,337,339,262,281,637,207,144,326,1108,223,5,471,1046,386,748,156,1248,358,1295,533,709,462,690,133,911,224,1213,228,189,225,1267,470);
         this.WORM_COORDS[3402] = new Array(247,282,834,207,173,217,483,501,535,236,7,469,860,345,1108,223,1259,630,1256,358,918,225,66,370,1206,225,633,523,143,327,987,224,303,266,150,428,350,351,416,344);
         this.WORM_COORDS[3403] = new Array(1253,358,670,374,181,220,23,466,144,326,1123,185,88,385,403,338,1073,262,639,206,249,283,1245,626,466,492,890,223,97,437,968,213,678,515,1274,519,586,217,825,206);
         this.WORM_COORDS[3404] = new Array(61,370,902,224,1187,225,16,466,498,275,579,217,1069,264,525,528,384,366,527,348,288,271,636,536,446,507,789,139,1219,326,321,323,1293,347,1125,180,1016,297,214,261);
         this.WORM_COORDS[3405] = new Array(1113,207,580,450,512,257,572,219,279,275,503,531,1046,262,633,210,1278,354,657,534,92,443,1282,522,450,504,932,227,163,305,754,156,328,336,151,429,189,225,596,347);
         this.WORM_COORDS[3406] = new Array(902,224,788,139,372,373,1085,254,838,211,513,256,736,204,1236,361,179,220,627,514,1034,352,571,343,928,322,995,229,450,504,1169,213,1293,347,39,386,885,397,509,533);
         this.WORM_COORDS[3407] = new Array(384,366,1076,260,291,269,1153,170,1236,623,596,223,8,469,517,252,649,199,239,284,60,370,789,139,633,378,1237,360,331,337,895,223,1214,230,106,434,678,136,715,464);
         this.WORM_COORDS[3408] = new Array(494,281,729,198,845,220,63,370,254,284,1196,298,1029,336,858,344,1063,265,456,498,550,228,402,339,636,536,927,226,610,232,339,340,306,266,157,439,9,468,1139,158);
         this.WORM_COORDS[3409] = new Array(517,252,259,282,1095,247,150,326,118,618,107,434,849,341,817,208,333,338,456,498,948,209,398,465,19,466,802,146,889,222,594,221,1287,350,46,383,1222,329,1000,233);
         this.WORM_COORDS[3410] = new Array(694,132,541,233,726,197,417,504,156,321,165,452,1255,425,522,530,1018,303,592,506,70,371,1187,225,1257,358,222,302,1055,408,284,272,4,473,345,345,669,375,115,429);
         this.WORM_COORDS[3411] = new Array(74,596,1045,262,206,242,616,236,107,434,28,467,86,384,1271,357,748,156,535,514,827,206,467,491,313,297,189,467,982,452,401,471,511,258,583,453,403,338,138,329);
         this.WORM_COORDS[3412] = new Array(639,206,62,370,857,344,317,314,205,240,960,211,547,229,783,139,465,492,95,439,694,516,1298,346,22,466,373,373,1202,225,637,543,394,458,807,214,515,532,1051,399);
         this.WORM_COORDS[3413] = new Array(23,466,1022,314,612,486,1108,223,391,352,1056,264,949,209,273,277,1243,359,456,498,61,370,207,243,683,134,1218,612,1267,519,156,321,550,228,999,232,760,149,642,544);
         this.WORM_COORDS[3414] = new Array(565,345,237,284,492,517,1228,343,341,342,1045,383,541,233,1209,226,59,370,287,271,426,517,1015,294,935,444,196,231,864,212,999,232,23,466,717,465,1080,258,804,217);
         this.WORM_COORDS[3415] = new Array(694,516,720,138,366,368,218,307,1222,329,171,462,678,368,2,475,1296,534,534,237,205,240,1051,399,925,320,1028,332,105,435,83,383,1202,225,928,227,469,491,524,529);
         this.WORM_COORDS[3416] = new Array(1045,262,512,257,1021,312,227,293,114,430,53,372,23,466,315,308,1243,359,445,508,188,471,1266,632,963,211,627,241,1300,346,154,327,1137,159,970,430,666,524,1297,538);
         this.WORM_COORDS[3417] = new Array(1183,225,355,358,261,281,473,491,104,435,171,217,1145,157,524,245,871,214,964,212,1221,328,1032,346,1077,260,21,466,85,384,580,217,747,156,942,449,888,405,88,623);
         this.WORM_COORDS[3418] = new Array(580,217,450,504,167,217,297,268,14,467,119,427,367,369,632,211,844,218,1297,538,1039,262,224,298,561,439,800,141,908,224,1295,346,505,265,589,497,71,371,712,133);
         this.WORM_COORDS[3419] = new Array(349,350,150,326,1231,621,68,370,880,369,603,228,245,282,972,214,1132,167,642,544,839,213,1285,523,110,431,406,338,496,278,430,516,729,198,788,139,1056,264,655,380);
         this.WORM_COORDS[3420] = new Array(831,207,1034,352,114,430,1121,189,741,209,9,468,1284,523,456,498,1274,636,1085,254,355,358,1197,225,555,226,1263,358,928,439,168,217,67,370,670,160,1015,294,282,272);
         this.WORM_COORDS[3421] = new Array(1268,518,111,431,863,212,1239,360,507,532,16,466,956,210,197,232,67,370,1058,265,672,159,1298,346,418,347,601,523,750,156,250,283,311,297,1049,394,1179,223,1026,327);
         this.WORM_COORDS[3422] = new Array(58,371,1194,226,350,351,990,227,882,219,141,327,1085,254,1271,518,289,271,1260,358,855,343,647,541,1023,317,95,439,684,134,29,467,500,530,594,221,891,412,1143,157);
         this.WORM_COORDS[3423] = new Array(864,212,133,422,218,307,155,326,739,207,499,274,395,346,1017,301,36,468,56,371,182,221,815,316,925,320,883,384,1168,212,939,209,1079,259,1056,411,573,219,804,217);
         this.WORM_COORDS[3424] = new Array(381,370,1029,336,934,444,485,504,919,225,1131,169,130,422,620,502,605,229,1060,265,76,374,821,322,331,337,253,284,1227,338,866,212,508,262,30,467,431,516,1053,404);
         this.WORM_COORDS[3425] = new Array(81,383,226,295,1041,262,141,327,926,226,384,366,96,438,1275,355,650,198,476,493,1193,226,5,471,846,221,555,434,179,220,681,513,717,136,614,488,774,138,309,297);
         this.WORM_COORDS[3426] = new Array(913,224,746,156,556,435,201,236,67,370,1094,247,561,223,802,146,397,464,369,371,464,492,521,530,221,303,13,467,621,238,972,214,910,299,1283,352,894,417,1206,225);
         this.WORM_COORDS[3427] = new Array(447,506,1104,242,368,370,93,441,1254,358,1126,178,743,437,1007,241,640,206,175,218,873,215,869,350,1037,361,771,138,143,422,312,297,520,531,898,421,714,134,20,466);
         this.WORM_COORDS[3428] = new Array(241,284,156,321,897,224,422,513,859,344,1035,355,487,509,342,343,102,435,1072,263,5,471,841,215,980,218,400,341,1013,287,1167,211,73,372,619,237,595,511,1226,336);
         this.WORM_COORDS[3429] = new Array(336,338,29,467,239,284,604,532,615,235,173,217,86,384,430,516,1148,158,1233,361,681,134,902,224,1033,349,742,210,177,280,834,207,405,338,1090,250,1271,518,866,348);
         this.WORM_COORDS[3430] = new Array(85,384,1047,262,1296,534,635,378,1023,317,33,468,666,162,149,326,1221,328,236,285,448,505,835,209,887,221,506,264,96,438,562,223,1278,354,190,226,949,209,395,346);
         this.WORM_COORDS[3431] = new Array(79,380,947,209,826,206,257,282,422,513,22,466,168,217,153,327,1255,358,1298,541,863,346,554,226,545,353,135,422,1131,169,666,162,477,493,913,430,596,347,1047,389);
         this.WORM_COORDS[3432] = new Array(479,495,593,220,232,288,524,245,166,217,966,212,1282,352,1181,224,4,473,856,344,711,133,901,224,351,353,162,307,659,191,61,370,1137,159,1222,329,1075,261,122,425);
         this.WORM_COORDS[3433] = new Array(1071,263,964,212,336,338,1217,325,492,284,786,139,428,518,1053,404,17,466,285,326,148,326,1020,309,554,226,485,504,282,272,1267,358,190,226,136,422,51,373,387,361);
         this.WORM_COORDS[3434] = new Array(1216,611,484,502,157,318,129,422,1235,361,182,221,909,224,739,442,1292,347,1,479,430,516,591,218,494,281,55,371,383,367,675,371,328,336,994,228,815,209,896,418);
         this.WORM_COORDS[3435] = new Array(681,513,344,344,808,213,777,138,101,435,199,234,686,133,1258,437,1196,225,56,371,913,430,1289,349,1052,264,570,220,516,532,232,288,1026,327,29,467,651,380,399,468);
         this.WORM_COORDS[3436] = new Array(1262,631,416,344,124,424,270,278,1029,336,720,467,984,451,1065,395,918,225,1229,347,24,466,732,201,1083,328,614,234,669,160,1122,186,511,533,362,365,457,496,158,316);
         this.WORM_COORDS[3437] = new Array(658,533,376,374,79,380,163,305,1251,358,111,431,748,156,934,216,1005,239,275,276,1131,169,6,470,507,532,428,518,883,220,1078,332,507,263,1201,225,629,215,687,133);
         this.WORM_COORDS[3438] = new Array(810,212,1257,432,7,469,126,423,432,515,679,136,1238,360,387,361,1101,243,593,508,773,138,509,533,650,198,1049,263,526,243,320,320,995,229,867,212,38,387,45,628);
         this.WORM_COORDS[3439] = new Array(709,133,1055,264,823,206,318,315,35,468,1226,336,1178,222,438,511,541,233,170,217,188,471,242,283,376,374,1078,332,121,425,53,372,1276,520,60,591,148,326,912,429);
         this.WORM_COORDS[3440] = new Array(709,133,246,282,422,513,942,209,158,316,1291,348,503,531,962,413,551,227,885,221,383,367,603,228,1069,264,63,590,612,486,18,466,1231,362,1155,175,667,523,1192,226);
         this.WORM_COORDS[3441] = new Array(61,370,1271,357,1008,244,412,340,155,326,786,139,173,465,889,409,91,444,732,201,233,287,574,219,429,517,194,229,509,533,921,225,851,342,324,336,623,508,832,207);
         this.WORM_COORDS[3442] = new Array(142,327,441,510,1205,225,130,422,588,343,20,466,507,263,337,339,1006,240,40,385,1234,361,1056,411,569,445,1074,262,826,206,909,224,290,270,767,139,735,203,950,451);
         this.WORM_COORDS[3443] = new Array(444,509,156,321,64,370,1281,353,646,201,1065,265,1029,336,279,275,22,466,106,434,344,344,855,343,551,227,850,228,203,238,1224,331,489,290,976,217,215,312,743,159);
         this.WORM_COORDS[3444] = new Array(575,218,117,428,511,533,667,161,405,338,245,282,434,515,1260,358,1119,192,21,466,500,272,180,476,1073,262,877,217,970,213,632,211,324,336,72,371,596,514,138,329);
         this.WORM_COORDS[3445] = new Array(356,359,1299,346,1037,361,832,207,440,510,1067,265,921,225,526,243,712,133,1283,522,244,282,782,139,82,383,1190,226,976,217,2,475,1230,358,612,233,191,227,528,348);
         this.WORM_COORDS[3446] = new Array(686,133,1129,173,272,278,578,218,626,513,1212,227,988,225,511,533,872,214,64,370,1272,636,644,203,636,378,123,425,162,307,500,272,368,370,26,467,1290,526,431,516);
         this.WORM_COORDS[3447] = new Array(115,429,462,493,554,226,1276,355,358,361,649,380,1020,309,113,623,142,327,704,132,613,486,248,282,25,466,1200,225,184,480,950,209,1052,402,42,384,495,279,414,342);
         this.WORM_COORDS[3448] = new Array(70,371,237,284,1222,329,314,304,410,339,671,519,618,498,795,219,785,139,154,327,700,132,986,223,934,325,1028,332,1092,249,874,215,478,494,1264,632,1180,224,102,435);
         this.WORM_COORDS[3449] = new Array(1112,208,307,266,986,450,112,431,351,353,6,470,930,228,402,339,627,241,689,133,697,516,527,243,1013,287,253,284,1270,357,195,230,769,138,541,352,896,418,188,471);
         this.WORM_COORDS[3450] = new Array(264,280,112,431,1015,294,57,371,1296,346,342,343,184,223,398,465,1207,225,1036,357,903,224,833,207,590,217,597,515,404,338,1154,173,174,467,42,470,155,326,117,619);
         this.WORM_COORDS[3451] = new Array(919,225,162,307,824,206,1037,361,356,359,85,461,10,468,67,370,1296,346,1240,359,172,217,493,283,886,399,727,198,1195,302,682,134,225,297,440,510,1208,226,584,217);
         this.WORM_COORDS[3452] = new Array(759,150,475,492,1072,263,941,209,676,139,165,302,934,325,1245,358,372,373,58,371,322,335,1240,624,209,247,13,467,806,215,1172,217,569,220,645,543,307,266,1148,158);
         this.WORM_COORDS[3453] = new Array(283,272,99,437,1298,346,454,499,402,339,347,347,527,526,858,344,1162,201,1041,262,879,218,201,236,642,379,509,261,1044,380,56,371,970,213,570,343,637,207,29,467);
         this.WORM_COORDS[3454] = new Array(1270,357,201,236,442,510,571,220,860,345,1015,294,1261,631,222,302,702,132,91,444,886,221,626,513,1292,528,972,214,26,467,345,345,1143,157,1167,211,1090,250,1188,321);
         this.WORM_COORDS[3455] = new Array(661,530,148,326,252,284,968,213,302,326,26,467,798,140,63,370,607,230,416,344,415,499,364,366,678,136,895,417,886,221,170,217,133,603,1037,361,1105,234,141,422);
         this.WORM_COORDS[3456] = new Array(73,372,109,432,325,336,447,506,514,255,638,543,639,206,1109,218,73,594,379,373,1284,523,696,516,1300,346,1242,625,1229,347,250,283,141,327,931,228,1015,294,644,380);
         this.WORM_COORDS[3457] = new Array(490,515,42,637,538,235,999,232,534,350,1180,224,688,133,354,357,1268,518,48,377,407,483,844,218,266,280,18,466,599,225,1123,185,103,435,749,156,619,499,852,342);
         this.WORM_COORDS[3458] = new Array(0,482,99,437,640,206,439,511,245,282,1270,357,1216,324,1209,226,676,515,49,617,1015,294,170,460,741,209,609,486,556,225,144,326,296,268,391,352,882,219,950,209);
         this.WORM_COORDS[3459] = new Array(778,139,569,220,627,514,27,467,1275,355,486,506,927,322,810,212,728,198,393,349,320,320,95,439,1165,207,53,372,670,420,919,433,916,224,488,291,1008,244,238,284);
         this.WORM_COORDS[3460] = new Array(190,226,1093,248,586,456,552,227,22,466,1266,358,631,212,932,227,438,511,352,354,72,371,1017,301,675,141,902,313,536,507,746,156,1034,352,890,411,230,290,554,349);
         this.WORM_COORDS[3461] = new Array(267,278,1068,265,422,513,1273,518,109,432,552,227,367,369,647,541,139,328,899,224,217,309,722,195,980,218,48,377,637,207,1261,358,713,134,511,533,1051,399,318,315);
         this.WORM_COORDS[3462] = new Array(45,384,430,516,287,271,807,214,91,444,367,369,795,139,650,198,913,224,57,596,537,235,1091,249,207,243,37,469,185,481,1022,314,138,329,149,427,1228,343,990,227);
         this.WORM_COORDS[3463] = new Array(38,387,1285,523,451,502,510,533,517,252,865,212,290,270,615,491,1254,358,92,443,1176,220,999,232,1062,265,37,469,341,342,704,461,1030,340,536,351,208,245,1125,180);
         this.WORM_COORDS[3464] = new Array(1113,207,2,475,154,327,636,208,974,215,922,225,400,341,1018,303,628,516,462,493,578,218,75,373,1275,355,792,139,1224,331,494,281,810,310,94,440,180,220,308,266);
         this.WORM_COORDS[3465] = new Array(508,262,160,311,1204,225,152,431,997,231,631,521,29,467,1042,374,873,215,385,365,330,336,1250,358,642,205,60,370,1294,531,1143,157,521,530,440,510,806,215,1051,263);
         this.WORM_COORDS[3466] = new Array(59,370,1284,351,1064,265,332,338,399,342,609,486,921,225,483,501,1024,322,288,271,573,219,208,245,104,435,1189,226,15,466,739,207,808,213,185,481,670,160,892,415);
         this.WORM_COORDS[3467] = new Array(695,132,33,468,231,289,461,494,79,380,392,351,1095,247,526,527,1200,225,581,217,640,206,1215,323,1240,624,203,238,1293,347,1260,446,993,227,161,309,578,449,508,262);
         this.WORM_COORDS[3468] = new Array(25,466,686,133,605,229,258,282,987,224,1043,262,396,462,1179,223,512,257,385,365,428,518,1267,470,621,504,75,373,170,217,1243,359,888,222,1023,317,543,353,483,501);
         this.WORM_COORDS[3469] = new Array(972,214,1245,358,386,363,55,371,457,496,514,344,212,253,1015,294,137,422,1125,180,516,253,1204,225,638,207,269,278,1298,346,1081,257,852,342,746,156,815,209,663,379);
         this.WORM_COORDS[3470] = new Array(125,424,413,341,1025,324,590,217,219,306,344,344,997,231,1198,225,1217,325,194,229,22,466,747,156,480,497,923,226,896,418,1109,218,1279,354,1255,425,282,272,680,135);
         this.WORM_COORDS[3471] = new Array(1280,521,901,224,820,207,621,238,64,370,137,422,229,291,170,217,1222,523,1110,216,481,498,358,361,10,468,1272,357,554,226,620,502,1036,357,970,213,1047,262,849,341);
         this.WORM_COORDS[3472] = new Array(1168,212,1,479,1228,343,88,450,488,510,549,228,880,218,366,368,280,274,1285,351,1216,611,171,217,498,275,815,209,1076,260,701,132,431,516,779,139,894,417,605,229);
         this.WORM_COORDS[3473] = new Array(1299,346,168,217,17,466,289,271,133,422,53,372,1157,183,1210,227,518,251,327,336,534,350,1246,525,1025,324,424,515,707,461,920,434,886,221,1041,262,1220,327,421,354);
         this.WORM_COORDS[3474] = new Array(951,209,1068,265,932,441,591,503,329,336,226,295,982,452,1278,354,774,138,1207,225,574,342,94,440,542,232,848,224,289,271,594,221,652,538,729,198,67,370,1286,523);
         this.WORM_COORDS[3475] = new Array(59,370,732,201,899,421,983,221,285,271,208,245,1046,386,1297,346,852,232,579,450,415,343,901,316,765,141,419,508,1056,264,475,492,850,342,130,422,29,467,1246,358);
         this.WORM_COORDS[3476] = new Array(173,217,922,225,903,424,611,233,20,466,790,139,826,206,527,243,598,517,466,492,856,344,69,371,1187,225,103,435,320,320,1258,358,163,305,247,282,1220,614,1016,297);
         this.WORM_COORDS[3477] = new Array(163,305,445,508,113,430,1068,339,244,282,987,224,1210,315,714,134,562,223,1159,191,1050,263,30,467,328,336,395,458,308,266,840,213,38,387,864,346,632,211,405,338);
         this.WORM_COORDS[3478] = new Array(625,240,1159,191,1002,235,227,293,143,327,1283,522,1273,356,4,473,544,353,1096,246,574,219,1223,330,824,206,324,336,80,383,1027,331,701,132,179,220,433,515,876,216);
         this.WORM_COORDS[3479] = new Array(546,230,855,343,1273,356,1010,251,107,434,848,224,350,351,1134,163,488,510,626,513,179,220,737,205,798,140,269,278,419,508,145,326,918,432,1095,247,933,220,1207,225);
         this.WORM_COORDS[3480] = new Array(683,134,37,469,1120,191,1045,383,297,268,830,207,973,214,1055,264,590,217,339,340,867,348,627,514,643,204,1269,358,192,227,420,352,681,513,529,241,124,613,1079,331);
         this.WORM_COORDS[3481] = new Array(324,336,482,499,97,630,831,207,585,455,1267,358,163,305,152,431,306,266,647,200,1198,225,422,513,1058,411,957,419,757,154,219,306,383,367,9,468,1265,463,494,281);
         this.WORM_COORDS[3482] = new Array(351,353,133,603,1157,183,3,473,1264,459,265,280,425,516,557,225,55,371,1065,265,1218,326,475,492,191,227,885,221,633,210,967,213,676,139,603,528,889,409,777,138);
         this.WORM_COORDS[3483] = new Array(495,279,177,219,1295,346,255,283,1185,225,730,199,446,507,21,466,640,544,1135,162,819,207,937,446,86,384,882,219,309,297,559,224,1232,362,1012,283,384,366,1088,252);
         this.WORM_COORDS[3484] = new Array(1074,262,1213,228,676,139,1253,358,1114,204,1,479,78,377,1249,627,441,510,680,514,159,314,654,195,595,222,623,508,159,442,338,340,1001,234,206,242,920,225,489,290);
         this.WORM_COORDS[3485] = new Array(164,304,960,413,80,383,186,223,279,275,435,514,502,531,347,347,587,217,1093,248,768,138,1064,397,909,224,1028,332,622,506,1002,235,1140,157,674,372,1279,354,107,434);
         this.WORM_COORDS[3486] = new Array(743,159,496,524,628,219,158,316,1096,246,522,247,1249,358,882,219,1170,215,225,297,380,372,90,389,37,469,943,209,323,336,434,515,676,139,995,229,1026,327,605,496);
         this.WORM_COORDS[3487] = new Array(988,225,2,475,57,371,549,228,907,426,933,220,1239,360,203,238,697,132,1025,324,739,207,1045,262,872,352,375,374,1212,610,111,431,446,507,1285,523,652,196,668,421);
         this.WORM_COORDS[3488] = new Array(183,479,832,207,32,467,1022,314,690,133,1270,518,172,289,1238,360,461,494,197,232,963,211,567,221,1120,191,1046,386,1208,226,242,283,651,197,491,285,347,347,516,344);
         this.WORM_COORDS[3489] = new Array(810,212,1063,265,599,520,1249,358,1148,158,220,305,371,372,154,327,288,271,99,437,759,150,1171,217,608,231,533,238,39,386,177,219,724,470,450,504,998,232,1025,324);
         this.WORM_COORDS[3490] = new Array(930,228,1281,353,1018,303,274,276,552,227,384,366,197,232,637,543,657,193,333,338,128,422,730,199,608,486,805,216,1211,317,1261,449,426,517,1175,220,1077,260,1037,361);
         this.WORM_COORDS[3491] = new Array(1187,225,1264,358,797,140,19,466,1283,522,825,206,355,358,564,222,408,338,173,217,161,446,303,266,859,344,219,306,404,477,908,224,1096,246,729,198,716,135,587,458);
         this.WORM_COORDS[3492] = new Array(107,434,1063,401,23,466,788,139,883,384,1207,225,79,380,557,225,1042,262,653,381,206,242,296,268,634,208,830,207,951,449,592,506,421,354,481,498,735,203,589,343);
         this.WORM_COORDS[3493] = new Array(608,486,617,236,1051,399,110,431,837,211,347,347,630,378,182,221,410,489,306,266,487,509,1287,523,59,370,740,208,1285,351,689,133,862,346,1022,314,492,284,991,227);
         this.WORM_COORDS[3494] = new Array(754,156,331,337,1009,247,28,467,876,216,222,302,1190,226,102,435,1231,621,386,363,460,495,1294,531,821,207,75,373,1271,357,548,229,604,348,855,343,44,631,168,296);
         this.WORM_COORDS[3495] = new Array(1040,370,60,370,439,511,607,230,285,271,932,441,1237,360,1286,523,614,488,524,245,752,156,1175,220,11,467,1093,248,491,516,180,220,140,327,1150,162,966,212,104,435);
         this.WORM_COORDS[3496] = new Array(979,452,1077,260,1220,327,638,543,1203,225,470,491,322,335,517,344,972,214,62,370,1014,292,789,139,559,224,396,345,225,297,171,291,879,366,304,266,861,212,121,425);
         this.WORM_COORDS[3497] = new Array(53,372,490,515,12,467,667,523,720,138,114,430,1233,361,553,431,1124,183,305,266,1197,295,496,278,590,343,1059,265,435,514,1186,225,567,221,377,374,834,331,241,284);
         this.WORM_COORDS[3498] = new Array(79,380,288,326,492,284,889,222,1198,225,620,237,48,618,552,430,428,518,1052,264,138,329,411,340,288,271,20,466,888,405,763,143,343,344,1233,623,1254,358,648,541);
         this.WORM_COORDS[3499] = new Array(924,226,617,236,200,235,152,431,302,267,139,328,528,525,15,466,1252,358,730,199,690,514,674,158,762,144,1027,331,1151,163,379,373,566,221,1058,265,630,519,999,232);
      }
      
      public function mod(param1:Number) : Number
      {
         return Math.abs(param1);
      }
      
      public function sign(param1:Number) : Number
      {
         return param1 >= 0 ? Number(1) : Number(-1);
      }
   }
}
