package classes
{
   import com.deviant.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.system.*;
   
   public class proc extends MovieClip
   {
       
      
      public var FWP;
      
      public var GAME_FREEZE = false;
      
      public var _play_type = "";
      
      public var _play_id = 0;
      
      public var call_weapon;
      
      public var call_click;
      
      public var key_last = "";
      
      public var key_duration = 0;
      
      public var key_iter = 0;
      
      public var PARAMS_RECORD = "";
      
      public var ROUNDS_RECORD = "";
      
      public var _initialized = false;
      
      public var game_control = false;
      
      public var wpsheet = false;
      
      public var mousecontrol = false;
      
      public var choose_worm = false;
      
      public var choose_worm_id = 0;
      
      public var choose_worm_timeout = 0;
      
      public var choose_delay = 0;
      
      public var choose_worm_fid = "";
      
      public var strike_dir = "from left";
      
      public var girder_id = 1;
      
      public var girder_key_delay = 0;
      
      public var wait_for_ready = 0;
      
      public var ai_buttonid = "";
      
      public var ai_spressed = false;
      
      public var proc_action;
      
      public var proc_timeout = 0;
      
      public var OBJ;
      
      public var worms;
      
      public var teams;
      
      public var cur_team = 0;
      
      public var cur_worm = 0;
      
      public var MEDIUMFLYSPEED:Number = 8;
      
      public var MINIMUM_SPEED:Number = 0.3;
      
      public var MAXIMUM_SPEED:Number = 40;
      
      public var ROTATING_COEF:Number = 6;
      
      public var FALLING_COEF:Number = 0.2;
      
      public var FORCESPEED:Number = 1.1;
      
      public var FORCEMULTIPLIER:Number = 0.25;
      
      public var WKEYDELAY:Number = 2;
      
      public var ESCAPETIME:Number = 5;
      
      public var TURNTIME:Number = 45;
      
      public var DISPLACE_LIMIT = 250;
      
      public var G = 0.24;
      
      public var W = 0.1;
      
      public var mouse_down = false;
      
      public var click_coords;
      
      public var call_open_wpsheet = false;
      
      public var timer = 0;
      
      public var game_turn = 0;
      
      public var my_turn = 0;
      
      public var max_team_hp = 0;
      
      public var worm_pid_to_die = 0;
      
      public var displace_seek_type = "W";
      
      public var displace_seek_obj = 1;
      
      public var displace_seek_time = 0;
      
      public var position_x = 0;
      
      public var position_y = 0;
      
      public var ai_result;
      
      public var ai_best_result;
      
      public var ai_best_weapon;
      
      public var ai_pos = "center";
      
      public var ai_target = 0;
      
      public var ai_weapon = 0;
      
      public var ai_sleep = 0;
      
      public var ai_fire_state;
      
      public var ai_move_dir = "";
      
      public var ai_move_steps = 0;
      
      public var ai_move_state = 0;
      
      public var ai_max_targets = 0;
      
      public var ai_dest_iters = 0;
      
      public var ai_dest_time = 100;
      
      public var ai_trav_time = 0;
      
      public var ai_virtual_fid = "";
      
      public var ai_proj_prop;
      
      public var laser_activated = false;
      
      public var fire_on_map = false;
      
      public var ach_last_wptype = "";
      
      public var ach_killed;
      
      public var ach_paralyzed = 0;
      
      public var ach_annihilated = 0;
      
      public var ach_injure = false;
      
      public var ach_kill = false;
      
      public var STATUS_TEXT;
      
      public var STATUS_MAX = 8;
      
      public var REPLAY_PAUSE = false;
      
      public var worms_init_health;
      
      public var mission16_turn = 15;
      
      public var ag_animation;
      
      public var SURV_KILLS = 0;
      
      public var CUR_STEALTH = 0;
      
      public var STEALTH_DURATION = 0;
      
      public var CRATES_ON_MAP = 0;
      
      public var NORM_filter;
      
      public var PI_filter;
      
      public var napalm_used = false;
      
      public var wave_params;
      
      public function proc(param1:*)
      {
         this.call_weapon = {
            "call":false,
            "id":0,
            "range":1
         };
         this.call_click = {
            "call":false,
            "x":0,
            "y":0
         };
         this.proc_action = {
            "act":"",
            "add":0
         };
         this.OBJ = new Array(0,{});
         this.worms = new Array(0,{});
         this.teams = new Array(0,{});
         this.click_coords = {};
         this.ai_result = {};
         this.ai_best_result = {};
         this.ai_best_weapon = {};
         this.ai_fire_state = {
            "state":"",
            "timeout":0
         };
         this.ai_proj_prop = {
            "vx":0,
            "vy":0,
            "timeout":0
         };
         this.ach_killed = {
            "p":0,
            "e":0,
            "a":0,
            "c":0,
            "h":0,
            "f":0,
            "l":0
         };
         this.STATUS_TEXT = new Array(0,"");
         this.worms_init_health = new Array();
         this.NORM_filter = new HueColorMatrixFilter();
         this.PI_filter = new HueColorMatrixFilter();
         this.wave_params = {};
         super();
         this.FWP = param1;
         this.NORM_filter.Hue = 0;
         this.PI_filter.Hue = 200;
      }
      
      public function ongoing() : *
      {
         var _loc1_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         if(!this._initialized || this.GAME_FREEZE)
         {
            return;
         }
         if(this.REPLAY_PAUSE)
         {
            this.check_displace(false,"paused");
            return;
         }
         if(this.proc_action.act != "")
         {
            this.proc_timeout -= this.FWP.FPS;
            if(this.proc_timeout <= 0)
            {
               if(this.proc_action.act == "first move")
               {
                  this.first_move();
               }
               if(this.proc_action.act == "new move")
               {
                  if(!this.new_move())
                  {
                     return;
                  }
               }
               if(this.proc_action.act == "death loop")
               {
                  this.death_loop();
               }
               if(this.proc_action.act == "return wfr")
               {
                  this.FWP._obj[this.OBJ[this.wait_for_ready].fid].states.resting = false;
                  this.FWP._proc.OBJ[this.wait_for_ready].ready = false;
                  this.wait_for_ready = 0;
                  this.proc_action.act = "";
               }
               if(this.proc_action.act == "ai init")
               {
                  this.ai("init");
               }
               if(this.proc_action.act == "ai calc")
               {
                  this.ai("calc");
               }
               if(this.proc_action.act == "ai get next")
               {
                  this.ai("get next");
               }
               if(this.proc_action.act == "ai move init")
               {
                  this.ai("move init");
               }
               if(this.proc_action.act == "ai move")
               {
                  this.ai("move");
               }
               if(this.proc_action.act == "ai find best")
               {
                  this.ai("find best");
               }
               if(this.proc_action.act == "ai move to best")
               {
                  this.ai("move to best");
               }
               if(this.proc_action.act == "ai fire")
               {
                  this.ai("fire");
               }
               if(this.proc_action.act == "ai skip go")
               {
                  this.ai("skip go");
               }
            }
         }
         ++this.timer;
         if(this.timer % 100 == 0)
         {
            this.check_ready(0);
         }
         var _loc2_:* = this.game_control && !this.wpsheet && !this.call_weapon.call && !this.call_click.call;
         if(_loc2_)
         {
            this.write_key_press({
               "space":this.FWP.SPACE_PRESSED,
               "other":this.FWP.KEY_PRESSED
            });
         }
         else
         {
            this.write_key_press({
               "space":false,
               "other":""
            });
         }
         if(this.FWP.REPLAY)
         {
            _loc3_ = this.read_key_press(this.timer);
            _loc4_ = _loc3_.space;
            if((_loc5_ = _loc3_.other) == "weapon")
            {
               this.call_weapon.call = true;
               this.call_weapon.id = _loc3_.weapon;
               this.call_weapon.range = _loc3_.range;
            }
            if(_loc5_ == "click")
            {
               this.call_click.call = true;
               this.call_click.x = _loc3_.click_x;
               this.call_click.y = _loc3_.click_y;
            }
         }
         if(!this.FWP.REPLAY)
         {
            _loc1_ = 1;
            while(_loc1_ <= this.OBJ[0])
            {
               if(!this.OBJ[_loc1_].free)
               {
                  this.FWP._obj[this.OBJ[_loc1_].fid].ongoing(!!_loc2_ ? {
                     "space":this.FWP.SPACE_PRESSED,
                     "other":this.FWP.KEY_PRESSED
                  } : {});
               }
               _loc1_++;
            }
         }
         else
         {
            _loc1_ = 1;
            while(_loc1_ <= this.OBJ[0])
            {
               if(!this.OBJ[_loc1_].free)
               {
                  this.FWP._obj[this.OBJ[_loc1_].fid].ongoing(!!_loc2_ ? {
                     "space":_loc4_,
                     "other":_loc5_
                  } : {});
               }
               _loc1_++;
            }
         }
         if(!this.wpsheet)
         {
            if(this.cur_worm != 0 && this.worms[this.cur_worm].state != "none" && this.FWP._obj[this.worms[this.cur_worm].fid].vars.timeout != -100)
            {
               this.FWP._interf.cur_screen[this.FWP._interf.cur_screen[0]].link.timer.text = String(Math.ceil(this.FWP._obj[this.worms[this.cur_worm].fid].vars.timeout / 1000));
            }
            else
            {
               this.FWP._interf.cur_screen[this.FWP._interf.cur_screen[0]].link.timer.text = "0";
            }
         }
         if(this.choose_worm)
         {
            this.FWP._interf.cur_screen[this.FWP._interf.cur_screen[0]].link.timer.text = String(Math.ceil(this.choose_worm_timeout / 1000));
         }
         this.check_displace(false);
         if(this.call_open_wpsheet)
         {
            this.open_wpsheet();
         }
         if(this.mousecontrol)
         {
            this.check_mousecontrol();
         }
         if(this.choose_worm)
         {
            this.choosing_worm();
         }
         if(this.call_weapon.call)
         {
            this.FWP._obj[this.worms[this.cur_worm].fid].weapon.set_w = this.call_weapon.id;
            this.FWP._obj[this.worms[this.cur_worm].fid].weapon.set_w_range = this.call_weapon.range;
            this.call_weapon.call = false;
            this.write_key_press({
               "space":false,
               "other":"weapon"
            });
         }
         if(this.call_click.call)
         {
            this.proceed_mousecontrol();
            this.call_click.call = false;
            this.write_key_press({
               "space":false,
               "other":"click"
            });
         }
         if(this.cur_worm != 0)
         {
            if(this.game_control && this.worms[this.cur_worm].state == "ok")
            {
               if((_loc6_ = this.FWP._obj[this.worms[this.cur_worm].fid]).states.firecontrol && _loc6_.states.flying == 0 && !_loc6_.ai && _loc6_.weapon.shots_total == 0 && _loc6_.states.special == "")
               {
                  if(this.FWP.QUICK_WEAPON_PRESSED == "q" && !this.wpsheet)
                  {
                     this.open_wpsheet();
                  }
               }
            }
         }
      }
      
      public function init_gameplay(param1:Object, param2:Object, param3:String, param4:Number) : *
      {
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         var _loc18_:* = undefined;
         var _loc19_:* = undefined;
         this._play_type = param3;
         this._play_id = param4;
         this.ag_animation = this.FWP.container_proc.get_object("ag_all");
         this.FWP.display_obj.addChild(this.ag_animation);
         this.ag_animation.visible = false;
         if(this.FWP.player.settings.skill >= 10 && this._play_type != "assault" && this._play_type != "just")
         {
            this.TURNTIME = 20;
         }
         else
         {
            this.TURNTIME = 45;
         }
         if(!this.FWP.REPLAY)
         {
            this.append_replay_param("play_type",param3);
         }
         if(!this.FWP.REPLAY)
         {
            this.append_replay_param("play_id",param4);
         }
         this.choose_worm_fid = "obj" + this.make_object("E","choose_worm","",{
            "x":10,
            "y":10,
            "ethernal":true
         });
         this.FWP._obj[this.choose_worm_fid].visible = false;
         this.FWP.cur_random = this.FWP.true_random(0,399);
         var _loc5_:* = 0;
         if(this.FWP.REPLAY)
         {
            this.FWP.cur_random = this.FWP.replay_cur_random;
         }
         if(!this.FWP.REPLAY)
         {
            this.append_replay_param("random",this.FWP.cur_random);
         }
         var _loc6_:*;
         var _loc7_:* = (_loc6_ = this.FWP._world.get_coord_shift()) + this.FWP.cur_random % 100;
         if(param3 != "just")
         {
            ++param2.teams;
            param2.team1 = param1;
            _loc9_ = 0;
            if(this.FWP.player.perks["fast_walk"])
            {
               _loc9_ = this.FWP.player.perks.fast_walk;
            }
            if(_loc9_ > 0 && _loc9_ < 3)
            {
               param2.team1.weapons["fast_walk"] = [0,Math.min(param2.team1.weapons["fast_walk"][1] + _loc9_,10),0,0,0,0,0,0,0,0,0];
            }
            _loc10_ = 0;
            if(this.FWP.player.perks["morale"])
            {
               _loc10_ = this.FWP.player.perks.morale;
            }
            if(_loc10_ > 0 && _loc10_ < 3)
            {
               param2.team1.weapons["choose_worm"] = [0,Math.min(param2.team1.weapons["choose_worm"][1] + _loc10_,3),0,0,0,0,0,0,0,0,0];
            }
            if(_loc10_ == 3)
            {
               param2.team1.weapons["choose_worm"] = [0,100,0,0,0,0,0,0,0,0,0];
            }
            _loc11_ = 0;
            if(this.FWP.player.perks["pe"])
            {
               _loc11_ = this.FWP.player.perks.pe;
            }
            if(_loc11_ == 3)
            {
               param2.team1.weapons["ultra_scaner"] = [0,100,0,0,0,0,0,0,0,0,0];
            }
            if(!this.FWP.REPLAY)
            {
               this.append_replay_param("player",param1);
            }
         }
         var _loc8_:* = 1;
         while(_loc8_ <= param2.teams)
         {
            ++this.teams[0];
            this.teams[this.teams[0]] = {
               "state":"ok",
               "worms":param2["team" + _loc8_].worms,
               "color":param2["team" + _loc8_].color,
               "weapons":{},
               "name":param2["team" + _loc8_].name,
               "cpu_level":param2["team" + _loc8_].cpu_level,
               "last_worm":0,
               "turns":0
            };
            if(this._play_type == "missions" && this._play_id == 16 && _loc8_ == 1)
            {
               this.teams[this.teams[0]].weapons["skip_go"] = [0,100,0,0,0,0,0,0,0,0,0];
            }
            else
            {
               for(_loc12_ in param2["team" + _loc8_].weapons)
               {
                  this.teams[this.teams[0]].weapons[_loc12_] = this.FWP.clone(param2["team" + _loc8_].weapons[_loc12_]);
               }
            }
            if(this._play_type == "just")
            {
               for(_loc12_ in this.FWP.GUM_DEF)
               {
                  this.teams[this.teams[0]].weapons[_loc12_] = [0,this.FWP.GUM_DEF[_loc12_],0,0,0,0,0,0,0,0];
               }
            }
            if(this._play_type != "just" && _loc8_ == 1)
            {
               if(this._play_type == "career" || this._play_type == "survival" || this._play_type == "boss" || this._play_type == "assault")
               {
                  _loc15_ = this.FWP.GUM_DEF;
               }
               if(this._play_type == "missions")
               {
                  _loc15_ = this.FWP.MISSION_WEAP_DEF[this.FWP._world.chosen_map];
               }
               for(_loc12_ in _loc15_)
               {
                  if(!this.teams[this.teams[0]].weapons[_loc12_])
                  {
                     this.teams[this.teams[0]].weapons[_loc12_] = [0,0,0,0,0,0,0,0,0,0,0];
                  }
                  if(_loc15_[_loc12_] == 100)
                  {
                     this.teams[this.teams[0]].weapons[_loc12_][1] = 100;
                  }
                  else
                  {
                     this.teams[this.teams[0]].weapons[_loc12_][1] = Math.min(10,this.teams[this.teams[0]].weapons[_loc12_][1] + _loc15_[_loc12_]);
                  }
               }
            }
            _loc13_ = 0;
            _loc14_ = 1;
            while(_loc14_ <= param2["team" + _loc8_].worms)
            {
               if(this._play_type == "missions")
               {
                  _loc16_ = this.FWP._world.WORM_MISSION_COORDS[this.FWP._world.chosen_map]["team" + _loc8_][_loc5_];
                  _loc17_ = this.FWP._world.WORM_MISSION_COORDS[this.FWP._world.chosen_map]["team" + _loc8_][_loc5_ + 1];
               }
               else if(this._play_type == "boss")
               {
                  _loc16_ = this.FWP._world.WORM_BOSS_COORDS["boss" + this._play_id]["team" + _loc8_][_loc5_];
                  _loc17_ = this.FWP._world.WORM_BOSS_COORDS["boss" + this._play_id]["team" + _loc8_][_loc5_ + 1];
                  if(_loc8_ == 2)
                  {
                     this.ag_animation.x = _loc16_;
                     this.ag_animation.y = _loc17_;
                     this.ag_animation.visible = true;
                  }
               }
               else if(this._play_type == "assault")
               {
                  _loc16_ = this.FWP._world.WORM_ASSAULT_COORDS["assault" + this._play_id]["team" + _loc8_][_loc5_];
                  _loc17_ = this.FWP._world.WORM_ASSAULT_COORDS["assault" + this._play_id]["team" + _loc8_][_loc5_ + 1];
                  if(_loc8_ == 2)
                  {
                     this.ag_animation.x = _loc16_;
                     this.ag_animation.y = _loc17_;
                     this.ag_animation.visible = true;
                  }
               }
               else
               {
                  _loc16_ = this.FWP._world.WORM_COORDS[_loc7_][_loc5_];
                  _loc17_ = this.FWP._world.WORM_COORDS[_loc7_][_loc5_ + 1];
               }
               _loc18_ = this.make_object("W","worm","",{
                  "x":_loc16_,
                  "y":_loc17_
               });
               ++this.worms[0];
               this.worms[this.worms[0]] = {
                  "state":"ok",
                  "fid":"obj" + _loc18_
               };
               _loc5_ += 2;
               this.FWP._obj["obj" + _loc18_].wid = this.worms[0];
               this.FWP._obj["obj" + _loc18_].skills = {
                  "attack":param2["team" + _loc8_]["worm" + _loc14_].attack,
                  "protect":param2["team" + _loc8_]["worm" + _loc14_].protect,
                  "spec":param2["team" + _loc8_]["worm" + _loc14_].spec
               };
               this.FWP._obj["obj" + _loc18_].vars.health = param2["team" + _loc8_]["worm" + _loc14_].health;
               if(_loc8_ == 1 && this.FWP.player.perks["medic"])
               {
                  this.FWP._obj["obj" + _loc18_].vars.health = Math.ceil(this.FWP._obj["obj" + _loc18_].vars.health * this.FWP.get_perk_effect("medic",this.FWP.player.perks.medic,""));
               }
               if(_loc8_ == 1 && _loc14_ == 1 && this.FWP.player.perks["comandeer"])
               {
                  this.FWP._obj["obj" + _loc18_].vars.health += this.FWP.get_perk_effect("comandeer",this.FWP.player.perks.comandeer,"");
               }
               if(_loc8_ != 1 && this._play_type != "just")
               {
                  if(this._play_type != "assault")
                  {
                     this.FWP._obj["obj" + _loc18_].skills.attack += this.FWP.get_skill_multi("attack");
                     this.FWP._obj["obj" + _loc18_].skills.protect += this.FWP.get_skill_multi("protect");
                     this.FWP._obj["obj" + _loc18_].vars.health = Math.ceil(this.FWP._obj["obj" + _loc18_].vars.health * this.FWP.get_skill_multi("health"));
                  }
                  else
                  {
                     this.FWP._obj["obj" + _loc18_].skills.attack = this.FWP.get_assault_multi("attack",this.FWP._obj["obj" + _loc18_].skills.attack,this.FWP._play_zone_stage,this._play_id);
                     this.FWP._obj["obj" + _loc18_].skills.protect = this.FWP.get_assault_multi("protect",this.FWP._obj["obj" + _loc18_].skills.protect,this.FWP._play_zone_stage,this._play_id);
                     this.FWP._obj["obj" + _loc18_].vars.health = this.FWP.get_assault_multi("health",this.FWP._obj["obj" + _loc18_].vars.health,this.FWP._play_zone_stage,this._play_id);
                  }
               }
               this.FWP._obj["obj" + _loc18_].wteam = _loc8_;
               this.FWP._obj["obj" + _loc18_].wcolor = param2["team" + _loc8_].color;
               this.FWP._obj["obj" + _loc18_].ai = param2["team" + _loc8_].cpu_level > 0;
               if(_loc8_ == 1)
               {
                  this.FWP._obj["obj" + _loc18_].wname = this.FWP.get_player_worm_name(_loc14_,this._play_type);
               }
               else
               {
                  this.FWP._obj["obj" + _loc18_].wname = param2["team" + _loc8_]["worm" + _loc14_].name;
               }
               this.FWP._obj["obj" + _loc18_].worm_modify_bars();
               this.FWP._obj["obj" + _loc18_].worm_modify_bar_borders("");
               for(_loc19_ in param2["team" + _loc8_]["worm" + _loc14_].perks)
               {
                  this.FWP._obj["obj" + _loc18_].perks[_loc19_] = param2["team" + _loc8_]["worm" + _loc14_].perks[_loc19_];
               }
               this.FWP._obj["obj" + _loc18_].worm_modify_sprite("animate");
               _loc13_ += param2["team" + _loc8_]["worm" + _loc14_].health;
               this.worms_init_health[this.worms[0]] = param2["team" + _loc8_]["worm" + _loc14_].health;
               _loc14_++;
            }
            if(this._play_type == "missions" || this._play_type == "boss" || this._play_type == "assault")
            {
               _loc5_ = 0;
            }
            if(_loc13_ > this.max_team_hp)
            {
               this.max_team_hp = _loc13_;
            }
            this.FWP._interf.cur_screen[this.FWP._interf.cur_screen[0]].link["team" + String(_loc8_) + "_name"].text = param2["team" + _loc8_].name;
            this.FWP._interf.cur_screen[this.FWP._interf.cur_screen[0]].link["team" + String(_loc8_) + "_name"].textColor = this.game_get_color(param2["team" + _loc8_].color);
            _loc8_++;
         }
         this.mission_scripts("init");
         this._initialized = true;
         this.game_control = true;
         this.FWP.stage_focus();
         this.FWP._interf.render_game_menu();
         if(this.FWP.REPLAY)
         {
            this.FWP.decode_move(1);
         }
         this.proc_action.act = "first move";
         this.proc_timeout = 500;
         this.game_displace(0,0);
      }
      
      public function make_object(param1:String, param2:String, param3:String, param4:Object) : Number
      {
         var _loc5_:* = this.FWP.add_obj(param1,param2,param3,param4);
         ++this.OBJ[0];
         this.OBJ[this.OBJ[0]] = {
            "fid":"obj" + _loc5_,
            "model":param1,
            "free":false,
            "ready":false
         };
         if(param1 == "W" || param4.ethernal == true || param4.already_ready == true)
         {
            this.OBJ[this.OBJ[0]].ready = true;
         }
         this.FWP._obj["obj" + _loc5_].pid = this.OBJ[0];
         return _loc5_;
      }
      
      public function remove_object(param1:MovieClip, param2:Number, param3:Boolean) : *
      {
         var _loc4_:* = Number(String(this.OBJ[param2].fid).split("obj")[1]);
         if(this.FWP._interf.distance_boxes["box" + _loc4_])
         {
            this.FWP._interf.distance_box_container.removeChild(this.FWP._interf.distance_boxes["box" + _loc4_]);
            this.FWP._interf.distance_boxes["box" + _loc4_] = null;
            delete this.FWP._interf.distance_boxes["box" + _loc4_];
         }
         this.OBJ[param2].free = true;
         this.FWP.remove_obj(param1);
         delete this.FWP._obj[this.OBJ[param2].fid];
         if(param3)
         {
            this.check_ready(param2);
         }
      }
      
      public function first_move() : *
      {
         var _loc1_:* = undefined;
         this.proc_action.act = "";
         this.cur_worm = 1;
         this.cur_team = 1;
         this.teams[this.cur_team].last_worm = this.cur_worm;
         _loc1_ = this.FWP._obj[this.worms[this.cur_worm].fid];
         _loc1_.states.resting = false;
         _loc1_.states.active = true;
         var _loc2_:* = 0;
         if(this.FWP.player.perks["thinker"] && this.cur_team == 1)
         {
            _loc2_ = this.FWP.get_perk_effect("thinker",this.FWP.player.perks.thinker,"");
         }
         if(this.FWP.player.spec == 2 && this.cur_team == 1)
         {
            _loc2_ = this.FWP.get_perk_effect("thinker",3,"");
         }
         _loc1_.vars.timeout = (this.TURNTIME + _loc2_) * 1000;
         this.OBJ[_loc1_.pid].ready = false;
         this.generate_wind();
         var _loc3_:* = 0;
         if(this.FWP.player.perks["fast_walk"])
         {
            _loc3_ = this.FWP.player.perks.fast_walk;
         }
         if((_loc3_ == 3 || this.FWP.player.spec == 1) && this.cur_team == 1)
         {
            this.WKEYDELAY = 1;
         }
         this.apply_worms_alpha();
         this.add_status("Ход #1... Ходит: " + this.teams[this.cur_team].name);
      }
      
      public function new_move() : Boolean
      {
         var _loc1_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         this.proc_action.act = "";
         var _loc2_:* = 0;
         var _loc3_:* = new Array(false,false,false,false,false,false,false,false);
         var _loc4_:* = 0;
         var _loc5_:* = 1;
         while(_loc5_ <= this.teams[0])
         {
            if(this.teams[_loc5_].state == "ok")
            {
               _loc2_++;
               _loc3_[this.teams[_loc5_].color] = true;
            }
            _loc5_++;
         }
         _loc5_ = 1;
         while(_loc5_ <= 7)
         {
            if(_loc3_[_loc5_])
            {
               _loc4_++;
            }
            _loc5_++;
         }
         if(_loc2_ < 2 || _loc4_ < 2)
         {
            _loc10_ = 0;
            _loc5_ = 1;
            while(_loc5_ <= this.teams[0])
            {
               if(this.teams[_loc5_].state == "ok")
               {
                  _loc10_ = _loc5_;
                  break;
               }
               _loc5_++;
            }
            this.FWP.end_game_fn(_loc10_);
            return false;
         }
         if(!this.mission_scripts("check"))
         {
            this.FWP.end_game_fn(0);
            return false;
         }
         var _loc6_:* = 0;
         do
         {
            ++this.cur_team;
            if(this.cur_team > this.teams[0])
            {
               this.cur_team = 1;
            }
         }
         while(this.teams[this.cur_team].state != "ok");
         
         var _loc7_:* = this.teams[this.cur_team].last_worm;
         do
         {
            if(++_loc7_ > this.worms[0])
            {
               _loc7_ = 1;
            }
            if(this.worms[_loc7_].state == "ok" && this.FWP._obj[this.worms[_loc7_].fid].wteam == this.cur_team)
            {
               this.cur_worm = _loc7_;
               this.teams[this.cur_team].last_worm = this.cur_worm;
               break;
            }
         }
         while(++_loc6_ <= 100);
         
         _loc5_ = 1;
         while(_loc5_ <= this.worms[0])
         {
            if(this.worms[_loc5_].state == "ok")
            {
               this.FWP._obj[this.worms[_loc5_].fid].states.escape = false;
               this.FWP._obj[this.worms[_loc5_].fid].weapon_id = 0;
               this.FWP._obj[this.worms[_loc5_].fid].weapon_range = 1;
               this.FWP._obj[this.worms[_loc5_].fid].weapon.shots_remain = 0;
               this.FWP._obj[this.worms[_loc5_].fid].weapon.shots_total = 0;
               this.FWP._obj[this.worms[_loc5_].fid].dmg_mult = 1;
               if(this.FWP._obj[this.worms[_loc5_].fid].wteam == this.cur_team && this.FWP._obj[this.worms[_loc5_].fid].vars.paralyzed)
               {
                  --this.FWP._obj[this.worms[_loc5_].fid].vars.paratime;
                  if(this.FWP._obj[this.worms[_loc5_].fid].vars.paratime == 0)
                  {
                     this.FWP._obj[this.worms[_loc5_].fid].vars.paralyzed = false;
                  }
               }
               if(this.FWP._obj[this.worms[_loc5_].fid].sick_next != 0 || this.FWP._obj[this.worms[_loc5_].fid].sick)
               {
                  this.FWP._obj[this.worms[_loc5_].fid].sick += this.FWP._obj[this.worms[_loc5_].fid].sick_next;
                  this.FWP._obj[this.worms[_loc5_].fid].sick_next = 0;
                  if(this.FWP._obj[this.worms[_loc5_].fid].vars.health > this.FWP._obj[this.worms[_loc5_].fid].sick)
                  {
                     this.FWP._obj[this.worms[_loc5_].fid].worm_apply_damage(this.FWP._obj[this.worms[_loc5_].fid].sick,"poison");
                  }
                  else
                  {
                     this.FWP._obj[this.worms[_loc5_].fid].worm_apply_damage(this.FWP._obj[this.worms[_loc5_].fid].vars.health - 1,"poison");
                  }
               }
               if(this.FWP._obj[this.worms[_loc5_].fid].perks["regeneration"] && this.FWP._obj[this.worms[_loc5_].fid].perks["regeneration"] != 0 && this.cur_team == this.FWP._obj[this.worms[_loc5_].fid].wteam && this.FWP._obj[this.worms[_loc5_].fid].vars.health < this.worms_init_health[_loc5_])
               {
                  _loc11_ = this.FWP.get_perk_effect("regeneration",this.FWP._obj[this.worms[_loc5_].fid].perks["regeneration"],"");
                  _loc12_ = 0;
                  if(this.FWP._obj[this.worms[_loc5_].fid].vars.health + _loc11_ > this.worms_init_health[_loc5_])
                  {
                     _loc12_ = this.worms_init_health[_loc5_] - this.FWP._obj[this.worms[_loc5_].fid].vars.health;
                  }
                  else
                  {
                     _loc12_ = _loc11_;
                  }
                  this.FWP._obj[this.worms[_loc5_].fid].worm_apply_damage(-_loc12_,"regen");
               }
            }
            _loc5_++;
         }
         if(this.wpsheet)
         {
            this.close_wpsheet(0);
         }
         if(this.mousecontrol)
         {
            this.remove_mousecontrol();
         }
         _loc1_ = this.FWP._obj[this.worms[this.cur_worm].fid];
         if(this.cur_team == 1)
         {
            ++this.my_turn;
         }
         ++this.game_turn;
         this.timer = 0;
         this.G = 0.24;
         this.WKEYDELAY = 2;
         this.laser_activated = false;
         this.napalm_used = false;
         var _loc8_:* = 0;
         if(this.FWP.player.perks["fast_walk"])
         {
            _loc8_ = this.FWP.player.perks.fast_walk;
         }
         if(_loc8_ == 3 && this.cur_team == 1)
         {
            this.WKEYDELAY = 1;
         }
         this.generate_wind();
         this.add_status("-----------------------------------------");
         this.add_status("Ход #" + (this.game_turn + 1) + "... Ходит: " + this.teams[this.cur_team].name);
         this.OBJ[_loc1_.pid].ready = false;
         _loc1_.vars.damage = false;
         _loc1_.states.resting = false;
         _loc1_.states.active = true;
         var _loc9_:* = 0;
         if(this.FWP.player.perks["thinker"] && this.cur_team == 1)
         {
            _loc9_ = this.FWP.get_perk_effect("thinker",this.FWP.player.perks.thinker,"");
         }
         if(this.FWP.player.spec == 2 && this.cur_team == 1)
         {
            _loc9_ = this.FWP.get_perk_effect("thinker",3,"");
         }
         _loc1_.vars.timeout = (this.TURNTIME + _loc9_) * 1000;
         _loc1_.states.control = true;
         _loc1_.states.firecontrol = true;
         _loc1_.states.escape = false;
         this.check_displace(true);
         this.FWP.stage_focus();
         if(this.teams[this.cur_team].cpu_level != 0)
         {
            this.proc_action.act = "ai init";
            this.proc_timeout = 1000;
         }
         this.game_control = this.teams[this.cur_team].cpu_level == 0;
         if(this.cur_team == 1)
         {
            this.ROUNDS_RECORD += "#";
            if(this.FWP.REPLAY)
            {
               this.FWP.decode_move(this.my_turn + 1);
            }
         }
         else if(this.FWP.REPLAY)
         {
            this.FWP.clear_move();
         }
         if(this._play_type == "missions" && this._play_id == 16)
         {
            this.mission_scripts("check protect");
         }
         ++this.teams[this.cur_team].turns;
         if(this.CRATES_ON_MAP < 5)
         {
            if((_loc13_ = this.FWP.get_crate_param(this.FWP.player.perks,this._play_type,this.FWP.player.spec)).generate)
            {
               this.generate_crate(this.FWP.pseudo_random(20,this.FWP._world.map_bitmap.width - 20),_loc13_.weapon);
            }
         }
         if(this.cur_team == 1 && this.STEALTH_DURATION != 0)
         {
            --this.STEALTH_DURATION;
            if(this.STEALTH_DURATION == 0)
            {
               this.CUR_STEALTH = 0;
            }
            this.apply_worms_alpha();
         }
         return true;
      }
      
      public function mission_scripts(param1:String) : Boolean
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         if(param1 == "init" && this._play_type == "missions" && this._play_id == 3)
         {
            this.make_object("D","drum","mad_cow",{
               "x":661,
               "y":505,
               "already_ready":true
            });
            this.make_object("D","drum","mad_cow",{
               "x":723,
               "y":498,
               "already_ready":true
            });
            this.make_object("D","drum","mad_cow",{
               "x":792,
               "y":498,
               "already_ready":true
            });
         }
         if(param1 == "init" && this._play_type == "missions" && this._play_id == 13)
         {
            this.make_object("D","drum","",{
               "x":396,
               "y":360,
               "already_ready":true
            });
            this.make_object("D","drum","",{
               "x":481,
               "y":466,
               "already_ready":true
            });
            this.make_object("D","drum","",{
               "x":568,
               "y":466,
               "already_ready":true
            });
            this.make_object("D","drum","",{
               "x":631,
               "y":396,
               "already_ready":true
            });
         }
         if(param1 == "init" && this._play_type == "missions" && this._play_id == 16)
         {
            this.FWP.WEAPONS_DEF.pistol.delay = 1;
            this.FWP.WEAPONS_DEF.uzi.delay = 3;
            this.FWP.WEAPONS_DEF.uzi.delay = 4;
            this.FWP.WEAPONS_DEF.banana_bomb.delay = 6;
            this.FWP.WEAPONS_DEF.holy_hand_grenade.delay = 7;
            this.FWP.WEAPONS_DEF.firepunch.delay = 1;
            this.FWP.WEAPONS_DEF.baseball_bat.delay = 4;
            this.FWP.WEAPONS_DEF.low_gravity.delay = 2;
            this.FWP.WEAPONS_DEF.jet_pack.delay = 6;
            this.FWP.WEAPONS_DEF.bazooka.delay = 7;
            this.FWP.WEAPONS_DEF.grenade.delay = 8;
            this.FWP.WEAPONS_DEF.laser_rifle.delay = 2;
            this.FWP.WEAPONS_DEF.plasma_pistol.delay = 5;
            this.FWP.WEAPONS_DEF.gauss_pistol.delay = 9;
            this.FWP.WEAPONS_DEF.teleport.delay = 9;
         }
         if(param1 == "check" && this._play_type == "missions" && this._play_id == 3)
         {
            _loc3_ = 0;
            for(_loc4_ in this.FWP._obj)
            {
               if(this.FWP._obj[_loc4_].model == "D")
               {
                  _loc3_++;
               }
            }
            if(_loc3_ == 0)
            {
               return false;
            }
         }
         if(param1 == "check" && this._play_type == "missions" && this._play_id == 4)
         {
            _loc5_ = 0;
            _loc2_ = 1;
            while(_loc2_ <= this.worms[0])
            {
               if(this.worms[_loc2_].state == "ok")
               {
                  if(this.FWP._obj[this.worms[_loc2_].fid].wteam == 2)
                  {
                     _loc5_++;
                  }
               }
               _loc2_++;
            }
            if(_loc5_ == 0)
            {
               return false;
            }
         }
         if(param1 == "init" && this._play_type == "missions" && this._play_id >= 7 && this._play_id <= 10)
         {
            for(_loc6_ in this.FWP.WEAPONS_DEF)
            {
               if(this.FWP.WEAPONS_DEF[_loc6_].wptype == "a")
               {
                  this.FWP.WEAPONS_DEF[_loc6_].delay = Number.POSITIVE_INFINITY;
               }
            }
         }
         if(param1 == "check" && this._play_type == "missions" && this._play_id == 8)
         {
            _loc2_ = 1;
            while(_loc2_ <= this.worms[0])
            {
               if(this.worms[_loc2_].state == "ok")
               {
                  if(this.FWP._obj[this.worms[_loc2_].fid].wteam == 3)
                  {
                     this.FWP._obj[this.worms[_loc2_].fid].worm_apply_damage(-2,"regen");
                  }
               }
               _loc2_++;
            }
         }
         if(param1 == "check" && this._play_type == "missions" && this._play_id == 9)
         {
            _loc2_ = 1;
            while(_loc2_ <= this.worms[0])
            {
               if(this.worms[_loc2_].state == "ok")
               {
                  if(this.FWP._obj[this.worms[_loc2_].fid].wteam == 2)
                  {
                     this.FWP._obj[this.worms[_loc2_].fid].worm_apply_damage(-4,"regen");
                  }
               }
               _loc2_++;
            }
         }
         if(param1 == "check" && this._play_type == "missions" && this._play_id == 10)
         {
            _loc2_ = 1;
            while(_loc2_ <= this.worms[0])
            {
               if(this.worms[_loc2_].state == "ok")
               {
                  if(this.FWP._obj[this.worms[_loc2_].fid].wteam == 2)
                  {
                     this.FWP._obj[this.worms[_loc2_].fid].worm_apply_damage(-10,"regen");
                  }
               }
               _loc2_++;
            }
            _loc2_ = 1;
            while(_loc2_ <= this.worms[0])
            {
               if(this.worms[_loc2_].state == "ok")
               {
                  if(this.FWP._obj[this.worms[_loc2_].fid].wteam == 3)
                  {
                     this.FWP._obj[this.worms[_loc2_].fid].worm_apply_damage(-5,"regen");
                  }
               }
               _loc2_++;
            }
         }
         if(param1 == "check" && this._play_type == "missions" && this._play_id == 13)
         {
            _loc7_ = 0;
            for(_loc8_ in this.FWP._obj)
            {
               if(this.FWP._obj[_loc8_].model == "D")
               {
                  _loc7_++;
               }
            }
            if(_loc7_ < 2)
            {
               return false;
            }
         }
         if(param1 == "check" && this._play_type == "missions" && this._play_id == 15)
         {
            if(this.cur_team == 1)
            {
               _loc9_ = 10 - this.my_turn;
               this.FWP._proc.add_status("Осталось " + _loc9_ + " ход" + (_loc9_ == 1 ? "" : (_loc9_ < 5 ? "а" : "ов")) + ".");
            }
            if(this.my_turn >= 10)
            {
               return false;
            }
         }
         if(param1 == "check protect" && this._play_type == "missions" && this._play_id == 16)
         {
            if(this.my_turn < this.mission16_turn && this.cur_team == 1)
            {
               _loc10_ = this.mission16_turn - this.my_turn;
               this.FWP._proc.add_status("Бункер откроется через " + _loc10_ + " ход" + (_loc10_ == 1 ? "" : (_loc10_ < 5 ? "а" : "ов")) + ".");
            }
            if(this.my_turn == this.mission16_turn)
            {
               this.FWP._world.mission_scripts(16);
            }
         }
         return true;
      }
      
      public function death_loop() : *
      {
         this.proc_action.act = "";
         var _loc1_:* = this.FWP._obj[this.OBJ[this.worm_pid_to_die].fid];
         this.OBJ[this.worm_pid_to_die].ready = false;
         _loc1_.death = true;
         _loc1_.vars.special_timeout = 0;
      }
      
      public function choosing_worm() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         if(this.choose_delay != 0)
         {
            --this.choose_delay;
         }
         this.FWP._obj[this.choose_worm_fid].x = this.FWP._obj[this.worms[this.cur_worm].fid].x;
         this.FWP._obj[this.choose_worm_fid].y = this.FWP._obj[this.worms[this.cur_worm].fid].y - 70;
         this.FWP._obj[this.choose_worm_fid].visible = true;
         this.choose_worm_timeout -= this.FWP.FPS;
         if(this.choose_worm_timeout <= 0)
         {
            this.choose_worm = false;
            this.check_ready(0);
            this.FWP._obj[this.choose_worm_fid].visible = false;
            return;
         }
         if(this.FWP.REPLAY)
         {
            _loc2_ = this.read_key_press(this.timer);
            _loc1_ = _loc2_.other;
         }
         else
         {
            _loc1_ = this.FWP.KEY_PRESSED;
         }
         if(_loc1_ == "enter" && this.choose_delay == 0)
         {
            this.choose_delay = 20;
            _loc3_ = this.choose_worm_id;
            _loc4_ = 0;
            do
            {
               _loc3_++;
               if(_loc3_ > this.worms[0])
               {
                  _loc3_ = 1;
               }
               if(this.worms[_loc3_].state == "ok" && this.FWP._obj[this.worms[_loc3_].fid].wteam == this.cur_team)
               {
                  this.choose_worm_id = _loc3_;
                  break;
               }
            }
            while(++_loc4_ <= 100);
            
            this.cur_worm = this.choose_worm_id;
            this.check_displace(true);
            return;
         }
         if(_loc1_ == "escape")
         {
            this.FWP._obj[this.choose_worm_fid].visible = false;
            (_loc5_ = this.FWP._obj[this.worms[this.choose_worm_id].fid]).states.resting = false;
            _loc5_.states.active = true;
            _loc5_.vars.timeout = this.choose_worm_timeout;
            this.OBJ[this.FWP._obj[this.worms[this.choose_worm_id].fid].pid].ready = false;
            this.choose_worm = false;
         }
      }
      
      public function ai(param1:String) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         var _loc18_:* = undefined;
         var _loc19_:* = undefined;
         var _loc20_:* = undefined;
         var _loc21_:* = undefined;
         var _loc22_:* = undefined;
         var _loc23_:* = undefined;
         var _loc24_:* = undefined;
         var _loc25_:* = undefined;
         var _loc26_:* = undefined;
         var _loc27_:* = undefined;
         var _loc28_:* = undefined;
         var _loc29_:* = undefined;
         var _loc30_:* = undefined;
         var _loc31_:* = undefined;
         var _loc32_:* = undefined;
         var _loc33_:* = undefined;
         var _loc34_:* = undefined;
         var _loc35_:* = undefined;
         var _loc36_:* = undefined;
         if(this.ai_sleep != 0)
         {
            --this.ai_sleep;
            return;
         }
         if(param1 == "init")
         {
            this.proc_action.act = "";
            this.ai_result = {
               "center":{
                  "steps":0,
                  "wind":new Array(false,{}),
                  "gravity":new Array(false,{}),
                  "linear":new Array(false,{}),
                  "airstrike":new Array(false,{})
               },
               "not_center":{
                  "steps":0,
                  "wind":new Array(false,{}),
                  "gravity":new Array(false,{}),
                  "linear":new Array(false,{}),
                  "airstrike":new Array(false,{})
               }
            };
            this.ai_max_targets = 0;
            _loc3_ = 1;
            while(_loc3_ <= this.OBJ[0])
            {
               if(!this.OBJ[_loc3_].free)
               {
                  if((_loc4_ = this.FWP._obj[this.OBJ[_loc3_].fid]).model == "W" && this.teams[_loc4_.wteam].color != this.teams[this.cur_team].color && this.worms[_loc4_.wid].state == "ok")
                  {
                     ++this.ai_max_targets;
                     for(_loc5_ in this.ai_result.center)
                     {
                        if(_loc5_ != "steps")
                        {
                           this.ai_result.center[_loc5_][this.ai_max_targets] = {
                              "pid":_loc3_,
                              "mode":0,
                              "dmg":0,
                              "dx":Number.POSITIVE_INFINITY,
                              "angle":0,
                              "force":0,
                              "timeout":0
                           };
                           this.ai_result.not_center[_loc5_][this.ai_max_targets] = {
                              "pid":_loc3_,
                              "mode":0,
                              "dmg":0,
                              "dx":Number.POSITIVE_INFINITY,
                              "angle":0,
                              "force":0,
                              "timeout":0
                           };
                        }
                     }
                  }
               }
               _loc3_++;
            }
            this.ai_pos = "center";
            this.ai_weapon = "wind";
            this.ai_target = 1;
            this.ai_virtual_fid = "obj" + String(this.make_object("V","virtual","",{
               "x":0,
               "y":0
            }));
            this.proc_action.act = "ai calc";
            this.proc_timeout = 0;
            return;
         }
         if(param1 == "calc")
         {
            _loc2_ = 1;
            while(_loc2_ <= this.worms[0])
            {
               if(this.worms[_loc2_].state == "ok" && this.cur_worm != _loc2_)
               {
                  this.FWP._world.set_land_mask(this.FWP._obj[this.worms[_loc2_].fid].x,this.FWP._obj[this.worms[_loc2_].fid].y,this.FWP._obj[this.worms[_loc2_].fid].vars.direction);
               }
               _loc2_++;
            }
            _loc6_ = this.FWP._obj[this.ai_virtual_fid];
            _loc7_ = this.FWP._obj[this.OBJ[this.ai_result[this.ai_pos][this.ai_weapon][this.ai_target].pid].fid];
            _loc8_ = this.FWP._obj[this.worms[this.cur_worm].fid];
            _loc9_ = _loc7_.x - _loc8_.x;
            _loc10_ = _loc7_.y - _loc8_.y;
            this.ai_dest_iters = Math.round(this.ai_dest_time / this.FWP.FPS);
            _loc11_ = 0;
            _loc12_ = this.ai_dest_iters;
            while(_loc12_ > 0)
            {
               _loc11_ += _loc12_;
               _loc12_--;
            }
            if(this.ai_weapon == "wind")
            {
               _loc13_ = Math.atan((_loc10_ - _loc11_ * this.G) / (_loc9_ - _loc11_ * this.W));
               _loc14_ = (_loc10_ - _loc11_ * this.G) / (this.ai_dest_iters * Math.sin(_loc13_));
            }
            else if(this.ai_weapon == "gravity")
            {
               _loc13_ = Math.atan((_loc10_ - _loc11_ * this.G) / _loc9_);
               _loc14_ = (_loc10_ - _loc11_ * this.G) / (this.ai_dest_iters * Math.sin(_loc13_));
            }
            else
            {
               _loc13_ = Math.atan2(_loc10_,_loc9_);
               _loc14_ = 9;
            }
            if(this.mod(_loc14_) <= 21)
            {
               _loc15_ = _loc14_ * Math.cos(_loc13_);
               _loc16_ = _loc14_ * Math.sin(_loc13_);
               _loc6_.x = _loc8_.x;
               _loc6_.y = _loc8_.y;
               _loc6_.vars.vx = _loc15_;
               _loc6_.vars.vy = _loc16_;
               _loc6_.FLAGS.DAMAGE = this.ai_weapon == "linear" ? 200 : 50;
               _loc6_.FLAGS.DIAMETER = this.ai_weapon == "linear" ? 75 : 100;
               this.ai_trav_time = 0;
               while(true)
               {
                  if((_loc17_ = _loc6_.movement_return()).hit || this.ai_trav_time >= this.ai_dest_time)
                  {
                     _loc18_ = _loc6_.explode_return();
                     if(this.ai_trav_time * this.FWP.FPS >= 800)
                     {
                        (_loc19_ = this.ai_result[this.ai_pos][this.ai_weapon])[0] = true;
                        _loc20_ = 10;
                        if(_loc18_.damage > 0)
                        {
                           _loc20_ = 1;
                        }
                        else if(_loc18_.damage < 0 && !_loc18_.only_me)
                        {
                           _loc20_ = 2;
                        }
                        else if(_loc18_.damage == 0)
                        {
                           _loc20_ = 3;
                        }
                        else if(_loc18_.damage < 0 && _loc18_.only_me)
                        {
                           _loc20_ = 4;
                        }
                        _loc21_ = false;
                        _loc22_ = -1;
                        if(_loc19_[this.ai_target].mode == 0)
                        {
                           _loc21_ = true;
                        }
                        if(_loc19_[this.ai_target].mode > _loc20_)
                        {
                           _loc21_ = true;
                        }
                        if(_loc19_[this.ai_target].mode == _loc20_)
                        {
                           _loc6_.x - _loc7_.x;
                           _loc22_ = Math.sqrt(2 + Math.pow(_loc6_.y - _loc7_.y,2));
                           if(_loc20_ < 3 && _loc19_[this.ai_target].dmg < _loc18_.damage)
                           {
                              _loc21_ = true;
                           }
                           if(_loc20_ == 3 && _loc19_[this.ai_target].dx > _loc22_)
                           {
                              _loc21_ = true;
                           }
                        }
                        if(_loc21_)
                        {
                           _loc19_[this.ai_target].mode = _loc20_;
                           _loc19_[this.ai_target].dmg = _loc18_.damage;
                           _loc19_[this.ai_target].angle = _loc13_;
                           _loc19_[this.ai_target].force = _loc14_;
                           _loc19_[this.ai_target].timeout = this.ai_trav_time;
                           if(_loc22_ != -1)
                           {
                              _loc19_[this.ai_target].dx = _loc22_;
                           }
                        }
                        if(_loc17_.direct_hit && this.mod(_loc7_.x - _loc17_.hit_x) <= 5 && this.mod(_loc7_.y - _loc17_.hit_y) <= 5)
                        {
                        }
                     }
                     break;
                  }
                  if(_loc6_.y > this.FWP._world.LIMIT_DOWN)
                  {
                     break;
                  }
                  if(this.ai_weapon == "linear" && (_loc6_.y > this.FWP._world.LIMIT_DOWN || _loc6_.y < this.FWP._world.LIMIT_UP && _loc6_.x > this.FWP._world.LIMIT_RIGHT || _loc6_.x < this.FWP._world.LIMIT_LEFT))
                  {
                     break;
                  }
                  if(this.ai_weapon == "wind")
                  {
                     _loc6_.vars.vx += this.W;
                  }
                  if(this.ai_weapon == "wind" || this.ai_weapon == "gravity")
                  {
                     _loc6_.vars.vy += this.G;
                  }
                  _loc6_.vars.vx = this.mod(_loc6_.vars.vx) > this.MAXIMUM_SPEED ? this.sign(_loc6_.vars.vx) * this.MAXIMUM_SPEED : _loc6_.vars.vx;
                  _loc6_.vars.vy = this.mod(_loc6_.vars.vy) > this.MAXIMUM_SPEED ? this.sign(_loc6_.vars.vy) * this.MAXIMUM_SPEED : _loc6_.vars.vy;
                  _loc6_.x += _loc6_.vars.vx;
                  _loc6_.y += _loc6_.vars.vy;
                  this.ai_trav_time += this.FWP.FPS;
               }
            }
            this.ai_dest_time += 200;
            if(this.ai_dest_time > 5200 || this.ai_weapon == "linear")
            {
               this.proc_action.act = "ai get next";
               return;
            }
         }
         if(param1 == "get next")
         {
            _loc2_ = 1;
            while(_loc2_ <= this.worms[0])
            {
               if(this.worms[_loc2_].state == "ok" && this.cur_worm != _loc2_)
               {
                  this.FWP._world.clear_land_mask(this.FWP._obj[this.worms[_loc2_].fid].x,this.FWP._obj[this.worms[_loc2_].fid].y);
               }
               _loc2_++;
            }
            if(this.ai_weapon == "wind")
            {
               this.ai_dest_time = 100;
            }
            if(this.ai_weapon == "gravity")
            {
               this.ai_dest_time = 700;
            }
            if(this.ai_weapon == "linear")
            {
               this.ai_dest_time = 10000;
            }
            if(this.ai_target < this.ai_max_targets)
            {
               ++this.ai_target;
               this.proc_action.act = "ai calc";
               return;
            }
            if(this.ai_weapon == "wind")
            {
               this.ai_weapon = "gravity";
               this.ai_target = 1;
               this.proc_action.act = "ai calc";
               return;
            }
            if(this.ai_weapon == "gravity")
            {
               this.ai_weapon = "linear";
               this.ai_target = 1;
               this.proc_action.act = "ai calc";
               return;
            }
            if(this.ai_pos == "center" && !this.FWP._obj[this.worms[this.cur_worm].fid].vars.paralyzed)
            {
               this.ai_pos = "not_center";
               this.ai_weapon = "wind";
               this.ai_target = 1;
               this.proc_action.act = "ai move init";
               return;
            }
            this.proc_action.act = "ai find best";
            return;
         }
         if(param1 == "move init")
         {
            this.ai_move_dir = this.FWP.pseudo_random(0,1) == 0 ? "left" : "right";
            this.ai_move_steps = 0;
            this.ai_move_state = 0;
            this.proc_action.act = "ai move";
            return;
         }
         if(param1 == "move")
         {
            _loc23_ = this.FWP._obj[this.worms[this.cur_worm].fid].goto_return(this.ai_move_dir);
            if(this.mod(this.ai_move_steps) >= 80)
            {
               this.ai_result.not_center.steps = this.ai_move_steps;
               this.proc_action.act = "ai calc";
               return;
            }
            if(_loc23_ < 3)
            {
               this.ai_buttonid = this.ai_move_dir;
               this.ai_move_steps += this.ai_move_dir == "left" ? -1 : 1;
            }
            else
            {
               if(this.mod(this.ai_move_steps) >= 15)
               {
                  this.ai_result.not_center.steps = this.ai_move_steps;
                  this.proc_action.act = "ai calc";
                  return;
               }
               if(this.ai_move_state != 0)
               {
                  this.ai_result.not_center.steps = this.ai_move_steps;
                  this.proc_action.act = "ai calc";
                  return;
               }
               this.ai_move_dir = this.ai_move_dir == "left" ? "right" : "left";
               ++this.ai_move_state;
               this.ai_sleep = 25;
            }
         }
         if(param1 == "find best")
         {
            this.remove_object(this.FWP._obj[this.ai_virtual_fid],this.FWP._obj[this.ai_virtual_fid].pid,true);
            this.ai_best_result = {
               "pos":"",
               "weapon":"",
               "mode":0,
               "dmg":0,
               "dx":Number.POSITIVE_INFINITY,
               "angle":0,
               "force":0,
               "timeout":0
            };
            this.ai_best_weapon = {
               "wind":"",
               "gravity":"",
               "linear":"",
               "airstirke":""
            };
            for(_loc24_ in this.teams[this.cur_team].weapons)
            {
               if(this.teams[this.cur_team].weapons[_loc24_][1] != 0)
               {
                  if(this.FWP.WEAPONS_DEF[_loc24_].ai_type != "")
                  {
                     if(this.ai_best_weapon[this.FWP.WEAPONS_DEF[_loc24_].ai_type] == "")
                     {
                        this.ai_best_weapon[this.FWP.WEAPONS_DEF[_loc24_].ai_type] = _loc24_;
                     }
                     else if(this.FWP.WEAPONS_DEF[_loc24_].level > this.FWP.WEAPONS_DEF[this.ai_best_weapon[this.FWP.WEAPONS_DEF[_loc24_].ai_type]].level && this.FWP.WEAPONS_DEF[this.ai_best_weapon[this.FWP.WEAPONS_DEF[_loc24_].ai_type]].level != 0 || this.FWP.WEAPONS_DEF[_loc24_].level == 0)
                     {
                        this.ai_best_weapon[this.FWP.WEAPONS_DEF[_loc24_].ai_type] = _loc24_;
                     }
                  }
               }
            }
            _loc27_ = 0;
            while(_loc27_ <= 1)
            {
               if(_loc27_ == 0)
               {
                  _loc26_ = "not_center";
               }
               if(_loc27_ == 1)
               {
                  _loc26_ = "center";
               }
               _loc28_ = 0;
               while(_loc28_ <= 2)
               {
                  if(_loc28_ == 0)
                  {
                     _loc25_ = "gravity";
                  }
                  if(_loc28_ == 1)
                  {
                     _loc25_ = "wind";
                  }
                  if(_loc28_ == 2)
                  {
                     _loc25_ = "linear";
                  }
                  if(this.ai_best_weapon[_loc25_] != "")
                  {
                     if(this.ai_result[_loc26_][_loc25_][0])
                     {
                        _loc29_ = 1;
                        while(_loc29_ <= this.ai_max_targets)
                        {
                           _loc30_ = this.ai_result[_loc26_][_loc25_][_loc29_];
                           _loc31_ = false;
                           if(this.ai_best_result.mode == 0)
                           {
                              _loc31_ = true;
                           }
                           if(this.ai_best_result.mode > _loc30_.mode && _loc30_.mode != 0)
                           {
                              _loc31_ = true;
                           }
                           if(this.ai_best_result.mode == _loc30_.mode)
                           {
                              if(_loc30_.mode < 3 && _loc30_.dmg == this.ai_best_result.dmg && _loc25_ == "wind")
                              {
                                 _loc31_ = true;
                              }
                              if(_loc30_.mode < 3 && _loc30_.dmg > this.ai_best_result.dmg)
                              {
                                 _loc31_ = true;
                              }
                              if(_loc30_.mode == 3 && _loc30_.dx < this.ai_best_result.dx)
                              {
                                 _loc31_ = true;
                              }
                           }
                           if(_loc31_)
                           {
                              this.ai_best_result.mode = _loc30_.mode;
                              this.ai_best_result.dmg = _loc30_.dmg;
                              this.ai_best_result.angle = _loc30_.angle;
                              this.ai_best_result.force = _loc30_.force;
                              this.ai_best_result.timeout = _loc30_.timeout;
                              if(this.ai_best_result.mode == 3)
                              {
                                 this.ai_best_result.dx = _loc30_.dx;
                              }
                              this.ai_best_result.weapon = _loc25_;
                              this.ai_best_result.pos = _loc26_;
                           }
                           _loc29_++;
                        }
                     }
                  }
                  _loc28_++;
               }
               _loc27_++;
            }
            this.FWP.deep_trace(this.ai_best_result);
            if(this.ai_best_result.mode == 4 || this.ai_best_result.mode == 0)
            {
               this.proc_action.act = "ai skip go";
               this.ai_sleep = 25;
               this.ai_fire_state.state = "set weapon";
               this.ai_fire_state.timeout = 25;
               return;
            }
            if(this.ai_best_result.pos == "center" && this.ai_result.not_center.steps != 0)
            {
               this.proc_action.act = "ai move to best";
               this.ai_sleep = 25;
               return;
            }
            this.proc_action.act = "ai fire";
            this.ai_sleep = 25;
            this.ai_fire_state.state = "set weapon";
            this.ai_fire_state.timeout = 25;
            return;
         }
         if(param1 == "move to best")
         {
            if(this.ai_result.not_center.steps > 0)
            {
               this.ai_move_dir = "left";
            }
            else
            {
               this.ai_move_dir = "right";
            }
            if(this.ai_result.not_center.steps == 0)
            {
               this.proc_action.act = "ai fire";
               this.ai_fire_state.state = "set weapon";
               this.ai_fire_state.timeout = 25;
               this.ai_sleep = 25;
               return;
            }
            if(this.ai_result.not_center.steps > 0)
            {
               --this.ai_result.not_center.steps;
            }
            else
            {
               ++this.ai_result.not_center.steps;
            }
            this.ai_buttonid = this.ai_move_dir;
         }
         if(param1 == "fire")
         {
            if(this.ai_fire_state.state != "")
            {
               if(this.ai_fire_state.timeout != 0)
               {
                  --this.ai_fire_state.timeout;
                  return;
               }
            }
            _loc32_ = this.ai_best_weapon[this.ai_best_result.weapon];
            _loc35_ = this.ai_corean_random();
            if(this.ai_best_result.angle)
            {
               this.ai_best_result.angle += _loc35_.angle;
            }
            if(this.ai_best_result.force)
            {
               this.ai_best_result.force += _loc35_.force;
            }
            if(this.ai_best_result.angle > 90)
            {
               this.ai_best_result.angle = 90;
            }
            if(this.ai_best_result.angle < -90)
            {
               this.ai_best_result.angle = -90;
            }
            if(this.ai_best_result.weapon != "linear")
            {
               _loc33_ = this.ai_best_result.force * Math.cos(this.ai_best_result.angle);
               _loc34_ = this.ai_best_result.force * Math.sin(this.ai_best_result.angle);
            }
            else
            {
               _loc33_ = 40 * Math.cos(this.ai_best_result.angle);
               _loc34_ = 40 * Math.sin(this.ai_best_result.angle);
            }
            _loc36_ = this.FWP._obj[this.worms[this.cur_worm].fid];
            if(this.ai_fire_state.state == "set weapon")
            {
               if(_loc36_.vars.direction == -1 && _loc33_ < 0 || _loc36_.vars.direction == 1 && _loc33_ > 0)
               {
                  _loc36_.vars.direction *= -1;
                  _loc36_.worm_modify_sprite("tail");
                  _loc36_.worm_modify_sprite("tail");
               }
               if(this.ai_best_result.weapon != "linear")
               {
                  _loc36_.vars.crosshair = Math.round(this.ai_best_result.angle * 180 / Math.PI) * this.sign(-this.ai_best_result.force);
               }
               else
               {
                  _loc36_.vars.crosshair = Math.round(this.ai_best_result.angle * 180 / Math.PI);
                  if(_loc36_.vars.direction == -1)
                  {
                     _loc36_.vars.crosshair *= -1;
                  }
                  if(_loc36_.vars.direction == 1)
                  {
                     if(_loc36_.vars.crosshair > 0)
                     {
                        _loc36_.vars.crosshair -= 180;
                     }
                     else
                     {
                        _loc36_.vars.crosshair += 180;
                     }
                  }
               }
               _loc36_.weapon.set_w = this.FWP.WEAPONS_DEF[_loc32_].id;
               _loc36_.weapon.set_w_range = 1;
               this.ai_fire_state.state = "fire";
               this.ai_fire_state.timeout = 75;
               return;
            }
            if(this.ai_fire_state.state == "fire")
            {
               _loc36_.weapon_flags.MULTIPLESHOT = false;
               if(this.ai_best_result.weapon == "linear")
               {
                  this.ai_proj_prop.vx = _loc33_;
                  this.ai_proj_prop.vy = _loc34_;
               }
               if(this.ai_best_result.weapon == "linear" && this.ai_spressed)
               {
                  this.ai_spressed = false;
                  this.proc_action.act = "";
                  return;
               }
               this.ai_spressed = true;
               if(_loc36_.states.firing > this.mod(this.ai_best_result.force) && this.ai_best_result.weapon != "linear")
               {
                  this.ai_spressed = false;
                  this.ai_proj_prop.vx = _loc33_;
                  this.ai_proj_prop.vy = _loc34_;
                  this.ai_proj_prop.timeout = this.ai_best_result.timeout;
                  this.proc_action.act = "";
                  this.FWP.bug_report += "Worm " + this.cur_worm + " fires with: " + _loc32_ + " at " + _loc36_.x + ", " + _loc36_.y + "\n";
               }
            }
         }
         if(param1 == "skip go")
         {
            if(this.ai_fire_state.state != "")
            {
               if(this.ai_fire_state.timeout != 0)
               {
                  --this.ai_fire_state.timeout;
                  return;
               }
            }
            if(this.ai_fire_state.state == "set weapon")
            {
               this.FWP._obj[this.worms[this.cur_worm].fid].weapon.set_w = 61;
               this.FWP._obj[this.worms[this.cur_worm].fid].weapon.set_w_range = 1;
               this.ai_fire_state.state = "fire";
               this.ai_fire_state.timeout = 50;
               return;
            }
            if(this.ai_fire_state.state == "fire")
            {
               this.ai_spressed = true;
               if(!this.FWP._obj[this.worms[this.cur_worm].fid].states.firecontrol)
               {
                  this.ai_spressed = false;
                  this.proc_action.act = "";
               }
            }
         }
      }
      
      public function ai_corean_random() : Object
      {
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = this.teams[this.cur_team].cpu_level;
         var _loc4_:* = this.FWP.get_stealth_eff(_loc3_,this.CUR_STEALTH);
         var _loc5_:* = this.FWP.COREAN_RANDOM[_loc4_].angle_diap;
         var _loc6_:* = this.FWP.COREAN_RANDOM[_loc4_].angle_mult;
         var _loc7_:* = this.FWP.COREAN_RANDOM[_loc4_].force_diap;
         var _loc8_:* = this.FWP.COREAN_RANDOM[_loc4_].force_mult;
         if(_loc5_ != 0)
         {
            _loc2_ = this.FWP.pseudo_random(-_loc5_,_loc5_) / _loc6_;
         }
         if(_loc7_ != 0)
         {
            _loc1_ = this.FWP.pseudo_random(-_loc7_,_loc7_) * _loc8_;
         }
         return {
            "angle":_loc2_,
            "force":_loc1_
         };
      }
      
      public function check_ready(param1:Number) : *
      {
         if(this.choose_worm)
         {
            return;
         }
         var _loc2_:* = 2;
         while(_loc2_ <= this.OBJ[0])
         {
            if(!this.OBJ[_loc2_].free && !this.OBJ[_loc2_].ready && this.OBJ[_loc2_].model != "V" && this.OBJ[_loc2_].model != "E")
            {
               return;
            }
            _loc2_++;
         }
         _loc2_ = 2;
         while(_loc2_ <= this.OBJ[0])
         {
            if(!this.OBJ[_loc2_].free && this.OBJ[_loc2_].model == "W")
            {
               if(this.FWP._obj[this.OBJ[_loc2_].fid].vars.health <= 0)
               {
                  this.worm_pid_to_die = _loc2_;
                  this.proc_action.act = "death loop";
                  this.proc_timeout = 500;
                  if(this.FWP._obj[this.OBJ[_loc2_].fid].wteam == 1)
                  {
                     this.ach_kill = true;
                  }
                  if(this.cur_team == 1 && this.ach_last_wptype != "" && this.FWP._obj[this.OBJ[_loc2_].fid].wteam != 1)
                  {
                     ++this.ach_killed[this.ach_last_wptype];
                  }
                  return;
               }
            }
            _loc2_++;
         }
         if(this.wait_for_ready != 0)
         {
            this.proc_action.act = "return wfr";
            this.proc_timeout = 1000;
            return;
         }
         this.optim_obj();
         this.proc_action.act = "new move";
         this.proc_timeout = 500;
      }
      
      public function check_teams() : void
      {
         var _loc3_:* = undefined;
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         while(_loc2_ <= this.teams[0])
         {
            if(this.teams[_loc2_].state == "ok")
            {
               _loc1_ = 0;
               _loc3_ = 1;
               while(_loc3_ <= this.OBJ[0])
               {
                  if(this.OBJ[_loc3_].model == "W" && !this.OBJ[_loc3_].free)
                  {
                     if(this.worms[this.FWP._obj[this.OBJ[_loc3_].fid].wid].state == "ok" && this.FWP._obj[this.OBJ[_loc3_].fid].wteam == _loc2_)
                     {
                        _loc1_++;
                     }
                  }
                  _loc3_++;
               }
               if(_loc1_ == 0)
               {
                  this.teams[_loc2_].state = "empty";
               }
            }
            _loc2_++;
         }
      }
      
      public function check_displace(param1:Boolean, param2:String = "normal") : *
      {
         var _loc3_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         var _loc18_:* = undefined;
         var _loc19_:* = undefined;
         var _loc20_:* = undefined;
         var _loc21_:* = undefined;
         var _loc22_:* = undefined;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         for(_loc11_ in this.FWP._interf.distance_boxes)
         {
            this.FWP._interf.distance_boxes[_loc11_].visible = false;
         }
         _loc3_ = 1;
         while(_loc3_ <= this.OBJ[0])
         {
            if(!this.OBJ[_loc3_].free)
            {
               if((this.FWP._obj[this.OBJ[_loc3_].fid].model == "C" || this.FWP._obj[this.OBJ[_loc3_].fid].model == "P" || this.FWP._obj[this.OBJ[_loc3_].fid].model == "M") && (this.FWP._obj[this.OBJ[_loc3_].fid].vars.vx != 0 || this.FWP._obj[this.OBJ[_loc3_].fid].vars.vy != 0 || this.FWP._obj[this.OBJ[_loc3_].fid].states.sliding) || this.FWP._obj[this.OBJ[_loc3_].fid].model == "W" && this.worms[this.FWP._obj[this.OBJ[_loc3_].fid].wid].state == "ok" && (this.FWP._obj[this.OBJ[_loc3_].fid].vars.vs != 0 || this.FWP._obj[this.OBJ[_loc3_].fid].vars.vx != 0 || this.FWP._obj[this.OBJ[_loc3_].fid].vars.vy != 0 || this.FWP._obj[this.OBJ[_loc3_].fid].states.flying != 0))
               {
                  _loc12_ = 0;
                  _loc13_ = 0;
                  _loc14_ = this.FWP._obj[this.OBJ[_loc3_].fid].x + this.position_x;
                  _loc15_ = this.FWP._obj[this.OBJ[_loc3_].fid].y + this.position_y;
                  _loc10_ = Number(String(this.OBJ[_loc3_].fid).split("obj")[1]);
                  if(_loc14_ <= -10)
                  {
                     _loc12_ = -1;
                  }
                  else if(_loc14_ >= this.FWP.WINDOW_WIDTH + 10)
                  {
                     _loc12_ = 1;
                  }
                  if(_loc15_ <= -10)
                  {
                     _loc13_ = -1;
                  }
                  else if(_loc15_ >= this.FWP.WINDOW_HEIGHT + 10)
                  {
                     _loc13_ = 1;
                  }
                  if(_loc12_ == 0 && _loc13_ == 0)
                  {
                     this.FWP._interf.distance_boxes["box" + _loc10_].visible = false;
                  }
                  else
                  {
                     this.FWP._interf.distance_boxes["box" + _loc10_].visible = true;
                     if(_loc12_ == -1)
                     {
                        this.FWP._interf.distance_boxes["box" + _loc10_].x = 18;
                     }
                     if(_loc12_ == 1)
                     {
                        this.FWP._interf.distance_boxes["box" + _loc10_].x = this.FWP.WINDOW_WIDTH - 18;
                     }
                     if(_loc13_ == -1)
                     {
                        this.FWP._interf.distance_boxes["box" + _loc10_].y = 9;
                     }
                     if(_loc13_ == 1)
                     {
                        this.FWP._interf.distance_boxes["box" + _loc10_].y = this.FWP.WINDOW_HEIGHT - 9;
                     }
                     if(_loc12_ == 0)
                     {
                        this.FWP._interf.distance_boxes["box" + _loc10_].x = this.FWP._obj[this.OBJ[_loc3_].fid].x + this.position_x;
                     }
                     if(_loc13_ == 0)
                     {
                        this.FWP._interf.distance_boxes["box" + _loc10_].y = this.FWP._obj[this.OBJ[_loc3_].fid].y + this.position_y;
                     }
                     _loc16_ = 0;
                     _loc17_ = 0;
                     _loc18_ = 0;
                     _loc19_ = 0;
                     _loc20_ = "x";
                     if(_loc12_ == 1)
                     {
                        _loc16_ = _loc14_ - this.FWP.WINDOW_WIDTH;
                        _loc20_ = "x";
                     }
                     if(_loc12_ == -1)
                     {
                        _loc16_ = -_loc14_;
                        _loc20_ = "x";
                     }
                     if(_loc13_ == 1)
                     {
                        _loc17_ = _loc15_ - this.FWP.WINDOW_HEIGHT;
                        _loc20_ = "y";
                     }
                     if(_loc13_ == -1)
                     {
                        _loc17_ = -_loc15_;
                        _loc20_ = "y";
                     }
                     if(_loc12_ != 0 && _loc13_ != 0)
                     {
                        _loc18_ = this.mod(_loc16_) + this.mod(_loc17_);
                        _loc20_ = "xy";
                     }
                     if(_loc20_ == "x")
                     {
                        _loc19_ = _loc16_;
                     }
                     else if(_loc20_ == "y")
                     {
                        _loc19_ = _loc17_;
                     }
                     else
                     {
                        _loc19_ = _loc18_;
                     }
                     if((_loc19_ = Math.round(this.mod(_loc19_))) > 9999)
                     {
                        _loc19_ = 9999;
                     }
                     this.FWP._interf.distance_boxes["box" + _loc10_].distance.text = String(_loc19_);
                  }
               }
            }
            _loc3_++;
         }
         if(this.mouse_down && (mouseX < 10 || mouseX > this.FWP.WINDOW_WIDTH - 10 || mouseY < 10 || mouseY > this.FWP.WINDOW_HEIGHT - 10))
         {
            this.mouse_down = false;
         }
         if(this.mouse_down && !this.wpsheet)
         {
            if(this.click_coords.x == undefined)
            {
               this.click_coords.x = mouseX - this.position_x;
               this.click_coords.y = mouseY - this.position_y;
               return;
            }
            _loc21_ = mouseX - this.position_x;
            _loc22_ = mouseY - this.position_y;
            if(_loc21_ != this.click_coords.x || _loc22_ != this.click_coords.y)
            {
               this.game_displace(_loc21_ - this.click_coords.x,_loc22_ - this.click_coords.y);
               this.click_coords.x = mouseX - this.position_x;
               this.click_coords.y = mouseY - this.position_y;
            }
            return;
         }
         if(this.click_coords.x != undefined)
         {
            this.click_coords = {};
         }
         if(param2 == "paused")
         {
            if(_loc4_ != 0 || _loc5_ != 0)
            {
               this.game_displace(_loc4_,_loc5_);
            }
            return;
         }
         if(this.displace_seek_time > 0)
         {
            --this.displace_seek_time;
         }
         _loc3_ = 1;
         while(_loc3_ <= this.OBJ[0])
         {
            if(!this.OBJ[_loc3_].free)
            {
               if(this.FWP._obj[this.OBJ[_loc3_].fid].model == "P" && (this.FWP._obj[this.OBJ[_loc3_].fid].FLAGS.GRAVITY || this.FWP._obj[this.OBJ[_loc3_].fid].FLAGS.WIND))
               {
                  if(this.displace_seek_time <= 0 || this.displace_seek_type == "P" && this.displace_seek_obj == _loc3_)
                  {
                     if(!this.FWP._obj[this.OBJ[_loc3_].fid].FLAGS.NOSEEKING && (this.FWP._obj[this.OBJ[_loc3_].fid].vars.vx != 0 || this.FWP._obj[this.OBJ[_loc3_].fid].vars.vy != 0 || this.FWP._obj[this.OBJ[_loc3_].fid].states.sliding))
                     {
                        _loc4_ = 0;
                        _loc5_ = 0;
                        if(this.FWP._obj[this.OBJ[_loc3_].fid].x + this.position_x < this.DISPLACE_LIMIT)
                        {
                           _loc7_ = true;
                           _loc4_ = this.DISPLACE_LIMIT - this.FWP._obj[this.OBJ[_loc3_].fid].x - this.position_x;
                        }
                        else if(this.FWP._obj[this.OBJ[_loc3_].fid].x + this.position_x > this.FWP.WINDOW_WIDTH - this.DISPLACE_LIMIT)
                        {
                           _loc7_ = true;
                           _loc4_ = -this.FWP._obj[this.OBJ[_loc3_].fid].x - this.position_x + (this.FWP.WINDOW_WIDTH - this.DISPLACE_LIMIT);
                        }
                        if(this.FWP._obj[this.OBJ[_loc3_].fid].y + this.position_y < this.DISPLACE_LIMIT && this.FWP._obj[this.OBJ[_loc3_].fid].y + this.position_y > -this.DISPLACE_LIMIT)
                        {
                           _loc7_ = true;
                           _loc5_ = -this.FWP._obj[this.OBJ[_loc3_].fid].y - this.position_y + this.DISPLACE_LIMIT;
                        }
                        else if(this.FWP._obj[this.OBJ[_loc3_].fid].y + this.position_y > this.FWP.WINDOW_HEIGHT - this.DISPLACE_LIMIT)
                        {
                           _loc7_ = true;
                           _loc5_ = this.FWP.WINDOW_HEIGHT - this.DISPLACE_LIMIT - this.FWP._obj[this.OBJ[_loc3_].fid].y - this.position_y;
                        }
                        if(_loc7_)
                        {
                           this.displace_seek_type = "P";
                           this.displace_seek_obj = _loc3_;
                           this.displace_seek_time = 40;
                           break;
                        }
                     }
                  }
               }
            }
            _loc3_++;
         }
         if(!_loc7_ && this.cur_worm != 0)
         {
            _loc3_ = 1;
            while(_loc3_ <= this.OBJ[0])
            {
               if(!this.OBJ[_loc3_].free)
               {
                  if(this.FWP._obj[this.OBJ[_loc3_].fid].model == "W")
                  {
                     if(this.displace_seek_time <= 0 || this.displace_seek_type == "W" && this.displace_seek_obj == _loc3_)
                     {
                        if(_loc3_ != this.cur_worm && this.worms[this.FWP._obj[this.OBJ[_loc3_].fid].wid].state == "ok" && (this.FWP._obj[this.OBJ[_loc3_].fid].vars.vs != 0 || this.FWP._obj[this.OBJ[_loc3_].fid].states.flying != 0) && (this.FWP._obj[this.OBJ[_loc3_].fid].x + this.position_x < this.DISPLACE_LIMIT || this.FWP._obj[this.OBJ[_loc3_].fid].x + this.position_x > this.FWP.WINDOW_WIDTH - this.DISPLACE_LIMIT || this.FWP._obj[this.OBJ[_loc3_].fid].y + this.position_y < this.DISPLACE_LIMIT || this.FWP._obj[this.OBJ[_loc3_].fid].y + this.position_y > this.FWP.WINDOW_HEIGHT - this.DISPLACE_LIMIT))
                        {
                           _loc9_ = _loc3_;
                           break;
                        }
                     }
                  }
               }
               _loc3_++;
            }
            _loc4_ = 0;
            _loc5_ = 0;
            if(_loc9_ != 0)
            {
               if(this.FWP._obj[this.OBJ[_loc9_].fid].x + this.position_x < this.DISPLACE_LIMIT)
               {
                  _loc4_ = this.DISPLACE_LIMIT - this.FWP._obj[this.OBJ[_loc9_].fid].x - this.position_x;
               }
               else if(this.FWP._obj[this.OBJ[_loc9_].fid].x + this.position_x > this.FWP.WINDOW_WIDTH - this.DISPLACE_LIMIT)
               {
                  _loc4_ = -this.FWP._obj[this.OBJ[_loc9_].fid].x - this.position_x + (this.FWP.WINDOW_WIDTH - this.DISPLACE_LIMIT);
               }
               if(this.FWP._obj[this.OBJ[_loc9_].fid].y + this.position_y < this.DISPLACE_LIMIT && this.FWP._obj[this.OBJ[_loc9_].fid].y + this.position_y > -this.DISPLACE_LIMIT)
               {
                  _loc5_ = -this.FWP._obj[this.OBJ[_loc9_].fid].y - this.position_y + this.DISPLACE_LIMIT;
               }
               else if(this.FWP._obj[this.OBJ[_loc9_].fid].y + this.position_y > this.FWP.WINDOW_HEIGHT - this.DISPLACE_LIMIT)
               {
                  _loc5_ = this.FWP.WINDOW_HEIGHT - this.DISPLACE_LIMIT - this.FWP._obj[this.OBJ[_loc9_].fid].y - this.position_y;
               }
               if(_loc4_ != 0 || _loc5_ != 0)
               {
                  this.displace_seek_type = "W";
                  this.displace_seek_obj = _loc9_;
                  this.displace_seek_time = 40;
               }
            }
         }
         if(this.cur_worm != 0 && this.worms[this.cur_worm].state == "ok" && !this.mousecontrol && !this.wpsheet)
         {
            if(param1 || (!_loc7_ && _loc9_ == 0 && (this.FWP.KEY_PRESSED != "none" && this.game_control) || this.FWP._obj[this.worms[this.cur_worm].fid].vars.vs != 0 || this.FWP._obj[this.worms[this.cur_worm].fid].vars.vx != 0 || this.FWP._obj[this.worms[this.cur_worm].fid].vars.vy != 0) && (this.FWP._obj[this.worms[this.cur_worm].fid].x + this.position_x < this.DISPLACE_LIMIT || this.FWP._obj[this.worms[this.cur_worm].fid].x + this.position_x > this.FWP.WINDOW_WIDTH - this.DISPLACE_LIMIT || this.FWP._obj[this.worms[this.cur_worm].fid].y + this.position_y < this.DISPLACE_LIMIT || this.FWP._obj[this.worms[this.cur_worm].fid].y + this.position_y > this.FWP.WINDOW_HEIGHT - this.DISPLACE_LIMIT))
            {
               _loc4_ = 0;
               _loc5_ = 0;
               if(this.FWP._obj[this.worms[this.cur_worm].fid].x + this.position_x < this.DISPLACE_LIMIT)
               {
                  _loc4_ = this.DISPLACE_LIMIT - this.FWP._obj[this.worms[this.cur_worm].fid].x - this.position_x;
               }
               else if(this.FWP._obj[this.worms[this.cur_worm].fid].x + this.position_x > this.FWP.WINDOW_WIDTH - this.DISPLACE_LIMIT)
               {
                  _loc4_ = -this.FWP._obj[this.worms[this.cur_worm].fid].x - this.position_x + (this.FWP.WINDOW_WIDTH - this.DISPLACE_LIMIT);
               }
               if(this.FWP._obj[this.worms[this.cur_worm].fid].y + this.position_y < this.DISPLACE_LIMIT && this.FWP._obj[this.worms[this.cur_worm].fid].y + this.position_y > -this.DISPLACE_LIMIT)
               {
                  _loc5_ = -this.FWP._obj[this.worms[this.cur_worm].fid].y - this.position_y + this.DISPLACE_LIMIT;
               }
               else if(this.FWP._obj[this.worms[this.cur_worm].fid].y + this.position_y > this.FWP.WINDOW_HEIGHT - this.DISPLACE_LIMIT)
               {
                  _loc5_ = this.FWP.WINDOW_HEIGHT - this.DISPLACE_LIMIT - this.FWP._obj[this.worms[this.cur_worm].fid].y - this.position_y;
               }
               if(_loc4_ != 0 || _loc5_ != 0)
               {
                  this.displace_seek_type = "W";
                  this.displace_seek_obj = this.cur_worm;
                  this.displace_seek_time = 40;
               }
            }
         }
         if(_loc4_ != 0 || _loc5_ != 0)
         {
            this.game_displace(_loc4_,_loc5_);
         }
      }
      
      public function game_displace(param1:Number, param2:Number) : *
      {
         var _loc3_:* = undefined;
         param1 = Math.ceil(param1);
         param2 = Math.ceil(param2);
         if(this.position_x + param1 > -this.FWP._world.LIMIT_LEFT)
         {
            param1 = -this.FWP._world.LIMIT_LEFT - this.position_x;
         }
         if(this.position_x + param1 < -this.FWP._world.LIMIT_RIGHT + this.FWP.WINDOW_WIDTH)
         {
            param1 = -this.FWP._world.LIMIT_RIGHT + this.FWP.WINDOW_WIDTH - this.position_x;
         }
         if(this.position_y + param2 > -this.FWP._world.LIMIT_UP)
         {
            param2 = -this.FWP._world.LIMIT_UP - this.position_y;
         }
         if(this.position_y + param2 < -100)
         {
            param2 = -this.position_y - 100;
         }
         this.position_x += param1;
         this.position_y += param2;
         this.FWP.display_obj.x = this.position_x;
         this.FWP.display_obj.y = this.position_y;
         this.FWP._world.game_displace();
      }
      
      public function generate_wind() : *
      {
         var _loc1_:* = 0;
         this.W = this.FWP.pseudo_random(-10,10);
         if(this.cur_worm != 0)
         {
            this.W += Math.round((this.FWP._world.map_bitmap.width / 2 - this.FWP._obj[this.worms[this.cur_worm].fid].x) / 150);
         }
         if(this.mod(this.W) > 10)
         {
            this.W = 10 * this.sign(this.W);
         }
         switch(this.mod(this.W))
         {
            case 0:
               this.W = 0;
               _loc1_ = 0;
               break;
            case 1:
               this.W = this.G * 0.119 * this.sign(this.W);
               _loc1_ = 7 * this.sign(this.W);
               break;
            case 2:
               this.W = this.G * 0.238 * this.sign(this.W);
               _loc1_ = 14 * this.sign(this.W);
               break;
            case 3:
               this.W = this.G * 0.357 * this.sign(this.W);
               _loc1_ = 22 * this.sign(this.W);
               break;
            case 4:
               this.W = this.G * 0.476 * this.sign(this.W);
               _loc1_ = 29 * this.sign(this.W);
               break;
            case 5:
               this.W = this.G * 0.595 * this.sign(this.W);
               _loc1_ = 37 * this.sign(this.W);
               break;
            case 6:
               this.W = this.G * 0.714 * this.sign(this.W);
               _loc1_ = 45 * this.sign(this.W);
               break;
            case 7:
               this.W = this.G * 0.833 * this.sign(this.W);
               _loc1_ = 52 * this.sign(this.W);
               break;
            case 8:
               this.W = this.G * 0.952 * this.sign(this.W);
               _loc1_ = 60 * this.sign(this.W);
               break;
            case 9:
               this.W = this.G * 1.071 * this.sign(this.W);
               _loc1_ = 67 * this.sign(this.W);
               break;
            case 10:
               this.W = this.G * 1.19 * this.sign(this.W);
               _loc1_ = 75 * this.sign(this.W);
         }
         this.FWP._interf.WindBar.wind_red_mask.width = _loc1_ > 0 ? _loc1_ : 0;
         this.FWP._interf.WindBar.wind_blue_mask.width = _loc1_ < 0 ? -_loc1_ : 0;
      }
      
      public function open_wpsheet() : *
      {
         var _loc1_:* = undefined;
         if(this.FWP.REPLAY || this.mousecontrol)
         {
            return;
         }
         this.call_open_wpsheet = false;
         if(this.wpsheet)
         {
            this.close_wpsheet(0);
            return;
         }
         if(this.cur_worm != 0)
         {
         }
         if(this.cur_worm != 0)
         {
            if(this.game_control && this.worms[this.cur_worm].state == "ok")
            {
               _loc1_ = this.FWP._obj[this.worms[this.cur_worm].fid];
               if(_loc1_.states.firecontrol && _loc1_.states.flying == 0 && !_loc1_.ai && _loc1_.weapon.shots_total == 0 && _loc1_.states.special == "")
               {
                  this.wpsheet = true;
                  this.GAME_FREEZE = true;
                  this.FWP._interf.init_weapon_sheet(this._play_type);
               }
            }
         }
      }
      
      public function close_wpsheet(param1:Number, param2:Number = 1) : *
      {
         this.FWP._interf.last_call_game_mode = "";
         this.FWP._interf.remove();
         this.wpsheet = false;
         if(param1 != 0)
         {
            this.call_weapon.call = true;
            this.call_weapon.id = param1;
            this.call_weapon.range = param2;
         }
         this.GAME_FREEZE = false;
         this.FWP.stage_focus();
      }
      
      public function cancel_fight() : *
      {
         this.FWP.end_game_fn(0);
      }
      
      public function check_mousecontrol() : *
      {
         var _loc2_:* = undefined;
         if(!this.FWP.REPLAY)
         {
            this.FWP._interf.CursorClip.x = mouseX;
            this.FWP._interf.CursorClip.y = mouseY < 610 ? mouseY : 610;
            this.FWP._interf.GirderClip.x = this.FWP._interf.CursorClip.x;
            this.FWP._interf.GirderClip.y = this.FWP._interf.CursorClip.y;
         }
         var _loc1_:* = "";
         if(this.FWP.REPLAY)
         {
            _loc2_ = this.read_key_press(this.timer);
            _loc1_ = _loc2_.other;
         }
         else
         {
            _loc1_ = this.FWP.KEY_PRESSED;
         }
         if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "girder" || this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "girder_pack")
         {
            if(this.girder_key_delay != 0)
            {
               --this.girder_key_delay;
            }
            if(this.girder_key_delay == 0)
            {
               if(_loc1_ == "left" || _loc1_ == "down")
               {
                  ++this.girder_id;
                  if(this.girder_id > 16)
                  {
                     this.girder_id = 1;
                  }
                  if(!this.FWP.REPLAY)
                  {
                     this.FWP._interf.modify_girder_cursor(this.girder_id);
                  }
                  this.girder_key_delay = 10;
               }
               if(_loc1_ == "right" || _loc1_ == "up")
               {
                  --this.girder_id;
                  if(this.girder_id < 1)
                  {
                     this.girder_id = 16;
                  }
                  if(!this.FWP.REPLAY)
                  {
                     this.FWP._interf.modify_girder_cursor(this.girder_id);
                  }
                  this.girder_key_delay = 10;
               }
            }
         }
         if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.SPECIAL == "air_strike")
         {
            if(_loc1_ == "left")
            {
               this.strike_dir = "from left";
               if(!this.FWP.REPLAY)
               {
                  this.FWP._interf.modify_cursor(this.strike_dir);
               }
            }
            if(_loc1_ == "right")
            {
               this.strike_dir = "from right";
               if(!this.FWP.REPLAY)
               {
                  this.FWP._interf.modify_cursor(this.strike_dir);
               }
            }
         }
      }
      
      public function set_mousecontrol() : *
      {
         this.mousecontrol = true;
         if(this.FWP.REPLAY)
         {
            return;
         }
         this.FWP._interf.show_cursor("cursor");
         if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "girder" || this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "girder_pack")
         {
            this.FWP._interf.show_cursor("girder");
            this.FWP._interf.modify_girder_cursor(this.girder_id);
         }
         if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.SPECIAL == "air_strike")
         {
            this.FWP._interf.modify_cursor(this.strike_dir);
         }
      }
      
      public function double_clicked() : *
      {
         if(!this.mousecontrol || this.FWP.REPLAY)
         {
            return;
         }
         this.call_click.call = true;
         this.call_click.x = mouseX - this.position_x;
         this.call_click.y = mouseY - this.position_y;
      }
      
      public function proceed_mousecontrol() : *
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         if(!this.mousecontrol)
         {
            return;
         }
         var _loc1_:* = this.call_click.x;
         var _loc2_:* = this.call_click.y;
         if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "teleport" || this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "upg_teleport" || this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "upg_teleport2")
         {
            if(this.check_teleport(_loc1_,_loc2_) || this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "upg_teleport2")
            {
               this.remove_mousecontrol();
               this.FWP._obj[this.worms[this.cur_worm].fid].vars.teleport_dest = {
                  "x":_loc1_,
                  "y":_loc2_
               };
               this.FWP._obj[this.worms[this.cur_worm].fid].worm_fire();
               if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "upg_teleport2")
               {
                  this.make_object("P","worm_explode","",{
                     "x":_loc1_,
                     "y":_loc2_,
                     "vx":0,
                     "vy":0,
                     "dmg_mult":1
                  });
               }
            }
         }
         if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "girder" || this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "girder_pack")
         {
            if(this.check_girder(this.girder_id,_loc1_,_loc2_))
            {
               this.FWP._obj[this.worms[this.cur_worm].fid].worm_fire();
               if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.MULTIPLESHOT && this.FWP._obj[this.worms[this.cur_worm].fid].weapon.shots_remain == 0 || !this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.MULTIPLESHOT)
               {
                  this.remove_mousecontrol();
               }
               if((this._play_type == "boss" || this._play_type == "assault") && this.ag_animation.visible)
               {
                  this.FWP._world.explode(this.ag_animation.x,this.ag_animation.y,200);
               }
            }
         }
         if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.SPECIAL == "air_strike")
         {
            _loc3_ = 0;
            _loc4_ = -200;
            _loc5_ = 0;
            _loc6_ = 30;
            if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.wid == "orbit_strike")
            {
               _loc5_ = 7;
               _loc4_ = -149;
               _loc6_ = 50;
            }
            this.remove_mousecontrol();
            this.FWP._obj[this.worms[this.cur_worm].fid].worm_fire();
            if(!this.FWP._obj[this.worms[this.cur_worm].fid].cur_shot_fail)
            {
               if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.wid != "napalm_strike")
               {
                  while(_loc4_ < _loc2_)
                  {
                     if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.wid != "orbit_strike")
                     {
                        _loc5_ += this.G;
                     }
                     _loc4_ += _loc5_;
                     _loc3_ += this.strike_dir == "from left" ? 6 : -6;
                  }
                  _loc8_ = this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.STRIKEAMOUNT;
                  _loc9_ = Math.ceil(_loc8_ / 2);
                  _loc7_ = 1;
                  while(_loc7_ <= _loc8_)
                  {
                     _loc10_ = "P";
                     _loc11_ = false;
                     if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.wid == "mine_strike")
                     {
                        _loc10_ = "M";
                        _loc11_ = true;
                     }
                     this.make_object(_loc10_,this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.wid,"",{
                        "x":_loc1_ - _loc3_ + _loc6_ * (_loc7_ - _loc9_),
                        "y":(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.wid == "orbit_strike" ? -149 : -200),
                        "vx":(this.strike_dir == "from left" ? 6 : -6) * (this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.wid == "orbit_strike" ? 6 : 1),
                        "vy":(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_flags.wid == "orbit_strike" ? 7 * 6 : 0),
                        "dmg_mult":this.FWP._obj[this.worms[this.cur_worm].fid].dmg_mult,
                        "no_alert_delay":_loc11_
                     });
                     _loc7_++;
                  }
               }
               else
               {
                  this.fire_on_map = true;
                  _loc7_ = 1;
                  while(_loc7_ <= 30)
                  {
                     this.make_object("F","fire","",{
                        "x":_loc1_ + 5 * (_loc7_ - 15),
                        "y":-149,
                        "vx":0,
                        "vy":0,
                        "timeout":16000,
                        "dmg_mult":this.FWP._obj[this.worms[this.cur_worm].fid].dmg_mult
                     });
                     _loc7_++;
                  }
               }
            }
         }
      }
      
      public function remove_mousecontrol() : *
      {
         this.mousecontrol = false;
         if(this.FWP.REPLAY)
         {
            return;
         }
         this.FWP._interf.hide_cursor("cursor");
         if(this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "girder" || this.FWP._obj[this.worms[this.cur_worm].fid].weapon_name == "girder_pack")
         {
            this.FWP._interf.hide_cursor("girder");
         }
      }
      
      public function generate_crate(param1:Number, param2:String) : *
      {
         ++this.CRATES_ON_MAP;
         this.make_object("C","crate","",{
            "x":param1,
            "y":-200,
            "vx":0,
            "vy":0,
            "crate_weapon":param2
         });
      }
      
      public function apply_worms_alpha() : *
      {
      }
      
      public function check_teleport(param1:Number, param2:Number) : *
      {
         var _loc4_:* = undefined;
         var _loc3_:* = -3;
         while(_loc3_ <= 3)
         {
            _loc4_ = -9;
            while(_loc4_ <= 9)
            {
               if(this.FWP._world.is_land(param1 + _loc3_,param2 + _loc4_))
               {
                  return false;
               }
               _loc4_++;
            }
            _loc3_++;
         }
         return true;
      }
      
      public function check_girder(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : *
      {
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         if(!param4)
         {
            _loc8_ = 250;
            if(this.FWP.player.perks["engineer"])
            {
               _loc8_ = this.FWP.get_perk_effect("engineer",this.FWP.player.perks.engineer,"");
            }
            if(Math.sqrt(Math.pow(param2 - this.FWP._obj[this.worms[this.cur_worm].fid].x,2) + Math.pow(param3 - this.FWP._obj[this.worms[this.cur_worm].fid].y,2)) > _loc8_)
            {
               return;
            }
            if(param1 == 1 && (param2 < 10 || param2 > this.FWP._world.map_bitmap.width - 10 || param3 < 70 || param3 > 650 - 18 - 70))
            {
               return false;
            }
            if((param1 == 2 || param1 == 8) && (param2 < 36 || param2 > this.FWP._world.map_bitmap.width - 36 || param3 < 69 || param3 > 650 - 18 - 69))
            {
               return false;
            }
            if((param1 == 3 || param1 == 7) && (param2 < 57 || param2 > this.FWP._world.map_bitmap.width - 57 || param3 < 57 || param3 > 650 - 18 - 57))
            {
               return false;
            }
            if((param1 == 4 || param1 == 6) && (param2 < 69 || param2 > this.FWP._world.map_bitmap.width - 69 || param3 < 36 || param3 > 650 - 18 - 36))
            {
               return false;
            }
            if(param1 == 5 && (param2 < 70 || param2 > this.FWP._world.map_bitmap.width - 70 || param3 < 10 || param3 > 650 - 18 - 10))
            {
               return false;
            }
            if(param1 == 9 && (param2 < 10 || param2 > this.FWP._world.map_bitmap.width - 10 || param3 < 35 || param3 > 650 - 18 - 35))
            {
               return false;
            }
            if((param1 == 10 || param1 == 16) && (param2 < 22 || param2 > this.FWP._world.map_bitmap.width - 22 || param3 < 36 || param3 > 650 - 18 - 36))
            {
               return false;
            }
            if((param1 == 11 || param1 == 15) && (param2 < 32 || param2 > this.FWP._world.map_bitmap.width - 32 || param3 < 32 || param3 > 650 - 18 - 32))
            {
               return false;
            }
            if((param1 == 12 || param1 == 14) && (param2 < 36 || param2 > this.FWP._world.map_bitmap.width - 36 || param3 < 22 || param3 > 650 - 18 - 22))
            {
               return false;
            }
            if(param1 == 13 && (param2 < 35 || param2 > this.FWP._world.map_bitmap.width - 35 || param3 < 10 || param3 > 650 - 18 - 10))
            {
               return false;
            }
         }
         param2 -= Math.round(this.FWP._interf["girder" + param1 + "map"].width / 2);
         param3 -= Math.round(this.FWP._interf["girder" + param1 + "map"].height / 2);
         var _loc5_:* = new BitmapData(this.FWP._world.map_bitmap.width,this.FWP._world.map_bitmap.height,false,0);
         var _loc6_:* = 1;
         while(_loc6_ <= this.OBJ[0])
         {
            if(!this.OBJ[_loc6_].free && (this.OBJ[_loc6_].model == "W" || this.OBJ[_loc6_].model == "Z"))
            {
               _loc9_ = -4;
               while(_loc9_ <= 4)
               {
                  _loc10_ = -9;
                  while(_loc10_ <= 9)
                  {
                     _loc5_.setPixel32(Math.round(this.FWP._obj[this.OBJ[_loc6_].fid].x + _loc9_),Math.round(this.FWP._obj[this.OBJ[_loc6_].fid].y + _loc10_),4294967295);
                     _loc10_++;
                  }
                  _loc9_++;
               }
            }
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ <= this.FWP._interf["girder" + param1 + "map"].width)
         {
            _loc9_ = 0;
            while(_loc9_ <= this.FWP._interf["girder" + param1 + "map"].height)
            {
               if(this.FWP._interf["girder" + param1 + "map"].getPixel(_loc6_,_loc9_).toString(16) != "0" && (this.FWP._world.map_bitmap.getPixel(param2 + _loc6_,param3 + _loc9_).toString(16) != "0" || _loc5_.getPixel(param2 + _loc6_,param3 + _loc9_).toString(16) != "0"))
               {
                  return false;
               }
               _loc9_++;
            }
            _loc6_++;
         }
         var _loc7_:* = this.FWP._interf["girder" + param1 + "map"];
         this.FWP._world.map_bitmap.copyPixels(_loc7_,new Rectangle(0,0,this.FWP._interf["girder" + param1 + "map"].width,this.FWP._interf["girder" + param1 + "map"].height),new Point(param2,param3),_loc7_,new Point(0,0),true);
         _loc5_.dispose();
         return true;
      }
      
      public function remove_fire() : *
      {
         if(!this.fire_on_map)
         {
            return;
         }
         this.fire_on_map = false;
         this.FWP._world.FireMap.fillRect(new Rectangle(0,0,this.FWP._world.map_bitmap.width,this.FWP._world.map_bitmap.height),0);
      }
      
      public function survival_replace(param1:Number, param2:String = "std") : *
      {
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc3_:* = this.FWP._obj[this.worms[param1].fid];
         if(param2 == "std")
         {
            ++this.SURV_KILLS;
            this.add_status("Убито червей: " + this.SURV_KILLS + "/" + this.FWP.TEAMS_DEF["survival" + this._play_id].kills + ".");
            if(this.SURV_KILLS == this.FWP.TEAMS_DEF["survival" + this._play_id].kills)
            {
               this.add_status("Черви больше не будут появляться.");
            }
            _loc3_.vars.health = Math.ceil(this.FWP.TEAMS_DEF["survival" + this._play_id]["team" + _loc3_.wteam]["worm1"].health * this.FWP.get_skill_multi("health"));
         }
         var _loc4_:* = 0;
         do
         {
            _loc5_ = this.FWP.pseudo_random(1,this.FWP._world.map_bitmap.width);
            _loc6_ = this.FWP.pseudo_random(50,this.FWP._world.map_bitmap.height - 50);
         }
         while(!(this.check_teleport(_loc5_,_loc6_) && this.check_girder(13,_loc5_,_loc6_ + 18,true)));
         
         _loc3_.vars.vx = 0;
         _loc3_.vars.vy = 0;
         _loc3_.clear_flags();
         _loc3_.worm_modify_health();
         _loc3_.x = _loc5_;
         _loc3_.y = _loc6_;
         _loc3_.death = false;
         _loc3_.vars.special_timeout = 0;
         _loc3_.states.flying = 1;
         _loc3_.sprite.worm_namebox.visible = true;
         _loc3_.sprite.worm_hpbox.visible = true;
         _loc3_.sprite.worm_name.visible = true;
         _loc3_.sprite.worm_hp.visible = true;
         this.make_object("P","null_explode","",{
            "x":_loc5_,
            "y":_loc6_,
            "vx":0,
            "vy":0,
            "dmg_mult":1
         });
         this.make_object("P","null_explode","",{
            "x":_loc5_,
            "y":_loc6_ + 18,
            "vx":0,
            "vy":0,
            "dmg_mult":1
         });
      }
      
      public function catch_bug() : *
      {
      }
      
      public function add_status(param1:String) : *
      {
         var _loc4_:* = undefined;
         if(this.STATUS_TEXT[0] >= this.STATUS_MAX)
         {
            _loc4_ = 1;
            while(_loc4_ <= this.STATUS_MAX - 1)
            {
               this.STATUS_TEXT[_loc4_] = this.STATUS_TEXT[_loc4_ + 1];
               _loc4_++;
            }
            this.STATUS_TEXT[this.STATUS_MAX] = param1;
         }
         else
         {
            ++this.STATUS_TEXT[0];
            this.STATUS_TEXT[this.STATUS_TEXT[0]] = param1;
         }
         var _loc2_:* = "";
         var _loc3_:* = 1;
         while(_loc3_ <= this.STATUS_TEXT[0])
         {
            _loc2_ += this.STATUS_TEXT[_loc3_] + "\n";
            _loc3_++;
         }
         this.FWP._interf.cur_screen[this.FWP._interf.cur_screen[0]].link.status_text.text = _loc2_;
      }
      
      public function hide_ag_effect() : *
      {
         this.ag_animation.visible = false;
      }
      
      public function write_key_press(param1:Object) : *
      {
         var _loc2_:* = this.FWP.get_char_from_key(param1);
         if(param1.other == "weapon")
         {
            this.append_replay_text(this.timer,_loc2_,0,this.call_weapon);
            this.key_last = "";
            return;
         }
         if(param1.other == "click")
         {
            this.append_replay_text(this.timer,_loc2_,0,this.call_click);
            this.key_last = "";
            return;
         }
         if(this.key_last != "")
         {
            if(this.key_last == _loc2_)
            {
               ++this.key_duration;
            }
            else
            {
               this.append_replay_text(this.key_iter,this.key_last,this.key_duration,{});
               this.key_last = _loc2_;
               this.key_duration = 0;
               this.key_iter = this.timer;
            }
         }
         else if(_loc2_ != "")
         {
            this.key_last = _loc2_;
            this.key_duration = 0;
            this.key_iter = this.timer;
         }
      }
      
      public function append_replay_text(param1:Number, param2:String, param3:Number, param4:Object) : *
      {
         this.ROUNDS_RECORD += this.FWP.encode_replay_number(param1) + "&" + param2;
         if(param3 != 0)
         {
            this.ROUNDS_RECORD += "%";
            this.ROUNDS_RECORD += this.FWP.encode_replay_number(param3);
         }
         if(param2 == "S")
         {
            this.ROUNDS_RECORD += "%" + this.FWP.encode_replay_number(param4.id) + "%" + this.FWP.encode_replay_number(param4.range);
         }
         if(param2 == "T")
         {
            this.ROUNDS_RECORD += "%" + this.FWP.encode_replay_number(param4.x) + "%" + this.FWP.encode_replay_number(param4.y);
         }
         this.ROUNDS_RECORD += "$";
      }
      
      public function append_replay_param(param1:String, param2:*) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         if(param1 == "play_type")
         {
            if(param2 == "career")
            {
               this.PARAMS_RECORD += "DEc$";
            }
            if(param2 == "missions")
            {
               this.PARAMS_RECORD += "DEm$";
            }
            if(param2 == "survival")
            {
               this.PARAMS_RECORD += "DEs$";
            }
            if(param2 == "boss")
            {
               this.PARAMS_RECORD += "DEb$";
            }
         }
         if(param1 == "play_id")
         {
            this.PARAMS_RECORD += "I" + this.FWP.encode_replay_number(param2) + "$";
         }
         if(param1 == "random")
         {
            this.PARAMS_RECORD += "R" + this.FWP.encode_replay_number(param2) + "$";
         }
         if(param1 == "player")
         {
            this.PARAMS_RECORD += "P";
            this.PARAMS_RECORD += this.FWP.encode_replay_number(param2.worm1.attack) + "$";
            this.PARAMS_RECORD += this.FWP.encode_replay_number(param2.worm1.protect) + "$";
            this.PARAMS_RECORD += this.FWP.encode_replay_number(param2.worm1.health) + "$";
            this.PARAMS_RECORD += this.FWP.encode_replay_number(param2.worm1.spec) + "$";
            this.PARAMS_RECORD += this.FWP.encode_replay_number(param2.worms) + "$";
            this.PARAMS_RECORD += this.FWP.encode_replay_number(this.FWP.player.tired) + "$";
            this.PARAMS_RECORD += "S";
            for(_loc3_ in param2.worm1.perks)
            {
               _loc4_ = 0;
               for(_loc5_ in this.FWP.PERKS_DEF)
               {
                  if(_loc5_ == _loc3_)
                  {
                     _loc4_ = this.FWP.PERKS_DEF[_loc5_].id;
                  }
               }
               this.PARAMS_RECORD += this.FWP.encode_replay_number(_loc4_) + "%" + this.FWP.encode_replay_number(param2.worm1.perks[_loc3_]) + "$";
            }
            this.PARAMS_RECORD += "Z";
            this.PARAMS_RECORD += this.FWP.encode_replay_number(this.FWP.player.settings.skill) + "$";
            this.PARAMS_RECORD += "X";
            this.PARAMS_RECORD += this.FWP.encode_replay_number(this.FWP.player.cur_impl) + "$";
         }
      }
      
      public function read_key_press(param1:Number) : Object
      {
         var _loc2_:* = {
            "space":false,
            "other":"none",
            "weapon":0,
            "range":1,
            "click_x":0,
            "click_y":0
         };
         if(this.FWP.REPLAY_CUR_MOVE[param1])
         {
            _loc2_.space = this.FWP.REPLAY_CUR_MOVE[param1].key_code.space;
            _loc2_.other = this.FWP.REPLAY_CUR_MOVE[param1].key_code.other;
            _loc2_.weapon = this.FWP.REPLAY_CUR_MOVE[param1].params.weapon;
            _loc2_.range = this.FWP.REPLAY_CUR_MOVE[param1].params.range;
            _loc2_.click_x = this.FWP.REPLAY_CUR_MOVE[param1].params.click_x;
            _loc2_.click_y = this.FWP.REPLAY_CUR_MOVE[param1].params.click_y;
            if(this.FWP.REPLAY_CUR_MOVE[param1].repeats != 0)
            {
               --this.FWP.REPLAY_CUR_MOVE[param1].repeats;
               this.FWP.REPLAY_CUR_MOVE[param1 + 1] = this.FWP.clone(this.FWP.REPLAY_CUR_MOVE[param1]);
               this.FWP.REPLAY_CUR_MOVE[param1] = undefined;
            }
         }
         return _loc2_;
      }
      
      public function mod(param1:Number) : Number
      {
         return Math.abs(param1);
      }
      
      public function sign(param1:Number) : Number
      {
         return param1 >= 0 ? Number(1) : Number(-1);
      }
      
      public function game_get_color(param1:Number) : Number
      {
         switch(param1)
         {
            case 1:
               return 16744319;
            case 2:
               return 10330111;
            case 3:
               return 8454016;
            case 4:
               return 16777088;
            case 5:
               return 8454143;
            case 6:
               return 16744703;
            case 7:
               return 15724527;
            default:
               return 16777215;
         }
      }
      
      public function game_get_tfwidth(param1:Number) : Number
      {
         var _loc2_:* = 10 + param1 * 5;
         return _loc2_ % 2 == 0 ? Number(_loc2_ - 1) : Number(_loc2_);
      }
      
      public function optim_obj() : *
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc1_:* = this.OBJ;
         var _loc2_:* = _loc1_[0];
         while(true)
         {
            _loc3_ = 0;
            _loc4_ = 1;
            while(_loc4_ <= _loc1_[0])
            {
               if(_loc1_[_loc4_].free)
               {
                  _loc3_ = _loc4_;
                  break;
               }
               _loc4_++;
            }
            if(_loc3_ == 0)
            {
               break;
            }
            if(_loc3_ == _loc1_[0])
            {
               --_loc1_[0];
               break;
            }
            _loc4_ = _loc3_;
            while(_loc4_ < _loc1_[0])
            {
               _loc1_[_loc4_].fid = _loc1_[_loc4_ + 1].fid;
               _loc1_[_loc4_].model = _loc1_[_loc4_ + 1].model;
               _loc1_[_loc4_].free = _loc1_[_loc4_ + 1].free;
               _loc1_[_loc4_].ready = _loc1_[_loc4_ + 1].ready;
               if(this.FWP._obj[_loc1_[_loc4_ + 1].fid])
               {
                  this.FWP._obj[_loc1_[_loc4_ + 1].fid].pid = _loc4_;
               }
               _loc4_++;
            }
            --_loc1_[0];
         }
         _loc4_ = _loc1_[0] + 1;
         while(_loc4_ <= _loc2_)
         {
            _loc1_[_loc4_] = {};
            _loc4_++;
         }
      }
   }
}
