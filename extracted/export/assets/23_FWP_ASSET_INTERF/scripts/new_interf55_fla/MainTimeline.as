package new_interf55_fla
{
   import flash.display.MovieClip;
   import flash.system.Security;
   
   public dynamic class MainTimeline extends MovieClip
   {
       
      
      public function MainTimeline()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function get_object(param1:String) : *
      {
         trace(param1);
         if(param1 == "girder_choose")
         {
            return new girder_choose();
         }
         if(param1 == "cursor_clip")
         {
            return new cursor_clip();
         }
         if(param1 == "wind_bar")
         {
            return new wind_bar();
         }
         if(param1 == "cpu_flags")
         {
            return new cpu_flags();
         }
         if(param1 == "big_wp")
         {
            return new big_wp();
         }
         if(param1 == "big_cpu_wp")
         {
            return new big_cpu_wp();
         }
         if(param1 == "big_stims")
         {
            return new big_stims();
         }
         if(param1 == "big_flags")
         {
            return new big_flags();
         }
         if(param1 == "big_rips")
         {
            return new big_rips();
         }
         if(param1 == "big_impls")
         {
            return new big_impls();
         }
         if(param1 == "big_objs")
         {
            return new big_objs();
         }
         if(param1 == "gold")
         {
            return new gold();
         }
         if(param1 == "diamond")
         {
            return new diamond();
         }
         if(param1 == "wp_box")
         {
            return new wp_box();
         }
         if(param1 == "wp_box_active")
         {
            return new wp_box_active();
         }
         if(param1 == "wp_box_stolen")
         {
            return new wp_box_stolen();
         }
         if(param1 == "wp_box_crafted")
         {
            return new wp_box_crafted();
         }
         if(param1 == "wp_amount")
         {
            return new wp_amount();
         }
         if(param1 == "wp_10plus")
         {
            return new wp_10plus();
         }
         if(param1 == "perks_sheet")
         {
            return new perks_sheet();
         }
         if(param1 == "radio_button")
         {
            return new radio_button();
         }
         if(param1 == "delay_digits")
         {
            return new delay_digits();
         }
         if(param1 == "icon_current")
         {
            return new icon_current();
         }
         if(param1 == "icon_question")
         {
            return new icon_question();
         }
         if(param1 == "skill_worms")
         {
            return new skill_worms();
         }
         if(param1 == "achiev_bitmap")
         {
            return new achiev_bitmap();
         }
         if(param1 == "stars")
         {
            return new stars();
         }
         if(param1 == "minimaps")
         {
            return {
               "boss":new small_boss(),
               "mission":new small_missions(),
               "wormville":new small_wormville(),
               "molivand":new small_molivand(),
               "rolitrad":new small_rolitrad(),
               "traver":new small_traver(),
               "sheovar":new small_sheovar(),
               "forbidden":new small_forbidden()
            };
         }
         if(param1 == "stims")
         {
            return {
               "stimpack":new stimpack(),
               "jet":new jet(),
               "buffout":new buffout(),
               "superstimpack":new superstimpack(),
               "psycho":new psycho()
            };
         }
         if(param1 == "perk_levels")
         {
            return [0,new perk_level1(),new perk_level2(),new perk_level3(),new perk_level4(),new perk_level5(),new perk_level6(),new perk_level7(),new perk_level8(),new perk_level9(),new perk_level10(),new perk_level11(),new perk_level12(),new perk_level13(),new perk_level14(),new perk_level15(),new perk_level16(),new perk_level17(),new perk_level18(),new perk_level19(),new perk_level20()];
         }
         if(param1 == "popup")
         {
            return new _popup();
         }
         if(param1 == "girder1")
         {
            return new girder1();
         }
         if(param1 == "girder2")
         {
            return new girder2();
         }
         if(param1 == "girder3")
         {
            return new girder3();
         }
         if(param1 == "girder4")
         {
            return new girder4();
         }
         if(param1 == "girder5")
         {
            return new girder5();
         }
         if(param1 == "girder6")
         {
            return new girder6();
         }
         if(param1 == "girder7")
         {
            return new girder7();
         }
         if(param1 == "girder8")
         {
            return new girder8();
         }
         if(param1 == "girder9")
         {
            return new girder9();
         }
         if(param1 == "girder10")
         {
            return new girder10();
         }
         if(param1 == "girder11")
         {
            return new girder11();
         }
         if(param1 == "girder12")
         {
            return new girder12();
         }
         if(param1 == "girder13")
         {
            return new girder13();
         }
         if(param1 == "girder14")
         {
            return new girder14();
         }
         if(param1 == "girder15")
         {
            return new girder15();
         }
         if(param1 == "girder16")
         {
            return new girder16();
         }
         if(param1 == "menu_bg")
         {
            return new menu_bg();
         }
         if(param1 == "_mainframe")
         {
            return new _mainframe();
         }
         if(param1 == "menu_fight")
         {
            return new menu_fight();
         }
         if(param1 == "menu_skills")
         {
            return new menu_skills();
         }
         if(param1 == "menu_tasks")
         {
            return new menu_tasks();
         }
         if(param1 == "menu_choose_perk")
         {
            return new menu_choose_perk();
         }
         if(param1 == "menu_buy_perk")
         {
            return new menu_buy_perk();
         }
         if(param1 == "menu_arsenal")
         {
            return new menu_arsenal();
         }
         if(param1 == "menu_choose_spec")
         {
            return new menu_choose_spec();
         }
         if(param1 == "menu_spec_learn_more")
         {
            return new menu_spec_learn_more();
         }
         if(param1 == "menu_shop")
         {
            return new menu_shop();
         }
         if(param1 == "menu_rating")
         {
            return new menu_rating();
         }
         if(param1 == "menu_info")
         {
            return new menu_info();
         }
         if(param1 == "menu_achiev")
         {
            return new menu_achiev();
         }
         if(param1 == "menu_crafting")
         {
            return new menu_crafting();
         }
         if(param1 == "menu_finish_crafting")
         {
            return new menu_finish_crafting();
         }
         if(param1 == "menu_game")
         {
            return new menu_game();
         }
         if(param1 == "menu_replay")
         {
            return new menu_replay();
         }
         if(param1 == "menu_roul")
         {
            return new menu_roul();
         }
         if(param1 == "menu_just_play")
         {
            return new menu_just_play();
         }
         if(param1 == "menu_end_game_lose")
         {
            return new menu_end_game_lose();
         }
         if(param1 == "menu_end_game_win")
         {
            return new menu_end_game_win();
         }
         if(param1 == "menu_end_game_new_lvl")
         {
            return new menu_end_game_new_lvl();
         }
         if(param1 == "menu_end_game_surprise")
         {
            return new menu_end_game_surprise();
         }
         if(param1 == "menu_what_opened")
         {
            return new menu_what_opened();
         }
         if(param1 == "menu_grave_search")
         {
            return new menu_grave_search();
         }
         if(param1 == "menu_surprise")
         {
            return new menu_surprise();
         }
         if(param1 == "menu_settings")
         {
            return new menu_settings();
         }
         if(param1 == "menu_question")
         {
            return new menu_question();
         }
         if(param1 == "menu_present")
         {
            return new menu_present();
         }
         if(param1 == "menu_view_tutorial")
         {
            return new menu_view_tutorial();
         }
         if(param1 == "menu_weapon_sheet")
         {
            return new menu_weapon_sheet();
         }
         if(param1 == "menu_friends")
         {
            return new menu_friends();
         }
         if(param1 == "menu_top")
         {
            return new menu_top();
         }
         if(param1 == "menu_clan_members")
         {
            return new menu_clan_members();
         }
         if(param1 == "menu_clans")
         {
            return new menu_clans();
         }
         if(param1 == "menu_user_info")
         {
            return new menu_user_info();
         }
         if(param1 == "menu_error")
         {
            return new menu_error();
         }
         if(param1 == "menu_calc")
         {
            return new menu_calc();
         }
         if(param1 == "menu_wormpedia")
         {
            return new menu_wormpedia();
         }
         if(param1 == "menu_recipes")
         {
            return new menu_recipes();
         }
         if(param1 == "menu_assault")
         {
            return new menu_assault();
         }
         if(param1 == "menu_how_tribute_calcs")
         {
            return new menu_how_tribute_calcs();
         }
         if(param1 == "menu_papa")
         {
            return new menu_papa();
         }
         if(param1 == "menu_papa_not_here")
         {
            return new menu_papa_not_here();
         }
         if(param1 == "menu_papa_shop")
         {
            return new menu_papa_shop();
         }
         if(param1 == "menu_upgrade_weapon")
         {
            return new menu_upgrade_weapon();
         }
         if(param1 == "menu_sell_weapon")
         {
            return new menu_sell_weapon();
         }
         if(param1 == "menu_tribute")
         {
            return new menu_tribute();
         }
         if(param1 == "menu_steal")
         {
            return new menu_steal();
         }
         if(param1 == "menu_scaner")
         {
            return new menu_scaner();
         }
         if(param1 == "menu_pay")
         {
            return new menu_pay();
         }
         if(param1 == "menu_tired")
         {
            return new menu_tired();
         }
         if(param1 == "menu_auc")
         {
            return new menu_auc();
         }
         if(param1 == "menu_auc_rules")
         {
            return new menu_auc_rules();
         }
         if(param1 == "buy_weapon")
         {
            return new buy_weapon();
         }
         if(param1 == "clip_achiev")
         {
            return new clip_achiev();
         }
         if(param1 == "clip_new_perk")
         {
            return new clip_new_perk();
         }
         if(param1 == "choose_task")
         {
            return new choose_task();
         }
         if(param1 == "buy_weapon")
         {
            return new buy_weapon();
         }
         if(param1 == "clip_what_opened")
         {
            return new clip_what_opened();
         }
         if(param1 == "clip_grave_search")
         {
            return new clip_grave_search();
         }
         if(param1 == "clip_task")
         {
            return new clip_task();
         }
         if(param1 == "clip_weapon_arsenal")
         {
            return new clip_weapon_arsenal();
         }
         if(param1 == "clip_weapon_in_game")
         {
            return new clip_weapon_in_game();
         }
         if(param1 == "clip_weapon_recipes")
         {
            return new clip_weapon_recipes();
         }
         if(param1 == "clip_friend")
         {
            return new clip_friend();
         }
         if(param1 == "clip_note")
         {
            return new clip_note();
         }
         if(param1 == "clip_scaner_team")
         {
            return new clip_scaner_team();
         }
         if(param1 == "clip_scaner_worm")
         {
            return new clip_scaner_worm();
         }
         if(param1 == "clip_distance")
         {
            return new clip_distance();
         }
         return {};
      }
      
      function frame1() : *
      {
         Security.allowDomain("*");
      }
   }
}
