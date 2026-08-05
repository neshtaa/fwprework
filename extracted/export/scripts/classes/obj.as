package classes
{
   import com.deviant.*;
   import flash.display.MovieClip;
   
   public class obj extends MovieClip
   {
       
      
      public var sprite;
      
      public var FWP;
      
      public var model = "";
      
      public var ptype = "";
      
      public var face = "";
      
      public var pid = 0;
      
      public var wid = 0;
      
      public var wname = "FWP";
      
      public var wteam = 0;
      
      public var wcolor = 0;
      
      public var buttonid = "";
      
      public var spressed = false;
      
      public var ai = false;
      
      public var death = false;
      
      public var sick = 0;
      
      public var sick_next = 0;
      
      public var dmg_mult = 1;
      
      public var ap_shot = false;
      
      public var parent_wid = 0;
      
      public var seek_worm = 0;
      
      public var worm_impact = 0;
      
      public var weapon;
      
      public var weapon_id = 0;
      
      public var weapon_range = 1;
      
      public var weapon_name = "";
      
      public var weapon_flags;
      
      public var affected = false;
      
      public var affected_params;
      
      public var FLAGS;
      
      public var vars;
      
      public var states;
      
      public var perks;
      
      public var skills;
      
      public var FPCALC;
      
      public var jet_pack_sound = false;
      
      public var kamikaze_effect = 0;
      
      public var cur_shot_fail = false;
      
      public var NAPALM_FILTER;
      
      public function obj(param1:*, param2:String, param3:String, param4:String, param5:Object)
      {
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         this.weapon = {
            "set_w":0,
            "set_w_range":1,
            "shots_remain":0,
            "shots_total":0
         };
         this.weapon_flags = {};
         this.affected_params = {
            "damage":0,
            "vx":0,
            "vy":0,
            "vs":0,
            "flying3":false,
            "mode":"",
            "ap":false,
            "heal":false
         };
         this.FLAGS = {};
         this.vars = {
            "timeout":0,
            "vx":0,
            "vy":0,
            "vs":0,
            "health":0,
            "damage":false,
            "direction":1,
            "jumping":0,
            "sliding":false,
            "special_timeout":0,
            "exhaust_timeout":0,
            "keydelay":0,
            "crossdelay":0,
            "fuel":0,
            "tail":0,
            "last_tail":0,
            "last_tail_duration":0,
            "steps_left":0,
            "steps_right":0,
            "no_falling_damage":false,
            "paralyzed":false,
            "paratime":0,
            "crosshair":0,
            "last_crosshair":0,
            "teleport_dest":{
               "x":0,
               "y":0
            },
            "bullet_shots":0,
            "bullet_int":0,
            "firepunchreverse":0,
            "firepunchtimer":-0.5,
            "parachutesprite":0,
            "parachuteswing":0,
            "alert_delay":2800,
            "checktime":0,
            "checkfiretime":0,
            "crate_weapon":""
         };
         this.states = {
            "resting":true,
            "flying":0,
            "active":false,
            "control":false,
            "firecontrol":false,
            "escape":false,
            "special":"",
            "firing":0,
            "moving":false,
            "m_projectile":{
               "flying":1,
               "sliding":0
            },
            "activated":false
         };
         this.perks = {};
         this.skills = {
            "attack":0,
            "protect":0,
            "spec":0
         };
         this.FPCALC = new Array();
         this.NAPALM_FILTER = new HueColorMatrixFilter();
         super();
         this.FWP = param1;
         this.model = param2;
         this.ptype = param3;
         this.face = param4;
         x = param5.x;
         y = param5.y;
         this.NAPALM_FILTER.Hue = -50;
         var _loc6_:* = this.FWP.get_object_flags(param3);
         for(_loc7_ in _loc6_)
         {
            this.FLAGS[_loc7_] = _loc6_[_loc7_];
         }
         if(param5.bounce != undefined)
         {
            this.FLAGS.BOUNCE_Y = param5.bounce;
         }
         if(param5.timeout != undefined)
         {
            this.vars.timeout = param5.timeout;
         }
         if(param5.vx != undefined)
         {
            this.vars.vx = param5.vx;
         }
         if(param5.vy != undefined)
         {
            this.vars.vy = param5.vy;
         }
         if(param5.crate_weapon != undefined)
         {
            this.vars.crate_weapon = param5.crate_weapon;
         }
         if(param5.parent_wid != undefined)
         {
            this.parent_wid = param5.parent_wid;
         }
         if(param5.flat != undefined)
         {
            this.FLAGS.FLAT = true;
         }
         if(param5.dmg_mult != undefined)
         {
            this.dmg_mult = param5.dmg_mult;
            this.FLAGS.DAMAGE = Math.round(this.FLAGS.DAMAGE * this.dmg_mult);
         }
         if(param5.seek_worm != undefined)
         {
            this.seek_worm = param5.seek_worm;
         }
         if(param5.fail != undefined)
         {
            this.FLAGS.INITEXPLODE = param5.fail;
         }
         if(param5.ap != undefined)
         {
            this.ap_shot = param5.ap;
         }
         if(this.FLAGS.TIMEOUT != 0)
         {
            this.vars.timeout = this.FLAGS.TIMEOUT;
         }
         if(param4 == "")
         {
            _loc8_ = this.FWP.container_obj.get_object(param3);
         }
         else
         {
            _loc8_ = this.FWP.container_obj.get_object(param4);
         }
         this.sprite = this.addChild(_loc8_);
         if(param3 == "fire")
         {
            this.sprite.sprite.gotoAndPlay(this.FWP.true_random(1,40));
         }
         if(this.model != "W" && param5.already_ready != true)
         {
            this.states.resting = false;
            this.states.flying = 1;
         }
         if(param5.no_alert_delay == true)
         {
            this.vars.alert_delay = 0;
         }
         if(param5.damage_text != undefined)
         {
            this.sprite.txt.text = param5.damage_text.damage;
            this.sprite.txt.textColor = this.FWP._proc.game_get_color(param5.damage_text.color);
         }
         if(this.ptype == "luck")
         {
            this.sprite.scaleX = 0.7;
            this.sprite.scaleY = 0.7;
         }
         if(this.ptype == "explosion_pulse")
         {
            this.sprite.scaleX = 0.6;
            this.sprite.scaleY = 0.6;
         }
         if(this.ptype == "explosion_annihilator")
         {
            this.sprite.scaleX = 1.5;
            this.sprite.scaleY = 1.5;
         }
         if(this.ptype == "crate")
         {
            _loc9_ = this.FWP.WEAPONS_DEF[this.vars.crate_weapon].name;
            this.sprite.crate_weapon.text = _loc9_;
            this.sprite.crate_namebox.width = this.FWP._proc.game_get_tfwidth(_loc9_.length + 1);
            if(!this.FWP.player.perks["pe"] || this.FWP.player.perks["pe"] == 0)
            {
               this.sprite.crate_weapon.text = "";
               this.sprite.crate_namebox.visible = false;
            }
         }
         if(this.ptype == "napalm_fire")
         {
            this.sprite.filters = [this.NAPALM_FILTER.Filter];
         }
      }
      
      public function ongoing(param1:Object) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         if(this.ptype == "choose_worm")
         {
            return;
         }
         if(this.model == "V")
         {
            return;
         }
         if(this.model == "E")
         {
            this.dummy_ongoing();
            return;
         }
         if(this.model == "PS")
         {
            this.poison_ongoing();
            return;
         }
         if(this.model == "M" && this.vars.alert_delay > 0)
         {
            this.vars.alert_delay -= this.FWP.FPS;
         }
         if(this.model == "M" && this.states.activated)
         {
            if(this.vars.timeout <= this.FWP.FPS - 1)
            {
               this.explode();
               return true;
            }
            this.vars.timeout -= this.FWP.FPS;
         }
         if(this.model == "M" && this.vars.alert_delay <= 0 && !this.states.activated)
         {
            this.mine_check();
         }
         if(this.model == "C")
         {
            this.crate_check();
         }
         this.buttonid = param1.other;
         this.spressed = param1.space;
         if(this.model == "W")
         {
            ++this.vars.checkfiretime;
            this.worm_modify_bar_borders("check");
         }
         if(this.model == "W" && this.FWP._proc.fire_on_map && this.vars.checkfiretime % 5 == 0)
         {
            this.worm_check_fire();
         }
         if(this.death)
         {
            this.worm_death_loop();
         }
         if(this.affected)
         {
            _loc2_ = false;
            if(this.model == "W" && this.FWP._proc._play_type == "assault" && this.wteam == 2)
            {
               if(this.FWP._proc.teams[3].state == "ok")
               {
                  _loc2_ = true;
               }
            }
            this.clear_flags();
            if(this.model == "W")
            {
               if(!this.affected_params.heal && !_loc2_)
               {
                  this.worm_apply_damage(this.affected_params.damage,"standard",false,this.affected_params.mode,this.affected_params.ap);
               }
               else if(this.affected_params.heal)
               {
                  this.worm_apply_damage(this.affected_params.damage * -1,"regen",false,"",true);
               }
            }
            if(this.model == "G" || this.model == "Z")
            {
               this.affected_params.vx = 0;
            }
            if(this.model == "E" || this.model == "PS")
            {
               this.affected_params.vx = 0;
               this.affected_params.vy = 0;
            }
            if(this.model == "F")
            {
               this.states.flying = 1;
               this.affected_params.vx = 0;
               this.affected_params.vy = 0;
            }
            if(this.model == "D" || this.model == "C")
            {
               this.explode();
               if(this.model == "C")
               {
                  --this.FWP._proc.CRATES_ON_MAP;
               }
               return;
            }
            if(this.model == "W" && this.FWP._proc._play_type == "boss" && this.wteam != 1)
            {
               if(this.vars.health > 0)
               {
                  this.affected_params.vx = 0;
                  this.affected_params.vy = 0;
                  this.affected_params.vs = 0;
               }
               else
               {
                  this.FWP._proc.hide_ag_effect();
                  this.affected_params.vy = -1;
               }
            }
            if(this.model == "W" && this.FWP._proc._play_type == "assault" && this.wteam == 2)
            {
               if(this.vars.health > 0)
               {
                  this.affected_params.vx = 0;
                  this.affected_params.vy = 0;
                  this.affected_params.vs = 0;
               }
               else
               {
                  this.FWP._proc.hide_ag_effect();
                  this.affected_params.vy = -1;
               }
            }
            if(this.affected_params.vx != 0 || this.affected_params.vy != 0)
            {
               this.affected_params.vs = 0;
               _loc3_ = this.vars.vx;
               _loc4_ = this.vars.vy;
               this.vars.vx += this.affected_params.vx;
               this.vars.vy += this.affected_params.vy;
               if((_loc5_ = this.movement())[0])
               {
                  this.vars.vx = _loc3_;
                  this.vars.vy = _loc3_;
               }
               if(this.model == "W")
               {
                  this.states.flying = 2;
               }
            }
            else if(this.model == "W")
            {
               this.states.flying = 0;
               this.vars.sliding = true;
               this.vars.vs += this.affected_params.vs;
               this.worm_modify_sprite("");
            }
            this.affected = false;
            this.affected_params.damage = 0;
            this.affected_params.vx = 0;
            this.affected_params.vy = 0;
            this.affected_params.vs = 0;
            this.affected_params.flying3 = false;
            this.affected_params.mode = "";
            this.affected_params.ap = false;
            this.affected_params.heal = false;
         }
         if(!this.states.resting)
         {
            if(this.FLAGS.INITEXPLODE)
            {
               this.explode();
            }
            if(this.check_coords())
            {
               return;
            }
            if(this.states.special != "")
            {
               if(this.states.special == "LANDING")
               {
                  this.special_landing();
                  return;
               }
               if(this.states.special == "WP OUT")
               {
                  this.special_wp_out();
               }
               if(this.states.special == "WP IN")
               {
                  this.special_wp_in();
               }
               if(this.states.special == "CROSS TO LAST")
               {
                  this.special_cross_to_last();
               }
               if(this.states.special == "jet_pack")
               {
                  this.special_jet_pack();
                  return;
               }
               if(this.states.special == "teleport")
               {
                  this.special_teleport();
                  return;
               }
               if(this.states.special == "parachute")
               {
                  this.special_parachute();
                  return;
               }
               if(this.states.special == "bullets")
               {
                  this.special_bullets();
                  return;
               }
               if(this.states.special == "fireball")
               {
                  this.special_fireball();
                  return;
               }
               if(this.states.special == "prod")
               {
                  this.special_prod();
                  return;
               }
               if(this.states.special == "bat")
               {
                  this.special_bat();
                  return;
               }
               if(this.states.special == "axe")
               {
                  this.special_axe();
                  return;
               }
               if(this.states.special == "firepunch")
               {
                  this.special_firepunch();
                  return;
               }
               if(this.states.special == "blow_torch")
               {
                  this.special_blow_torch();
                  return;
               }
               if(this.states.special == "pneumatic_drill")
               {
                  this.special_pneumatic_drill();
                  return;
               }
            }
            if(this.check_resting())
            {
               return;
            }
            if(this.check_timer())
            {
               return;
            }
            if(this.FWP._proc.mousecontrol)
            {
               if(this.buttonid == "escape")
               {
                  this.FWP._proc.remove_mousecontrol();
                  this.worm_hide_weapon();
                  if(this.weapon_flags.MULTIPLESHOT && this.weapon.shots_total != this.weapon.shots_remain)
                  {
                     this.worm_take_move();
                  }
               }
               return;
            }
            if(this.FLAGS.MOVING)
            {
               this.moving_ongoing();
               return;
            }
            if(this.model == "W" && (this.states.moving || this.states.flying != 0 || this.vars.vs != 0 || this.states.firing))
            {
               this.worm_remove_wp_states();
            }
            if(this.states.flying != 0)
            {
               if(this.model == "W")
               {
                  this.worm_modify_flying();
               }
               if((_loc6_ = this.movement())[0])
               {
                  if(this.collision(_loc6_))
                  {
                     return;
                  }
               }
               else if(this.no_collision())
               {
                  return;
               }
            }
            else if(this.FLAGS.RESTINGEXPLODE)
            {
               this.explode();
            }
            if(this.vars.sliding && this.vars.vs != 0)
            {
               if(this.sliding())
               {
                  return;
               }
            }
            if(this.states.control)
            {
               if(this.control())
               {
                  return;
               }
            }
            if(this.states.firecontrol)
            {
               if(this.firecontrol())
               {
                  return;
               }
            }
            if(this.FLAGS.VROTATING)
            {
               this.sprite.rotation = Math.atan2(this.vars.vy,this.vars.vx) * 180 / Math.PI + 90;
            }
            if(this.FLAGS.SROTATING)
            {
               this.sprite.rotation += this.sign(this.vars.vx) * (this.mod(this.vars.vx) + this.mod(this.vars.vy / 5)) * this.FWP._proc.ROTATING_COEF;
            }
            if(this.FLAGS.DIRECTROTATING)
            {
               this.sprite.scaleX = this.sign(this.vars.vx);
            }
         }
      }
      
      public function dummy_ongoing() : *
      {
         --this.vars.timeout;
         if(this.vars.timeout <= 0)
         {
            this.FWP._proc.remove_object(this,this.pid,true);
         }
         if(this.vars.vy != 0)
         {
            y += this.vars.vy;
         }
         if(this.seek_worm != 0)
         {
            if(this.FWP._proc.worms[this.seek_worm].state == "ok")
            {
               x = this.FWP._obj[this.FWP._proc.worms[this.seek_worm].fid].x;
               y = this.FWP._obj[this.FWP._proc.worms[this.seek_worm].fid].y;
            }
         }
         if(this.vars.timeout <= 10 && this.ptype == "damage_clip")
         {
            this.sprite.alpha = this.vars.timeout / 10;
         }
      }
      
      public function poison_ongoing() : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc1_:* = 0;
         this.vars.timeout -= this.FWP.FPS;
         if(this.vars.timeout <= this.FWP.FPS - 1)
         {
            this.FWP._proc.remove_object(this,this.pid,true);
         }
         x += this.vars.vx;
         y += this.vars.vy;
         if(this.vars.timeout >= 1000)
         {
            this.sprite.scaleX = (10 + (2000 - this.vars.timeout) / 11) / 100;
            this.sprite.scaleY = (10 + (2000 - this.vars.timeout) / 11) / 100;
            _loc1_ = this.sprite.scaleX * 100;
         }
         else
         {
            this.sprite.alpha = this.vars.timeout / 10 / 100;
            _loc1_ = this.vars.timeout / 10;
         }
         if(this.vars.timeout % 100 == 0)
         {
            _loc2_ = 1;
            while(_loc2_ <= this.FWP._proc.worms[0])
            {
               if(this.FWP._proc.worms[_loc2_].state == "ok")
               {
                  _loc3_ = this.FWP._obj[this.FWP._proc.worms[_loc2_].fid];
                  if((_loc4_ = Math.sqrt(Math.pow(_loc3_.x - x,2) + Math.pow(_loc3_.y - y,2))) <= 1.1 * _loc1_)
                  {
                     if(_loc3_.perks["poison_res"] != 3)
                     {
                        _loc5_ = false;
                        if(_loc3_.model == "W" && this.FWP._proc._play_type == "assault" && _loc3_.wteam == 2)
                        {
                           if(this.FWP._proc.teams[3].state == "ok")
                           {
                              _loc5_ = true;
                           }
                        }
                        if(!(_loc3_.wteam == 1 && this.FWP.player.cur_impl == 7 || this.skills.protect >= 210 && this.ptype == "poison" || _loc5_))
                        {
                           if(_loc3_.sick_next == 0)
                           {
                              this.FWP._proc.add_status(_loc3_.wname + " получает дозу яда.");
                           }
                           if(this.ptype == "poison")
                           {
                              _loc6_ = 5;
                           }
                           if(this.ptype == "poison_rad")
                           {
                              _loc6_ = 15;
                           }
                           _loc3_.sick_next = _loc6_;
                        }
                     }
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function moving_ongoing() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(this.FLAGS.CONTROLEXPLODE)
         {
            if(this.vars.timeout <= this.FLAGS.FUSETIMEOUT && this.spressed)
            {
               this.explode();
               return;
            }
         }
         if(this.states.m_projectile.flying == 1)
         {
            _loc1_ = this.movement();
            if(_loc1_[0])
            {
               x += _loc1_[3];
               y += _loc1_[4];
               _loc2_ = this.moving_return_land();
               if(_loc2_ == 0)
               {
                  this.vars.vx *= -1;
                  this.vars.vy = 0.5;
               }
               else
               {
                  this.states.m_projectile.sliding = true;
                  this.states.m_projectile.flying = 0;
                  this.vars.vs = this.sign(this.vars.vx) * 2;
                  this.moving_return_land();
                  this.vars.vx = 0;
                  this.vars.vy = 0;
               }
            }
            else
            {
               x += this.vars.vx;
               y += this.vars.vy;
               this.vars.vy += this.FWP._proc.G;
            }
         }
         if(this.states.m_projectile.sliding)
         {
            if(this.vars.vs > 0)
            {
               _loc3_ = this.goto("right");
            }
            if(this.vars.vs < 0)
            {
               _loc3_ = this.goto("left");
            }
            if(_loc3_ == 3)
            {
               this.vars.vx = this.sign(this.vars.vs);
               this.vars.vs = 0;
               this.states.m_projectile.flying = 1;
               this.states.m_projectile.sliding = false;
               this.moving_return_land();
               return;
            }
            if(_loc3_ == 4)
            {
               this.vars.vs = -this.vars.vs;
               this.moving_return_land();
               return;
            }
            if(this.FLAGS.MOVINGJUMP)
            {
               if(this.vars.vs > 0)
               {
                  _loc3_ = this.goto("right");
               }
               if(this.vars.vs < 0)
               {
                  _loc3_ = this.goto("left");
               }
               if(_loc3_ == 3)
               {
                  this.vars.vx = this.sign(this.vars.vs);
                  this.vars.vs = 0;
                  this.states.m_projectile.flying = 1;
                  this.states.m_projectile.sliding = false;
                  this.moving_return_land();
               }
               else if(_loc3_ == 4)
               {
                  this.vars.vs = -this.vars.vs;
                  this.moving_return_land();
               }
               else if(this.FWP.pseudo_random(0,1000) < 10)
               {
                  this.vars.vx = this.sign(this.vars.vs) * 2;
                  this.vars.vy = this.FLAGS.JUMPHEIGHT;
                  if(this.movement()[0])
                  {
                     this.vars.vx = 0;
                     this.vars.vy = 0;
                  }
                  else
                  {
                     this.vars.vs = 0;
                     this.states.m_projectile.flying = 1;
                     this.states.m_projectile.sliding = false;
                     this.moving_return_land();
                  }
               }
            }
         }
      }
      
      public function out_ready() : *
      {
         this.FWP._proc.OBJ[this.pid].ready = true;
         this.FWP._proc.check_ready(this.pid);
      }
      
      public function clear_flags() : *
      {
         this.states.resting = false;
         if(this.FWP._proc.wait_for_ready == this.pid)
         {
            this.FWP._proc.wait_for_ready = 0;
         }
         if(this.model == "W")
         {
            this.states.special = "";
            this.states.active = false;
            this.states.moving = false;
            this.states.escape = false;
            this.states.control = false;
            this.states.firecontrol = false;
            this.states.firing = 0;
            this.states.m_projectile = {
               "flying":1,
               "sliding":0
            };
            this.vars.jumping = 0;
            this.vars.timeout = 0;
            this.vars.steps_left = 0;
            this.vars.steps_right = 0;
            this.vars.last_tail_duration = 0;
            this.weapon_id = 0;
            this.weapon.shots_remain = 0;
            this.weapon.shots_total = 0;
         }
         else
         {
            this.states.flying = 1;
         }
      }
      
      public function mine_check() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(this.states.resting && this.vars.checktime % 20 == 19 || !this.states.resting && this.vars.checktime % 4 == 3)
         {
            this.vars.checktime = 0;
            _loc1_ = 1;
            while(_loc1_ <= this.FWP._proc.worms[0])
            {
               if(this.FWP._proc.worms[_loc1_].state == "ok")
               {
                  _loc2_ = this.FWP._obj[this.FWP._proc.worms[_loc1_].fid];
                  _loc3_ = Math.sqrt(Math.pow(_loc2_.x - x,2) + Math.pow(_loc2_.y - y,2));
                  if(_loc3_ <= 48)
                  {
                     _loc4_ = true;
                     if(_loc2_.perks["light_step"])
                     {
                        if(_loc2_.perks["light_step"] == 1 && this.ptype == "mine")
                        {
                           _loc4_ = false;
                        }
                        if(_loc2_.perks["light_step"] == 2 && (this.ptype == "mine" || this.ptype == "fire_mine"))
                        {
                           _loc4_ = false;
                        }
                        if(_loc2_.perks["light_step"] == 3)
                        {
                           _loc4_ = false;
                        }
                     }
                     if(_loc4_)
                     {
                        this.states.activated = true;
                        this.sprite.gotoAndPlay(2);
                        this.FWP._proc.OBJ[this.pid].ready = false;
                        return;
                     }
                  }
               }
               _loc1_++;
            }
         }
         else
         {
            ++this.vars.checktime;
         }
      }
      
      public function crate_check() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(this.vars.checktime % 6 == 5)
         {
            this.vars.checktime = 0;
            _loc1_ = 1;
            while(_loc1_ <= this.FWP._proc.worms[0])
            {
               if(this.FWP._proc.worms[_loc1_].state == "ok")
               {
                  _loc2_ = this.FWP._obj[this.FWP._proc.worms[_loc1_].fid];
                  _loc3_ = Math.sqrt(Math.pow(_loc2_.x - x,2) + Math.pow(_loc2_.y - y,2));
                  if(_loc3_ <= 15)
                  {
                     if(!this.FWP._proc.teams[_loc2_.wteam].weapons[this.vars.crate_weapon])
                     {
                        this.FWP._proc.teams[_loc2_.wteam].weapons[this.vars.crate_weapon] = this.FWP.gfr(1);
                     }
                     else if(this.FWP._proc.teams[_loc2_.wteam].weapons[this.vars.crate_weapon][1] < this.FWP.WEAPONS_DEF[this.vars.crate_weapon].limit)
                     {
                        ++this.FWP._proc.teams[_loc2_.wteam].weapons[this.vars.crate_weapon][1];
                     }
                     this.FWP._proc.remove_object(this,this.pid,true);
                     --this.FWP._proc.CRATES_ON_MAP;
                     if(_loc2_.wteam == 1 || this.FWP._proc._play_type == "just")
                     {
                        this.FWP._proc.add_status("Найдено: " + this.FWP.WEAPONS_DEF[this.vars.crate_weapon].name);
                     }
                  }
               }
               _loc1_++;
            }
         }
         else
         {
            ++this.vars.checktime;
         }
      }
      
      public function movement() : Array
      {
         var _loc1_:Number = NaN;
         var _loc2_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Array = new Array(3);
         var _loc7_:Array = new Array(5);
         var _loc8_:* = false;
         var _loc9_:* = this.vars.vx;
         var _loc10_:* = this.vars.vy;
         if(this.mod(_loc9_) == this.mod(_loc10_))
         {
            _loc4_ = this.sign(_loc9_);
            _loc5_ = this.sign(_loc10_);
         }
         if(this.mod(_loc9_) / this.mod(_loc10_) > 1)
         {
            _loc4_ = this.sign(_loc9_);
            _loc5_ = _loc10_ / this.mod(_loc9_);
         }
         if(this.mod(_loc9_) / this.mod(_loc10_) < 1)
         {
            _loc4_ = _loc9_ / this.mod(_loc10_);
            _loc5_ = this.sign(_loc10_);
         }
         if(this.mod(_loc4_) == 1)
         {
            _loc3_ = Math.ceil(this.mod(_loc9_));
         }
         else
         {
            _loc3_ = Math.ceil(this.mod(_loc10_));
         }
         if(!this.FLAGS.FLAT)
         {
            _loc1_ = 1;
            while(_loc1_ <= _loc3_)
            {
               _loc6_ = this.FWP._world.check_hit(x + _loc4_ * _loc1_,y + _loc5_ * _loc1_,_loc9_ != 0 ? this.sign(_loc9_) : 0,this.sign(_loc10_),this.FLAGS.W,this.FLAGS.H);
               if(this.FLAGS.ULTRA)
               {
                  _loc6_[0] = false;
               }
               if(this.FLAGS.ADVANCEDCALC)
               {
                  _loc8_ = this.check_advanced(x + _loc4_ * _loc1_,y + _loc5_ * _loc1_);
                  this.worm_impact = _loc8_;
               }
               if(_loc8_ != 0)
               {
                  _loc6_[0] = true;
                  _loc6_[1] = x + _loc4_ * (_loc1_ + 1);
                  _loc6_[2] = y + _loc5_ * (_loc1_ + 1);
               }
               if(_loc6_[0])
               {
                  _loc7_[0] = _loc6_[0];
                  _loc7_[1] = _loc6_[1];
                  _loc7_[2] = _loc6_[2];
                  _loc7_[3] = _loc4_ * _loc1_;
                  _loc7_[4] = _loc5_ * _loc1_;
                  _loc7_[5] = 0;
                  return _loc7_;
               }
               _loc1_++;
            }
            _loc7_[0] = _loc6_[0];
         }
         else
         {
            _loc1_ = 1;
            while(_loc1_ <= _loc3_)
            {
               _loc2_ = this.FWP._world.is_land(x + _loc4_ * _loc1_,y + 1 + _loc5_ * _loc1_) || this.FWP._world.is_land(x + 1 + _loc4_ * _loc1_,y + _loc5_ * _loc1_);
               if(this.FLAGS.ULTRA)
               {
                  _loc2_ = false;
               }
               if(this.FLAGS.ADVANCEDCALC)
               {
                  _loc8_ = this.check_advanced(x + _loc4_ * _loc1_,y + _loc5_ * _loc1_);
                  this.worm_impact = _loc8_;
               }
               if(_loc2_ || _loc8_ != 0)
               {
                  _loc7_[0] = _loc2_ || _loc8_ != 0;
                  _loc7_[1] = x + _loc4_ * (_loc1_ + 1);
                  _loc7_[2] = y + _loc5_ * (_loc1_ + 1);
                  _loc7_[3] = _loc4_ * _loc1_;
                  _loc7_[4] = _loc5_ * _loc1_;
                  _loc7_[5] = 0;
                  return _loc7_;
               }
               _loc1_++;
            }
            _loc7_[0] = _loc2_ || _loc8_;
         }
         return _loc7_;
      }
      
      public function movement_return() : Object
      {
         var _loc1_:Number = NaN;
         var _loc2_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:* = {};
         var _loc8_:* = this.vars.vx;
         var _loc9_:* = this.vars.vy;
         if(this.mod(_loc8_) == this.mod(_loc9_))
         {
            _loc4_ = this.sign(_loc8_);
            _loc5_ = this.sign(_loc9_);
         }
         if(this.mod(_loc8_) / this.mod(_loc9_) > 1)
         {
            _loc4_ = this.sign(_loc8_);
            _loc5_ = _loc9_ / this.mod(_loc8_);
         }
         if(this.mod(_loc8_) / this.mod(_loc9_) < 1)
         {
            _loc4_ = _loc8_ / this.mod(_loc9_);
            _loc5_ = this.sign(_loc9_);
         }
         if(this.mod(_loc4_) == 1)
         {
            _loc3_ = Math.ceil(this.mod(_loc8_));
         }
         else
         {
            _loc3_ = Math.ceil(this.mod(_loc9_));
         }
         _loc1_ = 1;
         while(_loc1_ <= _loc3_)
         {
            if(_loc6_ = this.FWP._world.is_land(x + _loc4_ * _loc1_,y + 1 + _loc5_ * _loc1_) || this.FWP._world.is_land(x + 1 + _loc4_ * _loc1_,y + _loc5_ * _loc1_))
            {
               _loc7_.hit = _loc6_;
               _loc7_.hit_x = x + _loc4_ * (_loc1_ + 1);
               _loc7_.hit_y = y + _loc5_ * (_loc1_ + 1);
               _loc7_.part_x = _loc4_ * _loc1_;
               _loc7_.part_y = _loc5_ * _loc1_;
               _loc7_.direct_hit = this.FWP._world.map_bitmap.getPixel(_loc7_.hit_x,_loc7_.hit_y).toString(16);
               return _loc7_;
            }
            _loc1_++;
         }
         _loc7_.hit = _loc6_;
         return _loc7_;
      }
      
      public function moving_return_land() : Number
      {
         var _loc1_:* = undefined;
         var _loc2_:Number = NaN;
         var _loc3_:Array = new Array(3);
         if(this.vars.vx != 0 && this.vars.vs == 0)
         {
            this.vars.direction = this.vars.vx > 0 ? -1 : 1;
         }
         if(this.vars.vs != 0 && this.states.m_projectile.sliding)
         {
            this.vars.direction = this.vars.vs > 0 ? -1 : 1;
         }
         this.sprite.scaleX = this.vars.direction;
         _loc3_[0] = 100;
         _loc3_[1] = 100;
         _loc2_ = 0;
         while(_loc2_ <= this.FLAGS.W - 1)
         {
            _loc1_ = 0;
            while(_loc1_ <= 16)
            {
               if(this.FWP._world.is_land(Math.round(x) - this.FLAGS.W / 2 + _loc2_,Math.round(y) + _loc1_))
               {
                  if(_loc2_ <= 2)
                  {
                     if(_loc3_[0] > _loc1_)
                     {
                        _loc3_[0] = _loc1_;
                        break;
                     }
                  }
                  if(_loc2_ >= 3)
                  {
                     if(_loc3_[1] > _loc1_)
                     {
                        _loc3_[1] = _loc1_;
                        break;
                     }
                  }
               }
               _loc1_++;
            }
            _loc2_++;
         }
         if(_loc3_[0] == 100 && _loc3_[1] == 100)
         {
            return 0;
         }
         if(_loc3_[1] - _loc3_[0] > 3 && this.vars.direction == -1 || _loc3_[0] - _loc3_[1] > 3 && this.vars.direction == 1)
         {
            return 20;
         }
         if(_loc3_[1] - _loc3_[0] > 3 && this.vars.direction == 1 || _loc3_[0] - _loc3_[1] > 3 && this.vars.direction == -1)
         {
            return 10;
         }
         return 1;
      }
      
      public function check_advanced(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = this.FLAGS.ADV_W != -1 ? Number(this.FLAGS.ADV_W) : Number(this.FLAGS.W);
         var _loc4_:Number = this.FLAGS.ADV_H != -1 ? Number(this.FLAGS.ADV_H) : Number(this.FLAGS.H);
         var _loc5_:* = 1;
         while(_loc5_ <= this.FWP._proc.worms[0])
         {
            if(this.FWP._proc.worms[_loc5_].state == "ok" && this.parent_wid != _loc5_)
            {
               if(this.mod(this.FWP._obj[this.FWP._proc.worms[_loc5_].fid].x - param1) <= 6 + 2 + _loc3_)
               {
                  if(this.mod(this.FWP._obj[this.FWP._proc.worms[_loc5_].fid].y - param2) <= 16 + 2 + _loc4_)
                  {
                     return _loc5_;
                  }
               }
            }
            _loc5_++;
         }
         return 0;
      }
      
      public function check_resting() : Boolean
      {
         if(this.model == "W")
         {
            if(this.vars.vs == 0 && this.states.flying == 0 && this.states.special != "landing" && this.states.firing == 0)
            {
               if(!this.states.active)
               {
                  this.states.resting = true;
                  this.weapon_id = 0;
                  this.worm_modify_sprite("animate");
                  this.out_ready();
                  return true;
               }
               if(!this.vars.damage)
               {
                  this.states.control = true;
                  this.states.firecontrol = !this.states.escape;
                  return false;
               }
               this.states.resting = true;
               this.weapon_id = 0;
               this.worm_modify_sprite("animate");
               this.out_ready();
               return true;
            }
         }
         if(this.model == "G" || this.model == "C")
         {
            if(this.states.flying == 0)
            {
               this.states.resting = true;
               this.out_ready();
               return true;
            }
         }
         if(this.model == "M")
         {
            if(this.states.flying == 0 && !this.states.activated)
            {
               this.states.resting = true;
               this.out_ready();
               return true;
            }
         }
         return false;
      }
      
      public function check_timer() : Boolean
      {
         if(this.model == "W")
         {
            if(this.vars.timeout <= this.FWP.FPS - 1 && this.vars.timeout != -100)
            {
               this.states.active = false;
               this.vars.timeout = -100;
               if(this.states.moving)
               {
                  this.states.moving = false;
                  this.vars.steps_left = 0;
                  this.vars.steps_right = 0;
                  this.worm_modify_sprite("animate");
               }
               return true;
            }
            if(this.states.active && this.states.firing == 0)
            {
               this.vars.timeout -= this.FWP.FPS;
            }
         }
         if(this.model == "P")
         {
            if(this.vars.timeout <= this.FWP.FPS - 1)
            {
               if(this.FLAGS.TIMINGEXPLODE)
               {
                  this.explode();
                  return true;
               }
            }
            else
            {
               this.vars.timeout -= this.FWP.FPS;
            }
         }
         if(this.model == "F")
         {
            if(this.vars.timeout <= this.FWP.FPS - 1)
            {
               if(this.FLAGS.TIMINGEXPLODE)
               {
                  this.explode();
                  this.FWP._proc.remove_fire();
                  return true;
               }
            }
            else
            {
               this.vars.timeout -= this.FWP.FPS;
               if(this.vars.timeout == 9000)
               {
                  this.sprite.gotoAndStop(2);
                  this.sprite.sprite.gotoAndPlay(this.FWP.true_random(1,40));
               }
               if(this.vars.timeout == 6000)
               {
                  this.sprite.gotoAndStop(3);
                  this.sprite.sprite.gotoAndPlay(this.FWP.true_random(1,40));
               }
               if(this.vars.timeout == 3000)
               {
                  this.sprite.gotoAndStop(4);
                  this.sprite.sprite.gotoAndPlay(this.FWP.true_random(1,40));
               }
            }
         }
         return false;
      }
      
      public function check_coords() : Boolean
      {
         if(this.FLAGS.GRAVITY || this.FLAGS.WIND)
         {
            if(y > this.FWP._world.LIMIT_DOWN)
            {
               if(this.model == "W" && this.FWP._proc._play_type == "survival" && this.wteam != 1 && this.FWP._proc.SURV_KILLS != this.FWP.TEAMS_DEF["survival" + this.FWP._proc._play_id].kills)
               {
                  this.FWP._proc.survival_replace(this.wid);
                  return false;
               }
               if(y < 20000 && this.model == "W" && this.vars.health > 0 && this.FWP._proc.teams[this.wteam].weapons["emg_teleport"] && this.FWP._proc.teams[this.wteam].weapons["emg_teleport"][1] > 0)
               {
                  this.FWP._proc.survival_replace(this.wid,"teleport");
                  --this.FWP._proc.teams[this.wteam].weapons["emg_teleport"][1];
                  this.FWP._proc.add_status(this.wname + " использует: ");
                  this.FWP._proc.add_status("   " + this.FWP.WEAPONS_DEF["emg_teleport"].name);
                  return false;
               }
               this.FWP._proc.remove_object(this,this.pid,true);
               if(this.model == "C")
               {
                  --this.FWP._proc.CRATES_ON_MAP;
               }
               if(this.model == "W")
               {
                  if(y < 20000)
                  {
                     this.FWP._proc.add_status(this.wname + " кормит рыб.");
                  }
                  else
                  {
                     this.FWP._proc.add_status(this.wname + " испарен.");
                  }
                  if(this.FWP._proc.cur_worm == this.wid && this.ai)
                  {
                     this.FWP._proc.proc_action.act == "";
                  }
                  if(this.wteam == 1)
                  {
                     this.FWP._proc.ach_kill = true;
                  }
                  if(this.FWP._proc.cur_worm == this.wid)
                  {
                     this.FWP._sound.stop_sound("blow_torch");
                     this.FWP._sound.stop_sound("drill");
                  }
                  this.FWP._proc.worms[this.wid].state = "none";
                  this.FWP._proc.check_teams();
                  this.FWP._interf.render_game_menu();
               }
               return true;
            }
         }
         else if(y > this.FWP._world.LIMIT_DOWN || y < this.FWP._world.LIMIT_UP || x < this.FWP._world.LIMIT_LEFT || x > this.FWP._world.LIMIT_RIGHT)
         {
            this.FWP._proc.remove_object(this,this.pid,true);
            return true;
         }
         return false;
      }
      
      public function collision(param1:Array) : Boolean
      {
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         x += param1[3];
         y += param1[4];
         var _loc2_:* = this.FWP._world.reflect(param1[1],param1[2],this.sign(this.vars.vx),this.sign(this.vars.vy));
         if(this.model == "W")
         {
            if((_loc4_ = this.worm_modify_sprite("tail_return")) == 0)
            {
               if(_loc2_ == 0)
               {
                  this.vars.vx = -this.vars.vx;
                  this.vars.vy = this.mod(this.vars.vy);
               }
               else if(_loc2_ == 1)
               {
                  this.vars.vx = -this.vars.vx;
                  this.vars.vy = this.mod(this.vars.vy);
               }
               else
               {
                  this.vars.vy = this.mod(this.vars.vy);
               }
               this.vars.vx = this.mod(this.vars.vx) < this.FWP._proc.MINIMUM_SPEED ? 0 : this.vars.vx * this.FLAGS.BOUNCE_X / 2;
               this.vars.vy = this.mod(this.vars.vy) < this.FWP._proc.MINIMUM_SPEED ? 0 : this.vars.vy * this.FLAGS.BOUNCE_Y;
               if(!this.vars.no_falling_damage)
               {
                  _loc3_ = Math.ceil(this.states.flying == 1 ? Number(0) : Number((this.mod(this.vars.vx) + this.mod(this.vars.vy)) * this.FWP._proc.FALLING_COEF));
                  this.worm_apply_damage(_loc3_,"standard",true);
               }
               if(this.states.flying != 1 || this.vars.damage)
               {
                  this.vars.sliding = true;
                  this.worm_modify_sprite("");
               }
               return true;
            }
            if(this.states.flying == 1 && !this.vars.damage)
            {
               this.states.special = "LANDING";
               this.vars.special_timeout = 34;
               this.states.flying = 0;
               this.vars.vx = 0;
               this.vars.vy = 0;
               return true;
            }
            if(this.states.flying == 3 && (_loc4_ == 1 || this.vars.no_falling_damage) && this.mod(this.vars.vx) <= 0.35)
            {
               this.states.special = "LANDING";
               this.vars.special_timeout = 64;
               this.states.flying = 0;
               this.vars.vx = 0;
               this.vars.vy = 0;
               return true;
            }
            if(!this.vars.no_falling_damage)
            {
               _loc3_ = Math.ceil(this.states.flying == 1 ? Number(0) : Number((this.mod(this.vars.vx) + this.mod(this.vars.vy)) * this.FWP._proc.FALLING_COEF));
               this.worm_apply_damage(_loc3_,"standard",true);
            }
            this.states.flying = 0;
            this.vars.sliding = true;
            this.vars.vs = this.sign(this.vars.vx) * (this.vars.vx + this.vars.vy / 2);
            this.vars.vx = 0;
            this.vars.vy = 0;
            this.worm_modify_sprite("");
            this.states.control = false;
            this.states.firecontrol = false;
         }
         if(this.model == "F")
         {
            this.states.flying = 0;
            this.fire_add_mask();
         }
         if(this.FLAGS.REFLECT)
         {
            if(_loc2_ == 0)
            {
               this.vars.vx *= -1;
               this.vars.vy *= -1;
            }
            else if(_loc2_ == 1)
            {
               this.vars.vx *= -1;
            }
            else
            {
               this.vars.vy *= -1;
            }
            if(this.FLAGS.PUTTY)
            {
               this.vars.vx = 0;
               this.vars.vy = 0;
            }
            else if(!this.FLAGS.LESSSPEEDDECREASE)
            {
               this.vars.vx = this.mod(this.vars.vx) < this.FWP._proc.MINIMUM_SPEED ? 0 : this.vars.vx * this.FLAGS.BOUNCE_X;
               this.vars.vy = this.mod(this.vars.vy) < this.FWP._proc.MINIMUM_SPEED ? 0 : this.vars.vy * this.FLAGS.BOUNCE_Y;
            }
            else
            {
               this.vars.vx = this.mod(this.vars.vx) < this.FWP._proc.MINIMUM_SPEED ? 0 : this.vars.vx * 0.95;
               this.vars.vy = this.mod(this.vars.vy) < this.FWP._proc.MINIMUM_SPEED ? 0 : this.vars.vy * 0.9;
            }
            if(this.vars.vx == 0 && this.vars.vy == 0)
            {
               this.states.flying = 0;
            }
            if(this.ptype == "grenade" || this.ptype == "unfail_grenade" || this.ptype == "plasma_grenade" || this.ptype == "pulse_grenade" || this.ptype == "dl19" || this.ptype == "cluster_bomb" || this.ptype == "unfail_cluster_bomb" || this.ptype == "dynamite" || this.ptype == "unfail_dynamite")
            {
               this.FWP._sound.play_sound("grenade");
            }
            if(this.ptype == "banana_bomb" || this.ptype == "unfail_banana_bomb" || this.ptype == "super_banana_bomb" || this.ptype == "mega_banana_bomb")
            {
               this.FWP._sound.play_sound("banana");
            }
            if(this.ptype == "holy_hand_grenade" || this.ptype == "super_hhg")
            {
               this.FWP._sound.play_sound("holy_hand_grenade");
            }
            if(this.ptype == "mine" || this.ptype == "unfail_mine" || this.ptype == "fire_mine" || this.ptype == "plasma_mine" || this.ptype == "pulse_mine" || this.ptype == "mine_strike" || this.ptype == "nuclear_mine")
            {
               this.FWP._sound.play_sound("mine");
            }
         }
         if(this.FLAGS.INSTANTEXPLODE)
         {
            this.explode();
         }
         return false;
      }
      
      public function no_collision() : Boolean
      {
         if(this.FLAGS.WIND)
         {
            this.vars.vx += this.FWP._proc.W;
         }
         if(this.FLAGS.GRAVITY)
         {
            this.vars.vy += this.FWP._proc.G;
         }
         if(this.model == "F")
         {
            if(this.mod(this.vars.vx - this.FWP._proc.W * 10) <= 0.5 + 0.1)
            {
               this.vars.vx = this.FWP._proc.W * 10;
            }
            if(this.mod(this.vars.vy - this.FWP._proc.G * 6) <= 0.5 + 0.1)
            {
               this.vars.vy = this.FWP._proc.G * 6;
            }
            if(this.vars.vx > this.FWP._proc.W * 10)
            {
               this.vars.vx -= 0.5;
            }
            if(this.vars.vx < this.FWP._proc.W * 10)
            {
               this.vars.vx += 0.5;
            }
            if(this.vars.vy > this.FWP._proc.G * 6)
            {
               this.vars.vy -= 0.5;
            }
            if(this.vars.vy < this.FWP._proc.G * 6)
            {
               this.vars.vy += 0.5;
            }
         }
         this.vars.vx = this.mod(this.vars.vx) > this.FWP._proc.MAXIMUM_SPEED ? this.sign(this.vars.vx) * this.FWP._proc.MAXIMUM_SPEED : this.vars.vx;
         this.vars.vy = this.mod(this.vars.vy) > this.FWP._proc.MAXIMUM_SPEED ? this.sign(this.vars.vy) * this.FWP._proc.MAXIMUM_SPEED : this.vars.vy;
         x += this.vars.vx;
         y += this.vars.vy;
         if(this.model == "W")
         {
            this.worm_check_speed();
            if(this.vars.damage || this.states.flying > 1)
            {
               return true;
            }
         }
         if(this.FLAGS.EXHAUST)
         {
            ++this.vars.exhaust_timeout;
            if(this.vars.exhaust_timeout == this.FLAGS.EXHAUSTTIME)
            {
               this.vars.exhaust_timeout = 0;
               this.FWP._proc.make_object("E",this.FLAGS.EXHAUSTTYPE,"",{
                  "x":x,
                  "y":y,
                  "timeout":28
               });
               if(this.FLAGS.DOUBLEEXHAUST)
               {
                  this.FWP._proc.make_object("E",this.FLAGS.EXHAUSTTYPE,"",{
                     "x":x,
                     "y":y,
                     "timeout":28
                  });
               }
            }
         }
         return false;
      }
      
      public function sliding() : Boolean
      {
         var _loc1_:* = undefined;
         var _loc3_:* = undefined;
         this.sprite.wsprite.gotoAndStop(13);
         if(this.mod(this.vars.vs) < this.FWP._proc.MINIMUM_SPEED)
         {
            this.vars.sliding = false;
            this.vars.vs = 0;
            this.states.special = "LANDING";
            this.vars.special_timeout = 41;
            return true;
         }
         var _loc2_:* = 0;
         while(_loc2_ <= Math.min(Math.floor(this.mod(this.vars.vs)),8))
         {
            if(this.vars.vs > 0)
            {
               _loc1_ = this.goto("right");
            }
            if(this.vars.vs < 0)
            {
               _loc1_ = this.goto("left");
            }
            _loc3_ = 1;
            if(this.FWP.player.perks["heavy_guy"] && this.wteam == 1)
            {
               _loc3_ = this.FWP.get_perk_effect("heavy_guy",this.FWP.player.perks.heavy_guy,"");
            }
            if(this.FWP.player.spec == 2 && this.wteam == 1)
            {
               _loc3_ = this.FWP.get_perk_effect("heavy_guy",3,"");
            }
            if(_loc1_ == 0)
            {
               this.vars.vs *= 0.9 * _loc3_;
            }
            if(_loc1_ == 1)
            {
               this.vars.vs *= 0.7 * _loc3_;
            }
            if(_loc1_ == 2)
            {
               this.vars.vs *= 0.95 * _loc3_;
            }
            if(_loc1_ == 3)
            {
               this.vars.vx = this.vars.vs * 0.5;
               this.vars.vs = 0;
               this.states.flying = 1;
               break;
            }
            if(_loc1_ == 4)
            {
               this.vars.vs = -this.vars.vs * 0.8;
               this.worm_modify_sprite("");
               break;
            }
            _loc2_++;
         }
         return true;
      }
      
      public function control() : Boolean
      {
         var _loc2_:* = undefined;
         var _loc1_:* = 1;
         if(this.FWP.player.perks.sprotsman)
         {
            _loc1_ = this.FWP.get_perk_effect("sprotsman",this.FWP.player.perks.sprotsman,"");
         }
         if(this.FWP.player.spec == 1)
         {
            _loc1_ = this.FWP.get_perk_effect("sprotsman",3,"");
         }
         var _loc3_:Array = new Array();
         if(this.vars.paralyzed)
         {
            if(this.buttonid == "backspace" || this.buttonid == "enter")
            {
               this.buttonid = "none";
            }
            if(this.buttonid == "left")
            {
               this.vars.direction = 1;
               this.worm_modify_sprite("");
            }
            if(this.buttonid == "right")
            {
               this.vars.direction = -1;
               this.worm_modify_sprite("");
            }
         }
         if(this.buttonid == "enter")
         {
            this.states.control = false;
            this.vars.vx = 2 * this.vars.direction * -1 * _loc1_;
            this.vars.vy = -3 * _loc1_;
            _loc3_ = this.movement();
            if(_loc3_[0])
            {
               this.vars.vx = -this.vars.vx * 0.7;
            }
            _loc3_ = this.movement();
            if(_loc3_[0])
            {
               this.vars.vx = -this.vars.vx * 0.3;
            }
            _loc3_ = this.movement();
            if(_loc3_[0])
            {
               this.vars.vx = 0;
               this.vars.vy = 0;
            }
            if(this.vars.vy != 0)
            {
               this.states.flying = 1;
               return true;
            }
         }
         if(this.buttonid == "backspace")
         {
            this.states.control = false;
            this.vars.vx = 0.8 * this.vars.direction * _loc1_;
            this.vars.vy = -5 * _loc1_;
            _loc3_ = this.movement();
            if(_loc3_[0])
            {
               this.vars.vx = -this.vars.vx * 0.7;
            }
            _loc3_ = this.movement();
            if(_loc3_[0])
            {
               this.vars.vx = -this.vars.vx * 0.3;
            }
            _loc3_ = this.movement();
            if(_loc3_[0])
            {
               this.vars.vx = 0;
               this.vars.vy = 0;
            }
            if(this.vars.vy != 0)
            {
               this.FWP._sound.play_sound("backflip");
               this.states.flying = 1;
               this.vars.jumping = 114;
               return true;
            }
         }
         if(this.ai && (this.FWP._proc.ai_buttonid == "left" || this.FWP._proc.ai_buttonid == "right"))
         {
            this.buttonid = this.FWP._proc.ai_buttonid;
            this.FWP._proc.ai_buttonid = "";
         }
         if(this.buttonid == "left" && !this.vars.paralyzed)
         {
            this.states.moving = true;
            ++this.vars.keydelay;
            if(this.vars.keydelay >= this.FWP._proc.WKEYDELAY)
            {
               this.vars.keydelay = 0;
               this.vars.steps_left += 0.5;
               if(this.vars.steps_left == 8)
               {
                  this.vars.steps_left = 1;
               }
               this.vars.steps_right = 0;
               _loc2_ = this.goto("left");
               if(_loc2_ != 3 && _loc2_ != 4)
               {
                  this.worm_modify_sprite("tail");
                  if(this.vars.steps_left == 1.5)
                  {
                     this.FWP._sound.play_sound("walk1");
                  }
                  if(this.vars.steps_left == this.FWP.WORM_WALK_MOMENT)
                  {
                     this.FWP._sound.play_sound("walk2");
                  }
               }
               else if(_loc2_ == 3)
               {
                  this.states.flying = 1;
                  this.states.control = false;
                  this.states.moving = false;
                  return true;
               }
            }
            this.worm_modify_sprite("animate");
         }
         if(this.buttonid == "right" && !this.vars.paralyzed)
         {
            this.states.moving = true;
            ++this.vars.keydelay;
            if(this.vars.keydelay >= this.FWP._proc.WKEYDELAY)
            {
               this.vars.keydelay = 0;
               this.vars.steps_right += 0.5;
               if(this.vars.steps_right == 8)
               {
                  this.vars.steps_right = 1;
               }
               this.vars.steps_left = 0;
               _loc2_ = this.goto("right");
               if(_loc2_ != 3 && _loc2_ != 4)
               {
                  this.worm_modify_sprite("tail");
                  if(this.vars.steps_right == 1.5)
                  {
                     this.FWP._sound.play_sound("walk1");
                  }
                  if(this.vars.steps_right == this.FWP.WORM_WALK_MOMENT)
                  {
                     this.FWP._sound.play_sound("walk2");
                  }
               }
               else if(_loc2_ == 3)
               {
                  this.states.flying = 1;
                  this.states.control = false;
                  this.states.moving = false;
                  return true;
               }
            }
            this.worm_modify_sprite("animate");
         }
         if(this.buttonid == "left" || this.buttonid == "right" || this.buttonid == "enter" || this.buttonid == "backspace")
         {
            this.worm_remove_wp_states();
         }
         if(this.buttonid == "none" && this.states.moving && !this.states.escape)
         {
            this.states.moving = false;
            if(this.weapon_id != 0)
            {
               this.worm_show_weapon();
            }
         }
         if(this.buttonid != "left" && this.buttonid != "right" && (this.vars.steps_left != 0 || this.vars.steps_right != 0))
         {
            this.vars.steps_left = 0;
            this.vars.steps_right = 0;
            this.worm_modify_sprite("animate");
            if(this.weapon_id != 0)
            {
               this.worm_show_weapon();
            }
         }
         return false;
      }
      
      public function firecontrol() : Boolean
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         if(this.weapon_flags.PARTVECTOR)
         {
            _loc2_ = 15;
            _loc3_ = -15;
         }
         else if(this.weapon_flags.HALFVECTOR)
         {
            _loc2_ = 45;
            _loc3_ = -45;
         }
         else if(this.weapon_flags.ROPEVECTOR)
         {
            _loc2_ = 90;
            _loc3_ = 0;
         }
         else
         {
            _loc2_ = 90;
            _loc3_ = -90;
         }
         if(this.weapon_id == 0)
         {
            this.spressed = false;
         }
         if((!this.weapon_flags.ALLOWCROSSHAIR || this.states.flying != 0) && (this.buttonid == "up" || this.buttonid == "down"))
         {
            this.buttonid = "";
         }
         if(!this.weapon_flags.ALLOWSETTIME && (this.buttonid == "1" || this.buttonid == "2" || this.buttonid == "3" || this.buttonid == "4" || this.buttonid == "5"))
         {
            this.buttonid = "";
         }
         if(!this.weapon_flags.ALLOWSETBOUNCE && (this.buttonid == "-" || this.buttonid == "+"))
         {
            this.buttonid = "";
         }
         if(this.buttonid == "up" && this.vars.crosshair < _loc2_ && this.vars.crossdelay == 0)
         {
            if(this.weapon_flags.PARTVECTOR)
            {
               this.vars.crosshair += 15;
               this.vars.crossdelay = 10;
            }
            else
            {
               ++this.vars.crosshair;
            }
            this.worm_modify_cross(this.vars.crosshair);
            this.worm_remove_wp_states();
         }
         else if(this.buttonid == "down" && this.vars.crosshair > _loc3_ && this.vars.crossdelay == 0)
         {
            if(this.weapon_flags.PARTVECTOR)
            {
               this.vars.crosshair -= 15;
               this.vars.crossdelay = 10;
            }
            else
            {
               --this.vars.crosshair;
            }
            this.worm_modify_cross(this.vars.crosshair);
            this.worm_remove_wp_states();
         }
         if((this.buttonid == "1" || this.buttonid == "2" || this.buttonid == "3" || this.buttonid == "4" || this.buttonid == "5") && !this.spressed)
         {
            if(this.weapon_flags.w_seconds != Number(this.buttonid) * 1000)
            {
               this.FWP._proc.add_status("Установлен запал : " + Number(this.buttonid) + " сек.");
            }
            this.weapon_flags.w_seconds = Number(this.buttonid) * 1000;
         }
         if((this.buttonid == "-" || this.buttonid == "+") && !this.spressed)
         {
            _loc4_ = this.buttonid == "+" ? 0.4 : 0.2;
            if(this.weapon_flags.w_bounce != _loc4_)
            {
               this.FWP._proc.add_status("Установлен " + (_loc4_ == 0.4 ? "максимальный" : "минимальный") + " отскок.");
            }
            this.weapon_flags.w_bounce = _loc4_;
         }
         if(this.weapon.set_w != 0 && (this.weapon.shots_remain == this.weapon.shots_total || this.weapon_id == 0))
         {
            this.weapon_id = this.weapon.set_w;
            this.weapon_range = this.weapon.set_w_range;
            this.weapon_name = "";
            for(_loc5_ in this.FWP.WEAPONS_DEF)
            {
               if(this.FWP.WEAPONS_DEF[_loc5_].id == this.weapon_id)
               {
                  this.weapon_name = _loc5_;
               }
            }
            _loc6_ = this.FWP.get_weapon_flags(this.weapon_name,this.wteam);
            this.weapon_flags = {};
            for(_loc7_ in _loc6_)
            {
               this.weapon_flags[_loc7_] = _loc6_[_loc7_];
            }
            this.weapon.set_w = 0;
            this.weapon.set_w_range = 1;
            if(this.weapon_flags.HALFVECTOR)
            {
               if(this.mod(this.vars.crosshair) > 45)
               {
                  this.vars.crosshair = this.sign(this.vars.crosshair) * 45;
               }
            }
            if(this.weapon_flags.PARTVECTOR)
            {
               if(this.vars.crosshair > 15)
               {
                  this.vars.crosshair = 15;
               }
               else if(this.vars.crosshair > -11)
               {
                  this.vars.crosshair = 0;
               }
               else
               {
                  this.vars.crosshair = -15;
               }
            }
            this.worm_show_weapon();
            if(this.weapon_flags.MOUSECONTROL)
            {
               this.FWP._proc.set_mousecontrol();
            }
            return true;
         }
         if(this.vars.crossdelay != 0)
         {
            --this.vars.crossdelay;
         }
         if(this.weapon_flags.weapon_id != 0 && this.spressed && !this.states.moving || this.ai && this.FWP._proc.ai_spressed)
         {
            if(this.states.flying == 0)
            {
               if(this.weapon_flags.ALLOWCROSSHAIR)
               {
                  this.worm_modify_cross(this.vars.crosshair);
               }
               this.states.control = false;
               if(this.weapon_flags.FORCE)
               {
                  this.states.firing += this.FWP._proc.FORCESPEED;
                  if(this.mod(this.states.firing - this.FWP._proc.FORCESPEED * this.FWP.FIRING_START) <= this.FWP._proc.FORCESPEED - 0.2)
                  {
                     this.FWP._sound.play_sound("firing");
                  }
                  this.sprite.wsprite.crosshair.force.gotoAndStop(Math.round(this.states.firing));
                  if(this.states.firing >= 82)
                  {
                     this.worm_fire();
                  }
                  return true;
               }
               this.worm_fire();
               return true;
            }
            if(this.states.flying == 1 && this.weapon_flags.FROMJUMP)
            {
               this.states.control = false;
               this.worm_fire();
               return true;
            }
         }
         if(!this.spressed && this.states.firing != 0)
         {
            this.worm_fire();
            return true;
         }
         return false;
      }
      
      public function fire_add_mask() : *
      {
         var _loc2_:* = undefined;
         var _loc1_:* = -16;
         while(_loc1_ <= 0)
         {
            _loc2_ = -7;
            while(_loc2_ <= 7)
            {
               this.FWP._world.FireMap.setPixel32(Math.round(x) + _loc2_,Math.round(y) + _loc1_,4294901760);
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      public function explode() : *
      {
         var _loc1_:* = undefined;
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
         var _loc2_:* = this.x;
         var _loc3_:* = this.y + this.FLAGS.EXPLODEDISPLACE;
         if(!this.FLAGS.NOLANDSCAPEMODIFY)
         {
            this.FWP._world.explode(_loc2_,_loc3_,this.FLAGS.DIAMETER);
         }
         for(_loc5_ in this.FWP._obj)
         {
            if(!this.FWP._proc.OBJ[this.FWP._obj[_loc5_].pid].free && _loc5_ != this.FWP._proc.OBJ[this.pid].fid && (this.FLAGS.DAMAGE != 0 || this.FLAGS.WAVEEXPLODE))
            {
               _loc6_ = this.FWP._obj[_loc5_];
               if((_loc4_ = Math.sqrt(Math.pow(_loc6_.x - _loc2_,2) + Math.pow(_loc6_.y - _loc3_,2))) <= this.FLAGS.DIAMETER && !this.FLAGS.ANNIHILATOR)
               {
                  if(_loc4_ < 6.5 || this.worm_impact != 0 && this.worm_impact == this.FWP._obj[_loc5_].wid)
                  {
                     _loc1_ = this.FLAGS.DAMAGE;
                  }
                  else
                  {
                     _loc1_ = Math.ceil(this.FLAGS.DAMAGE * ((this.FLAGS.DIAMETER - _loc4_) / this.FLAGS.DIAMETER));
                  }
                  _loc9_ = _loc6_.x - _loc2_;
                  _loc10_ = _loc6_.y - _loc3_;
                  if(this.mod(_loc9_) == this.mod(_loc10_))
                  {
                     _loc9_ = this.sign(_loc9_);
                     _loc10_ = this.sign(_loc10_);
                  }
                  else if(this.mod(_loc9_) / this.mod(_loc10_) > 1)
                  {
                     _loc10_ /= this.mod(_loc9_);
                     _loc9_ = this.sign(_loc9_);
                  }
                  else if(this.mod(_loc9_) / this.mod(_loc10_) < 1)
                  {
                     _loc9_ /= this.mod(_loc10_);
                     _loc10_ = this.sign(_loc10_);
                  }
                  _loc11_ = 0;
                  _loc12_ = 0;
                  _loc13_ = 0;
                  if(this.ptype != "fireball")
                  {
                     if(_loc4_ < this.FLAGS.DIAMETER / 2 || _loc6_.states.flying != 0 || _loc6_.model != "W")
                     {
                        _loc11_ = this.FLAGS.IMPACTMULTIPLY * _loc9_ * (this.FLAGS.DIAMETER - _loc4_) / 15;
                        _loc12_ = this.FLAGS.IMPACTMULTIPLY * _loc10_ * (this.FLAGS.DIAMETER - _loc4_) / 15;
                     }
                     else
                     {
                        _loc13_ = _loc9_ * (this.FLAGS.DIAMETER - _loc4_) / 20;
                     }
                     _loc6_.affected = true;
                     _loc6_.affected_params.damage += _loc1_;
                     _loc6_.affected_params.vx += _loc11_;
                     _loc6_.affected_params.vy += _loc12_;
                     _loc6_.affected_params.vs += _loc13_;
                     _loc6_.affected_params.ap = this.ap_shot;
                  }
                  else if(this.worm_impact != 0 && this.worm_impact != this.parent_wid && this.worm_impact == this.FWP._obj[_loc5_].wid)
                  {
                     _loc11_ = this.FLAGS.IMPACTMULTIPLY * this.vars.vx / 8;
                     _loc12_ = this.FLAGS.IMPACTMULTIPLY * (this.vars.vy / 8 - 0.5);
                     _loc13_ = 0;
                     _loc6_.affected = true;
                     _loc6_.affected_params.damage += _loc1_;
                     _loc6_.affected_params.vx += _loc11_;
                     _loc6_.affected_params.vy += _loc12_;
                     _loc6_.affected_params.vs += _loc13_;
                  }
                  this.FWP._proc.OBJ[_loc6_.pid].ready = false;
               }
               if(_loc4_ <= this.FLAGS.DIAMETER / 2 && this.FLAGS.ANNIHILATOR)
               {
                  _loc8_ = false;
                  if(_loc6_.model == "W" && this.FWP._proc._play_type == "assault" && _loc6_.wteam == 2)
                  {
                     if(this.FWP._proc.teams[3].state == "ok")
                     {
                        _loc8_ = true;
                     }
                  }
                  if(_loc6_.model == "W" && this.FWP._proc._play_type == "boss" && _loc6_.wteam == 2)
                  {
                     _loc8_ = true;
                  }
                  if(!_loc8_)
                  {
                     _loc6_.y = 25000;
                     _loc6_.affected = true;
                     _loc6_.affected_params.vy = 1;
                     if(_loc6_.wteam != 1)
                     {
                        ++this.FWP._proc.ach_annihilated;
                     }
                  }
                  else
                  {
                     _loc6_.affected = true;
                     _loc6_.affected_params.damage += this.FLAGS.DAMAGE;
                  }
               }
               if(this.FLAGS.DAMAGEWAVE && this.FLAGS.MULTIPLEXPLOSIONS <= 1 && _loc6_.model == "W")
               {
                  _loc6_.affected = true;
                  _loc6_.affected_params.damage += this.FLAGS.DAMAGEWAVEDMG;
               }
               if(this.FLAGS.KENTONWAVE && this.FLAGS.MULTIPLEXPLOSIONS <= 1 && _loc6_.model == "W")
               {
                  _loc14_ = this.FWP._obj[this.FWP._proc.worms[this.parent_wid].fid].wcolor;
                  if(this.FWP._obj[_loc5_].wcolor != _loc14_)
                  {
                     _loc6_.affected = true;
                     _loc6_.affected_params.damage += this.FLAGS.DAMAGEWAVEDMG;
                     _loc8_ = false;
                     if(_loc6_.model == "W" && this.FWP._proc._play_type == "assault" && _loc6_.wteam == 2)
                     {
                        if(this.FWP._proc.teams[3].state == "ok")
                        {
                           _loc8_ = true;
                        }
                     }
                     if(_loc6_.perks["para_res"] != 3 && _loc6_.skills.protect < 270 && !_loc8_)
                     {
                        if(this.FWP._proc.cur_team == 1 && _loc6_.wteam != 1)
                        {
                           ++this.FWP._proc.ach_paralyzed;
                        }
                        if(!(_loc6_.wteam == 1 && this.FWP.player.cur_impl == 7))
                        {
                           _loc6_.vars.paralyzed = true;
                           _loc6_.vars.paratime = this.FLAGS.PARATIME + 1;
                           this.FWP._proc.add_status(_loc6_.wname + " не может двигаться.");
                        }
                     }
                     if(_loc6_.perks["poison_res"] != 3)
                     {
                        if(!(_loc6_.wteam == 1 && this.FWP.player.cur_impl == 7 || this.skills.protect >= 210 || _loc8_))
                        {
                           if(_loc6_.sick_next == 0)
                           {
                              this.FWP._proc.add_status(_loc6_.wname + " получает дозу яда.");
                           }
                           _loc15_ = 5;
                           _loc6_.sick_next = _loc15_;
                        }
                     }
                  }
                  else
                  {
                     _loc6_.affected = true;
                     _loc6_.affected_params.damage = this.FLAGS.DAMAGEWAVEDMG;
                     _loc6_.affected_params.heal = true;
                  }
               }
            }
         }
         if(!this.FLAGS.NOEXPLODEANIMATION)
         {
            _loc16_ = 0.1;
            if(this.FLAGS.DIAMETER <= 50)
            {
               this.FWP._proc.make_object("E","explosion50","",{
                  "x":_loc2_,
                  "y":_loc3_,
                  "timeout":21
               });
               _loc16_ = 0.1;
            }
            else if(this.FLAGS.DIAMETER <= 100)
            {
               this.FWP._proc.make_object("E","explosion100","",{
                  "x":_loc2_,
                  "y":_loc3_,
                  "timeout":21
               });
               _loc16_ = 0.7;
            }
            else if(this.FLAGS.DIAMETER <= 150)
            {
               this.FWP._proc.make_object("E","explosion150","",{
                  "x":_loc2_,
                  "y":_loc3_,
                  "timeout":12
               });
               _loc16_ = 0.9;
            }
            else if(this.FLAGS.DIAMETER <= 200)
            {
               this.FWP._proc.make_object("E","explosion200","",{
                  "x":_loc2_,
                  "y":_loc3_,
                  "timeout":12
               });
               _loc16_ = 1;
            }
            this.FWP._sound.play_sound("explosion",_loc16_);
            if(this.FLAGS.DIAMETER <= 200)
            {
               this.FWP._sound.play_sound("explosion",_loc16_);
            }
         }
         if(this.FLAGS.WAVEEXPLODE && this.FLAGS.MULTIPLEXPLOSIONS <= 1)
         {
            this.FWP._proc.make_object("E","explosion_wave","",{
               "x":_loc2_,
               "y":_loc3_,
               "timeout":14
            });
         }
         if(this.FLAGS.DAMAGEWAVE && this.FLAGS.MULTIPLEXPLOSIONS <= 1)
         {
            this.FWP._proc.make_object("E","damage_wave","",{
               "x":_loc2_,
               "y":_loc3_,
               "timeout":14
            });
         }
         if(this.FLAGS.KENTONWAVE && this.FLAGS.MULTIPLEXPLOSIONS <= 1)
         {
            this.FWP._proc.make_object("E","kenton_wave","",{
               "x":_loc2_,
               "y":_loc3_,
               "timeout":14
            });
         }
         if(this.FLAGS.ANNIHILATOR && this.FLAGS.MULTIPLEXPLOSIONS <= 1)
         {
            this.FWP._proc.make_object("E","explosion_annihilator","",{
               "x":_loc2_,
               "y":_loc3_,
               "timeout":52
            });
         }
         if(this.FLAGS.BREAKING && this.FLAGS.MULTIPLEXPLOSIONS <= 1)
         {
            _loc17_ = 1;
            while(_loc17_ <= this.FLAGS.BREAKINGAMOUNT)
            {
               if(this.FLAGS.BREAKINGTYPE == "bomblet" || this.FLAGS.BREAKINGTYPE == "rj_bomblet")
               {
                  if(this.ptype == "mortar" || this.ptype == "upg_mortar" || this.ptype == "rj46")
                  {
                     this.FWP._proc.make_object("P",this.FLAGS.BREAKINGTYPE,"",{
                        "x":_loc2_,
                        "y":_loc3_,
                        "vx":-this.vars.vx * 0.05 + this.FWP.pseudo_random(-8,8) / 10,
                        "vy":-this.vars.vy * 0.05 + this.FWP.pseudo_random(-5,5) / 10,
                        "dmg_mult":this.dmg_mult
                     });
                  }
                  if(this.ptype == "cluster_bomb" || this.ptype == "unfail_cluster_bomb" || this.ptype == "dl19")
                  {
                     this.FWP._proc.make_object("P",this.FLAGS.BREAKINGTYPE,"",{
                        "x":_loc2_,
                        "y":_loc3_,
                        "vx":this.FWP.pseudo_random(-5,5) / 3,
                        "vy":this.FWP.pseudo_random(-7,-3) / 3,
                        "dmg_mult":this.dmg_mult
                     });
                  }
               }
               else if(this.FLAGS.BREAKINGTYPE == "banana" || this.FLAGS.BREAKINGTYPE == "dynamite_bomblet")
               {
                  this.FWP._proc.make_object("P",this.FLAGS.BREAKINGTYPE,"",{
                     "x":_loc2_,
                     "y":_loc3_,
                     "vx":this.FWP.pseudo_random(-5,5) / 1.5,
                     "vy":this.FWP.pseudo_random(-7,-3) / 1.5,
                     "dmg_mult":this.dmg_mult
                  });
               }
               else if(this.FLAGS.BREAKINGTYPE == "mine" || this.FLAGS.BREAKINGTYPE == "plasma_mine")
               {
                  this.FWP._proc.make_object("M",this.FLAGS.BREAKINGTYPE,"",{
                     "x":_loc2_,
                     "y":_loc3_,
                     "vx":this.FWP.pseudo_random(-5,5) / 1.5,
                     "vy":this.FWP.pseudo_random(-7,-3) / 1.5,
                     "dmg_mult":this.dmg_mult,
                     "no_alert_delay":true
                  });
               }
               else if(this.FLAGS.BREAKINGTYPE == "putty_bomblet")
               {
                  this.FWP._proc.make_object("P",this.FLAGS.BREAKINGTYPE,"",{
                     "x":_loc2_,
                     "y":_loc3_,
                     "vx":this.FWP.pseudo_random(-5,5) * 1.2,
                     "vy":this.FWP.pseudo_random(-7,-3) * 1.2,
                     "dmg_mult":this.dmg_mult
                  });
               }
               else if(this.FLAGS.BREAKINGTYPE == "breaking_banana" || this.FLAGS.BREAKINGTYPE == "mini_banana")
               {
                  this.FWP._proc.make_object("P",this.FLAGS.BREAKINGTYPE,"",{
                     "x":_loc2_,
                     "y":_loc3_,
                     "vx":this.FWP.pseudo_random(-5,5) * 1.5,
                     "vy":this.FWP.pseudo_random(-7,-3) * 1.5,
                     "dmg_mult":this.dmg_mult
                  });
               }
               _loc17_++;
            }
         }
         if(this.FLAGS.POISONONEXPLODE && this.FLAGS.MULTIPLEXPLOSIONS <= 1)
         {
            _loc7_ = 1;
            while(_loc7_ <= this.FLAGS.POISONAMOUNT)
            {
               this.FWP._proc.make_object("PS","poison","",{
                  "x":_loc2_,
                  "y":_loc3_,
                  "vx":this.FWP._proc.W * this.FWP.pseudo_random(7,13) + this.FWP.pseudo_random(-100,100) / 100,
                  "vy":this.FWP._proc.G * this.FWP.pseudo_random(-4,-8),
                  "timeout":2000
               });
               _loc7_++;
            }
         }
         if(this.FLAGS.POISONONEXPLODERAD && this.FLAGS.MULTIPLEXPLOSIONS <= 1)
         {
            _loc7_ = 1;
            while(_loc7_ <= this.FLAGS.POISONAMOUNT)
            {
               this.FWP._proc.make_object("PS","poison_rad","",{
                  "x":_loc2_,
                  "y":_loc3_,
                  "vx":this.FWP._proc.W * this.FWP.pseudo_random(7,13) + this.FWP.pseudo_random(-100,100) / 100,
                  "vy":this.FWP._proc.G * this.FWP.pseudo_random(-4,-8),
                  "timeout":2000
               });
               _loc7_++;
            }
         }
         if((this.FLAGS.FIREONEXPLODE || this.FLAGS.NAPALMONEXPLODE) && this.FLAGS.MULTIPLEXPLOSIONS <= 1)
         {
            this.FWP._proc.fire_on_map = true;
            _loc18_ = "fire";
            if(this.FLAGS.NAPALMONEXPLODE)
            {
               _loc18_ = "napalm_fire";
               this.FWP._proc.napalm_used = true;
            }
            _loc19_ = 1;
            while(_loc19_ <= this.FLAGS.FIREAMOUNT)
            {
               this.FWP._proc.make_object("F",_loc18_,"",{
                  "x":_loc2_,
                  "y":_loc3_,
                  "vx":this.FWP.pseudo_random(-7,7) * 0.8,
                  "vy":this.FWP.pseudo_random(-7,7) * 0.85,
                  "timeout":12000
               });
               _loc19_++;
            }
         }
         if(this.FLAGS.PARALYZING && this.FLAGS.MULTIPLEXPLOSIONS <= 1)
         {
            this.FWP._proc.make_object("E","explosion_pulse","",{
               "x":_loc2_,
               "y":_loc3_,
               "timeout":30
            });
            _loc20_ = 1;
            while(_loc20_ <= this.FWP._proc.worms[0])
            {
               if(this.FWP._proc.worms[_loc20_].state == "ok")
               {
                  _loc6_ = this.FWP._obj[this.FWP._proc.worms[_loc20_].fid];
                  if((_loc4_ = Math.sqrt(Math.pow(_loc6_.x - _loc2_,2) + Math.pow(_loc6_.y - _loc3_,2))) <= 1.1 * this.FLAGS.DIAMETER && _loc6_.perks["para_res"] != 3 && _loc6_.skills.protect < 270)
                  {
                     if(this.FWP._proc.cur_team == 1 && _loc6_.wteam != 1)
                     {
                        ++this.FWP._proc.ach_paralyzed;
                     }
                     if(!(_loc6_.wteam == 1 && this.FWP.player.cur_impl == 7))
                     {
                        _loc6_.vars.paralyzed = true;
                        _loc6_.vars.paratime = this.FLAGS.PARATIME + 1;
                        this.FWP._proc.add_status(_loc6_.wname + " не может двигаться.");
                     }
                  }
               }
               _loc20_++;
            }
         }
         if(this.FLAGS.MULTIPLEXPLOSIONS > 0)
         {
            --this.FLAGS.MULTIPLEXPLOSIONS;
         }
         if(this.FLAGS.MULTIPLEXPLOSIONS == 0)
         {
            this.FWP._proc.remove_object(this,this.pid,true);
         }
      }
      
      public function explode_return() : *
      {
         var _loc1_:* = undefined;
         var _loc4_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc2_:* = this.x;
         var _loc3_:* = this.y + this.FLAGS.EXPLODEDISPLACE;
         var _loc5_:* = {
            "damage":0,
            "affect_me":false,
            "only_me":false
         };
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         for(_loc8_ in this.FWP._obj)
         {
            if(!this.FWP._proc.OBJ[this.FWP._obj[_loc8_].pid].free && _loc8_ != this.FWP._proc.OBJ[this.pid].fid && this.FLAGS.DAMAGE != 0 && this.FWP._obj[_loc8_].model == "W")
            {
               if(this.FWP._proc.worms[this.FWP._obj[_loc8_].wid].state == "ok")
               {
                  _loc9_ = this.FWP._obj[_loc8_];
                  if((_loc4_ = Math.sqrt(Math.pow(_loc9_.x - _loc2_,2) + Math.pow(_loc9_.y - _loc3_,2))) <= this.FLAGS.DIAMETER)
                  {
                     if(_loc4_ > 6.5)
                     {
                        _loc1_ = Math.ceil(0.5 * (this.FLAGS.DIAMETER - _loc4_) * this.FLAGS.DAMAGE / this.FLAGS.DIAMETER * 2.32);
                     }
                     else
                     {
                        _loc1_ = this.FLAGS.DAMAGE;
                     }
                     _loc10_ = this.FWP._proc.teams[this.FWP._obj[_loc8_].wteam].color != this.FWP._proc.teams[this.FWP._proc.cur_team].color;
                     if(_loc1_ > 0)
                     {
                        if(_loc10_)
                        {
                           _loc6_++;
                        }
                        else
                        {
                           _loc7_++;
                        }
                        _loc1_ = Math.min(_loc1_,this.FWP._obj[_loc8_].vars.health);
                        if(!_loc10_)
                        {
                           _loc1_ *= -1;
                        }
                        _loc5_.damage += _loc1_;
                     }
                  }
               }
            }
         }
         if(_loc7_ != 0)
         {
            _loc5_.affect_me = true;
         }
         if(_loc7_ != 0 && _loc6_ == 0)
         {
            _loc5_.only_me = true;
         }
         return _loc5_;
      }
      
      public function special_landing() : void
      {
         this.vars.sliding = false;
         if(this.vars.special_timeout < 39)
         {
            this.sprite.wsprite.gotoAndStop(17);
         }
         else if(this.vars.special_timeout < 62)
         {
            this.sprite.wsprite.gotoAndStop(18);
         }
         else if(this.vars.special_timeout < 112)
         {
            this.sprite.wsprite.gotoAndStop(19);
         }
         this.vars.special_timeout += 0.5;
         if(this.vars.special_timeout == 39 || this.vars.special_timeout == 62)
         {
            this.states.special = "";
            this.vars.special_timeout = 0;
            this.vars.last_tail = 0;
            this.worm_modify_sprite("tail");
            this.sprite.wsprite.gotoAndStop((this.vars.tail == 10 ? 2 : (this.vars.tail == 20 ? 3 : 1)) + (this.vars.health < 30 || this.wteam == 1 && this.FWP.player.tired >= 100 ? 3 : 0));
            if(this.weapon_id != 0)
            {
               this.worm_show_weapon();
            }
            this.vars.jumping = 0;
         }
         if(this.vars.special_timeout == 112)
         {
            this.states.special = "";
            this.vars.special_timeout = 0;
            this.vars.last_tail = 0;
            this.vars.jumping = 0;
         }
      }
      
      public function special_wp_out() : *
      {
         if(this.vars.special_timeout <= 6)
         {
            this.sprite.wsprite.gotoAndStop(this.weapon_flags.FRAME);
            this.sprite.wsprite.weapon.gotoAndStop(Math.floor(-this.vars.special_timeout + 7) + (this.vars.tail == 10 ? 9 : (this.vars.tail == 20 ? 17 : 1)));
            if(this.weapon_flags.FRAME == 24)
            {
               this.sprite.wsprite.weapon.gun.gotoAndStop(this.weapon_id);
               this.sprite.wsprite.crosshair.force.gotoAndStop(1);
               this.sprite.wsprite.crosshair.visible = this.weapon_flags.ALLOWCROSSHAIR;
               this.sprite.wsprite.crosshair.rotation = this.vars.crosshair;
               this.sprite.wsprite.crosshair.cross_color.gotoAndStop(this.wcolor);
               this.worm_show_laser_sight();
            }
            if(this.weapon_flags.FRAME == 25)
            {
               this.sprite.wsprite.weapon.thinking_weapon.gotoAndStop(this.weapon_id);
               this.sprite.wsprite.weapon.thinking_weapon.scaleX = this.vars.direction;
            }
            if(this.weapon_flags.FRAME == 27)
            {
               this.sprite.wsprite.weapon.gun.gotoAndStop(this.weapon_id);
            }
         }
         this.vars.special_timeout -= 0.5;
         if(this.vars.special_timeout == 0)
         {
            this.states.special = "";
            if(this.weapon_flags.ALLOWCROSSHAIR && this.vars.crosshair != 0)
            {
               this.states.special = "CROSS TO LAST";
               this.vars.special_timeout = 0;
            }
            if(this.weapon_flags.IDLEANIMATE)
            {
               this.sprite.wsprite.weapon.gotoAndStop(25);
            }
         }
      }
      
      public function special_wp_in() : *
      {
         this.sprite.wsprite.gotoAndStop(this.weapon_flags.FRAME);
         this.sprite.wsprite.weapon.gotoAndStop(Math.floor(this.vars.special_timeout) + (this.vars.tail == 10 ? 9 : (this.vars.tail == 20 ? 17 : 1)) + (!!this.weapon_flags.THROWING ? 123 : 0));
         if(this.weapon_flags.FRAME == 24)
         {
            if(!this.weapon_flags.THROWING)
            {
               this.sprite.wsprite.weapon.gun.gotoAndStop(this.weapon_id);
            }
            this.sprite.wsprite.crosshair.visible = false;
            this.sprite.wsprite.crosshair.force.gotoAndStop(1);
         }
         if(this.weapon_flags.FRAME == 25)
         {
            this.sprite.wsprite.weapon.thinking_weapon.gotoAndStop(this.weapon_id);
            this.sprite.wsprite.weapon.thinking_weapon.scaleX = this.vars.direction;
         }
         if(this.weapon_flags.FRAME == 27)
         {
         }
         this.vars.special_timeout -= 0.5;
         if(this.vars.special_timeout == 0)
         {
            this.worm_modify_sprite("animate");
            this.weapon_id = 0;
            this.states.special = "";
         }
      }
      
      public function special_cross_to_last() : *
      {
         if(this.vars.special_timeout < this.vars.crosshair)
         {
            this.vars.special_timeout += 10;
            this.worm_modify_cross(this.vars.special_timeout);
            if(this.vars.special_timeout >= this.vars.crosshair)
            {
               this.states.special = "";
               this.worm_modify_cross(this.vars.crosshair);
            }
         }
         if(this.vars.special_timeout > this.vars.crosshair)
         {
            this.vars.special_timeout -= 10;
            this.worm_modify_cross(this.vars.special_timeout);
            if(this.vars.special_timeout <= this.vars.crosshair)
            {
               this.states.special = "";
               this.worm_modify_cross(this.vars.crosshair);
            }
         }
         if(this.vars.special_timeout == this.vars.crosshair)
         {
            this.states.special = "";
            this.worm_modify_cross(this.vars.crosshair);
         }
      }
      
      public function special_jet_pack() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         this.sprite.wsprite.gotoAndStop(26);
         if(this.vars.special_timeout < 0)
         {
            this.vars.special_timeout += 0.5;
            this.sprite.wsprite.jet_pack.gotoAndStop(Math.ceil(-this.vars.special_timeout - 1) + (this.vars.tail == 10 ? 11 : (this.vars.tail == 20 ? 21 : 1)));
            if(this.vars.special_timeout == -1)
            {
               this.states.special = "";
               this.weapon_id = 0;
               if(this.jet_pack_sound)
               {
                  this.FWP._sound.stop_sound("jet_pack");
                  this.jet_pack_sound = false;
               }
            }
            return;
         }
         if(this.vars.special_timeout < 9 && this.vars.special_timeout >= 0)
         {
            this.vars.special_timeout += 0.5;
            this.sprite.wsprite.jet_pack.gotoAndStop(Math.floor(this.vars.special_timeout - 0.5) + (this.vars.tail == 10 ? 11 : (this.vars.tail == 20 ? 21 : 1)));
            return;
         }
         if(this.vars.special_timeout >= 9)
         {
            if(this.vars.special_timeout < 25)
            {
               this.vars.special_timeout += 0.5;
            }
            if(this.vars.timeout <= this.FWP.FPS)
            {
               if(this.worm_modify_sprite("tail_return") == 0)
               {
                  this.states.flying = 1;
               }
               this.states.special = "";
               this.weapon_id = 0;
               this.vars.timeout = -100;
               if(this.jet_pack_sound)
               {
                  this.FWP._sound.stop_sound("jet_pack");
                  this.jet_pack_sound = false;
               }
            }
            else
            {
               this.vars.timeout -= this.FWP.FPS;
            }
            _loc1_ = this.buttonid == "left" || this.buttonid == "up+left" || this.buttonid == "down+left";
            _loc2_ = this.buttonid == "right" || this.buttonid == "up+right" || this.buttonid == "down+right";
            _loc3_ = this.buttonid == "up" || this.buttonid == "up+left" || this.buttonid == "up+right";
            _loc4_ = this.buttonid == "down" || this.buttonid == "down+left" || this.buttonid == "down+right";
            if(_loc1_)
            {
               this.vars.direction = 1;
               this.worm_modify_sprite("");
            }
            if(_loc2_)
            {
               this.vars.direction = -1;
               this.worm_modify_sprite("");
            }
            this.sprite.wsprite.jet_pack.gotoAndStop(31);
            this.sprite.wsprite.jet_pack.flame_up.visible = _loc3_;
            this.sprite.wsprite.jet_pack.flame_side.visible = _loc1_ || _loc2_;
            if(this.vars.fuel > 0)
            {
               this.sprite.wsprite.jet_pack.fuel.visible = true;
               this.sprite.wsprite.jet_pack.fuel.value.text = String(Math.ceil(this.vars.fuel));
               this.sprite.wsprite.jet_pack.fuel.scaleX = this.vars.direction;
               this.sprite.wsprite.jet_pack.fuel.x = -23 * this.vars.direction;
            }
            else
            {
               this.sprite.wsprite.jet_pack.fuel.visible = false;
            }
            if(this.vars.fuel <= 0 || this.spressed && this.vars.special_timeout == 25)
            {
               if(this.spressed)
               {
                  this.vars.vx = 0;
               }
               if(this.worm_modify_sprite("tail_return") == 0)
               {
                  this.states.flying = 1;
                  this.states.special = "";
                  this.weapon_id = 0;
                  if(this.jet_pack_sound)
                  {
                     this.FWP._sound.stop_sound("jet_pack");
                     this.jet_pack_sound = false;
                  }
                  return;
               }
               this.vars.special_timeout = -9;
               return;
            }
            if(_loc1_ || _loc2_ || _loc3_ || _loc4_ && this.weapon_name == "ag_pack")
            {
               if(!this.jet_pack_sound)
               {
                  this.FWP._sound.play_sound("jet_pack",1,true);
                  this.jet_pack_sound = true;
               }
            }
            else if(this.jet_pack_sound)
            {
               this.FWP._sound.stop_sound("jet_pack");
               this.jet_pack_sound = false;
            }
            if((_loc5_ = this.movement())[0])
            {
               x += _loc5_[3];
               y += _loc5_[4];
               if((_loc6_ = this.FWP._world.reflect(_loc5_[1],_loc5_[2],this.sign(this.vars.vx),this.sign(this.vars.vy))) == 0)
               {
                  this.vars.vx = -this.vars.vx;
                  this.vars.vy = this.mod(this.vars.vy);
               }
               else if(_loc6_ == 1)
               {
                  this.vars.vx = -this.vars.vx;
                  this.vars.vy = this.mod(this.vars.vy);
               }
               else
               {
                  this.vars.vy = this.mod(this.vars.vy);
               }
               this.vars.vx = this.mod(this.vars.vx) < this.FWP._proc.MINIMUM_SPEED ? 0 : this.vars.vx * 0.2 / 2;
               this.vars.vy = this.mod(this.vars.vy) < this.FWP._proc.MINIMUM_SPEED ? 0 : this.vars.vy * 0.1;
               return;
            }
            this.vars.vx += (!!_loc1_ ? -0.07 : 0) + (!!_loc2_ ? 0.07 : 0);
            if(this.weapon_name != "ag_pack")
            {
               this.vars.vy += this.FWP._proc.G;
            }
            this.vars.vy += (!!_loc3_ ? (this.vars.vy > 0 ? -1 : -0.3) : 0) + (!!_loc4_ ? 0.3 : 0);
            this.vars.vx = this.mod(this.vars.vx) > this.FWP._proc.MAXIMUM_SPEED ? this.sign(this.vars.vx) * this.FWP._proc.MAXIMUM_SPEED : this.vars.vx;
            this.vars.vy = this.mod(this.vars.vy) > this.FWP._proc.MAXIMUM_SPEED ? this.sign(this.vars.vy) * this.FWP._proc.MAXIMUM_SPEED : this.vars.vy;
            if(_loc1_ || _loc2_ || _loc3_ || _loc4_)
            {
               this.vars.fuel -= _loc3_ || _loc1_ || _loc2_ || _loc4_ ? 0.12 : 0;
            }
            if((_loc5_ = this.movement())[0])
            {
               this.vars.vx = 0;
               this.vars.vy = 0;
            }
            x += this.vars.vx;
            y += this.vars.vy;
         }
      }
      
      public function special_teleport() : *
      {
         this.sprite.wsprite.gotoAndStop(36);
         ++this.vars.special_timeout;
         if(this.vars.special_timeout < 31 && this.vars.special_timeout > 0)
         {
            this.sprite.wsprite.teleport.gotoAndStop(Math.ceil(this.vars.special_timeout) + (this.vars.tail == 10 ? 32 : (this.vars.tail == 20 ? 64 : 0)));
            return;
         }
         if(this.vars.special_timeout == 31)
         {
            x = this.vars.teleport_dest.x;
            y = this.vars.teleport_dest.y;
            this.vars.special_timeout = -31;
            return;
         }
         if(this.vars.special_timeout < -1)
         {
            this.sprite.wsprite.teleport.gotoAndStop(Math.ceil(-this.vars.special_timeout));
            return;
         }
         if(this.vars.special_timeout == -1)
         {
            this.states.flying = 1;
            this.states.special = "";
            this.weapon_id = 0;
         }
      }
      
      public function special_bullets() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(this.buttonid == "up" && this.vars.crosshair < 90)
         {
            ++this.vars.crosshair;
         }
         else if(this.buttonid == "down" && this.vars.crosshair > -90)
         {
            --this.vars.crosshair;
         }
         this.worm_modify_cross(this.vars.crosshair);
         this.sprite.wsprite.weapon.gun.fire.gotoAndStop(1);
         if(this.vars.special_timeout % this.vars.bullet_int == 0)
         {
            _loc1_ = this.weapon_flags.defaultvx * this.vars.direction;
            _loc2_ = this.weapon_flags.defaultvy;
            _loc3_ = 11;
            if(this.FWP.player.perks["accuracy"])
            {
               _loc3_ = this.FWP.get_perk_effect("accuracy",this.FWP.player.perks.accuracy,"");
            }
            _loc4_ = this.vars.crosshair + this.FWP.pseudo_random(-_loc3_,_loc3_) / 5;
            if(this.weapon_name == "bozar" || this.weapon_name == "bozar16" || this.weapon_name == "bozar24s")
            {
               _loc4_ = this.vars.crosshair + this.FWP.pseudo_random(-1,1) / 5;
            }
            if(this.weapon_name == "avenger" || this.weapon_name == "turbo_rifle")
            {
               if(_loc3_ == 1)
               {
                  _loc4_ = this.vars.crosshair;
               }
               else
               {
                  _loc4_ = this.vars.crosshair + this.FWP.pseudo_random(-_loc3_,_loc3_) / 2;
               }
            }
            if(this.weapon_name == "vindicator" || this.weapon_name == "sniper_rifle" || this.weapon_name == "rad_rifle" || this.weapon_name == "gauss_pistol" || this.weapon_name == "gauss_rifle" || this.weapon_name == "unfail_gauss_rifle")
            {
               _loc4_ = this.vars.crosshair;
            }
            _loc1_ *= -Math.cos(_loc4_ * Math.PI / 180);
            _loc2_ *= -Math.sin(_loc4_ * Math.PI / 180);
            this.FWP._proc.make_object("P",this.weapon_flags.wid,"",{
               "x":x,
               "y":y,
               "vx":_loc1_,
               "vy":_loc2_,
               "parent_wid":this.wid,
               "dmg_mult":this.dmg_mult,
               "fail":this.cur_shot_fail,
               "ap":this.ap_shot
            });
            --this.vars.bullet_shots;
            this.FWP._sound.play_sound(this.weapon_name);
         }
         ++this.vars.special_timeout;
         if(this.vars.bullet_shots == 0)
         {
            this.states.special = "";
            this.worm_take_move();
            return;
         }
         if(this.vars.special_timeout % this.vars.bullet_int <= 1 || this.vars.special_timeout % this.vars.bullet_int >= this.vars.bullet_int - 1)
         {
            this.sprite.wsprite.weapon.gun.fire.gotoAndStop(2);
         }
      }
      
      public function special_fireball() : *
      {
         this.sprite.wsprite.gotoAndStop(28);
         this.vars.special_timeout += 0.5;
         if(this.vars.special_timeout >= 9)
         {
            this.states.special = "";
            this.weapon_id = 0;
            if(this.worm_modify_sprite("tail_return") == 0)
            {
               this.states.flying = 1;
            }
            else
            {
               this.worm_modify_sprite("animate");
            }
            return;
         }
         this.sprite.wsprite.weapon.gotoAndStop(24 + Math.ceil(this.vars.special_timeout + 0.1));
      }
      
      public function special_prod() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         this.sprite.wsprite.gotoAndStop(30);
         if(this.weapon_name == "shocker")
         {
            this.sprite.wsprite.gotoAndStop(37);
         }
         this.vars.special_timeout += 0.5;
         if(this.vars.special_timeout >= 7)
         {
            this.states.special = "";
            this.weapon_id = 0;
            this.worm_modify_sprite("animate");
            return;
         }
         if(this.vars.special_timeout == 2)
         {
            _loc1_ = this.vars.direction == 1 ? -12 : 15;
            _loc2_ = 1;
            while(_loc2_ <= this.FWP._proc.worms[0])
            {
               if(this.FWP._proc.worms[_loc2_].state == "ok" && _loc2_ != this.wid)
               {
                  _loc3_ = this.FWP._obj[this.FWP._proc.worms[_loc2_].fid];
                  if(this.mod(_loc3_.x - (x + _loc1_)) <= 30 && this.mod(_loc3_.y - y) <= 36)
                  {
                     _loc3_.affected = true;
                     if(this.weapon_name == "shocker")
                     {
                        _loc3_.affected_params.damage += 30 * this.dmg_mult;
                        _loc3_.vars.paralyzed = true;
                        _loc3_.vars.paratime = 2 + 1;
                        this.FWP._proc.add_status(_loc3_.wname + " не может двигаться.");
                        this.FWP._proc.make_object("E","explosion_pulse","",{
                           "x":_loc3_.x,
                           "y":_loc3_.y,
                           "timeout":30
                        });
                     }
                     _loc3_.affected = true;
                     _loc3_.affected_params.vx += this.vars.direction * 2 * -1 * 1.15;
                     _loc3_.affected_params.vy += -2 * 1.15;
                     this.FWP._proc.OBJ[_loc3_.pid].ready = false;
                  }
               }
               _loc2_++;
            }
         }
         this.sprite.wsprite.weapon.gotoAndStop((this.vars.tail == 10 ? 15 : (this.vars.tail == 20 ? 30 : 0)) + Math.ceil(this.vars.special_timeout + 0.1));
      }
      
      public function special_bat() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         this.worm_modify_cross(this.vars.crosshair);
         this.sprite.wsprite.weapon.gun.fire.gotoAndStop(1);
         this.vars.special_timeout += 0.5;
         if(this.vars.special_timeout >= 4)
         {
            this.states.special = "";
            this.weapon_id = 0;
            this.worm_modify_sprite("animate");
            return;
         }
         if(this.vars.special_timeout == 2)
         {
            _loc1_ = this.vars.direction == 1 ? -18 : 23;
            _loc2_ = 1;
            while(_loc2_ <= this.FWP._proc.worms[0])
            {
               if(this.FWP._proc.worms[_loc2_].state == "ok" && _loc2_ != this.wid)
               {
                  _loc3_ = this.FWP._obj[this.FWP._proc.worms[_loc2_].fid];
                  if(this.mod(_loc3_.x - (x + _loc1_)) <= 30 && this.mod(_loc3_.y - y) <= 36)
                  {
                     _loc3_.affected = true;
                     if(this.weapon_name == "baseball_bat")
                     {
                        _loc3_.affected_params.damage += 30 * this.dmg_mult;
                     }
                     else
                     {
                        _loc3_.affected_params.damage += 60 * this.dmg_mult;
                        if(this.FWP._proc.cur_team == 1 && _loc3_.wteam != 1)
                        {
                           ++this.FWP._proc.ach_paralyzed;
                        }
                        _loc3_.vars.paralyzed = true;
                        _loc3_.vars.paratime = 2 + 1;
                        this.FWP._proc.add_status(_loc3_.wname + " не может двигаться.");
                        this.FWP._proc.make_object("E","explosion_pulse","",{
                           "x":_loc3_.x,
                           "y":_loc3_.y,
                           "timeout":30
                        });
                     }
                     _loc3_.affected_params.vx += this.vars.direction * 8 * -Math.cos(this.vars.crosshair * Math.PI / 180) * 1.15;
                     _loc3_.affected_params.vy += 8 * -Math.sin(this.vars.crosshair * Math.PI / 180) * 1.15;
                     this.FWP._proc.OBJ[_loc3_.pid].ready = false;
                  }
               }
               _loc2_++;
            }
         }
         if(this.vars.special_timeout >= 2)
         {
            this.sprite.wsprite.weapon.gun.fire.gotoAndStop(2);
         }
      }
      
      public function special_axe() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         this.sprite.wsprite.gotoAndStop(31);
         this.vars.special_timeout += 0.5;
         if(this.vars.special_timeout == 28)
         {
            this.states.special = "";
            this.weapon_id = 0;
            this.worm_modify_sprite("animate");
            return;
         }
         if(this.vars.special_timeout == 14)
         {
            _loc1_ = this.vars.direction == 1 ? -22 : 25;
            _loc2_ = 1;
            while(_loc2_ <= this.FWP._proc.worms[0])
            {
               if(this.FWP._proc.worms[_loc2_].state == "ok" && _loc2_ != this.wid)
               {
                  _loc3_ = this.FWP._obj[this.FWP._proc.worms[_loc2_].fid];
                  if(this.mod(_loc3_.x - (x + _loc1_)) <= 30 && this.mod(_loc3_.y - y) <= 36)
                  {
                     _loc3_.affected = true;
                     if(this.weapon_name == "battle_axe")
                     {
                        if(_loc3_.vars.health > 400)
                        {
                           _loc3_.affected_params.damage += 200;
                        }
                        else
                        {
                           _loc3_.affected_params.damage += _loc3_.vars.health / 2;
                        }
                     }
                     else
                     {
                        if(_loc3_.vars.health > 600)
                        {
                           _loc3_.affected_params.damage += 300;
                        }
                        else
                        {
                           _loc3_.affected_params.damage += _loc3_.vars.health / 2;
                        }
                        if(this.FWP._proc.cur_team == 1 && _loc3_.wteam != 1)
                        {
                           ++this.FWP._proc.ach_paralyzed;
                        }
                        _loc3_.vars.paralyzed = true;
                        _loc3_.vars.paratime = 2 + 1;
                        this.FWP._proc.add_status(_loc3_.wname + " не может двигаться.");
                        this.FWP._proc.make_object("E","explosion_pulse","",{
                           "x":_loc3_.x,
                           "y":_loc3_.y,
                           "timeout":30
                        });
                     }
                     _loc3_.affected_params.vy += 10;
                     _loc3_.affected_params.flying3 = true;
                     this.FWP._proc.OBJ[_loc3_.pid].ready = false;
                  }
               }
               _loc2_++;
            }
         }
         this.sprite.wsprite.weapon.gotoAndStop((this.vars.tail == 10 ? 53 : (this.vars.tail == 20 ? 82 : 24)) + Math.ceil(this.vars.special_timeout + 0.1));
      }
      
      public function special_firepunch() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         this.sprite.wsprite.gotoAndStop(32);
         this.vars.firepunchtimer += 0.5;
         if(this.vars.special_timeout == 8.5)
         {
            this.FPCALC = new Array(0,0);
            _loc6_ = 1;
            while(_loc6_ <= this.FWP._proc.worms[0])
            {
               if(this.FWP._proc.worms[_loc6_].state == "ok" && _loc6_ != this.wid)
               {
                  _loc5_ = this.FWP._obj[this.FWP._proc.worms[_loc6_].fid];
                  if(this.mod(_loc5_.x - x) < 20)
                  {
                     if(y - _loc5_.y < 300)
                     {
                        ++this.FPCALC[0];
                        this.FPCALC[this.FPCALC[0]] = new Array();
                        this.FPCALC[this.FPCALC[0]][0] = _loc5_.y;
                        this.FPCALC[this.FPCALC[0]][1] = _loc6_;
                     }
                  }
               }
               _loc6_++;
            }
         }
         if(this.vars.special_timeout == 8.5)
         {
            if(this.FWP.player.perks["fire_punch"])
            {
               this.vars.vy = this.FWP.get_perk_effect("fire_punch",this.FWP.player.perks.fire_punch,"");
            }
            else
            {
               this.vars.vy = -4.4;
            }
            this.vars.special_timeout = 9;
         }
         if(this.vars.special_timeout < 0)
         {
            this.vars.special_timeout += 0.5;
            if(this.vars.special_timeout == 0)
            {
               this.vars.vy = 0;
               this.states.flying = 0;
               this.states.special = "";
               this.weapon_id = 0;
               this.worm_modify_sprite("animate");
               return;
            }
            this.sprite.wsprite.weapon.gotoAndStop(Math.floor(-this.vars.special_timeout + (this.vars.tail == 10 ? 11 : (this.vars.tail == 21 ? 116 : 1))));
            return;
         }
         if(this.vars.special_timeout <= 8)
         {
            this.vars.special_timeout += 0.5;
            this.sprite.wsprite.weapon.gotoAndStop(Math.floor(this.vars.special_timeout + (this.vars.tail == 10 ? 11 : (this.vars.tail == 21 ? 116 : 1))));
         }
         else
         {
            this.vars.special_timeout += 0.5;
            if(this.vars.vy <= 0)
            {
               _loc1_ = 0;
               while(_loc1_ >= -27)
               {
                  _loc2_ = -13;
                  while(_loc2_ <= 13)
                  {
                     if((_loc7_ = this.FWP._world.map_bitmap.getPixel(Math.round(x + _loc2_),Math.round(y + _loc1_)).toString(16)) != "0")
                     {
                        if(_loc2_ < -9 || _loc2_ > 9)
                        {
                           this.FWP._world.map_bitmap.setPixel32(Math.round(x + _loc2_),Math.round(y + _loc1_),this.FWP._world.BORDER_COLOR);
                        }
                        else
                        {
                           this.FWP._world.map_bitmap.setPixel32(Math.round(x + _loc2_),Math.round(y + _loc1_),0);
                        }
                     }
                     _loc2_++;
                  }
                  _loc1_--;
               }
               _loc4_ = 1;
               while(_loc4_ <= this.FPCALC[0])
               {
                  if(this.mod(y - this.FPCALC[_loc4_][0]) < 9)
                  {
                     _loc5_ = this.FWP._obj[this.FWP._proc.worms[this.FPCALC[_loc4_][1]].fid];
                     this.FPCALC[_loc4_][0] = Number.NEGATIVE_INFINITY;
                     _loc5_.affected = true;
                     _loc5_.affected_params.damage += 30 * this.dmg_mult;
                     _loc5_.affected_params.vx += this.vars.direction * -2;
                     _loc5_.affected_params.vy += -4;
                     this.FWP._proc.OBJ[_loc5_.pid].ready = false;
                     if(this.perks["vampire"])
                     {
                        _loc8_ = this.FWP.get_perk_effect("vampire",this.perks.vampire,"") * 30 * this.dmg_mult;
                        this.worm_apply_damage(Math.round(-_loc8_),"regen");
                     }
                  }
                  _loc4_++;
               }
            }
            this.sprite.wsprite.weapon.gotoAndStop(31);
            this.vars.vy += 0.5 * this.FWP._proc.G;
            y += this.vars.vy;
            if(this.vars.vy >= 0)
            {
               if(this.vars.firepunchreverse < 12)
               {
                  this.vars.firepunchreverse += 0.5;
               }
               this.sprite.wsprite.weapon.gotoAndStop(Math.floor(31 + this.vars.firepunchreverse));
               if(this.worm_modify_sprite("tail_return") != 0)
               {
                  this.vars.special_timeout = -8;
               }
            }
         }
      }
      
      public function special_blow_torch() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc14_:* = undefined;
         this.sprite.wsprite.gotoAndStop(33);
         this.worm_modify_cross(this.vars.crosshair);
         ++this.vars.special_timeout;
         var _loc9_:* = 312;
         if(this.FWP.player.perks.builder)
         {
            _loc9_ *= this.FWP.get_perk_effect("builder",this.FWP.player.perks.builder,"");
         }
         if(this.vars.special_timeout > _loc9_ || this.vars.special_timeout > 20 && this.spressed)
         {
            this.states.special = "";
            this.weapon_id = 0;
            this.worm_modify_sprite("animate");
            this.FWP._sound.stop_sound("blow_torch");
            return;
         }
         if(this.vars.crosshair != 15 && this.vars.keydelay == 0 && this.buttonid == "up")
         {
            this.vars.crosshair += 15;
            this.vars.keydelay = 10;
            this.vars.steps_left = 0;
            this.vars.steps_right = 0;
         }
         if(this.vars.crosshair != -15 && this.vars.keydelay == 0 && this.buttonid == "down")
         {
            this.vars.crosshair -= 15;
            this.vars.keydelay = 10;
            this.vars.steps_left = 0;
            this.vars.steps_right = 0;
         }
         if(this.vars.keydelay != 0)
         {
            --this.vars.keydelay;
         }
         if(this.vars.direction == 1)
         {
            this.vars.steps_left += 0.5;
            if(this.vars.steps_left == 14)
            {
               this.vars.steps_left = 1;
            }
            this.vars.steps_right = 0;
         }
         else
         {
            this.vars.steps_right += 0.5;
            if(this.vars.steps_right == 14)
            {
               this.vars.steps_right = 1;
            }
            this.vars.steps_left = 0;
         }
         if(this.vars.crosshair == 0)
         {
            _loc1_ = 1 + 34;
            _loc2_ = 0;
         }
         if(this.vars.crosshair == 15)
         {
            _loc1_ = 17 + 34;
            _loc2_ = -1;
         }
         if(this.vars.crosshair == -15)
         {
            _loc1_ = 33 + 34;
            _loc2_ = 1;
         }
         if(this.vars.steps_right != 0)
         {
            this.sprite.wsprite.weapon.gotoAndStop(_loc1_ + Math.ceil(this.vars.steps_right));
         }
         else if(this.vars.steps_left != 0)
         {
            this.sprite.wsprite.weapon.gotoAndStop(_loc1_ + Math.ceil(this.vars.steps_left));
         }
         else if(this.vars.steps_left == 0 && this.vars.steps_right == 0)
         {
            this.sprite.wsprite.weapon.gotoAndStop(_loc1_);
         }
         if(this.vars.special_timeout % 4 == 1)
         {
            _loc5_ = 1;
            while(_loc5_ <= 19)
            {
               _loc6_ = -_loc5_ * this.vars.direction;
               _loc7_ = Math.round(_loc5_ / 4 * _loc2_);
               if(_loc2_ == -1)
               {
                  _loc8_ = 9;
               }
               else if(_loc2_ == 1)
               {
                  _loc8_ = 7;
               }
               else
               {
                  _loc8_ = 8;
               }
               if(this.vars.direction == -1 && _loc2_ == -1)
               {
                  _loc6_ += 4;
               }
               else if(this.vars.direction == 1)
               {
                  _loc6_ -= 3;
               }
               else if(this.vars.direction == -1)
               {
                  _loc6_ += 2;
               }
               _loc3_ = -8 + _loc7_;
               while(_loc3_ <= 18 + _loc7_)
               {
                  if(_loc5_ <= 16)
                  {
                     if(_loc3_ >= -5 + _loc7_ && _loc3_ <= 15 + _loc7_)
                     {
                        this.FWP._world.map_bitmap.setPixel32(Math.round(x + _loc6_),Math.round(y - _loc8_ + _loc3_),0);
                     }
                     else if(this.FWP._world.map_bitmap.getPixel(Math.round(x + _loc6_),Math.round(y - _loc8_ + _loc3_)).toString(16) != "0")
                     {
                        this.FWP._world.map_bitmap.setPixel32(Math.round(x + _loc6_),Math.round(y - _loc8_ + _loc3_),this.FWP._world.BORDER_COLOR);
                     }
                  }
                  else if(this.FWP._world.map_bitmap.getPixel(Math.round(x + _loc6_),Math.round(y - _loc8_ + _loc3_)).toString(16) != "0")
                  {
                     this.FWP._world.map_bitmap.setPixel32(Math.round(x + _loc6_),Math.round(y - _loc8_ + _loc3_),this.FWP._world.BORDER_COLOR);
                  }
                  _loc3_++;
               }
               _loc5_++;
            }
            _loc11_ = 1;
            while(_loc11_ <= this.FWP._proc.worms[0])
            {
               if(this.FWP._proc.worms[_loc11_].state == "ok" && _loc11_ != this.wid)
               {
                  _loc12_ = this.FWP._obj[this.FWP._proc.worms[_loc11_].fid];
                  _loc13_ = x + -16 * this.vars.direction;
                  _loc14_ = y - 8 + 5;
                  if(this.mod(_loc13_ - _loc12_.x) <= 14 && this.mod(_loc14_ - _loc12_.y) <= 20 && _loc12_.states.flying == 0)
                  {
                     _loc12_.affected = true;
                     _loc12_.affected_params.vx += this.vars.direction * -0.8;
                     _loc12_.affected_params.vy += -4;
                     this.FWP._proc.OBJ[_loc12_.pid].ready = false;
                  }
               }
               _loc11_++;
            }
         }
         var _loc10_:* = 0;
         if(this.vars.special_timeout % 2 == 1)
         {
            if(this.vars.direction == -1)
            {
               _loc10_ = this.special_bt_goto("right");
            }
            if(this.vars.direction == 1)
            {
               _loc10_ = this.special_bt_goto("left");
            }
         }
         if(_loc10_ == 3)
         {
            this.states.special = "";
            this.weapon_id = 0;
            this.worm_modify_sprite("animate");
            this.FWP._sound.stop_sound("blow_torch");
            return;
         }
      }
      
      public function special_bt_goto(param1:String) : Number
      {
         var _loc2_:* = new Array(3);
         _loc2_ = this.FWP._world.allow_goto(x,y,this.FLAGS.W,this.FLAGS.H,param1);
         if(param1 == "right")
         {
            ++x;
            this.vars.direction = -1;
         }
         if(param1 == "left")
         {
            --x;
            this.vars.direction = 1;
         }
         if(_loc2_[1] != 0)
         {
            y -= _loc2_[1];
            return 1;
         }
         if(_loc2_[2] != 100)
         {
            y += _loc2_[2];
            return _loc2_[2] == 0 ? Number(0) : Number(2);
         }
         return 3;
      }
      
      public function special_pneumatic_drill() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         this.sprite.wsprite.gotoAndStop(34);
         this.sprite.wsprite.weapon.gotoAndStop(Math.floor(this.vars.special_timeout % 8 / 2) + 25);
         ++this.vars.special_timeout;
         var _loc7_:* = 312;
         if(this.FWP.player.perks.builder)
         {
            _loc7_ *= this.FWP.get_perk_effect("builder",this.FWP.player.perks.builder,"");
         }
         if(this.vars.special_timeout > _loc7_ || this.vars.special_timeout > 20 && this.spressed)
         {
            this.states.special = "";
            this.weapon_id = 0;
            this.vars.vy = 0;
            this.worm_modify_sprite("animate");
            this.FWP._sound.stop_sound("drill");
            return;
         }
         _loc1_ = this.vars.special_timeout % 4 + 1;
         if(this.vars.vy == 0)
         {
            this.vars.vy = 1;
         }
         if(this.movement()[0])
         {
            this.vars.vy = 0;
            if(this.vars.special_timeout % 11 == 1)
            {
               _loc8_ = 1;
               while(_loc8_ <= this.FWP._proc.worms[0])
               {
                  if(this.FWP._proc.worms[_loc8_].state == "ok" && _loc8_ != this.wid)
                  {
                     _loc9_ = this.FWP._obj[this.FWP._proc.worms[_loc8_].fid];
                     _loc6_ = x;
                     _loc10_ = y;
                     if(this.mod(_loc6_ - _loc9_.x) <= 20 && this.mod(_loc10_ - _loc9_.y) <= 22 && _loc9_.states.flying == 0)
                     {
                        _loc9_.affected = true;
                        _loc9_.affected_params.vx += this.vars.direction * -0.4;
                        _loc9_.affected_params.vy += -1;
                        this.FWP._proc.OBJ[_loc9_.pid].ready = false;
                     }
                  }
                  _loc8_++;
               }
               _loc2_ = 0;
               while(_loc2_ <= 8 + _loc1_ + 10)
               {
                  _loc3_ = -13;
                  while(_loc3_ <= 13)
                  {
                     if(_loc2_ <= 8 + _loc1_)
                     {
                        if(_loc3_ < -10 || _loc3_ > 10)
                        {
                           if(this.FWP._world.map_bitmap.getPixel(Math.round(x + _loc3_),Math.round(y + _loc2_)).toString(16) != "0")
                           {
                              this.FWP._world.map_bitmap.setPixel32(Math.round(x + _loc3_),Math.round(y + _loc2_),this.FWP._world.BORDER_COLOR);
                           }
                        }
                        else
                        {
                           this.FWP._world.map_bitmap.setPixel32(Math.round(x + _loc3_),Math.round(y + _loc2_),0);
                        }
                     }
                     _loc3_++;
                  }
                  if(_loc2_ > 8 + _loc1_)
                  {
                     _loc5_ = 37 + 2 * (_loc1_ - _loc2_);
                     _loc6_ = -Math.floor(_loc5_ / 2);
                     _loc3_ = -2;
                     while(_loc3_ <= _loc5_ + 3)
                     {
                        if(_loc3_ <= 0 || _loc3_ >= _loc5_ + 1)
                        {
                           if(this.FWP._world.map_bitmap.getPixel(Math.round(x + _loc3_ + _loc6_),Math.round(y + _loc2_)).toString(16) != "0")
                           {
                              this.FWP._world.map_bitmap.setPixel32(Math.round(x + _loc3_ + _loc6_),Math.round(y + _loc2_),this.FWP._world.BORDER_COLOR);
                           }
                        }
                        else
                        {
                           this.FWP._world.map_bitmap.setPixel32(Math.round(x + _loc3_ + _loc6_),Math.round(y + _loc2_),0);
                        }
                        _loc3_++;
                     }
                  }
                  _loc2_++;
               }
               y += _loc1_ + 6;
            }
         }
         else
         {
            this.vars.vy += this.FWP._proc.G;
            y += this.vars.vy;
         }
      }
      
      public function special_parachute() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         _loc1_ = false;
         _loc2_ = false;
         _loc3_ = false;
         _loc4_ = false;
         _loc5_ = false;
         _loc6_ = false;
         this.sprite.wsprite.gotoAndStop(35);
         this.worm_modify_sprite("");
         if(this.vars.special_timeout < 0)
         {
            this.vars.special_timeout += 0.5;
            this.sprite.wsprite.weapon.gotoAndStop(Math.ceil(5 + this.vars.special_timeout + (this.vars.tail == 10 ? 33 : (this.vars.tail == 176 ? 40 : 26))));
            if(this.vars.special_timeout == 0)
            {
               this.states.special = "";
               this.weapon_id = 0;
               _loc9_ = this.vars.vx;
               _loc10_ = this.vars.vy;
               this.vars.vx = 2 * this.FWP._proc.W;
               this.vars.vy = 6;
               if(this.worm_modify_sprite("tail_return") == 0)
               {
                  this.states.flying = 1;
                  this.vars.vx = _loc9_;
                  this.vars.vy = _loc10_;
               }
               else
               {
                  this.vars.vx = 0;
                  this.vars.vy = 0;
                  this.states.flying = 0;
               }
               this.worm_modify_sprite("animate");
            }
            return;
         }
         if(this.vars.special_timeout < 4)
         {
            this.vars.special_timeout += 0.5;
            this.sprite.wsprite.weapon.gotoAndStop(Math.ceil(this.vars.special_timeout + 1));
            return;
         }
         this.vars.timeout -= this.FWP.FPS;
         if(this.vars.timeout <= this.FWP.FPS)
         {
            this.vars.timeout = this.FWP.FPS;
            this.states.escape = true;
            this.states.control = false;
            this.states.firecontrol = false;
            if(this.worm_modify_sprite("tail_return") == 0)
            {
               this.states.special = "";
               this.weapon_id = 0;
               this.worm_modify_sprite("animate");
               return;
            }
            this.vars.special_timeout = -5;
            return;
         }
         if(this.buttonid == "up" || this.buttonid == "up+left" || this.buttonid == "up+right")
         {
            _loc2_ = true;
         }
         if(this.buttonid == "down" || this.buttonid == "down+left" || this.buttonid == "down+right")
         {
            _loc1_ = true;
         }
         if(this.buttonid == "left" || this.buttonid == "up+left" || this.buttonid == "down+left")
         {
            _loc3_ = true;
         }
         if(this.buttonid == "right" || this.buttonid == "up+right" || this.buttonid == "down+right")
         {
            _loc4_ = true;
         }
         if(this.buttonid == "enter")
         {
            _loc6_ = true;
         }
         if(this.spressed)
         {
            _loc5_ = true;
         }
         if(_loc6_ || _loc5_)
         {
            _loc3_ = false;
            _loc4_ = false;
            _loc2_ = false;
         }
         if(this.vars.parachutesprite == 8)
         {
            this.vars.parachuteswing = 0.5;
         }
         if(this.vars.parachutesprite == 24)
         {
            this.vars.parachuteswing = -0.5;
         }
         this.vars.parachutesprite += this.vars.parachuteswing;
         this.sprite.wsprite.weapon.gotoAndStop(Math.round(this.vars.parachutesprite));
         if(_loc5_)
         {
            if(this.worm_modify_sprite("tail_return") == 0)
            {
               this.states.special = "";
               this.weapon_id = 0;
               this.states.flying = 1;
               this.worm_modify_sprite("animate");
               return;
            }
            this.vars.special_timeout = -5;
            return;
         }
         _loc9_ = this.vars.vx;
         _loc10_ = this.vars.vy;
         this.vars.vx = 2 * this.FWP._proc.W;
         this.vars.vy = 6;
         var _loc11_:* = this.movement();
         this.vars.vx = _loc9_;
         this.vars.vy = _loc10_;
         if(_loc11_[0])
         {
            x += _loc11_[3];
            y += _loc11_[4];
            _loc12_ = this.FWP._world.reflect(_loc11_[1],_loc11_[2],this.sign(this.vars.vx),this.sign(this.vars.vy));
            if((_loc13_ = this.worm_modify_sprite("tail_return")) == 0)
            {
               if(_loc12_ == 0)
               {
                  this.vars.vx = -this.vars.vx;
                  this.vars.vy = this.mod(this.vars.vy);
               }
               else if(_loc12_ == 1)
               {
                  this.vars.vx = -this.vars.vx;
                  this.vars.vy = this.mod(this.vars.vy);
               }
               else
               {
                  this.vars.vy = this.mod(this.vars.vy);
               }
               this.vars.vx = this.mod(this.vars.vx) < this.FWP._proc.MINIMUM_SPEED ? 0 : this.vars.vx * this.FLAGS.BOUNCE_X / 2;
               this.vars.vy = this.mod(this.vars.vy) < this.FWP._proc.MINIMUM_SPEED ? 0 : this.vars.vy * 0.1;
            }
            else
            {
               this.vars.vx = 0;
               this.vars.vy = 0;
               this.vars.special_timeout = -5;
            }
            return;
         }
         this.vars.vx = 2 * this.FWP._proc.W + (!!_loc3_ ? -0.2 : 0) + (!!_loc4_ ? 0.2 : 0);
         this.vars.vy = 3 * this.FWP._proc.G + (!!_loc2_ ? -0.25 : 0) + (!!_loc1_ ? 0.25 : 0);
         if((_loc11_ = this.movement())[0])
         {
            this.vars.vx = 0;
            this.vars.vy = 0;
         }
         x += this.vars.vx;
         y += this.vars.vy;
      }
      
      public function worm_modify_sprite(param1:String) : Number
      {
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         var _loc4_:Array = new Array(3);
         if(this.vars.vx != 0 && this.vars.sliding && this.vars.vs == 0)
         {
            this.vars.direction = this.vars.vx > 0 ? -1 : 1;
         }
         if(this.vars.vs != 0 && this.vars.sliding)
         {
            this.vars.direction = this.vars.vs > 0 ? -1 : 1;
         }
         this.sprite.wsprite.scaleX = this.vars.direction;
         if(param1 == "tail" || param1 == "tail_return")
         {
            _loc4_[0] = 100;
            _loc4_[1] = 100;
            _loc3_ = 0;
            while(_loc3_ <= this.FLAGS.W - 1)
            {
               _loc2_ = 0;
               while(_loc2_ <= (param1 == "tail_return" ? 12 : 16))
               {
                  if(this.FWP._world.is_land(Math.round(x) - this.FLAGS.W / 2 + _loc3_,Math.round(y) + _loc2_))
                  {
                     if(_loc3_ <= 2)
                     {
                        if(_loc4_[0] > _loc2_)
                        {
                           _loc4_[0] = _loc2_;
                           break;
                        }
                     }
                     if(_loc3_ >= 3)
                     {
                        if(_loc4_[1] > _loc2_)
                        {
                           _loc4_[1] = _loc2_;
                           break;
                        }
                     }
                  }
                  _loc2_++;
               }
               _loc3_++;
            }
            if(_loc4_[0] == 100 && _loc4_[1] == 100)
            {
               if(param1 == "tail_return")
               {
                  return 0;
               }
            }
            if(_loc4_[1] - _loc4_[0] > 3 && this.vars.direction == -1 || _loc4_[0] - _loc4_[1] > 3 && this.vars.direction == 1)
            {
               if(param1 == "tail_return")
               {
                  return 20;
               }
               if(this.vars.last_tail == 20 || this.vars.last_tail == 0)
               {
                  this.vars.tail = 20;
               }
               if(this.vars.last_tail == 20)
               {
                  ++this.vars.last_tail_duration;
               }
               else
               {
                  this.vars.last_tail_duration = 0;
               }
               this.vars.last_tail = 20;
            }
            else if(_loc4_[1] - _loc4_[0] > 3 && this.vars.direction == 1 || _loc4_[0] - _loc4_[1] > 3 && this.vars.direction == -1)
            {
               if(param1 == "tail_return")
               {
                  return 10;
               }
               if(this.vars.last_tail == 10 || this.vars.last_tail == 0)
               {
                  this.vars.tail = 10;
               }
               if(this.vars.last_tail == 10)
               {
                  ++this.vars.last_tail_duration;
               }
               else
               {
                  this.vars.last_tail_duration = 0;
               }
               this.vars.last_tail = 10;
            }
            else
            {
               if(param1 == "tail_return")
               {
                  return 1;
               }
               if(this.vars.last_tail == 1 && this.vars.last_tail_duration > 2 || this.vars.last_tail == 0)
               {
                  this.vars.tail = 1;
               }
               if(this.vars.last_tail == 1)
               {
                  ++this.vars.last_tail_duration;
               }
               else
               {
                  this.vars.last_tail_duration = 0;
               }
               this.vars.last_tail = 1;
            }
            if(param1 != "tail_return")
            {
               this.sprite.wsprite.gotoAndStop(this.vars.tail == 10 ? 2 : (this.vars.tail == 20 ? 3 : 1));
            }
         }
         if(param1 == "animate")
         {
            if(this.vars.steps_right != 0)
            {
               this.sprite.wsprite.gotoAndStop((this.vars.tail == 10 ? 2 : (this.vars.tail == 20 ? 3 : 1)) + 9);
               this.sprite.wsprite.walk.gotoAndStop(Math.ceil(this.vars.steps_right) + 1);
            }
            else if(this.vars.steps_left != 0)
            {
               this.sprite.wsprite.gotoAndStop((this.vars.tail == 10 ? 2 : (this.vars.tail == 20 ? 3 : 1)) + 9);
               this.sprite.wsprite.walk.gotoAndStop(Math.ceil(this.vars.steps_left) + 1);
            }
            else if(this.vars.steps_left == 0 && this.vars.steps_right == 0)
            {
               this.sprite.wsprite.gotoAndStop((this.vars.tail == 10 ? 2 : (this.vars.tail == 20 ? 3 : 1)) + (this.vars.health < 30 || this.wteam == 1 && this.FWP.player.tired >= 100 ? 3 : 0));
            }
         }
         return 0;
      }
      
      public function worm_modify_flying() : void
      {
         if(this.states.flying != 3)
         {
            this.worm_modify_sprite("");
         }
         if(this.states.flying == 3)
         {
            this.sprite.wsprite.scaleX = 1;
         }
         if(this.states.flying == 1)
         {
            if(this.vars.jumping > 0 && this.vars.jumping <= 135)
            {
               this.sprite.wsprite.gotoAndStop(20);
               if(this.vars.jumping == 114)
               {
                  this.worm_modify_sprite("");
               }
               if(this.vars.jumping != 135)
               {
                  this.vars.jumping += 0.5;
               }
               else
               {
                  this.vars.jumping = 0;
               }
            }
            else if(this.vars.sliding == true || this.vars.damage)
            {
               this.sprite.wsprite.gotoAndStop(13);
            }
            else
            {
               this.sprite.wsprite.gotoAndStop(15);
            }
         }
         else
         {
            this.vars.jumping = 0;
            this.vars.sliding = false;
            if(this.states.flying == 2)
            {
               this.sprite.wsprite.gotoAndStop(14);
               this.sprite.wsprite.worm_rolling.rotation += this.sign(this.vars.vx) * (this.mod(this.vars.vx) + this.mod(this.vars.vy / 5)) * this.FWP._proc.ROTATING_COEF / 2;
            }
            else
            {
               this.sprite.wsprite.gotoAndStop(16);
               this.sprite.wsprite.worm_fastfly.rotation = Math.atan2(this.vars.vy,this.vars.vx) * 180 / Math.PI + 90;
            }
         }
      }
      
      public function worm_apply_damage(param1:Number, param2:String, param3:Boolean = false, param4:String = "", param5:Boolean = false) : *
      {
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc6_:* = this.vars.health;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(this.perks["dmg_thr"])
         {
            _loc8_ = this.FWP.get_perk_effect("dmg_thr",this.perks.dmg_thr,"");
         }
         if(param2 == "standard" && !param5 && !param3)
         {
            _loc10_ = _loc7_ = Math.round(param1 * this.FWP.get_damage_resistance(this.skills.protect) / 100);
            if(param4 == "")
            {
               if((_loc7_ -= _loc8_) < 0)
               {
                  _loc7_ = 0;
               }
            }
            if(_loc10_ > 10 && _loc7_ == 0)
            {
               this.FWP._proc.add_status(this.wname + " не теряет ОЗ.");
               this.FWP._proc.add_status("   (порог урона не превышен).");
            }
            _loc11_ = this.FWP.pseudo_random(0,100);
            if((_loc12_ = this.FWP.get_absorb_chance(this.perks,this.skills).absorb) * 100 > _loc11_ && _loc7_ != 0)
            {
               _loc7_ = 0;
               this.FWP._proc.add_status(this.wname + " не теряет ОЗ.");
               this.FWP._proc.add_status("   (урон поглощается броней).");
            }
         }
         else
         {
            _loc7_ = Math.round(param1);
         }
         this.vars.health -= _loc7_;
         var _loc9_:* = _loc6_ - (this.vars.health < 0 ? 0 : this.vars.health);
         if(_loc7_ != 0)
         {
            this.vars.damage = param2 == "standard";
            _loc13_ = String("-" + _loc7_);
            if(_loc7_ < 0)
            {
               _loc13_ = String("+" + -_loc7_);
            }
            if(!param3)
            {
               if(param2 == "standard" || param2 == "poison")
               {
                  this.FWP._proc.add_status(this.wname + " теряет " + _loc7_ + " ОЗ.");
                  if(param5)
                  {
                     this.FWP._proc.add_status("   (броня пробита).");
                  }
               }
               else if(param2 == "regen")
               {
                  this.FWP._proc.add_status(this.wname + " восстанавливает " + -_loc7_ + " ОЗ.");
               }
            }
            this.FWP._proc.make_object("E","damage_clip","",{
               "x":x + this.FWP.true_random(-10,10),
               "y":y - 30,
               "vy":-2.5,
               "timeout":50,
               "damage_text":{
                  "damage":_loc13_,
                  "color":this.wcolor
               }
            });
            if(this.wteam == 1 && param2 == "standard")
            {
               this.FWP._proc.ach_injure = true;
            }
         }
         this.worm_modify_health();
      }
      
      public function worm_modify_health() : *
      {
         this.vars.health = this.vars.health < 0 ? 0 : this.vars.health;
         this.FWP._interf.render_game_menu();
         this.worm_modify_bars();
      }
      
      public function worm_modify_bar_borders(param1:String) : *
      {
         var _loc2_:* = 1;
         if(param1 == "check")
         {
            if(this.FWP._proc.timer < 25000 && this.states.active)
            {
               _loc2_ = 2;
            }
            if(this.FWP._proc.timer == 25000)
            {
               _loc2_ = 1;
            }
            if(this.sick != 0 || this.sick_next != 0)
            {
               _loc2_ = 3;
            }
         }
         else
         {
            _loc2_ = 1;
            if(this.sick != 0 || this.sick_next != 0)
            {
               _loc2_ = 3;
            }
         }
         this.sprite.worm_hpbox.box_border.gotoAndStop(_loc2_);
         this.sprite.worm_namebox.box_border.gotoAndStop(_loc2_);
      }
      
      public function worm_modify_bars() : *
      {
         this.sprite.worm_hp.text = String(this.vars.health);
         this.sprite.worm_hp.textColor = this.FWP._proc.game_get_color(this.wcolor);
         this.sprite.worm_hpbox.width = this.FWP._proc.game_get_tfwidth(String(this.vars.health).length);
         this.sprite.worm_name.text = this.wname;
         this.sprite.worm_name.textColor = this.FWP._proc.game_get_color(this.wcolor);
         this.sprite.worm_namebox.width = this.FWP._proc.game_get_tfwidth(this.wname.length + 1);
      }
      
      public function worm_check_speed() : *
      {
         var _loc1_:* = 1;
         if(this.perks["soft_land"])
         {
            _loc1_ = this.FWP.get_perk_effect("soft_land",this.perks.soft_land,"");
         }
         if(this.vars.vy >= this.FWP._proc.MEDIUMFLYSPEED * _loc1_)
         {
            if(this.states.active && this.weapon_flags.AUTOONFALLING)
            {
               this.worm_fire();
               return;
            }
            if(this.states.flying != 3)
            {
               this.states.flying = 2;
            }
            this.states.control = false;
            this.states.firecontrol = false;
            this.vars.timeout = -100;
         }
      }
      
      public function worm_modify_cross(param1:Number) : void
      {
         var _loc2_:* = Math.round((param1 + 90) / 5.625);
         _loc2_ = _loc2_ == 0 ? 1 : _loc2_;
         var _loc3_:* = this.weapon_flags.FRAME;
         this.sprite.wsprite.gotoAndStop(_loc3_);
         if(this.weapon_flags.PARTVECTOR)
         {
            this.sprite.wsprite.weapon.gotoAndStop((param1 == 15 ? 2 : (param1 == 0 ? 1 : 0)) + (this.vars.tail == 10 ? 28 : (this.vars.tail == 20 ? 31 : 25)));
         }
         else
         {
            this.sprite.wsprite.weapon.gotoAndStop(_loc2_ + (this.vars.tail == 10 ? 57 : (this.vars.tail == 20 ? 90 : 24)));
         }
         if(_loc3_ == 24)
         {
            this.sprite.wsprite.weapon.gun.gotoAndStop(this.weapon_id);
            this.sprite.wsprite.crosshair.visible = this.weapon_flags.ALLOWCROSSHAIR;
            this.sprite.wsprite.crosshair.rotation = this.vars.crosshair;
            this.sprite.wsprite.crosshair.cross_color.gotoAndStop(this.wcolor);
            this.sprite.wsprite.crosshair.force.gotoAndStop(1);
            this.worm_show_laser_sight();
         }
         if(_loc3_ == 25)
         {
            this.sprite.wsprite.weapon.thinking_weapon.gotoAndStop(this.weapon_id);
            this.sprite.wsprite.weapon.thinking_weapon.scaleX = this.vars.direction;
         }
         if(_loc3_ == 33)
         {
            this.sprite.wsprite.crosshair.visible = this.weapon_flags.ALLOWCROSSHAIR;
            this.sprite.wsprite.crosshair.rotation = this.vars.crosshair;
            this.sprite.wsprite.crosshair.cross_color.gotoAndStop(this.wcolor);
         }
      }
      
      public function worm_fire() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
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
         this.cur_shot_fail = false;
         if(this.weapon_flags.ONFALLINGONLY && this.states.flying == 0)
         {
            return;
         }
         this.FWP._proc.ach_last_wptype = this.weapon_flags.wptype;
         if(this.weapon_flags.MULTIPLESHOT && this.weapon.shots_total == this.weapon.shots_remain || !this.weapon_flags.MULTIPLESHOT)
         {
            if(this.FWP._proc.teams[this.wteam].weapons[this.weapon_name][this.weapon_range] < 100)
            {
               --this.FWP._proc.teams[this.wteam].weapons[this.weapon_name][this.weapon_range];
            }
            this.FWP._proc.add_status(this.wname + " использует: ");
            this.FWP._proc.add_status("   " + this.FWP.WEAPONS_DEF[this.weapon_name].name);
            if(this.weapon_flags.MAKEPROJECTILE || this.weapon_flags.SPECIAL == "bullets" || this.weapon_flags.SPECIAL == "bat" || this.weapon_flags.SPECIAL == "firepunch" || this.weapon_flags.SPECIAL == "air_strike")
            {
               _loc5_ = this.FWP.get_peachful_bonus({
                  "spec":this.skills.spec,
                  "wptype":this.weapon_flags.wptype,
                  "attack":this.skills.attack,
                  "perks":this.perks,
                  "spec_mod":this.weapon_flags.spec_mod,
                  "wpclass":this.weapon_flags.wpclass
               });
               _loc6_ = this.FWP.get_range_upgrade(this.weapon_range,"damage",1);
               this.dmg_mult = (1 + _loc5_.damage) * _loc6_;
               _loc7_ = 1;
               _loc8_ = 0;
               if(this.FWP.player.perks["less_fail"])
               {
                  _loc7_ = this.FWP.get_perk_effect("less_fail",this.FWP.player.perks.less_fail,"");
               }
               if(this.FWP.player.perks["more_fail"])
               {
                  _loc8_ = this.FWP.get_perk_effect("more_fail",this.FWP.player.perks.more_fail,"");
               }
               _loc9_ = this.FWP.get_fail_chance(this.FWP.player.tired,_loc7_,_loc8_,this.wteam != 1).fail;
               _loc10_ = this.FWP.pseudo_random(0,100);
               if(_loc9_ * 100 - this.weapon_flags.unfail > _loc10_ && this.weapon_flags.SPECIAL != "bat" && this.weapon_flags.SPECIAL != "firepunch")
               {
                  this.cur_shot_fail = true;
                  if(this.weapon_flags.SPECIAL != "air_strike")
                  {
                     this.FWP._proc.add_status("   Осечка! Снаряд взорвался в руках.");
                  }
                  else
                  {
                     this.FWP._proc.add_status("   Осечка! Снаряды упали не туда.");
                  }
               }
               _loc11_ = this.FWP.pseudo_random(0,100);
               if((_loc12_ = this.FWP.get_ap_chance(this.perks,this.skills).ap) * 100 + this.weapon_flags.ap_mod + this.FWP.get_range_upgrade(this.weapon_range,"ap",1) > _loc11_ && !this.cur_shot_fail)
               {
                  this.ap_shot = true;
                  this.FWP._proc.add_status("   Пробивной выстрел!");
               }
               _loc13_ = this.FWP.pseudo_random(0,100);
               _loc14_ = 1;
               if(this.perks["luck"])
               {
                  _loc14_ += this.FWP.get_perk_effect("luck",this.perks.luck,"") * 100;
               }
               if(this.perks["luck2"])
               {
                  _loc14_ += this.FWP.get_perk_effect("luck2",this.perks.luck2,"") * 100;
               }
               if(_loc14_ + this.weapon_flags.crit + this.FWP.get_range_upgrade(this.weapon_range,"crit",1) > _loc13_ && !this.cur_shot_fail)
               {
                  this.FWP._proc.make_object("E","luck","",{
                     "x":x,
                     "y":y,
                     "timeout":35,
                     "seek_worm":this.wid
                  });
                  _loc15_ = 0;
                  if(this.perks["best_crit"])
                  {
                     _loc15_ = this.FWP.get_perk_effect("best_crit",this.perks.best_crit,"");
                  }
                  this.dmg_mult *= 1.5 + _loc15_;
                  this.FWP._proc.add_status("   Критический выстрел! +" + (50 + _loc15_ * 100) + "% к урону.");
               }
            }
         }
         _loc4_ = this.states.firing * this.FWP._proc.FORCEMULTIPLIER;
         this.states.firing = 0;
         if(this.weapon_flags.SOUND != "")
         {
            this.FWP._sound.play_sound(this.weapon_flags.SOUND);
         }
         if(this.weapon_flags.SPECIAL != "" && this.weapon_flags.SPECIAL != "air_strike" && this.weapon_flags.SPECIAL != "girder" && this.weapon_flags.SPECIAL != "choose_worm" && this.weapon_flags.SPECIAL != "kamikaze")
         {
            this.states.special = this.weapon_flags.SPECIAL;
            this.vars.special_timeout = 0;
            this.vars.fuel = 30;
            if(this.weapon_name == "upg_jet_pack" || this.weapon_name == "ag_pack")
            {
               this.vars.fuel *= 2;
            }
            if(this.FWP.player.perks["flyer"])
            {
               this.vars.fuel += this.FWP.get_perk_effect("flyer",this.FWP.player.perks.flyer,"");
            }
            this.vars.bullet_shots = this.weapon_flags.BULLETAMOUNT;
            this.vars.bullet_int = Math.round(this.weapon_flags.BULLETINTERVAL / 16);
            this.vars.firepunchreverse = 0;
            this.vars.firepunchtimer = -0.5;
            this.vars.parachutesprite = 16;
            this.vars.parachuteswing = this.sign(this.FWP._proc.W) / 2;
            if(this.weapon_flags.SPECIAL == "firepunch")
            {
               this.vars.special_timeout = this.states.flying == 0 ? 0 : 8.5;
            }
            this.vars.jumping = 0;
         }
         if(this.weapon_flags.SPECIAL == "choose_worm")
         {
            this.FWP._proc.choose_worm = true;
            this.FWP._proc.choose_worm_id = this.wid;
            this.FWP._proc.choose_worm_timeout = this.vars.timeout;
            this.worm_modify_sprite("animate");
            this.weapon_id = 0;
            this.states.resting = true;
            this.states.active = false;
            this.out_ready();
         }
         if(this.weapon_flags.SPECIAL == "kamikaze")
         {
            this.kamikaze_effect = this.vars.health;
            this.vars.health = 0;
            this.out_ready();
         }
         if(this.weapon_flags.FORCE)
         {
            _loc1_ = _loc4_ * this.vars.direction;
            _loc2_ = _loc4_;
         }
         else
         {
            _loc1_ = this.weapon_flags.defaultvx * this.vars.direction;
            _loc2_ = this.weapon_flags.defaultvy;
         }
         if(this.weapon_flags.FULLVECTOR || this.weapon_flags.HALFVECTOR || this.weapon_flags.PARTVECTOR || this.weapon_flags.ROPEVECTOR)
         {
            _loc1_ *= -Math.cos(this.vars.crosshair * Math.PI / 180);
            _loc2_ *= -Math.sin(this.vars.crosshair * Math.PI / 180);
         }
         if(this.weapon_flags.MAKEPROJECTILE)
         {
            if(!this.ai)
            {
               _loc16_ = "P";
               if(this.weapon_name == "mine" || this.weapon_name == "unfail_mine" || this.weapon_name == "pulse_mine" || this.weapon_name == "plasma_mine" || this.weapon_name == "fire_mine" || this.weapon_name == "nuclear_mine")
               {
                  _loc16_ = "M";
               }
               this.FWP._proc.make_object(_loc16_,this.weapon_flags.wid,"",{
                  "x":x,
                  "y":y,
                  "vx":_loc1_,
                  "vy":_loc2_,
                  "parent_wid":this.wid,
                  "bounce":this.weapon_flags.w_bounce,
                  "timeout":this.weapon_flags.w_seconds,
                  "dmg_mult":this.dmg_mult,
                  "fail":this.cur_shot_fail,
                  "ap":this.ap_shot
               });
            }
            else
            {
               this.FWP._proc.make_object("P",this.weapon_flags.wid,"",{
                  "x":x,
                  "y":y,
                  "vx":this.FWP._proc.ai_proj_prop.vx,
                  "vy":this.FWP._proc.ai_proj_prop.vy,
                  "parent_wid":this.wid,
                  "bounce":this.weapon_flags.w_bounce,
                  "timeout":this.FWP._proc.ai_proj_prop.timeout,
                  "dmg_mult":this.dmg_mult,
                  "flat":true,
                  "fail":this.cur_shot_fail,
                  "ap":this.ap_shot
               });
            }
            if(this.weapon_name == "hunting_rifle")
            {
               _loc17_ = 3;
               _loc18_ = 1;
               while(_loc18_ <= _loc17_)
               {
                  _loc1_ = this.weapon_flags.defaultvx * this.vars.direction;
                  _loc2_ = this.weapon_flags.defaultvy;
                  _loc1_ *= -Math.cos((this.vars.crosshair + this.FWP.pseudo_random(-7,7)) * Math.PI / 180);
                  _loc2_ *= -Math.sin((this.vars.crosshair + this.FWP.pseudo_random(-7,7)) * Math.PI / 180);
                  this.FWP._proc.make_object("P",this.weapon_flags.wid,"",{
                     "x":x,
                     "y":y,
                     "vx":_loc1_,
                     "vy":_loc2_,
                     "parent_wid":this.wid,
                     "bounce":this.weapon_flags.w_bounce,
                     "timeout":this.weapon_flags.w_seconds,
                     "dmg_mult":this.dmg_mult,
                     "ap":this.ap_shot
                  });
                  _loc18_++;
               }
            }
            if(this.weapon_name == "howitzer")
            {
               this.FWP._proc.make_object("P","howitzer_impact","",{
                  "x":x,
                  "y":y,
                  "vx":0,
                  "vy":0,
                  "parent_wid":this.wid,
                  "bounce":this.weapon_flags.w_bounce,
                  "timeout":this.weapon_flags.w_seconds,
                  "dmg_mult":this.dmg_mult
               });
            }
         }
         if(this.weapon_name == "turbo_rifle" && this.skills.protect < 50 && this.perks["poison_res"] != 3 && this.FWP.player.cur_impl != 7)
         {
            this.FWP._proc.make_object("P","turbo_rifle_fail","",{
               "x":x,
               "y":y,
               "vx":0,
               "vy":0,
               "parent_wid":this.wid,
               "bounce":this.weapon_flags.w_bounce,
               "timeout":this.weapon_flags.w_seconds,
               "dmg_mult":this.dmg_mult
            });
         }
         if(this.weapon_name == "vindicator" && (this.skills.protect < 100 || this.perks["poison_res"] != 3) && this.FWP.player.cur_impl != 7)
         {
            this.FWP._proc.make_object("P","vindicator_fail","",{
               "x":x,
               "y":y,
               "vx":0,
               "vy":0,
               "parent_wid":this.wid,
               "bounce":this.weapon_flags.w_bounce,
               "timeout":this.weapon_flags.w_seconds,
               "dmg_mult":this.dmg_mult
            });
         }
         if(this.weapon_flags.MULTIPLESHOT)
         {
            if(this.weapon.shots_total == 0)
            {
               this.weapon.shots_total = this.weapon_flags.SHOTSAMOUNT;
               this.weapon.shots_remain = this.weapon.shots_total;
            }
            if(this.weapon_flags.FORCE)
            {
               this.sprite.wsprite.crosshair.force.gotoAndStop(1);
            }
            --this.weapon.shots_remain;
            if(this.weapon.shots_remain != 0)
            {
               this.states.resting = true;
               this.FWP._proc.wait_for_ready = this.pid;
               this.FWP._proc.OBJ[this.pid].ready = true;
               this.FWP._proc.check_ready(this.pid);
               return;
            }
            this.weapon.shots_total = 0;
            if(this.weapon_flags.TAKEMOVE)
            {
               this.worm_take_move();
            }
         }
         else if(this.weapon_flags.TAKEMOVE)
         {
            this.worm_take_move();
         }
         if(this.weapon_flags.IMPACT)
         {
            this.states.control = false;
            this.states.firecontrol = false;
            this.vars.vs = 2 * this.vars.direction;
            this.vars.sliding = true;
            this.weapon_id = 0;
            this.worm_modify_sprite("");
         }
         if(this.weapon_flags.INSTANTTHINK)
         {
            if(this.weapon_flags.wid == "low_gravity")
            {
               this.FWP._proc.G = this.FWP._proc.G == 0.24 ? 0.12 : 0.24;
            }
            if(this.weapon_flags.wid == "fast_walk")
            {
               this.FWP._proc.WKEYDELAY = 1;
            }
            if(this.weapon_flags.wid == "laser_sight")
            {
               this.FWP._proc.laser_activated = true;
            }
            if(this.weapon_flags.wid == "add_time")
            {
               this.vars.timeout += this.FWP.player.settings.skill >= 10 ? 15000 : 30000;
            }
            if(this.weapon_flags.wid == "medikit")
            {
               _loc19_ = 1;
               if(this.FWP.player.perks["medic"])
               {
                  _loc19_ = this.FWP.get_perk_effect("medic",this.FWP.player.perks.medic,"") * 2 - 1;
               }
               this.worm_apply_damage(Math.round(-1 * 50 * _loc19_),"regen");
            }
            if(this.weapon_flags.wid == "super_medikit")
            {
               _loc20_ = 1;
               if(this.FWP.player.perks["medic"])
               {
                  _loc20_ = this.FWP.get_perk_effect("medic",this.FWP.player.perks.medic,"") * 2 - 1;
               }
               this.worm_apply_damage(Math.round(-1 * 100 * _loc20_),"regen");
               this.sick = 0;
               this.sick_next = 0;
               this.vars.paratime = 0;
               this.vars.paralyzed = false;
            }
            if(this.weapon_flags.wid == "invisibility")
            {
               this.FWP._proc.CUR_STEALTH = 40;
               this.FWP._proc.STEALTH_DURATION = 2;
               this.FWP._proc.apply_worms_alpha();
            }
            this.weapon_id = 0;
            this.worm_hide_weapon();
         }
      }
      
      public function worm_take_move() : *
      {
         this.states.firecontrol = false;
         this.states.escape = true;
         if(!this.weapon_flags.NOESCAPE)
         {
            this.vars.timeout = this.FWP._proc.ESCAPETIME * 1000;
         }
         else
         {
            this.vars.timeout = 300;
         }
         if(this.states.special == "")
         {
            if(!this.weapon_flags.NOHIDINGWEAPON)
            {
               this.worm_hide_weapon();
            }
            else
            {
               this.states.special = "WP IN";
               this.vars.special_timeout = 0.5;
            }
         }
      }
      
      public function worm_show_weapon() : *
      {
         this.states.special = "WP OUT";
         this.vars.special_timeout = 12;
      }
      
      public function worm_hide_weapon() : *
      {
         this.states.special = "WP IN";
         this.vars.special_timeout = 6;
      }
      
      public function worm_show_laser_sight() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(this.weapon_flags.ALLOWLASERSIGHT && (this.weapon_flags.AUTOLASER != 0 || this.FWP._proc.laser_activated || this.FWP.player.perks["laser_sights"] == 3))
         {
            _loc1_ = this.weapon_flags.AUTOLASER;
            _loc2_ = !!this.FWP.player.perks["laser_sights"] ? this.FWP.player.perks["laser_sights"] + 2 : 2;
            this.sprite.wsprite.crosshair.laser.gotoAndStop(Math.max(_loc1_,_loc2_));
         }
         else
         {
            this.sprite.wsprite.crosshair.laser.gotoAndStop(1);
         }
      }
      
      public function worm_remove_wp_states() : *
      {
         if(this.ai)
         {
            return;
         }
         if(this.states.special == "WP OUT" || this.states.special == "WP IN" || this.states.special == "CROSS TO LAST")
         {
            this.states.special = "";
         }
      }
      
      public function worm_death_loop() : *
      {
         this.vars.special_timeout += 0.5;
         this.sprite.wsprite.gotoAndStop(21);
         this.sprite.wsprite.death.gotoAndStop(Math.floor(this.vars.special_timeout));
         if(this.vars.special_timeout == 30)
         {
            this.sprite.worm_namebox.visible = false;
            this.sprite.worm_hpbox.visible = false;
            this.sprite.worm_name.visible = false;
            this.sprite.worm_hp.visible = false;
         }
         if(this.vars.special_timeout == 60)
         {
            if(this.FWP._proc._play_type == "survival" && this.wteam != 1 && this.FWP._proc.SURV_KILLS != this.FWP.TEAMS_DEF["survival" + this.FWP._proc._play_id].kills)
            {
               this.FWP._proc.survival_replace(this.wid);
            }
            else
            {
               this.FWP._proc.OBJ[this.pid].model = "G";
               this.FLAGS.REFLECT = true;
               this.model = "G";
               this.death = false;
               this.sprite.wsprite.gotoAndStop(22);
               if(this.wteam == 1 && this.FWP.player.cur_rip != 0)
               {
                  this.sprite.wsprite.grave.gotoAndStop(this.FWP.player.cur_rip + 1);
               }
               else
               {
                  this.sprite.wsprite.grave.gotoAndStop(1);
               }
               this.FWP._proc.check_teams();
               this.FWP._proc.add_status(this.wname + " погибает.");
               this.FWP._proc.worms[this.wid].state = "none";
               if(this.kamikaze_effect == 0)
               {
                  this.FWP._proc.make_object("P","worm_explode","",{
                     "x":x,
                     "y":y + 2,
                     "vx":0,
                     "vy":0,
                     "dmg_mult":this.dmg_mult
                  });
               }
               else if(this.kamikaze_effect < 100)
               {
                  this.FWP._proc.make_object("P","worm_explode","",{
                     "x":x,
                     "y":y + 2,
                     "vx":0,
                     "vy":0,
                     "dmg_mult":this.kamikaze_effect
                  });
               }
               else if(this.kamikaze_effect < 500)
               {
                  this.FWP._proc.make_object("P","worm_explode_100","",{
                     "x":x,
                     "y":y + 2,
                     "vx":0,
                     "vy":0,
                     "dmg_mult":this.kamikaze_effect
                  });
               }
               else if(this.kamikaze_effect < 1000)
               {
                  this.FWP._proc.make_object("P","worm_explode_150","",{
                     "x":x,
                     "y":y + 2,
                     "vx":0,
                     "vy":0,
                     "dmg_mult":this.kamikaze_effect
                  });
               }
               else
               {
                  this.FWP._proc.make_object("P","worm_explode_200","",{
                     "x":x,
                     "y":y + 2,
                     "vx":0,
                     "vy":0,
                     "dmg_mult":this.kamikaze_effect
                  });
               }
            }
         }
      }
      
      public function worm_check_fire() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         this.vars.checkfiretime = 0;
         if(this.FWP._world.FireMap.getPixel32(Math.round(x),Math.round(y)).toString(16) != "0")
         {
            this.affected = true;
            _loc4_ = 0.75;
            if(this.FWP._proc.napalm_used)
            {
               _loc4_ = 2.5;
            }
            if(this.perks["fire_res"] == 3 || this.wteam == 1 && this.FWP.player.cur_impl >= 6)
            {
               this.affected_params.damage += 0;
            }
            else
            {
               this.affected_params.damage += _loc4_;
            }
            this.affected_params.vx += this.FWP.pseudo_random(-0.5,0.5);
            this.affected_params.vy += -1;
            this.affected_params.mode = "fire";
         }
      }
      
      public function mod(param1:Number) : Number
      {
         return Math.abs(param1);
      }
      
      public function sign(param1:Number) : Number
      {
         return param1 >= 0 ? Number(1) : Number(-1);
      }
      
      public function goto(param1:String) : Number
      {
         var _loc2_:Array = null;
         _loc2_ = new Array(3);
         _loc2_ = this.FWP._world.allow_goto(x,y,this.FLAGS.W,this.FLAGS.H,param1);
         if(_loc2_[0])
         {
            if(param1 == "right")
            {
               ++x;
               this.vars.direction = -1;
            }
            if(param1 == "left")
            {
               --x;
               this.vars.direction = 1;
            }
            if(this.vars.vs == 0)
            {
               this.worm_modify_sprite("tail");
            }
            if(_loc2_[1] != 0)
            {
               y -= _loc2_[1];
               return 1;
            }
            if(_loc2_[2] != 100)
            {
               y += _loc2_[2];
               return _loc2_[2] == 0 ? Number(0) : Number(2);
            }
            return 3;
         }
         this.vars.steps_left = 0;
         this.vars.steps_right = 0;
         return 4;
      }
      
      public function goto_return(param1:String) : Number
      {
         var _loc2_:Array = null;
         _loc2_ = new Array(3);
         _loc2_ = this.FWP._world.allow_goto(x,y,this.FLAGS.W,this.FLAGS.H,param1);
         if(_loc2_[0])
         {
            if(_loc2_[1] != 0)
            {
               return 1;
            }
            if(_loc2_[2] != 100)
            {
               return _loc2_[2] == 0 ? Number(0) : Number(2);
            }
            return 3;
         }
         return 4;
      }
   }
}
