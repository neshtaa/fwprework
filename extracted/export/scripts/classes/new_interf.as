package classes
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   
   public class new_interf extends MovieClip
   {
       
      
      public var FWP;
      
      public var mainframe;
      
      public var inv_button;
      
      public var popup;
      
      public var MainBitmap:Bitmap;
      
      public var MainBitmapData:BitmapData;
      
      public var SecondBitmap:Bitmap;
      
      public var SecondBitmapData:BitmapData;
      
      public var ThirdBitmap:Bitmap;
      
      public var ThirdBitmapData:BitmapData;
      
      public var BlurBitmap:Bitmap;
      
      public var BlurBitmapData:BitmapData;
      
      public var GirderClip;
      
      public var CursorClip;
      
      public var WindBar;
      
      public var CPUFlags;
      
      public var BigWP;
      
      public var BigCPUWP;
      
      public var BigStims;
      
      public var BigFlags;
      
      public var BigRIPs;
      
      public var BigImpls;
      
      public var BigObjs;
      
      public var GoldIcon;
      
      public var DiamIcon;
      
      public var WPBox;
      
      public var WPBoxActive;
      
      public var WPBoxStolen;
      
      public var WPBoxCrafted;
      
      public var WPAmount;
      
      public var WP10Plus;
      
      public var WPBlurGray;
      
      public var WPBlur;
      
      public var WPHardBlur;
      
      public var WPAlpha;
      
      public var WPRed;
      
      public var PerksSheet;
      
      public var Stims;
      
      public var RadioButton;
      
      public var DelayDigits;
      
      public var IconCurrent;
      
      public var PerkLevels;
      
      public var minimaps;
      
      public var IconQuestion;
      
      public var WormsBitmap;
      
      public var AchievBitmap;
      
      public var Stars;
      
      public var perk_places;
      
      public var stim_places;
      
      public var bitmaps;
      
      public var bitmap_datas;
      
      public var buttons;
      
      public var squares;
      
      public var world_position_x = 0;
      
      public var world_position_y = 0;
      
      public var world_left_square = 1;
      
      public var world_top_square = 1;
      
      public var map_moving = "";
      
      public var cur_screen;
      
      public var MAX_HP_WIDTH = 130;
      
      public var MAX_STIM = 4;
      
      public var girder1map;
      
      public var girder2map;
      
      public var girder3map;
      
      public var girder4map;
      
      public var girder5map;
      
      public var girder6map;
      
      public var girder7map;
      
      public var girder8map;
      
      public var girder9map;
      
      public var girder10map;
      
      public var girder11map;
      
      public var girder12map;
      
      public var girder13map;
      
      public var girder14map;
      
      public var girder15map;
      
      public var girder16map;
      
      public var barracks;
      
      public var weapons_text;
      
      public var perks_text;
      
      public var achiev_text;
      
      public var task_texts;
      
      public var cur_page = 1;
      
      public var cur_weapon = "";
      
      public var cur_element = 0;
      
      public var play_type = "career";
      
      public var InterfaceText = 16763904;
      
      public var InterfaceTextHighlight = 16777215;
      
      public var InterfaceTextBrown = 12865280;
      
      public var InterfaceTextGreen = 65280;
      
      public var NormalFormatLeft:TextFormat;
      
      public var NormalFormatCenter:TextFormat;
      
      public var surprise = "";
      
      public var last_game = 0;
      
      public var levels_upg = 0;
      
      public var top_mode = 1;
      
      public var top_page = 1;
      
      public var shop_page = 1;
      
      public var shop_mode = "p";
      
      public var shop_type = "weapons";
      
      public var perks_mode = "wptype";
      
      public var craft_wp_page = 1;
      
      public var craft_obj_page = 1;
      
      public var temp_replay_string = "";
      
      public var opened_user_uid = 0;
      
      public var opened_clan = 0;
      
      public var question_mode = "";
      
      public var USER_BALANCE = 0;
      
      public var VOTES_TO_DRAW = 0;
      
      public var DIAM_TO_TRANS = 0;
      
      public var PLAYER_DIAM = 0;
      
      public var display_popup_perk = 0;
      
      public var set_quick_weapon = "";
      
      public var temp_buys = 0;
      
      public var slider_control = false;
      
      public var slider_top = 138;
      
      public var slider_bottom = 448;
      
      public var floating_control = false;
      
      public var tutor_opened_by_user = false;
      
      public var opened_filter = false;
      
      public var last_slider_clicked = "";
      
      public var scaner_mode = "teams";
      
      public var error_mode = "";
      
      public var calc_weapon = "";
      
      public var success_steal = false;
      
      public var succ_steal_weapon = "";
      
      public var steal_try_luck = false;
      
      public var steal_try_merch = false;
      
      public var steal_state = "";
      
      public var papa_state = "";
      
      public var wpedia_article = "";
      
      public var papa_checked = false;
      
      public var distance_boxes;
      
      public var distance_box_container;
      
      public var clicked_grave = 0;
      
      public var graves_array;
      
      public var last_call_game_mode = "";
      
      public var weapon_stack;
      
      public var weapon_diss;
      
      public var floating_weapon;
      
      public var crafting_result;
      
      public var achiev_bonus_text = "";
      
      public var task_bonus_text = "";
      
      public var changes_made = false;
      
      public var mf_shop_frame = 1;
      
      public var mf_shop_freeze = 0;
      
      public var success_auc = false;
      
      public var no_anim_def;
      
      public function new_interf(param1:*)
      {
         this.MainBitmap = new Bitmap();
         this.SecondBitmap = new Bitmap();
         this.ThirdBitmap = new Bitmap();
         this.BlurBitmap = new Bitmap();
         this.WPBlurGray = new BitmapData(47,46,true,3392353075);
         this.WPBlur = new BitmapData(47,46,true,3694467593);
         this.WPHardBlur = new BitmapData(47,46,true,4013234697);
         this.WPAlpha = new BitmapData(47,46,true,1426063360);
         this.WPRed = new BitmapData(47,46,true,3707712256);
         this.Stims = {};
         this.PerkLevels = [0,{}];
         this.minimaps = {};
         this.perk_places = new Array();
         this.stim_places = new Array("stimpack","jet","buffout","superstimpack","psycho");
         this.bitmaps = {};
         this.bitmap_datas = {};
         this.buttons = {};
         this.squares = {};
         this.cur_screen = new Array(0,{});
         this.barracks = {
            "teams":2,
            "worms":2,
            "bg_mode":"background_wormville",
            "bg_type":"",
            "team1":{
               "worms":1,
               "cpu_level":0,
               "color":2,
               "name":"Команда #1"
            },
            "team2":{
               "worms":1,
               "cpu_level":0,
               "color":1,
               "name":"Команда #2"
            },
            "team3":{
               "worms":0,
               "cpu_level":0,
               "color":3,
               "name":"Команда #3"
            },
            "team4":{
               "worms":0,
               "cpu_level":0,
               "color":4,
               "name":"Команда #4"
            }
         };
         this.weapons_text = {};
         this.perks_text = {};
         this.achiev_text = {};
         this.task_texts = [];
         this.NormalFormatLeft = new TextFormat();
         this.NormalFormatCenter = new TextFormat();
         this.distance_boxes = {};
         this.distance_box_container = new MovieClip();
         this.graves_array = [];
         this.weapon_stack = [0,{},{},{},{},{},{}];
         this.weapon_diss = {};
         this.floating_weapon = {};
         this.crafting_result = {};
         this.no_anim_def = {
            "skills_main":0,
            "mainframe":0,
            "fight":0,
            "just_play":0,
            "skills":0,
            "crafting":0,
            "assault":0,
            "tasks":0,
            "perks":0,
            "shop":0,
            "achiev":0,
            "game":0,
            "replay":0,
            "roul":0,
            "scaner":0,
            "friends":0,
            "top":0,
            "arsenal":0,
            "user_info":0,
            "weapon_sheet":0
         };
         super();
         this.FWP = param1;
         this.GirderClip = this.FWP.container_interf.get_object("girder_choose");
         this.CursorClip = this.FWP.container_interf.get_object("cursor_clip");
         this.WindBar = this.FWP.container_interf.get_object("wind_bar");
         this.CPUFlags = this.FWP.container_interf.get_object("cpu_flags");
         this.BigWP = this.FWP.container_interf.get_object("big_wp");
         this.BigCPUWP = this.FWP.container_interf.get_object("big_cpu_wp");
         this.BigStims = this.FWP.container_interf.get_object("big_stims");
         this.BigFlags = this.FWP.container_interf.get_object("big_flags");
         this.BigRIPs = this.FWP.container_interf.get_object("big_rips");
         this.BigImpls = this.FWP.container_interf.get_object("big_impls");
         this.BigObjs = this.FWP.container_interf.get_object("big_objs");
         this.GoldIcon = this.FWP.container_interf.get_object("gold");
         this.DiamIcon = this.FWP.container_interf.get_object("diamond");
         this.WPBox = this.FWP.container_interf.get_object("wp_box");
         this.WPBoxActive = this.FWP.container_interf.get_object("wp_box_active");
         this.WPBoxStolen = this.FWP.container_interf.get_object("wp_box_stolen");
         this.WPBoxCrafted = this.FWP.container_interf.get_object("wp_box_crafted");
         this.WPAmount = this.FWP.container_interf.get_object("wp_amount");
         this.WP10Plus = this.FWP.container_interf.get_object("wp_10plus");
         this.PerksSheet = this.FWP.container_interf.get_object("perks_sheet");
         this.Stims = this.FWP.container_interf.get_object("stims");
         this.RadioButton = this.FWP.container_interf.get_object("radio_button");
         this.DelayDigits = this.FWP.container_interf.get_object("delay_digits");
         this.IconCurrent = this.FWP.container_interf.get_object("icon_current");
         this.PerkLevels = this.FWP.container_interf.get_object("perk_levels");
         this.minimaps = this.FWP.container_interf.get_object("minimaps");
         this.IconQuestion = this.FWP.container_interf.get_object("icon_question");
         this.WormsBitmap = this.FWP.container_interf.get_object("skill_worms");
         this.AchievBitmap = this.FWP.container_interf.get_object("achiev_bitmap");
         this.Stars = this.FWP.container_interf.get_object("stars");
         this.girder1map = this.FWP.container_interf.get_object("girder1");
         this.girder2map = this.FWP.container_interf.get_object("girder2");
         this.girder3map = this.FWP.container_interf.get_object("girder3");
         this.girder4map = this.FWP.container_interf.get_object("girder4");
         this.girder5map = this.FWP.container_interf.get_object("girder5");
         this.girder6map = this.FWP.container_interf.get_object("girder6");
         this.girder7map = this.FWP.container_interf.get_object("girder7");
         this.girder8map = this.FWP.container_interf.get_object("girder8");
         this.girder9map = this.FWP.container_interf.get_object("girder9");
         this.girder10map = this.FWP.container_interf.get_object("girder10");
         this.girder11map = this.FWP.container_interf.get_object("girder11");
         this.girder12map = this.FWP.container_interf.get_object("girder12");
         this.girder13map = this.FWP.container_interf.get_object("girder13");
         this.girder14map = this.FWP.container_interf.get_object("girder14");
         this.girder15map = this.FWP.container_interf.get_object("girder15");
         this.girder16map = this.FWP.container_interf.get_object("girder16");
         addChild(this.GirderClip);
         addChild(this.CursorClip);
         this.GirderClip.visible = false;
         this.CursorClip.visible = false;
         this.popup = this.FWP.container_interf.get_object("popup");
         addChild(this.popup);
         this.popup.visible = false;
         this.popup.alpha = 0.9;
         this.popup.x = -1000;
         this.MainBitmap = new Bitmap();
         this.MainBitmapData = new BitmapData(807,600,true,0);
         this.MainBitmap.bitmapData = this.MainBitmapData;
         this.BlurBitmap = new Bitmap();
         this.BlurBitmapData = new BitmapData(807,600,true,0);
         this.BlurBitmap.bitmapData = this.BlurBitmapData;
         this.init_texts();
         this.init("mainframe");
         if(this.FWP.get_present != 0 && this.FWP.player.view_tutorial == 1)
         {
            this.init("present");
         }
         if(this.FWP.player.view_tutorial != 1)
         {
            this.init("view_tutorial");
         }
      }
      
      public function init_texts() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         this.NormalFormatLeft.align = TextFormatAlign.LEFT;
         this.NormalFormatLeft.font = "Tahoma";
         this.NormalFormatLeft.size = 11;
         this.NormalFormatLeft.bold = true;
         this.NormalFormatCenter.align = TextFormatAlign.CENTER;
         this.NormalFormatCenter.font = "Tahoma";
         this.NormalFormatCenter.size = 11;
         this.NormalFormatCenter.bold = true;
         for(_loc1_ in this.FWP.WEAPONS_DEF)
         {
            this.weapons_text[_loc1_] = "";
         }
         _loc2_ = "Безотказное вооружение хорошо тем, что никогда не дает осечек, а также имеет бонус к шансу критического выстрела +50%.";
         this.weapons_text["bazooka"] = "Базука - одно из самых широкоиспользуемых оружий. Для прицеливания используйте стрелки Вверх и Вниз; для выстрела зажимайте Пробел. Чем дольше вы его держите, тем большей скоростью будет обладать снаряд. Базука подвержена влиянию ветра, на это стоит вводить поправку. Снаряд взрывается при первом же пересечении с землей или с червем.";
         this.weapons_text["unfail_bazooka"] = _loc2_;
         this.weapons_text["fire_bazooka"] = "Благодаря напалму внутри снаряда, после взрыва базука разбрасывает вокруг себя огонь. Изобретение группировки червей, известных под названием Мастера.";
         this.weapons_text["poison_bazooka"] = "Ядовитая базука во всех отношениях похожа на обычную, но при взрыве выпускает облако ядовитого газа, заражающее ближайших червей.";
         this.weapons_text["ap_bazooka"] = "Одно из самых мощных оружий класса Базук. Бронебойная базука снабжена тремя детонаторами и усиленной оболочкой, что позволяет ей взрывать три препятствия подряд.";
         this.weapons_text["howitzer"] = "Кумулятивный снаряд способен нанести огромный урон врагу, хотя радиус взрыва у него небольшой - как у стандартной базуки. Изначально этот снаряд предназначался для использования в стационарных гаубицах, однако, умельцы группировки Мастера переделали его для портативного использования. Единственный минус - при стрельбе из ручного ракетного комплекса таким огромным снарядом выстрелившему червяку наносится достаточный урон реактивной струей снаряда, отнимая при этом около 500 ОЗ.";
         this.weapons_text["rj46"] = "Другое название - RJ46. Эта модификация известной армейской зажигательной базуки включает в себя, помимо огня, несколько осколков с общим уроном до 500 ОЗ в дополнение к урону самого снаряда в 200 ОЗ.";
         this.weapons_text["ap_bazooka2"] = "Благодаря новейшим технологиям Отражения стало возможным создать этот уникальный снаряд. Он незаменим для пробивания бункеров, так как в отличие от стандартной бронейбойной базуки имеет повышенный урон и может пробить насквозь <b>пять</b> препятствий.";
         this.weapons_text["grenade"] = "Граната, как и Базука - одно из самых распространенных оружий в игре. Она не взрывается при первом столкновении с землей, а только когда истчет ее таймер. Учитывая это, есть возможность примерно кинуть Гранату в направлении червя (в случае, если тот сидит в яме) и Граната гарантированно нанесет ему положенный урон. По умолчанию запал Гранаты - 3 секунды, однако его можно менять кнопками 1, 2, 3, 4 и 5. Также кнопки + и - меняют силу отскока снаряда от поверхности, по умолчанию стоит слабый отскок.";
         this.weapons_text["unfail_grenade"] = _loc2_;
         this.weapons_text["plasma_grenade"] = "Плазменная граната отличается от обычной тем, что наносит почти в два с половиной раза больше урона благодаря плазменному детонатору.";
         this.weapons_text["pulse_grenade"] = "Импульсная граната при взрыве испускает мощную волну излучения, парализующую рядом стоящих червяков на два хода.";
         this.weapons_text["holy_hand_grenade"] = "Святая граната наносит большой урон и имеет огромный радиус взрыва - по площади в 4 раза больше Базуки. Единственный недостаток - граната взорвется, только когда улежится на месте.";
         this.weapons_text["super_hhg"] = "Супер святая граната наносит больше урона, парализует червяков и Всегда пробивает броню врага.";
         this.weapons_text["dl19"] = "Отличная граната для поражения множественных целей. Большой урон (200 ОЗ), большой радиус взрыва, горящее топливо при взрыве, а также четыре осколка внутри с общим уроном до 400 ОЗ.";
         this.weapons_text["cluster_bomb"] = "Осколочная граната работает так же, как и обычная Граната, однако она, наподобие Мортиры, после взрыва разбивается на 5 осколков. Опции здесь те же - можно регулировать как запал, так и силу отскока гранаты.";
         this.weapons_text["unfail_cluster_bomb"] = _loc2_;
         this.weapons_text["putty_grenade"] = "Граната-липучка снабжена титановыми иглами с алмазной заточкой, что позволяет ей прилипать к любой поверхности. После взрыва разбрасывает вокург себя восемь осколков с такими же шипами. Урон как гранаты, так и осколков одинаковый - по 100 ОЗ. Запал не регулируется, у гранаты он восьмисекундный; осколки взрываются через три секунды после разбрасывания.";
         this.weapons_text["molotov"] = "Бутылка с зажигательной смесью. Разрывается при первом же столкновении, разбрасывает вокруг себя горящее топливо.";
         this.weapons_text["mortar"] = "Этот снаряд всегда выпускается с одной и той же скоростью, то есть, в отличие от Базуки, вы не можете регулировать силу выстрела. С некоторым приближением можно сказать, что скорость Мортиры такая же, как и Базуки при максимально долгом нажатии Пробела. Особенность этого оружия в том, что после столкновения с землей или червяком она разбивается на пять осколков, которые могут сильно поранить несколько вражеских червей.";
         this.weapons_text["upg_mortar"] = "В отличие от обычной Мортиры у этой можно регулировать силу выстрела, а также она наносит повышенный урон.";
         this.weapons_text["banana_bomb"] = "Мощнейшее оружие (одно из самых сильных типа Снаряды), отнимающее 75 ОЗ при взрыве, а потом разбивающееся еще на три таких же банана. Наносят непоправимый урон карте.";
         this.weapons_text["unfail_banana_bomb"] = _loc2_;
         this.weapons_text["super_banana_bomb"] = "Идеальное орудие убийства. Совмещенное с плазменным детонатором, оно разбивается не на три осколка, а на пять, каждый из которых сносит до 75 ОЗ. Суммарный урон такой бомбой может достигать 450 ОЗ (и это без бонусов от атаки), что сравнимо с очередью из Плазменной винтовки.";
         this.weapons_text["nuclear_bomb"] = "Ядерное оружие. Наносит огромный урон (600 ОЗ), обладает большим радиусом взрыва (по площади в 4 раза больше Базуки), а также при взрыве распространяет вокург себя облако ядовитого газа.";
         this.weapons_text["nuclear_bomb2"] = "Улучшенная версия стандартной ICBM. Увеличен урон, а также вместо обычного ядовитого газа испускается радиоактивный, наносящий в три раза больше урона при заражении червяков.";
         this.weapons_text["multi_bazooka"] = "Великолепное оружие, позволяющее сделать за один ход четыре выстрела снарядами обычной Базуки. Единственный недостаток - невозможность регулировать силу выстрела, снаряды выпускаются с максмальной скоростью (как и Мортира).";
         this.weapons_text["mega_banana_bomb"] = "При взрыве разбивается на четыре стандартных банано-бомбы, каждая из которых сама по себе содержит 3 осколка. Это увеличивает общее количество осколков до 12. Комментарии излишни.";
         this.weapons_text["pistol"] = "Пистолет - самое слабое из Огнестрельного оружия. После прицеливания и нажатия Пробела Пистолет выстреливает очередью из 5 пуль; интервал между выстрелами достаточно большой, можно попытаться достать двух червей одной очередью.";
         this.weapons_text["uzi"] = "Узи - улучшенный вариант Пистолета. Узи выстреливает 10 пуль подряд с достаточно малым интервалом. При удачном раскаладе Узи может нанести урон в 50 очков здоровья (ОЗ) вражескому червяку.";
         this.weapons_text["unfail_uzi"] = _loc2_;
         this.weapons_text["hunting_rifle"] = "Дробовик - мощное оружие ближнего боя. Позволяет сделать два выстрела, за каждый из которых оружие выпускает несколько пуль. На дальних дистанциях малоэффективно.";
         this.weapons_text["sniper_rifle"] = "Снайперская винтовка позволяет вам поражать червей на очень дальних дистанциях, а так же имеет большой поражающий фактор. В комплекте также идет мощный лазерный прицел.";
         this.weapons_text["peacemaker"] = "Миротворец - сверхмощный пистолет, сделаный из обреза винтовки калибра .577. Убойная мощность (урон с одного патрона до 250 ОЗ) обеспечивает победу в любых условиях. Стандартный магазин - 2 патрона - может быть расширен до пяти патронов способностью Магазин средних оружий.";
         this.weapons_text["hearts_ace"] = "Именной пистолет, модифицированная версия Миротворца. Таких пистолетов в мире единицы. Обладает всеми свойствами Миротворца, только более убойный и имеет повышенный шанс пробить броню противника. Стандартный магазин также может быть расшириен до пяти патронов способностью Магазин средних оружий.";
         this.weapons_text["rad_rifle"] = "Сделана на основе армейской снайперской винтовки 7.62мм. Модифицированный корпус для защиты от радиации. Магазин на один патрон заряжен радиевым зарядом, который наносит огромный урон при попадании в червяка. Оснащена лазерным прицелом.";
         this.weapons_text["shotgun"] = "В отличие от большинства Огнестрельного оружия, Двустволка позволяет стрелять не очередью, а отдельно. Количество выстрелов - два. После каждого выстрела вы можете поменять прицел или сменить позицию, насколько хватит времени хода. Внимание, настоятельно не рекомендуем держать Пробел при выстреле - вы можете выстрелить две пули очередью. Лучше используйте однократные нажатия.";
         this.weapons_text["minigun"] = "Огнестрельное оружие ужасающей мощности. Выстреливает очередью из 20 пуль, то есть одно использование Пулемета по факту эквивалентно двум использованиям Узи. В случае, если все пули попали в цель, базовый урон составляет 80 очков здоровья.";
         this.weapons_text["unfail_minigun"] = _loc2_;
         this.weapons_text["air_minigun"] = "Авиационный пулемет имеет больший калибр, чем обычный, а в связке из 30 выстрелов базовый урон составляет около 360 ОЗ.";
         this.weapons_text["bozar"] = "Бозар - чудо инженерной мысли, совмещенные пулемет и снайперская винтовка. Выстреливает очень узко направленной очередью, разброс пуль минимален. В комплекте также идет мощный лазерный прицел. Плюс ко всему, это оружие - единственное в своем роде, на которое распространяются одновременно бонусы к урону винтовок и бонусы к урону пулеметов.";
         this.weapons_text["bozar16"] = "Бозар G16 - оружие, наводящее ужас. Заместитель Де Ляметра сделал Мастерам заказ на стандартный Бозар, но со стволом под больший калибр и повышенной защитой от радиации. После получения заказа он зарядил магазин радиевыми зарядами, и получил чудо снайперской мысли, сносящее до 2000 ОЗ. Идеальная точность даже на большом расстоянии. Как и в случае со стандартным Бозаром G9, на этот распространяются одновременно бонусы к урону винтовок и бонусы к урону пулеметов.";
         this.weapons_text["bozar24s"] = "Модифицированная версия известного Бозара G16. В отличие от предшественника, калибр радиевых пуль увеличен (потребовался магазин большей вместимости). Такие пули всегда пробивают броню, какая бы толстая и мощная она ни была.";
         this.weapons_text["avenger"] = "Авенджер считается самым лучшим пулеметом из когда-либо существовавших. Суммарный урон очереди из 30 пуль может достигать 1200 ОЗ. Правда, есть существенный минус - огромный разброс пуль, без способности Точность вы вообще никуда не попадете.";
         this.weapons_text["air_strike"] = "Пользуясь Авиаударом, вы можете поразить врага, находясь в укрытии. Просто выберите оружие и укажите цель (двойной клик по экрану). Стрелками также можно менять направление удара (откуда прилетят снаряды).";
         this.weapons_text["napalm_strike"] = "После выбора цели с самолета сбрасывается горящий напалм.";
         this.weapons_text["mine_strike"] = "Оружие похоже на обычный Авиаудар, с единственной разницей - с самолета сбрасываются пять мин. Очень мощное оружие в связке со способностью Минер.";
         this.weapons_text["banana_strike"] = "С самолета сбрасываются три Банано-бомбы, одно использование такого оружия способно разнести половину карты, не говоря уж об огромном уроне.";
         this.weapons_text["holy_strike"] = "После выбора цели с самолета сбрасываются три Святых гранаты. После использования Святого удара в живых мало кто остается.";
         this.weapons_text["mine"] = "Мина - базовое оружие типа Взрывчатка. После установки Мина взорвется только в случае, если рядом есть червяк, кстати сказать, любой, не только вражеский. Как только это червяк попадет в поле обнаружения мины, она начинает мигать и взрывается через 3 секунды. Есть два метода использования: либо как банальный снаряд (подойти, поставить и уйти), либо тактически - перекрыть минами важные участки, чтобы враг не смог дойти до вашего укрытия.";
         this.weapons_text["unfail_mine"] = _loc2_;
         this.weapons_text["fire_mine"] = "Мина, начиненная напалмом для большего урона. При взрыве распространяет вокруг себя пламя.";
         this.weapons_text["plasma_mine"] = "Плазменная мина отличается от обычной тем, что наносит почти в два с половиной раза больше урона благодаря плазменному детонатору.";
         this.weapons_text["pulse_mine"] = "Улучшенный вариант Плазменной мины. Помимо увеличенного урона, мина при взрыве испускает мощную волну излучения, парализующую рядом стоящих червяков на два хода.";
         this.weapons_text["nuclear_mine"] = "Тестовый прототип мины с ядерной начинкой - ураном-235. Помимо увеличенного радиуса взрыва и огромного урона, выбрасывает радиоактивный газ. Надпись на упаковке: \"Хранить в темном месте при температуре не выше 40 градусов и относительной влажности не выше 80%. Радиоактивно! Не забудьте надевать костюм радиационной защиты! Или не удивляйтесь при появлении шестого пальца на третей руке.\"";
         this.weapons_text["dynamite"] = "Продвинутое оружие типа Взрывчатка. По сравнению с Миной, наносит базовый урон в 75 ОЗ, однако взрывается по прошествии 5 секунд после установки.";
         this.weapons_text["unfail_dynamite"] = _loc2_;
         this.weapons_text["dynamite_bunch"] = "Связка динамита - довольно мощное оружие типа Взрывчатка. После взрыва разбрасывает вокруг себя еще три упаковки динамита, которые наносят большие повреждения карте. Аналог Банано-бомбы.";
         this.weapons_text["sheep"] = "Овца похожа на Старушку, однако есть существенные различия: двигается Овца в два раза быстрее, и через некоторые препятствия может перепрыгнуть, пусть и прыгает она совершенно случайным образом.";
         this.weapons_text["unfail_sheep"] = _loc2_;
         this.weapons_text["fire_sheep"] = "Новейшая разработка, у Овцы в шерсти спрятано несколько Коктейлей Молотова, и при взрыве они все одновременно активируются, что делает Зажигательную овцу очень опасным оружием.";
         this.weapons_text["poison_sheep"] = "Механика работы этой овцы очень похожа на Зажигательную, однако вместо огня при взрыве выпускается ядовитый газ.";
         this.weapons_text["mine_sheep"] = "Овца, начиненная для большего урона пятью стандартными минами. При взрыве Миновцы (можно пробелом) эти мины выбрасываются в разных направлениях. Особенно эффективна Миновца со способностью Минер третьего уровня. Кстати сказать, на мины, выбрасываемые Миновцой, действуют бонусы к урону Живых бомб, а не Взрывчатки.";
         this.weapons_text["mine_sheep2"] = "Улучшенная версия Миновцы. Вместо пяти стандартных мин несет на себе семь плазменных.";
         this.weapons_text["old_woman"] = "Это первое оружие типа Живая бомба, которые вам встретится в игре. Принцип действия следующий: после выпуска Старушка бежит в одном направлении. Она может преодолевать невысокие препятствия; если на ее пути встретится стена, Старушка развернется и побежит обратно. Старушка взрывается через 20 секунд после выпуска, однако ее можно взорвать раньше, нажав Пробел в нужное вам время.";
         this.weapons_text["unfail_old_woman"] = _loc2_;
         this.weapons_text["prod"] = "Базовое оружие ближнего боя, не наносящее вообще никакого урона, а просто отталкивающее вражеского червяка. Применяется только на очень близком расстоянии. Может быть полезно, когда вражеский червяк стоит на краю карты, а тратить Мину или Гранату жалко. Это оружие уникально тем, что доступно абсолютно везде, во всех миссиях и рангах карьеры.";
         this.weapons_text["firepunch"] = "При использовании Огненного удара червяк подпрыгивает, пробивает над собой ландшафт и наносит урон всем находящимся рядом червям (в отличие от Шара дракона, который при любом раскладе поранит только одного червяка). При низкой гравитации (необх. ур. 3) червяк подпрыгнет гораздо выше, и, следовательно, при удачном раскладе нанесет урон большему количеству червей. Это оружие можно активировать прямо в прыжке.";
         this.weapons_text["fireball"] = "Продвинутое оружие ближнего боя, наносящее базовый урон в 30 ОЗ, в отличие от Тычка. При использовании червяк своей внутренней энергией порождает огненный шар, который при встрече с червем наносит урон и отталкивает его. Шар дракона необязательно использовать впритык к врагу, шар пролетит еще некоторое расстояние, правда, небольшое. На это расстояние влияет способность Шар дракона.";
         this.weapons_text["kamikaze"] = "При использовании Камикадзе вы приносите в жертву вашего червя, и он просто взрывается. Однако, чем больше у него было при жизни здоровья, тем больший урон он нанесет во время смерти, а также - тем больший радиус взрыва будет у жертвенного червя. Особо примечательно использование Камикадзе, если у вашего червяка больше 1000 ОЗ.";
         this.weapons_text["baseball_bat"] = "Продвинутое оружие ближнего боя, в чем то похожее на Тычок, но с существенными различиями: вы можете менять угол биты (стрелки Вверх/Вниз), от этого зависит направление полета атакуемого червя, и к тому же бита наносит базовый урон в 30 ОЗ. Бита может отправить в полет нескольких червей, если они будут расположены рядом. Импульс при использовании Биты большой, а при совместном использовании Низкой гравитации можно выбросить червей через всю карту в воду.";
         this.weapons_text["shocker"] = "Продвинутое оружие ближнего боя, в чем то похожее на Тычок, однако в отличие от него наносит урон в 30 ОЗ и парализует ближайших червяков.";
         this.weapons_text["battle_axe"] = "Данное оружие примечательно тем, что, в отличие от других оружий ближнего боя, отнимает у врага не фиксирванное количество здоровья, а в процентах от текущего. Если здоровье вражеского червяка меньше 400, Топор отнимет ровно половину. Если больше - то Топор отнимает 200 ОЗ.";
         this.weapons_text["power_axe"] = "Силовой топор - версия обычного Топора, усиленная элементом питания от Лазерного пистолета. Помимо увеличенного урона (50% ОЗ, если здоровье врага меньше 600, и 300 ОЗ, если больше), обладает парализующим эффектом.";
         this.weapons_text["power_bat"] = "При совмещении элемента питания от Плазменной винтовки и обычной Бейсбольной биты можно получить этот уникальный вид вооружения. Червяки, задетые этой битой, улетают дальше, чем от обычной, парализуются, и это не считая повышенного урона в 60 ОЗ.";
         this.weapons_text["skip_go"] = "Назначение этой утилиты понятно из названия - вы просто пропускаете свой ход, увеличивая преимущество соперника. Однако, использование Пропуска хода может быть полезно, когда вы и не собирались ничего делать, а, к примеру, ждете, когда станет доступно какое-либо оружие с задержкой использования. Это оружие доступно всегда и в неограниченном количестве.";
         this.weapons_text["laser_sight"] = "Лазерный прицел позволяет точно прицеливаться при использовании оружия типа Огнестрельное или Энергетическое. В подавляющем большинстве случаев эти оружия требуют очень аккуратного прицеливания, и в этом данная утилита утилита сильно помогает. Для активации используйте Пробел, затем выберите нужное оружие. Лазерный прицел будет работать для таких оружий, как Пистолет, Узи, Лазерная винтовка. Огромное влияние на эту утилиту оказывает способность Лазерные прицелы (необх. ур. 4). Не тратит ход.";
         this.weapons_text["low_gravity"] = "При использовании данная утилита понижает гравитацию на время вашего хода, что позволяет червям прыгать выше и дальше, а также отбрасывать вражеских червей на большее расстояние. Для активации нажмите Пробел. Повторное использование этого оружия вернет обычную гравитацию. Не тратит ход.";
         this.weapons_text["fast_walk"] = "Быстрая ходьба ускоряет передвижение вашего червяка по карте на один ход. Она может быть полезна, если вы не успеваете доползти до вражеского червяка, или нужно быстро убраться после утсановки взрывчатки. Не тратит ход, для активации нажмите Пробел.";
         this.weapons_text["ultra_scaner"] = "Позволяет узнать всю информацию о противнике - оружие, навыки, способности. Для использования нажмите на иконку сканера рядом с иконкой рюкзака (она появится, если в арсенале есть хотя бы один такой сканер). Во время использования сканера таймер игры замораживается.";
         this.weapons_text["blow_torch"] = "Это оружие даже сложно назвать собственно оружием, оно не наносит никакого урона. Собственно, именно поэтому оно относится к типу Утилита. С помощью лампы вы можете прорубать туннели в земле. Всего существует 3 положения - горизонтально, под небольшим углом вверх и под небольшим углом вниз. Менять направление можно как до активации, так и во время использования (стрелки Вверх и Вниз). Нажатие Пробела во время использования прекратит действие лампы. Лампа работает в течение примерно 6 секунд.";
         this.weapons_text["pneumatic_drill"] = "Для понимания принципа действия см. описание Паяльной лампы (слева от этого оружия). Единственная разница заключается в следующем: если Лампа прорубает туннели горизонтально или под небольшим углом, то Молоток бурит туннель вертикально вниз.Остановить его также можно в любой момент нажатием Пробела.";
         this.weapons_text["parachute"] = "Парашют позволяет вам совершать мягкую посадку, с какой высоты вы бы ни упали. Если вы не уверены, что сможете приземлиться без последствий или это очевидно - выбирайте Парашют и прыгайте. Он включится автоматически, как только скорость вашего червяка станет достаточной, чтобы нанести ему повреждения. НЕ нажимайте Пробел для активации (хотя это и возможно) - вы можете свернуть Парашют в следующее же мгновение, после того, как он откроется. Можно незначительно управлять полетом стрелками Вверх/Вниз/Влево/Вправо.";
         this.weapons_text["girder"] = "При использовании этой утилиты вы можете поставить балку в любом месте карты (но на определенном расстоянии от активного червя). Балка используется в основном для защиты своих червей и для блокировки вражеских. После выбора Балки вы можете менять ее расположение мышью (главное, чтобы она не соприкасалсь ни с ландшафтом, ни с червяками), а также менять ее направление и длину (стрелками). Для установки Балки кликните по выбранному месту. При ошибочном выборе этого оружия жмите Escape.";
         this.weapons_text["girder_pack"] = "Эта утилита - то же самое, что и обыкновенная Балка, только за один ход у вас есть возможность поставить не одну, а целых пять балок. При ошибочном выборе этого оружия нажмите Escape, а также в случае, если вы поставили одну, две, три или четыре балки, а больше не нужно - в этом случае ваш ход звершается.";
         this.weapons_text["jet_pack"] = "Эта утилита позволяет вам очень быстро перемещаться с одного места в другое; использование Реактивного ранца не тратит ход. Для активации ранца выберите его и нажмите Пробел. Для управления используйте стрелки Вверх, Влево и Вправо. Для того, чтобы снять ранец, нажмите Пробел повторно. Будьте внимательны - у ранца есть конечный запас топлива; после того, как топливо закончится, ваш червяк окажется в свободном полете и может пораниться при приземлении.";
         this.weapons_text["teleport"] = "Утилита позволяет вам мгновенно переноситься с одного места на другое. Для использования (после выбора Телепорта) выберите место, в которое вы хотели бы перенестись, и два раза кликните по экрану.";
         this.weapons_text["upg_teleport"] = "В отличие от обычного Телепорта не тратит ход.";
         this.weapons_text["upg_jet_pack"] = "Предоставляет удвоенный запас топлива, по сравнению с обычным Реактивным ранцем. На эту утилиту также влияет способность Летчик.";
         this.weapons_text["ag_pack"] = "Эта утилита похожа на обычный Реактивный ранец, но с одним существенным отличием - помимо удвоенного запаса топлива, в этот ранец также встроен генератор антигравитации, что позволяет вам не тратить топливо на поддержание скорости и высоты - достаточно задать начальный импульс и двигаться дальше по инерции.";
         this.weapons_text["add_time"] = "Прибавляет 30 секунд к времени хода.";
         this.weapons_text["choose_worm"] = "Утилита позволяет вам выбирать червяка, которым вы хотели бы сделать ход. После активации используйте Enter для переключения между червями, для окончательного выбора нажмите Escape.";
         this.weapons_text["upg_teleport2"] = "Помимо мгновенного перемещения в любую точку карты и возможности продолжить ход после перемещения этот телепорт создает мини-взрыв в выбранной точке телепортации, а значит, позволяет переместить червяка в абсолютно любое место на карте, даже глубоко под землю.";
         this.weapons_text["medikit"] = "При использовании прибавляет некоторое количество ОЗ использовавшему аптечку червяку. На количество ОЗ влияет способность Медик.";
         this.weapons_text["emg_teleport"] = "Этот телепорт нельзя использовать самому - он включится автоматически, когда кому-либо из ваших червяков будет угрожать опасность утопления. В этом случае телепорт перенесет незадачливого червяка в безопасное место. Само собой, телепорт не сработает, если у червя не осталось ОЗ.";
         this.weapons_text["super_medikit"] = "По сравнению с обычной аптечкой количество ОЗ удвоено, плюс эта аптечка излечит использовавшего червяка от яда, радиации и парализующего эффекта.";
         this.weapons_text["gravity_grenade"] = "Эта граната не наносит практически никакого урона, однако снабжена мощнейшими портативными генераторами антигравитации. Умельцы из команды Мастера додумались поменять местами плюс и минус на клеммах генераторов, что позволило превратить генераторы антигравитации в генераторы гравитации ужасающей силы. При взрыве эта граната дает импульс в 10G всем червям на близкой и средней дистанции и позволяет выбросить кучу вражеских червей прямо в воду.";
         this.weapons_text["invisibility"] = "Эта утилита генерирует невидимое поле, и ваших червей сложнее видеть ботам. То есть при применении уменьшается шанс врага точно попасть в вас. Действует два хода. Эффекты от использования нескольких Невидимостей не складываются, и длительность действия не увеличивается. По эффективности примерно равен одному уровню способности \"Ниндзя\". Максимально понизить шанс точного выстрела можно при использовании этой утилиты при способности \"Ниндзя\" на третьем уровне (есть шанс, что промажут даже боты 6 уровня, а боты 4 и ниже уровней будут мазать вообще постоянно).";
         this.weapons_text["laser_pistol"] = "Самый простой вид Энергетического оружия. Стреляет как обычный пистолет, но квантованным лазерным излучением. Наносит довольно большой урон для своих маленьких размеров и маленькой мощности. Очередь из 5 выстрелов. Часто выступает как элемент для создания более мощных видов вооружения.";
         this.weapons_text["laser_pistol2"] = "Модифицированная версия стандартного Лазерного пистолета. Вместо 5 выстрелов делает 7, плюс имеет 15% шанс пробить броню противника благодаря использованию более жесткого типа излучения.";
         this.weapons_text["laser_rifle"] = "Первое серьезное Энергетическое оружие. По сравнению с пистолетом стреляет быстрее, хотя поражающий фактор не меняется. Очередь из 10 выстрелов.";
         this.weapons_text["unfail_laser_rifle"] = _loc2_;
         this.weapons_text["laser_minigun"] = "Лазерный пулемет - симбиоз обычного Пулемета и Лазерной винтовки. Обладает повышенной скорострельностью и большим уроном.";
         this.weapons_text["pulse_pistol"] = "Вид энергетического оружия, совмещающий в себе одновременно генератор лазерного излучения, источник плазмы и Гаусс-катушки для разгона электронов. На выходе получается импульс, наносящий ужасающий урон всему живому, да еще и оставляющий после себя огромную воронку в карте (по диаметру сравнима с воронкой от Святой гранаты). Собран из высококачественных элементов, не дает осечек.";
         this.weapons_text["plasma_pistol"] = "Продвинутая модель Лазерного пистолета. Вместо излучения используются сгустки высокотемпературной плазмы. Наносит больше повреждений.";
         this.weapons_text["plasma_rifle"] = "Плазменная винтовка наносит очередью из 10 плазменных сгустков базовый урон до 350 ОЗ. Почти предел мечтаний, особенно при прокачанном уроне энергетического оружия.";
         this.weapons_text["unfail_plasma_rifle"] = _loc2_;
         this.weapons_text["plasma_minigun"] = "Плазменный пулемет - ужасающее по своей мощи оружие, выстреливающее 20 высокоэнергетических плазменных шаров с большой скоростью. Отнимает до 1200 ОЗ урона.";
         this.weapons_text["luiston"] = "Усиленная версия Стэндиша. После многих неудачных попыток ученые Отражения выпустили тестовый прототип этого оружия (версия 17) с дополнительными сверхъемкими источниками питания. По сравнению со Стэндишом радиус поражения не меняется.";
         this.weapons_text["gauss_pistol"] = "Трудно поверить, что в таком маленьком объеме заключается столь грозная сила - пистолет Гаусса приводит в движение пули за счет электромагнитного поля, придавая им ужасающие скорости, в несколько раз превышающие скорость звука. Один такой снаряд отнимает от 350 ОЗ.";
         this.weapons_text["gauss_pistol2"] = "Улучшенная версия стандартного армейского пистолета PPK12. Благодаря новой системе есть возможность совершить не один выстрел за ход, а два.";
         this.weapons_text["gauss_rifle"] = "Ученые Отражения недавно выпустили прототип этой винтовки, основанный на знаменитом пистолете Гаусса PPK12. За счет удлиненного ствола и дополнительных элементов питания катушки урон от пули составляет 600 ОЗ.";
         this.weapons_text["unfail_gauss_rifle"] = _loc2_;
         this.weapons_text["gauss_minigun"] = "Пулемет Гаусса за счет нескольких стволов и катушек с увеличенной индуктивностью способен выстрелить очередью из 10 пуль с общим уроном до 3750 ОЗ.";
         this.weapons_text["de_lameter"] = "Давным-давно в организации Отражение работал один червяк, известный под именем Де Ляметр. Он помогал выпускать прототипы импульсного энергетического оружия, в частности Льюистон 14. После разлада с главой Отражения он выкрал чертежи и создал свой собственный излучатель на основе Льюистона, назвав его своим именем. В дальнейшем Де Ляметр организовал свою группировку, в настоящее время известную как Мастера. Излучатель Де Ляметра дополнительно использует энергию солнечного излучения, и в светлое время суток он способен пробить насквозь три препятствия. Ночью и в пещерах, однако, его поведение полностью повторяет импульс Льюистона.";
         this.weapons_text["turbo_rifle"] = "После ухода Де Ляметра из Отражения его схемы были применены для создания нового оружия по той же технологии; благодаря понижению убойной мощности единичного импульса стала возможной стрельба очередями, но с минимальным радиусом воздействия. Правда, у этой винтовки достаточно большой разброс, и без способности Точность в цель попасть можно разве что в упор. Более того, вам нужна <b>как минимум Защита 50 или третий уровень Сопротивления яду/радиации</b>, так как иначе ваш червяк погибнет еще на этапе накопления заряда. Несмотря на все это, винтовка наносит урон в 7000 ОЗ даже без бонусов к энергооружию.";
         this.weapons_text["orbit_strike"] = "Удар со спутника. На спутнике установлены пять новейших прототипов Льюистона Mk 17. Ужасающая мощь и возможность расстреливать толпы врагов, находясь в укрытии, не могут не радовать.";
         this.weapons_text["ultra_rifle"] = "Ультраволновая винтовка хороша тем, что ее импульс пролетает сквозь все препятствия, пока не наткнется на червяка. Урон стандартный для ультраволнового оружия - 2000 ОЗ, кратер от взрыва отсутствует. В комплете идет улучшенный лазерный прицел от винтовки Гаусса М72.";
         this.weapons_text["vindicator"] = "Улучшенная версия винтовки самого технологичного направления разработок - основанных на ультраволне. Очередь из 5 выстрелов сносит у врагов до 10000 ОЗ, причем новейшие грави-компенсаторы сводят разброс импульсов на нет. Однако накопители заряда в этой винтовке слишком опасны для обычных червей. Вам необходима <b>Защита не ниже 100, и, при этом, Сопротивление яду/радиации третьего уровня</b>, иначе червяк умрет от воздействия сверхмощных ультра-полей.";
         this.weapons_text["kenton_bazooka"] = "Это оружие создано по особым технологиям Кентона. Никто из инженеров Отражения или Армии Де Ляметра не смог разобрать или улучшить ни одно кентонское оружие. Его класс определяется как восьмой, так как, помимо отличной безотказности и пробивания любой брони, оружие Кентона также генерирует неведомые виды полей, отравляющие, парализающие врагов, а также отнимая у них здоровье, и, при этом, энергия полей так же преобразуется в жизненную силу дружественных чевяков.\n\nПродается оно по очень хорошим ценам, \"отрывают с руками\".";
         this.weapons_text["kenton_grenade"] = this.weapons_text["kenton_bazooka"];
         this.weapons_text["void_melody"] = this.weapons_text["kenton_bazooka"];
         this.weapons_text["annihilator"] = "Аннигилятор А3000 - мощнейшее оружие. Оно обладает огромным радиусом поражения, в полтора раза превышающим радиус взрыва излучателя Де Ляметра, и выбрасывает поток античастиц, испаряющий все объекты, в том числе и червяков.\n\nНадпись на корпусе: \"Осторожно! Цель должна находиться не ближе ста метров! При столкновении с препятствием выбрасывается мощная волна фотонов, на взрыв не смотреть!\".\n\nСнабжен усиленным лазерным прицелом.";
         this.weapons_text["stimpack"] = "Базовый стимулятор. Убирает не очень много усталости, зато дешевый.";
         this.weapons_text["jet"] = "Базовый стимулятор. Обладает разгоняющим действием, и, как следствие, повышает Атаку. Из побочных эффектов - снижение Защиты.";
         this.weapons_text["buffout"] = "Базовый стимулятор. Увеличивает Защиту вашей команды, правда, в ущерб Атаке.";
         this.weapons_text["superstimpack"] = "Стимулятор, дающий поистине большое преимущество в бою, особенно при использовании нескольких образцов одновременно.";
         this.weapons_text["psycho"] = "Психо повышает все параметры вашей команды, а также сильно взбодряет - 4 Психо способны нейтрализовать усталость, накопленную за почти 30 боев.";
         this.weapons_text["fruit"] = "Превращает ваших червяков в племя варваров, начисто вышибая всю усталость, а также дает огромное преимущество по Атаке, Здоровью и Защите.";
         this.weapons_text["std_attack"] = "Стандартный армейский имплантант, повыщающий атаку. Предназначался для солдат, выступающих в роли пушечного мяса на передовой.";
         this.weapons_text["std_protect"] = "Стандартный армейский имплантант, повыщающий защиту. В основном, использовался солдатами-артиллеристами и водителями танков и БТР.";
         this.weapons_text["std_health"] = "Стандартный армейский имплантант, повышающий здоровье. У большинства офицеров были такие чипы, чтобы в случае ранения они остались живы.";
         this.weapons_text["phoenix"] = "Универсальный чип \"Феникс\" с ограниченным выпуском вживляли только членам отрядов специального назначния, выполняющим крайне ответственные задания в тылу у противника.";
         this.weapons_text["phoenix2"] = "Улучшенная версия Феникса была создана в лаборатории Отражения по специальныму секретному заказу. Во всем мире насчитывается не более сотни экземпляров.";
         this.weapons_text["dragon"] = "Серия имплантантов \"Дракон\" - самопальные чипы, сделанные на коленке мастерами армии Де Ляметра. Тем не менее, у них улучшенные параметры и имеются дополнительные свойства.";
         this.weapons_text["dragon2"] = "Серия имплантантов \"Дракон\" - самопальные чипы, сделанные на коленке мастерами армии Де Ляметра. Тем не менее, у них улучшенные параметры и имеются дополнительные свойства.";
         this.weapons_text["obj_barrel"] = "Удлиненный ствол используется как компонент при крафтинге почти всех видов огнестрельного и энергетического оружия.";
         this.weapons_text["obj_middle_clip"] = "Средняя обойма нужна в тех случаях, когда вы хотите сделать из пистолета пистолет-пулемет или автомат. Только для огнестрельного оружия.";
         this.weapons_text["obj_big_clip"] = "Большая обойма применяется при крафтинге тяжелых огнестрельных винтовок типа Бозара и пулеметов.";
         this.weapons_text["obj_small_cell"] = "Малый элемент питания используется для крафтинга энергопистолетов, иногда винтовок, и прочего оружия.";
         this.weapons_text["obj_big_cell"] = "Большой элемент питания необходим при создании энергопулеметов и тяжелых импульсных излучателей.";
         this.weapons_text["obj_rad_lock"] = "Радиевый затвор применяется при модификации обычного оружия в радиевое - например, для создания Бозара G16.";
         this.weapons_text["obj_hard_jacket"] = "Усиленная оболочка нужна для создания тяжелых снарядов класса Базука, в том числе и бронебойных.";
         this.weapons_text["obj_napalm_cont"] = "Контейнер с напалмом применяется при крафтинге огненных модификаций снарядов и взрывчатки.";
         this.weapons_text["obj_poison_cont"] = "Контейнер с ядом нужен для создания базового ядерного оружия, а также ядовитых типов снарядов.";
         this.weapons_text["obj_rad_cont"] = "Контейнер с радиоативным газом необходим при сборке продвинутого ядерного оружия.";
         this.weapons_text["obj_laser_mod"] = "Лазерный модулятор - самый простой преобразователь одного вида энергии в другой. Чаще всего используется по прямому назначению - при создании лазерного оружия, а иногда выступает как дополнительный элемент питания или детонатор (например, нужен для создания Святой гранаты).";
         this.weapons_text["obj_plasma_mod"] = "Плазменный модулятор необходим для плазменного энергооружия, а также плазменных модификаций мины, базуки, и т.д. В некоторых случаях используется как источник питания или детонатор.";
         this.weapons_text["obj_coil"] = "В основном, катушка нужна для создания Гаусс-подобного энергооружия. Иногда применяется просто как базовый элемент какой-либо схемы устройства.";
         this.weapons_text["obj_pulse_mod"] = "Импульсный модулятор - один из самых сложных и дорогих модуляторов. Применяется при крафтинге импульсных энергоизлучателей типа Стэндиш, а также используется как детонатор в оружии с эффектом парализации врага.";
         this.weapons_text["obj_ultra_mod"] = "Преобразователь используется создания для ультравинтовок, генерирует стандартную ультраволну. Был создан в лабораториях Кентона, и, скорее всего, имеет какие-то дополнительные свойства, кроме генерации ультраволн.";
         this.weapons_text["obj_eg_generator"] = "Преобразователь электрической энергии в гравитацию. Применяется как генератор антигравитации или же как источник мощных гравитационных волн.";
         this.weapons_text["obj_fuel"] = "Увеличенные баки с топливом. Применяется для крафтинга реактивных ранцев и некоторых видов снарядов на реактивной тяге.";
         this.weapons_text["obj_small_expl"] = "Усиленная взрывчатка часто используется при создании более мощных версий снарядов, мин, живых бомб. Иногда она также используется при крафтинге слабого огнестрельного оружия как заменитель пороха в патронах.";
         this.weapons_text["obj_radio"] = "В комплекте с радиопередатчиком идет договор на аренду самолета/спутника. С помощью него можно \"создать\" множество оружия типа Авиаудар.";
         this.weapons_text["obj_big_expl"] = "Усиленная взрывчатка этого типа используется только при создании крайне мощного оружия типа Снаряд.";
         _loc3_ = "\nДля открытия этих рецептов купите книгу, зайдите в Арсенал и нажмите \"Использовать\". После использования книга сохраняется.\n\nЕсли вы соберете полный комплект из 9 книг, его можно продать коллекционерам за 3 миллиона золотых (для этого нажмите \"Продать\" напротив любой из книг).";
         this.weapons_text["obj_red_book"] = "Книга рецептов создержит инструкции для приготовления следующего оружия:\n\n" + this.FWP.get_book_recipes("obj_red_book","text") + _loc3_;
         this.weapons_text["obj_orange_book"] = "Книга рецептов создержит инструкции для приготовления следующего оружия:\n\n" + this.FWP.get_book_recipes("obj_orange_book","text") + _loc3_;
         this.weapons_text["obj_yellow_book"] = "Книга рецептов создержит инструкции для приготовления следующего оружия:\n\n" + this.FWP.get_book_recipes("obj_yellow_book","text") + _loc3_;
         this.weapons_text["obj_green_book"] = "Книга рецептов создержит инструкции для приготовления следующего оружия:\n\n" + this.FWP.get_book_recipes("obj_green_book","text") + _loc3_;
         this.weapons_text["obj_skyblue_book"] = "Книга рецептов создержит инструкции для приготовления следующего оружия:\n\n" + this.FWP.get_book_recipes("obj_skyblue_book","text") + _loc3_;
         this.weapons_text["obj_blue_book"] = "Книга рецептов создержит инструкции для приготовления следующего оружия:\n\n" + this.FWP.get_book_recipes("obj_blue_book","text") + _loc3_;
         this.weapons_text["obj_violet_book"] = "Книга рецептов создержит инструкции для приготовления следующего оружия:\n\n" + this.FWP.get_book_recipes("obj_violet_book","text") + _loc3_;
         this.weapons_text["obj_white_book"] = "Книга рецептов создержит инструкции для приготовления следующего оружия:\n\n" + this.FWP.get_book_recipes("obj_white_book","text") + _loc3_;
         this.weapons_text["obj_black_book"] = "Книга рецептов создержит инструкции для приготовления следующего оружия:\n\n" + this.FWP.get_book_recipes("obj_black_book","text") + "\nЭто самая редка книга. Папа продает ее за золото только очень опытным игрокам (необходим уровень не ниже <b>70</b>).\n" + _loc3_;
         _loc4_ = "Сломанные детали после неудачного крафтинга. Применения практически никакого, их сразу можно продавать.";
         this.weapons_text["obj_junk1"] = _loc4_;
         this.weapons_text["obj_junk2"] = _loc4_;
         this.weapons_text["obj_junk3"] = _loc4_;
         this.weapons_text["obj_junk4"] = _loc4_;
         this.weapons_text["obj_junk5"] = _loc4_;
         this.weapons_text["obj_junk6"] = _loc4_;
         this.weapons_text["obj_junk7"] = _loc4_;
         this.weapons_text["obj_junk8"] = _loc4_;
         this.weapons_text["obj_junk9"] = _loc4_;
         this.weapons_text["obj_junk10"] = _loc4_;
         this.perks_text["damage_c"] = "Каждый новый уровень этой способности повышает урон оружия типа Ближний бой на 15%.";
         this.perks_text["dragonball"] = "Эта способность влияет исключительно на Шар дракона. С каждым новым уровнем расстояние его полета увеличивается. Третий уровень также дает прибавку к урону +50%.";
         this.perks_text["builder"] = "Увеличивает продолжительность действия Паяльной лампы и Отбойного молотка. На третьем уровне время действия этих утилит больше обычного в полтора раза.";
         this.perks_text["light_clips"] = "Увеличивает количество выстрелов из следующего оружия и их безотказных аналогов:\n\n<b>Пистолет 10мм\nУзи 9мм\nЛазерный пистолет\nЛазерный пистолет Mk 2\nПлазменный пистолет\nПистолет Гаусса PPK12\nПистолет Гаусса PPK19</b>";
         this.perks_text["medium_clips"] = "Увеличивает количество выстрелов из следующего оружия и их безотказных аналогов:\n\n<b>Двустволка .45\nДробовик .410\nМиротворец .577\nТуз Червей .577\nСнайперская винтовка 7.62мм\nЛазерная винтовка\nПлазменная винтовка\nВинтовка Гаусса М72</b>";
         this.perks_text["heavy_clips"] = "Увеличивает количество выстрелов из следующего оружия и их безотказных аналогов:\n\n<b>Пулемет 5.56мм\nАвиационный пулемет 13мм\nПулемет Авенджер 20мм\nРадиевая винтовка\nБозар G9 12.5мм\nБозар G16 RAD\nБозар G24s RAD\nЛазерный пулемет\nПлазменный пулемет\nГаусс-Пулемет</b>";
         this.perks_text["damage_f"] = "Каждый новый уровень этой способности повышает урон оружия типа Огнестрельное на 15%.";
         this.perks_text["laser_sights"] = "Увеличивает дальность лазерных прицелов. При третьем уровне лазерный прицел включается автоматически.";
         this.perks_text["champion"] = "Повышает количество получаемого золота после каждой победы.";
         this.perks_text["education"] = "Увеличивает количество очков способностей, получаемых при переходе на новый уровень.";
         this.perks_text["damage_e"] = "Каждый новый уровень этой способности повышает урон оружия типа Взрывчатка на 15%.";
         this.perks_text["fire_punch"] = "Увеличивает высоту прыжка при использовании Огненного удара.";
         this.perks_text["engineer"] = "Увеличивает максимальное расстояние от активного червяка, на которое можно поставить Балку.";
         this.perks_text["miner"] = "Уменьшает запал всех ваших мин. При третьем уровне этой способности запал нулевой (мина взрывается сразу после обнаружения червя).";
         this.perks_text["damage_p"] = "Каждый новый уровень этой способности повышает урон оружия типа Снаряды на 15%.";
         this.perks_text["crafting"] = "Позволяет собирать новые виды вооружения из купленных вами. С каждым новым уровнем этой способности открываются дополнительные рецепты.";
         this.perks_text["electrician"] = "Увеличивает урон импульсного оружия (импульcные гранаты/мины, импульсные излучатели типа Стэндиш и их модификации).";
         this.perks_text["surprise"] = "При переходе на новый уровень у вас в арсенале появляется одно случайное оружие. Чем выше уровень этой способности, тем более редкие типы оружия можно получить.";
         this.perks_text["damage_l"] = "Каждый новый уровень этой способности повышает урон оружия типа Живые бомбы на 15%.";
         this.perks_text["merchant"] = "Уменьшает цены на оружие, стимуляторы, журналы и т.п.";
         this.perks_text["medic"] = "Увеличивает здоровье вашей команды.";
         this.perks_text["para_res"] = "Уменьшает вероятность парализации ваших червяков. При третьем уровне парализовать ваших червей невозможно. В этой способности нет смысла, если ваша Защита больше 270.";
         this.perks_text["damage_a"] = "Каждый новый уровень этой способности повышает урон оружия типа Авиаудары на 15%.";
         this.perks_text["luck"] = "Удача влияет на огромное количество параметров - на шанс критического выстрела, на вероятность выпадения хорошего оружия в посылках, на частоту появлений Папы Джона и т.д.";
         this.perks_text["angel"] = "Сильно повышает урон от Святой гранаты и Святого удара.";
         this.perks_text["fire_res"] = "Увеличивает вашу сопротивляемость огню. При третьем уровне огонь не наносит никакого урона. Обычный огонь также не будет наносить вам урона при Защите больше 120.";
         this.perks_text["legioner"] = "Увеличивает количество очков навыков, получаемых при переходе на новый уровень.";
         this.perks_text["comandeer"] = "Первый червяк вашей команды получает улучшенные характеристики (атака, защита, здоровье).";
         this.perks_text["poison_res"] = "Увеличивает вашу сопротивляемость яду и радиации. При третьем уровне вас нельзя заразить и вы не получаете урона от электромагнитных и ультра-полей. Частично эту способность можно заменить Защитой 210 (тогда червей нельзя будет отравить ядовитым газом, но радиоактивным - можно).";
         this.perks_text["damage_h"] = "Каждый новый уровень этой способности повышает урон оружия типа Энергетическое на 15%.";
         this.perks_text["flyer"] = "Увеличивает запас топлива при использовании утилит полета (напр. Реактивного ранца).";
         this.perks_text["sprotsman"] = "Позволяет прыгать выше и дальше, а так же увеличивает импульс (но не урон) при использовании Тычка и Бейсбольной биты.";
         this.perks_text["heavy_guy"] = "Уменьшает \"тормозной путь\" червяка при скольжении по земле.";
         this.perks_text["accuracy"] = "Уменьшает разброс снарядов при стрельбе из любого вида автоматических винтовок и пулеметов.";
         this.perks_text["best_crit"] = "Увеличивает урон при критическом выстреле, однако вероятность такого выстрела не меняется.";
         this.perks_text["stims"] = "Позволяет использовать в одном бою больше стимуляторов (+1 при каждом новом уровне этой способности).";
         this.perks_text["fast_temp"] = "Уменьшает задержку оружия (-1 ход при каждом новом уровне этой способности).";
         this.perks_text["fast_walk"] = "Первый и второй уровни этой способности добавляют соответственно одну и две Быстрые ходьбы в ваш арсенал. При третьем уровне Быстрая ходьба включена всегда и для всех червей вашей команды.";
         this.perks_text["thinker"] = "При каждом новом уровне этой способности время хода увеличивается на 15 секунд.";
         this.perks_text["soft_land"] = "Чем выше уровень этой способности, тем с большей высоты вы можете прыгать, не теряя ОЗ и хода. На третьем уровне можно прыгать с любой возможной высоты (разве что не с орбиты).";
         this.perks_text["regeneration"] = "Позволяет восстанавливать часть здоровья всех ваших червяков перед каждый ходом вашей команды. Однако, Регенерация не поднимет здоровье выше уровня, который был в начале игры.";
         this.perks_text["vampire"] = "При использовании Огненного удара вы прибавляете себе ОЗ в процентах от нанесенного урона. В отличие от Регенерации, Вампиром можно поднять свои ОЗ выше начального уровня.";
         this.perks_text["morale"] = "Первый и второй уровни этой способности добавляют соответственно одну и два Выбора червя в ваш арсенал. При третьем уровне Выбор червя бесконечен.";
         this.perks_text["pe"] = "Первый уровень позволяет видеть, какое оружие находится в посылках, второй позволяет видеть невидимых червей, третий добавляет бесконечное количество ультраволновых сканеров в арсенал.";
         this.perks_text["light_step"] = "При первом уровне этой способности на ваших червей не реагируют обычные мины, при втором обычные и огненные, при третьем абсолютно все виды мин.";
         this.perks_text["luck2"] = "Во всех отношениях повторяет первый навык Удача. Не имеет смысла брать этот, если нет первого. С двумя способностями Удача шанс критического выстрела достигает почти 30%.";
         this.perks_text["bar"] = "Позволяет продавать вещи по большей цене. На третьем уровне можно продать любую вещь практически по рыночной стоимости.";
         this.perks_text["more_exp"] = "Увеличивает бонус опыта при победе. Третий уровень дает прибавку +15%. Эту способность лучше взять пораньше.";
         this.perks_text["god_of_war"] = "Каждый новый уровень этой способности повышает урон оружия всех типов на 15%.";
         this.perks_text["up_pistols"] = "Увеличивает урон всех пистолетов и ПП типа Узи.";
         this.perks_text["up_rifles"] = "Увеличивает урон всех огнестрельных и энергетических винтовок.";
         this.perks_text["up_miniguns"] = "Увеличивает урон всех огнестрельных и энергетических и пулеметов.";
         this.perks_text["less_fail"] = "Уменьшает шанс осечки всех оружий. При максимальной усталости и третьем уровне этой способности шанс осечки составит 20%.";
         this.perks_text["more_fail"] = "У врагов снаряды чаще взрываются прямо в стволе. Проблема в том, что у вас тоже!";
         this.perks_text["less_tired"] = "С каждым новым уровнем этой способности вы меньше устаете после каждого боя.";
         this.perks_text["steal"] = "Повышает вероятность кражи оружия.";
         this.perks_text["dmg_thr"] = "С каждым новым уровнем ваш порог урона (значение, которое вычитается из получаемого урона) увеличивается на 10. Плюс каждый четвертый уровень этой способности увеличивает шанс поглощения урона броней на 1%.";
         this.perks_text["big_guns"] = "Эта способность повышает урон оружия высоких классов - от 5 и выше. Правда, в ущерб урону оружия низких классов.";
         this.perks_text["crates"] = "Увеличивает вероятность, что в посылках будет попадаться лучшее оружие и общую вероятность появления посылок.";
         this.perks_text["ninja"] = "Уменьшает шанс врага точно попасть в ваших червяков.";
         this.perks_text["ap_shots"] = "Каждый уровень этой способности увеличивает шанс пробивного выстрела на 5%.";
         this.perks_text["absorb"] = "Каждый уровень этой способности увеличивает шанс поглощения урона броней на 5%.";
         this.perks_text["gsearch"] = "Каждый уровень этой способности уменьшает время обыска гробиков.";
         this.achiev_text["career"] = "Проходите задания в режиме Карьеры, чтобы открыть это достижение.";
         this.achiev_text["missions"] = "Проходите задания в режиме Миссий, чтобы открыть это достижение.";
         this.achiev_text["survival"] = "Проходите задания в режиме Выживания, чтобы открыть это достижение.";
         this.achiev_text["boss"] = "Побеждайте боссов, чтобы открыть это достижение.";
         this.achiev_text["assault"] = "Зависит от числа успешных захватов вражеских территорий. Режим захват территорий - самая левая кнопка сверху этого меню.";
         this.achiev_text["no_death"] = "Побеждайте в боях, не потеряв ни одного своего червяка!";
         this.achiev_text["no_injure"] = "Достижение для профессионалов - учитываются все бои, где ваши червяки не понесли даже ранения.";
         this.achiev_text["kill_p"] = "Чтобы открыть это достижение, убивайте врагов из оружия типа Снаряд - Баузки, Гранаты и т.д.";
         this.achiev_text["kill_e"] = "Чтобы открыть это достижение, убивайте врагов из оружия типа Взрывчатка - Мины, Динамит и т.д.";
         this.achiev_text["kill_a"] = "Чтобы открыть это достижение, убивайте врагов исключительно ударами сверху.";
         this.achiev_text["kill_c"] = "Чтобы открыть это достижение, убивайте врагов голыми руками или же используйте Шар Дракона, Огненный удар, Камикадзе.";
         this.achiev_text["kill_h"] = "Чтобы открыть это достижение, убивайте врагов из лазерного, плазменного и прочего энергетического оружия.";
         this.achiev_text["kill_f"] = "Чтобы открыть это достижение, убивайте врагов из огнестрельного оружия - пистолеты, винтовки, пулеметы.";
         this.achiev_text["kill_l"] = "Чтобы открыть это достижение, убивайте врагов Живыми бомбами - например, Овцой.";
         this.achiev_text["para"] = "Парализуйте ваших врагов с помощью импульсного оружия!";
         this.achiev_text["annih"] = "Испаряйте вражеских червей с помощью оружия нового поколения - аннигиляторов! Найти их в обычном магазине нельзя.";
         this.achiev_text["recipes"] = "Открывайте новые рецепты для крафтинга, чтобы открыть это достижение.";
         this.achiev_text["stims"] = "Используйте стимуляторы перед боем, чтобы врагу было несладко!.";
         this.achiev_text["buys"] = "Покупайте много оружия, скупите весь стационарный магазин и весь привалок Папы Джона!";
         this.achiev_text["steal"] = "Украдите столько оружия, сколько можете унести, но смотрите не попадитесь!";
         this.achiev_text["crafted"] = "Собирайте новые, более  мощные виды вооружения из компонентов!";
         this.achiev_text["upgraded"] = "Улучшайте свое оружие, сделайте его такой мощности, чтобы враги разбегались, лишь завидев его!";
         this.achiev_text["wins"] = "Выигрывайте в Дартс - удача любит смелых людей!";
         this.achiev_text["days"] = "В зависимости от количества проведенных дней в игре получайте алмазы! Учитываются именно ежедневные заходы.";
         this.task_texts[1] = "Для прохождения карьеры зайдите в бар (в главном меню) и выберите режим игры \"Карьера\", причем при первом заходе в бар этот режим будет выбран автоматически. Ваша задача - уничтожить всех вражеских червяков, и, при этом, сохранить хотя бы одного своего. Оружие можно выбрать кнопкой Q или нажатием на рюкзак в нижней правой части экрана. При наведении на оружие выведется его описание.";
         this.task_texts[2] = "Стимуляторы нужны для того, чтобы сбивать усталость, а так же повышать некоторые ваши навыки, такие как Атака или Защита. Для покупки стимулятора нажмите на Магазин в главном меню, зайдите в раздел \"Помощь\", выберите понравившийся стимулятор и нажмите \"Купить\" в правой нижней части экрана. Если шкала усталости в главном меню (красная) заполнилась до конца, это верный признак того, что нужно или подождать какое-то время, или использовать стимуляторы.";
         this.task_texts[3] = "Для получения нового уровня наберите необходимое количество очков опыта. Узнать, сколько вам еще нужно опыта можно, наведя курсор мыши на зеленую шкалу опыта в главном меню. Опыт дается за победы в бою или за достижения. Перед началом любого боя в описании будет показано, сколько опыта вы за него получите.";
         this.task_texts[4] = "Класс оружия - показатель его мощности. Всего классов восемь, первый класс - самый слабый, восьмой - самый разрушительный. При наведении курсора на оружие в арсенале (или при клике на оружие в магазине) в описании будет указан класс выбранного оружия. Для выполнения этого задания купите оружие 2 класса (или выше).";
         this.task_texts[5] = "Для прохождения выживания зайдите в бар в главном меню и выберите режим игры \"Выживание\". В описании задания к каждому выживанию будет указано количество червяков, которых вам необходимо уничтожить. Например, в первом выживании нужно уничтожить пять червяков. На карте их всего двое, однако при падении в воду или смерти вражеский червяк возродится, и так пять раз.";
         this.task_texts[6] = "Использование стимуляторов может хорошо помочь перед сложным боем. Если у вас нет способности \"Стимуляторы\", перед боем можно использовать всего четыре стимулятора. Зайдите в арсенал, вкладка \"Помощь\", наведите курсор на любой стимулятор, и нажмите \"Использовать\". Если во вкладке пусто, зайдите в магазин и купите стимуляторы. После этого попытайтесь выиграть любой бой. Даже если вы проиграете его, это неважно - задание все равно будет считаться выполненным. Кстати, если зайти во вкладку \"Развитие\" в этом меню, можно посмотреть на эффекты от принятых стимуляторов, они влияют на Атаку, Защиту и Здоровье.";
         this.task_texts[7] = "Зайдите в магазин, раздел \"Флаги\" и купите любой понравившийся. Кстати сказать, некоторые флаги можно купить после определенного достижения.";
         this.task_texts[8] = "Чтобы пройти миссию, зайдите в Бар и откройте режим игры \"Миссии\". Обращаем ваше внимание, что следует читать описание каждой миссии перед началом боя - в некоторых миссиях ставится не только основная задача (разгромить врагов), но еще и второстепенные - например, защитить мирное население или не дать врагам взорвать стратегические объекты.";
         this.task_texts[9] = "Получите еще один уровень, набрав соответствующее количество очков опыта.";
         this.task_texts[10] = "Зайдите в магазин и купите любое оружие третьего класса или выше. Класс оружия показан в информации справа, при клике на оружие.";
         this.task_texts[11] = "Сверху этого меню есть раздел \"Дартс\". Его суть заключается в том, что вы ставите некоторое количество золота или алмазов, и можете выиграть какое-либо оружие. Таблица вероятности по классам оружия показана внизу меню Дартса. Чтобы выполнить это задание, выигрывать оружие необязательно. Достаточно просто один раз сыграть.";
         this.task_texts[12] = "Пройдите еще одно выживание для выполнения этого задания.";
         this.task_texts[13] = "В меню \"Развитие\" есть раздел Способности. Способности оказывают огромное влияние на весь игровой процесс. Взять способность можно, если вам хватает очков способностей. Эти очки выдаются за каждый уровень - по 20 штук. Выберите любую новую способность для выполнения этого задания (для этого следует нажать кнопку с плюсом на любом открытом слоте способностей, а если таковых нет - его можно купить). ";
         this.task_texts[14] = "Пройдите одну миссию для выполнения этого задания.";
         this.task_texts[15] = "Разберите одно оружие на составляющие части и узнайте, из чего оно состоит. Для этого зайдите во вкладку \"Крафтинг\" и поместите оружие на \"верстак\" в разделе \"Разобрать оружие\". В результате вы лишитесь этого экземпляра оружия, но узнаете новый рецепт, который позволит собирать этот тип оружия и составных частей. Если рецепт вам уже известен, вы все равно можете попробовать разобрать оружие для получения его составных частей, но в этом случае вероятность удачного разбора уже не стопроцентная.";
         this.task_texts[16] = "Купите в магазине любое оружие четвертого класса или выше.";
         this.task_texts[17] = "Чтобы улучшить оружие, зайдите в Арсенал и наведите курсор на любое оружие. Рядом появится кнопка \"Улучшить\". Почти все оружие, кроме утилит и оружия ближнего боя, можно улучшать. За улучшения надо платить золотом. Если вы покупаете или крадете оружие, его ранг - 1. С каждым улучшением ранг оружия повышается, и, соответственно, повышается его стоимость при продаже, наносимый урон, отказоустойчивость, шанс критического выстрела и т.д.";
         this.task_texts[18] = "Зайдите в Бар и выберите режим игры \"Боссы\". Советуем вам хорошо подготовиться к битве с боссами - это супер-сильные червяки, которые висят над землей на портативном генераторе антигравитации, поэтому их нельзя сбить в воду.";
         this.task_texts[19] = "Зайдите во вкладку Развитие и увеличьте свое здоровье или добавьте в команду одного червяка. Сделать это можно за очки навыков (так же, как и увеличить Атаку или Защиту). Очки навыков выдаются по 15 за каждый новый уровень.";
         this.task_texts[20] = "У вас наверняка уже есть хотя бы один открытый рецепт (посмотреть можно в Книге рецептов во вкладке Крафтинг). По этим схемам можно собирать оружие - расположите все нужные предметы на \"верстаке\" под надписью \"Собрать оружие\". Для любого оружия требуются менее сильные оружия и предметы. Предметы можно купить в стандартном магазине, но там попадаются далеко не все из них. Большинство предметов, даже самые редкие, есть в магазине Папы Джона, а также их можно найти при обыске гробиков после боя.";
         this.task_texts[21] = "Зайдите в Магазин и купите одно любое оружие типа Энергетическое. Энергооружие самое мощное в игре, у него самый высокий урон и иногда есть некоторые дополнительные свойства, например пролетание сквозь препятствия.";
         this.task_texts[22] = "Выберите новую способность в разделе Развитие.";
         this.task_texts[23] = "Зайдите в Настройки в правом верхнем углу главного меню. Там будет возможность выбрать уровень сложности. Уровень сложности сильно влияет на Атаку, Защиту и Здоровье боссов. Однако, чем выше уровень сложности, тем больше золота и опыта вы получите в случае победы. Поставьте уровень сложности \"Кошмар\" и пройдите любую карьеру, хоть саму первую. Если вам покажется это чересчур сложным - всегда можно поставить уровень сложности обратно на \"Обычный\".";
         this.task_texts[24] = "Зайдите в магазин и украдите любое оружие у продавца. Будьте внимательны - если кража не удастся, и не получится запудрить продавцу мозги в диалоге, вас на один день не будут пускать в магазин, а усталость увеличится на 100%. На вероятность запудрить продавцу мозги влияют много способностей, вот некоторые из них: Образованность (самая важная), Удача, Торговец, Барыга. Подробности можно прочитать в Вормпедии, там есть статья про воровство.";
         this.task_texts[25] = "Зайдите в раздел Крафтинг и соберите любой экземпляр оружия 3 класса или выше.";
         this.task_texts[26] = "Победите еще одного босса.";
         this.task_texts[27] = "Зайдите в раздел Крафтинг и соберите любой экземпляр оружия 4 класса или выше.";
         this.task_texts[28] = "Захватите одну территорию (вкладка \"Захват территорий\"). При захвате территорий вам предстоит сражаться с одним мини-боссом, висящим на генераторе антигравитации, и его командой, обычными червяками. Причем босс неуязвим, пока жив еще хотя бы один червяк из его команды. За захваченные территории вы получаете бонусы золотом.";
         this.task_texts[29] = "Зайдите в Магазин, вкладка \"Имплантанты\", и купите любой чип по желанию. Чипы увеличивают ваши показатели Атаки, Защиты, Здоровья, а также иногда оказывают дополнительную помощь - например, защиту от яда.";
         this.task_texts[30] = "Зайдите в раздел Крафтинг и соберите любой экземпляр оружия 5 класса или выше.";
         this.task_texts[31] = "Вы прошли все тестовые задания. Теперь вы, надеемся, более-менее разобрались в механике игры. Удачи в захвате новых земель!";
      }
      
      public function init(param1:String, param2:String = "", param3:String = "") : *
      {
         if(param1 in this.no_anim_def)
         {
            this.init_instant(param1,param2,param3);
            return;
         }
         if(this.FWP.player.settings.no_animation == 0)
         {
            this.init_bg_blur();
            this.init_instant(param1,param2,param3,true);
            this.FWP.animation = true;
            this.FWP.animation_y = -600;
            this.FWP.animation_mode = "show";
            this.FWP.set_invisible_button(true);
            return;
         }
         this.init_bg_blur();
         this.init_instant(param1,param2,param3,false);
      }
      
      public function init_bg_blur() : *
      {
         var _loc1_:* = this.FWP.container_interf.get_object("menu_bg");
         ++this.cur_screen[0];
         this.cur_screen[this.cur_screen[0]] = {
            "name":"bg_blur",
            "link":_loc1_
         };
         addChild(_loc1_);
      }
      
      public function init_instant(param1:String, param2:String = "", param3:String = "", param4:Boolean = false) : *
      {
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc9_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         this.opened_filter = false;
         this.papa_checked = false;
         this.success_auc = false;
         this.FWP.interf_mainframe = false;
         if(param1 == "skills_main")
         {
            param1 = "skills";
         }
         if(param1 != "pay" && param1 != "calc" && param1 != "arsenal_sheet" && param1 != "crafting" && param1 != "error" && param1 != "steal")
         {
            this.cur_page = 1;
            this.cur_element = -1;
            this.cur_weapon = "";
            this.shop_page = 1;
            this.shop_mode = "all";
         }
         if(param1 == "papa_shop")
         {
            this.shop_type = "weapons";
         }
         var _loc7_:* = this.FWP.temp_player;
         var _loc8_:* = this.FWP.player;
         if(param1 == "mainframe")
         {
            (_loc9_ = this.FWP.container_interf.get_object("_mainframe")).get_replay_clip.visible = this.FWP.REPLAY_STRING != "";
            this.FWP.interf_mainframe = true;
         }
         if(param1 == "fight")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_fight");
            this.init_slider(param1,"slider");
         }
         if(param1 == "skills")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_skills");
            this.changes_made = false;
            this.FWP.refresh_temp_params();
         }
         if(param1 == "tasks")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_tasks");
            this.init_slider(param1);
            this.task_bonus_text = "";
         }
         if(param1 == "choose_perk" || param1 == "view_perks")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_choose_perk");
         }
         if(param1 == "buy_perk")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_buy_perk");
         }
         if(param1 == "arsenal")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_arsenal");
            this.FWP.refresh_temp_params();
            this.init_slider(param1);
         }
         if(param1 == "choose_spec")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_choose_spec");
         }
         if(param1 == "spec_learn_more")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_spec_learn_more");
         }
         if(param1 == "shop")
         {
            if(this.FWP.player.today_steals >= 8)
            {
               if(this.FWP.player.today_steals == 8)
               {
                  this.success_steal = false;
                  this.steal_state = "get_off";
               }
               else
               {
                  this.steal_state = "fuck_off";
               }
               this.init("mainframe");
               this.init("steal");
               return;
            }
            _loc9_ = this.FWP.container_interf.get_object("menu_shop");
            this.FWP.refresh_temp_params();
         }
         if(param1 == "rating")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_rating");
         }
         if(param1 == "info")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_info");
         }
         if(param1 == "achiev")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_achiev");
            this.achiev_bonus_text = "";
         }
         if(param1 == "crafting")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_crafting");
            this.weapon_stack = [0,{},{},{},{},{},{}];
            this.weapon_diss = {};
         }
         if(param1 == "finish_crafting")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_finish_crafting");
         }
         if(param1 == "game")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_game");
         }
         if(param1 == "replay")
         {
            (_loc9_ = this.FWP.container_interf.get_object("menu_replay")).go_replay.visible = false;
            _loc9_.replay_info_zone.visible = false;
         }
         if(param1 == "roul")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_roul");
         }
         if(param1 == "tired")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_tired");
         }
         if(param1 == "just_play")
         {
            this.remove();
            _loc9_ = this.FWP.container_interf.get_object("menu_just_play");
         }
         if(param1 == "end_game_lose")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_end_game_lose");
         }
         if(param1 == "end_game_win")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_end_game_win");
         }
         if(param1 == "end_game_new_lvl")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_end_game_new_lvl");
         }
         if(param1 == "end_game_surprise")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_end_game_surprise");
         }
         if(param1 == "what_opened")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_what_opened");
         }
         if(param1 == "grave_search")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_grave_search");
         }
         if(param1 == "grave_result")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_surprise");
         }
         if(param1 == "roul result")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_surprise");
         }
         if(param1 == "settings")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_settings");
         }
         if(param1 == "question")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_question");
            this.question_mode = param2;
         }
         if(param1 == "present")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_present");
         }
         if(param1 == "view_tutorial")
         {
            (_loc9_ = this.FWP.container_interf.get_object("menu_view_tutorial")).stop();
         }
         if(param1 == "weapon_sheet")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_weapon_sheet");
            this.init_slider(param1);
         }
         if(param1 == "friends")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_friends");
            this.init_slider(param1);
         }
         if(param1 == "top")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_top");
            _loc5_ = 1;
            while(_loc5_ <= 10)
            {
               _loc9_["clip_top" + _loc5_].clan_icon.visible = false;
               _loc5_++;
            }
         }
         if(param1 == "clan_members")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_clan_members");
            this.init_slider(param1);
         }
         if(param1 == "clans")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_clans");
            this.init_slider(param1);
         }
         if(param1 == "user_info")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_user_info");
            this.opened_user_uid = Number(param2);
            _loc9_.award_magnet.visible = false;
            _loc9_.award_contest.visible = false;
            _loc9_.award_tester.visible = false;
            _loc9_.error_message.visible = false;
            this.MainBitmapData.fillRect(new Rectangle(0,0,this.MainBitmap.width,this.MainBitmap.height),0);
         }
         if(param1 == "error")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_error");
            this.error_mode = param2;
         }
         if(param1 == "calc")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_calc");
            this.calc_weapon = param2;
         }
         if(param1 == "wormpedia")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_wormpedia");
         }
         if(param1 == "recipes")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_recipes");
            this.init_slider(param1);
         }
         if(param1 == "assault")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_assault");
            _loc5_ = 1;
            while(_loc5_ <= 17)
            {
               _loc9_["terr_zone_" + _loc5_].clan_icon.gotoAndStop(29);
               _loc5_++;
            }
            _loc9_.my_clan_icon.gotoAndStop(29);
            _loc9_.clip_assault_tribute.gotoAndStop(1);
            _loc9_.assault_zones.gotoAndStop(1);
            _loc9_.assault_zones.zone_common_desc.htmlText = "";
         }
         if(param1 == "how_tribute_calcs")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_how_tribute_calcs");
         }
         if(param1 == "papa_john")
         {
            if(this.FWP.PAPA_HERE)
            {
               _loc9_ = this.FWP.container_interf.get_object("menu_papa");
            }
            else
            {
               _loc9_ = this.FWP.container_interf.get_object("menu_papa_not_here");
            }
         }
         if(param1 == "papa_shop")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_papa_shop");
         }
         if(param1 == "upgrade_weapon")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_upgrade_weapon");
         }
         if(param1 == "sell_weapon")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_sell_weapon");
         }
         if(param1 == "tribute")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_tribute");
         }
         if(param1 == "auc")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_auc");
         }
         if(param1 == "auc_rules")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_auc_rules");
         }
         if(param1 == "steal")
         {
            if(this.success_steal)
            {
               _loc9_ = this.FWP.container_interf.get_object("menu_error");
            }
            else
            {
               _loc9_ = this.FWP.container_interf.get_object("menu_steal");
            }
         }
         if(param1 == "pay")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_pay");
            this.USER_BALANCE = 0;
            this.VOTES_TO_DRAW = 0;
            this.DIAM_TO_TRANS = 0;
            this.PLAYER_DIAM = this.FWP.player.diam.value;
         }
         if(param1 == "scaner")
         {
            _loc9_ = this.FWP.container_interf.get_object("menu_scaner");
            this.init_slider(param1);
            this.scaner_mode = param2;
         }
         ++this.cur_screen[0];
         this.cur_screen[this.cur_screen[0]] = {
            "name":param1,
            "link":_loc9_
         };
         addChild(_loc9_);
         if(_loc9_.bitmap_container && param1 != "game")
         {
            _loc9_.bitmap_container.addChild(this.MainBitmap);
         }
         if(_loc9_.bitmap_container && param1 == "game")
         {
            _loc9_.bitmap_container.addChild(this.SecondBitmap);
         }
         var _loc10_:* = 0;
         if(_loc9_.weapon_container)
         {
            _loc5_ = 1;
            while(_loc5_ <= 4)
            {
               _loc6_ = 1;
               while(_loc6_ <= 6)
               {
                  _loc10_++;
                  this.buttons["wp_buy_" + _loc10_] = this.FWP.container_interf.get_object("buy_weapon");
                  _loc9_.weapon_container.addChild(this.buttons["wp_buy_" + _loc10_]);
                  this.buttons["wp_buy_" + _loc10_].x = 86 + (_loc6_ - 1) * 70;
                  this.buttons["wp_buy_" + _loc10_].y = 134 + (_loc5_ - 1) * 100;
                  this.bitmaps["shop" + _loc10_] = new Bitmap();
                  this.bitmap_datas["shop" + _loc10_] = new BitmapData(50,50,true,0);
                  this.bitmaps["shop" + _loc10_].bitmapData = this.bitmap_datas["shop" + _loc10_];
                  this.buttons["wp_buy_" + _loc10_].addChild(this.bitmaps["shop" + _loc10_]);
                  this.bitmaps["shop" + _loc10_].x = 5;
                  this.bitmaps["shop" + _loc10_].y = 5;
                  _loc6_++;
               }
               _loc5_++;
            }
         }
         if(_loc9_.arsenal_weapon_container)
         {
            _loc5_ = 1;
            while(_loc5_ <= 2000)
            {
               this.bitmaps["ars_wp" + _loc5_] = new Object();
               this.bitmap_datas["ars_wp" + _loc5_] = new Object();
               _loc5_++;
            }
         }
         if(_loc9_.recipes_container)
         {
            _loc5_ = 1;
            while(_loc5_ <= 150)
            {
               this.bitmaps["rcp" + _loc5_] = new Object();
               this.bitmap_datas["rcp" + _loc5_] = new Object();
               _loc5_++;
            }
            this.bitmaps["rec_result"] = new Object();
            this.bitmap_datas["rec_result"] = new Object();
            _loc5_ = 1;
            while(_loc5_ <= 6)
            {
               this.bitmaps["rec_component" + _loc5_] = new Object();
               this.bitmap_datas["rec_component" + _loc5_] = new Object();
               _loc5_++;
            }
         }
         if(_loc9_.achiev_container)
         {
            _loc5_ = 1;
            while(_loc5_ <= 4)
            {
               _loc6_ = 1;
               while(_loc6_ <= 6)
               {
                  _loc10_++;
                  this.buttons["ach_" + _loc10_] = this.FWP.container_interf.get_object("clip_achiev");
                  _loc9_.achiev_container.addChild(this.buttons["ach_" + _loc10_]);
                  this.buttons["ach_" + _loc10_].x = (_loc6_ - 1) * 80;
                  this.buttons["ach_" + _loc10_].y = (_loc5_ - 1) * 80;
                  this.buttons["ach_" + _loc10_].name = "clip_achiev" + String(_loc10_);
                  this.bitmaps["ach_" + _loc10_] = new Bitmap();
                  this.bitmap_datas["ach_" + _loc10_] = new BitmapData(50,50,true,0);
                  this.bitmaps["ach_" + _loc10_].bitmapData = this.bitmap_datas["ach_" + _loc10_];
                  _loc6_++;
               }
               _loc5_++;
            }
         }
         if(_loc9_.in_game_weapon_container)
         {
            _loc5_ = 1;
            while(_loc5_ <= 80)
            {
               this.bitmaps["ing_wp" + _loc5_] = new Object();
               this.bitmap_datas["ing_wp" + _loc5_] = new Object();
               _loc5_++;
            }
         }
         if(_loc9_.crafting_wp_container)
         {
            _loc5_ = 1;
            while(_loc5_ <= 11)
            {
               this.bitmaps["craft_wp" + _loc5_] = new Object();
               this.bitmap_datas["craft_wp" + _loc5_] = new Object();
               _loc5_++;
            }
         }
         if(_loc9_.crafting_obj_container)
         {
            _loc5_ = 1;
            while(_loc5_ <= 11)
            {
               this.bitmaps["craft_obj" + _loc5_] = new Object();
               this.bitmap_datas["craft_obj" + _loc5_] = new Object();
               _loc5_++;
            }
         }
         if(_loc9_.crafting_stack_container)
         {
            _loc5_ = 1;
            while(_loc5_ <= 7)
            {
               this.bitmaps["craft_stack" + _loc5_] = new Object();
               this.bitmap_datas["craft_stack" + _loc5_] = new Object();
               _loc5_++;
            }
         }
         if(_loc9_.crafting_diss_container)
         {
            this.bitmaps["craft_diss"] = new Bitmap();
            this.bitmap_datas["craft_diss"] = new BitmapData(50,50,true,0);
         }
         if(_loc9_.floating_container)
         {
            this.bitmaps["float"] = new Bitmap();
            this.bitmap_datas["float"] = new BitmapData(50,50,true,0);
         }
         if(_loc9_.craft_result_icon)
         {
            this.bitmaps["craft_result_icon"] = new Bitmap();
            this.bitmap_datas["craft_result_icon"] = new BitmapData(50,50,true,0);
            this.bitmaps["craft_result_icon"].bitmapData = this.bitmap_datas["craft_result_icon"];
            _loc9_.craft_result_icon.addChild(this.bitmaps["craft_result_icon"]);
         }
         if(_loc9_.perks_container)
         {
            _loc5_ = 1;
            while(_loc5_ <= 4)
            {
               _loc6_ = 1;
               while(_loc6_ <= 7)
               {
                  _loc10_++;
                  this.buttons["pk_buy_" + _loc10_] = this.FWP.container_interf.get_object("clip_new_perk");
                  _loc9_.perks_container.addChild(this.buttons["pk_buy_" + _loc10_]);
                  this.buttons["pk_buy_" + _loc10_].x = (_loc6_ - 1) * 67;
                  this.buttons["pk_buy_" + _loc10_].y = (_loc5_ - 1) * 80;
                  this.bitmaps["cperk" + _loc10_] = new Bitmap();
                  this.bitmap_datas["cperk" + _loc10_] = new BitmapData(50,50,true,0);
                  this.bitmaps["cperk" + _loc10_].bitmapData = this.bitmap_datas["cperk" + _loc10_];
                  this.buttons["pk_buy_" + _loc10_].addChild(this.bitmaps["cperk" + _loc10_]);
                  this.bitmaps["cperk" + _loc10_].x = 5;
                  this.bitmaps["cperk" + _loc10_].y = 5;
                  _loc6_++;
               }
               _loc5_++;
            }
         }
         if(_loc9_.choose_container)
         {
            this.play_type = param2;
            _loc11_ = 0;
            if(this.play_type == "career")
            {
               _loc11_ = Math.min(this.FWP.player.career_max,this.FWP.TEAMS_DEF.career_max);
            }
            if(this.play_type == "missions")
            {
               _loc11_ = Math.min(this.FWP.player.missions_max,this.FWP.TEAMS_DEF.missions_max);
            }
            if(this.play_type == "survival")
            {
               _loc11_ = Math.min(this.FWP.player.survival_max,this.FWP.TEAMS_DEF.survival_max);
            }
            if(this.play_type == "boss")
            {
               _loc11_ = Math.min(this.FWP.player.boss_max,this.FWP.TEAMS_DEF.boss_max);
            }
            _loc5_ = 1;
            while(_loc5_ <= _loc11_)
            {
               this.buttons["fight" + _loc5_] = this.FWP.container_interf.get_object("choose_task");
               _loc9_.choose_container.addChild(this.buttons["fight" + _loc5_]);
               this.buttons["fight" + _loc5_].x = 0;
               this.buttons["fight" + _loc5_].y = (_loc5_ - 1) * 20;
               _loc12_ = "";
               if(_loc5_ == _loc11_)
               {
                  _loc12_ = "<b>";
               }
               if(this.play_type == "career")
               {
                  _loc12_ += this.FWP.TEAMS_DEF["career" + _loc5_].name;
               }
               if(this.play_type == "missions")
               {
                  _loc12_ += this.FWP.TEAMS_DEF["mission" + _loc5_].name;
               }
               if(this.play_type == "survival")
               {
                  _loc12_ += this.FWP.TEAMS_DEF["survival" + _loc5_].name;
               }
               if(this.play_type == "boss")
               {
                  _loc12_ += this.FWP.TEAMS_DEF["boss" + _loc5_].name;
               }
               if(_loc5_ == _loc11_)
               {
                  _loc12_ += "</b>";
               }
               this.buttons["fight" + _loc5_].task_name.htmlText = _loc12_;
               this.buttons["fight" + _loc5_].name = _loc5_;
               _loc5_++;
            }
            this.cur_element = _loc11_;
            if(_loc11_ <= 16)
            {
               _loc9_.slider.visible = false;
            }
            else
            {
               _loc9_.choose_container.y = 200 - (_loc9_.choose_container.height - 20 - (this.slider_bottom - this.slider_top));
               _loc9_.slider.y = this.slider_bottom;
            }
            _loc9_[this.play_type].visible = false;
         }
         if(_loc9_.papa_container)
         {
            _loc5_ = 1;
            while(_loc5_ <= 2)
            {
               _loc6_ = 1;
               while(_loc6_ <= 5)
               {
                  _loc10_++;
                  this.buttons["wp_buy_" + _loc10_] = this.FWP.container_interf.get_object("buy_weapon");
                  _loc9_.papa_container.addChild(this.buttons["wp_buy_" + _loc10_]);
                  this.buttons["wp_buy_" + _loc10_].x = (_loc6_ - 1) * 70;
                  this.buttons["wp_buy_" + _loc10_].y = (_loc5_ - 1) * 110;
                  this.bitmaps["shop" + _loc10_] = new Bitmap();
                  this.bitmap_datas["shop" + _loc10_] = new BitmapData(50,50,true,0);
                  this.bitmaps["shop" + _loc10_].bitmapData = this.bitmap_datas["shop" + _loc10_];
                  this.buttons["wp_buy_" + _loc10_].addChild(this.bitmaps["shop" + _loc10_]);
                  this.bitmaps["shop" + _loc10_].x = 5;
                  this.bitmaps["shop" + _loc10_].y = 5;
                  _loc6_++;
               }
               _loc5_++;
            }
         }
         if(_loc9_.what_opened_container)
         {
            _loc5_ = 1;
            while(_loc5_ <= 5)
            {
               _loc6_ = 1;
               while(_loc6_ <= 2)
               {
                  _loc10_++;
                  this.buttons["what_op_" + _loc10_] = this.FWP.container_interf.get_object("clip_what_opened");
                  _loc9_.what_opened_container.addChild(this.buttons["what_op_" + _loc10_]);
                  this.buttons["what_op_" + _loc10_].x = (_loc6_ - 1) * 200;
                  this.buttons["what_op_" + _loc10_].y = (_loc5_ - 1) * 50;
                  this.bitmaps["what_op_" + _loc10_] = new Bitmap();
                  this.bitmap_datas["what_op_" + _loc10_] = new BitmapData(50,50,true,0);
                  this.bitmaps["what_op_" + _loc10_].bitmapData = this.bitmap_datas["what_op_" + _loc10_];
                  this.buttons["what_op_" + _loc10_].addChild(this.bitmaps["what_op_" + _loc10_]);
                  _loc6_++;
               }
               _loc5_++;
            }
         }
         if(_loc9_.grave_search_container)
         {
            _loc5_ = 1;
            while(_loc5_ <= 8)
            {
               _loc6_ = 1;
               while(_loc6_ <= 2)
               {
                  _loc10_++;
                  this.buttons["gsearch_" + _loc10_] = this.FWP.container_interf.get_object("clip_grave_search");
                  _loc9_.grave_search_container.addChild(this.buttons["gsearch_" + _loc10_]);
                  this.buttons["gsearch_" + _loc10_].x = (_loc6_ - 1) * 200;
                  this.buttons["gsearch_" + _loc10_].y = (_loc5_ - 1) * 40;
                  this.buttons["gsearch_" + _loc10_].name = String("gsearch_" + _loc10_);
                  _loc6_++;
               }
               _loc5_++;
            }
         }
         if(_loc9_.roul_or_grave_result_icon)
         {
            this.bitmaps["roul_or_grave_result_icon"] = new Bitmap();
            this.bitmap_datas["roul_or_grave_result_icon"] = new BitmapData(50,50,true,0);
            this.bitmaps["roul_or_grave_result_icon"].bitmapData = this.bitmap_datas["roul_or_grave_result_icon"];
            _loc9_.roul_or_grave_result_icon.addChild(this.bitmaps["roul_or_grave_result_icon"]);
         }
         if(_loc9_.tasks_container)
         {
            _loc11_ = Math.min(this.FWP.player.cur_task,this.FWP.TASK_DEF[0]);
            _loc5_ = 1;
            while(_loc5_ <= this.FWP.TASK_DEF[0])
            {
               this.buttons["tsk" + _loc5_] = this.FWP.container_interf.get_object("clip_task");
               _loc9_.tasks_container.addChild(this.buttons["tsk" + _loc5_]);
               this.buttons["tsk" + _loc5_].x = 0;
               this.buttons["tsk" + _loc5_].y = (_loc5_ - 1) * 20;
               this.buttons["tsk" + _loc5_].name = _loc5_;
               _loc5_++;
            }
            if(_loc11_ <= 22)
            {
               _loc9_.slider.visible = false;
            }
            else
            {
               _loc9_.tasks_container.y = 118 - (_loc9_.tasks_container.height - 20 - (this.slider_bottom - this.slider_top));
               _loc9_.slider.y = this.slider_bottom;
            }
         }
         if(_loc9_.replay_info_zone)
         {
            this.bitmaps["replay_weapons"] = new Bitmap();
            this.bitmap_datas["replay_weapons"] = new BitmapData(250,100,true,0);
            this.bitmaps["replay_weapons"].bitmapData = this.bitmap_datas["replay_weapons"];
            _loc9_.replay_info_zone.replay_container.addChild(this.bitmaps["replay_weapons"]);
         }
         if(param1 == "just_play")
         {
            this.cur_element = 1;
            _loc13_ = new Array(0,0,14,26,39,51);
            _loc5_ = 1;
            while(_loc5_ <= 5)
            {
               this.buttons["just" + _loc5_] = this.FWP.container_interf.get_object("choose_task");
               _loc9_.just_play_container.addChild(this.buttons["just" + _loc5_]);
               this.buttons["just" + _loc5_].x = 0;
               this.buttons["just" + _loc5_].y = (_loc5_ - 1) * 20;
               this.buttons["just" + _loc5_].task_name.htmlText = "Карта №" + _loc5_;
               this.buttons["just" + _loc5_].name = _loc5_;
               this.buttons["just" + _loc5_].visible = _loc8_.career_max >= _loc13_[_loc5_];
               _loc5_++;
            }
         }
         if(param1 == "game")
         {
            _loc9_.wind_container.addChild(this.WindBar);
            this.WindBar.x = 704;
            this.WindBar.y = 23;
            this.SecondBitmapData = new BitmapData(153,89,true,0);
            this.SecondBitmap.bitmapData = this.SecondBitmapData;
            _loc9_.inv_button.addEventListener(MouseEvent.MOUSE_DOWN,this.click_game_invisible,false,0,true);
            _loc9_.inv_button.addEventListener(MouseEvent.MOUSE_UP,this.click_game_invisible,false,0,true);
            _loc9_.inv_button.addEventListener(MouseEvent.DOUBLE_CLICK,this.click_game_invisible,false,0,true);
            _loc9_.inv_button.doubleClickEnabled = true;
            _loc9_.distance_container.addChild(this.distance_box_container);
         }
         if(param1 == "arsenal")
         {
            _loc9_.weapon_name.text = "Арсенал";
            _loc9_.weapon_desc.htmlText = "Здесь вы можете посмотреть, какое оружие имеется у вас в наличии, а также собрать из составляющих компонентов новые типы вооружения (кнопка Крафтинг). Однако, для крафтинга вам необходима одноименная способность Крафтинг, которую можно взять с 10 уровня.\n\nПолупрозрачными отмечены те оружия, которые даются вам в виде гуманитарной помощи при прохождении подавляющего большинства заданий.";
            this.ThirdBitmapData = new BitmapData(153,428,true,0);
            this.ThirdBitmap.bitmapData = this.ThirdBitmapData;
         }
         _loc5_ = 0;
         while(_loc5_ <= _loc9_.numChildren - 1)
         {
            _loc9_.getChildAt(_loc5_).addEventListener(MouseEvent.CLICK,this.click,false,0,true);
            _loc9_.getChildAt(_loc5_).addEventListener(MouseEvent.MOUSE_OVER,this.mouse_event,false,0,true);
            _loc9_.getChildAt(_loc5_).addEventListener(MouseEvent.MOUSE_OUT,this.mouse_event,false,0,true);
            _loc9_.getChildAt(_loc5_).addEventListener(MouseEvent.MOUSE_DOWN,this.mouse_event,false,0,true);
            _loc9_.getChildAt(_loc5_).addEventListener(MouseEvent.MOUSE_UP,this.mouse_event,false,0,true);
            _loc5_++;
         }
         if(param1 == "settings")
         {
            _loc9_.worm_name1.addEventListener(Event.CHANGE,this.check_tf,false,0,true);
            _loc9_.worm_name2.addEventListener(Event.CHANGE,this.check_tf,false,0,true);
            _loc9_.worm_name3.addEventListener(Event.CHANGE,this.check_tf,false,0,true);
            _loc9_.worm_name4.addEventListener(Event.CHANGE,this.check_tf,false,0,true);
            _loc9_.worm_name5.addEventListener(Event.CHANGE,this.check_tf,false,0,true);
         }
         if(param1 == "friends")
         {
            this.FWP.net_get_friends();
         }
         if(param1 == "top")
         {
            this.top_mode = 1;
            this.FWP.net_get_top_members();
            _loc9_.top_by_level.visible = false;
         }
         if(param1 == "user_info")
         {
            this.FWP.net_get_user_info(this.opened_user_uid,param3);
         }
         if(param1 == "replay")
         {
            this.FWP.net_get_notes();
         }
         if(param1 == "assault")
         {
            this.FWP.net_get_assault();
         }
         if(param1 != "assault" && param1 != "friends" && param1 != "top" && param1 != "replay" && param1 != "user_info" && param1 != "end_game_surprise")
         {
            this.render();
         }
         setChildIndex(this.popup,numChildren - 1);
         this.popup.visible = false;
         if(param4)
         {
            _loc9_.y = -600;
         }
      }
      
      public function mainframe_animation() : *
      {
         var _loc1_:* = this.cur_screen[this.cur_screen[0]].link;
         if(this.cur_screen[this.cur_screen[0]].name == "mainframe")
         {
            if(this.mf_shop_freeze == 0)
            {
               _loc1_.shop_anim.gotoAndStop(Math.round(this.mf_shop_frame));
               this.mf_shop_frame += 0.5;
            }
            if(this.mf_shop_freeze != 0)
            {
               --this.mf_shop_freeze;
               this.mf_shop_frame = 26;
            }
            if(this.mf_shop_frame == 25)
            {
               this.mf_shop_freeze = this.FWP.true_random(50,100);
            }
            if(this.mf_shop_frame == 80)
            {
               if(this.FWP.true_random(0,3) == 0)
               {
                  this.mf_shop_frame = 81;
               }
               else
               {
                  this.mf_shop_frame = 1;
               }
            }
            if(this.mf_shop_frame == 210)
            {
               this.mf_shop_frame = 1;
            }
         }
      }
      
      public function render(param1:Boolean = false) : *
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
         var _loc36_:* = undefined;
         var _loc37_:* = undefined;
         var _loc38_:* = undefined;
         var _loc39_:* = undefined;
         var _loc40_:* = undefined;
         var _loc41_:* = undefined;
         var _loc42_:* = undefined;
         var _loc43_:* = undefined;
         var _loc44_:* = undefined;
         var _loc45_:* = undefined;
         var _loc46_:* = undefined;
         var _loc47_:* = undefined;
         var _loc48_:* = undefined;
         var _loc49_:* = undefined;
         var _loc50_:* = undefined;
         var _loc51_:* = undefined;
         var _loc52_:* = undefined;
         var _loc53_:* = undefined;
         var _loc54_:* = undefined;
         var _loc55_:* = undefined;
         var _loc56_:* = undefined;
         var _loc57_:* = undefined;
         var _loc58_:* = undefined;
         var _loc59_:* = undefined;
         var _loc60_:* = undefined;
         var _loc61_:* = undefined;
         var _loc62_:* = undefined;
         var _loc63_:* = undefined;
         var _loc64_:* = undefined;
         var _loc65_:* = undefined;
         var _loc66_:* = undefined;
         var _loc67_:* = undefined;
         var _loc68_:* = undefined;
         var _loc69_:* = undefined;
         var _loc70_:* = undefined;
         var _loc71_:* = undefined;
         var _loc72_:* = undefined;
         var _loc73_:* = undefined;
         var _loc74_:* = undefined;
         var _loc75_:* = undefined;
         var _loc76_:* = undefined;
         var _loc77_:* = undefined;
         var _loc78_:* = undefined;
         var _loc79_:* = undefined;
         var _loc80_:* = undefined;
         var _loc81_:* = undefined;
         var _loc82_:* = undefined;
         var _loc83_:* = undefined;
         var _loc84_:* = undefined;
         var _loc85_:* = undefined;
         var _loc86_:* = undefined;
         var _loc87_:* = undefined;
         var _loc88_:* = undefined;
         var _loc89_:* = undefined;
         var _loc90_:* = undefined;
         var _loc91_:* = undefined;
         var _loc92_:* = undefined;
         var _loc93_:* = undefined;
         var _loc94_:* = undefined;
         var _loc95_:* = undefined;
         var _loc96_:* = undefined;
         var _loc97_:* = undefined;
         var _loc98_:* = undefined;
         var _loc99_:* = undefined;
         var _loc100_:* = undefined;
         var _loc101_:* = undefined;
         var _loc102_:* = undefined;
         var _loc103_:* = undefined;
         var _loc104_:* = undefined;
         var _loc105_:* = undefined;
         var _loc106_:* = undefined;
         var _loc107_:* = undefined;
         var _loc108_:* = undefined;
         var _loc109_:* = undefined;
         var _loc110_:* = undefined;
         var _loc111_:* = undefined;
         var _loc112_:* = undefined;
         var _loc113_:* = undefined;
         var _loc114_:* = undefined;
         var _loc115_:* = undefined;
         var _loc116_:* = undefined;
         var _loc117_:* = undefined;
         var _loc118_:* = undefined;
         var _loc119_:* = undefined;
         var _loc120_:* = undefined;
         var _loc121_:* = undefined;
         var _loc122_:* = undefined;
         var _loc123_:* = undefined;
         var _loc124_:* = undefined;
         var _loc125_:* = undefined;
         var _loc126_:Object = null;
         var _loc127_:* = undefined;
         var _loc128_:* = undefined;
         var _loc129_:* = undefined;
         var _loc130_:* = undefined;
         var _loc131_:* = undefined;
         var _loc132_:* = undefined;
         var _loc133_:* = undefined;
         var _loc134_:* = undefined;
         var _loc135_:* = undefined;
         var _loc136_:* = undefined;
         var _loc137_:* = undefined;
         var _loc138_:* = undefined;
         var _loc139_:* = undefined;
         var _loc140_:* = undefined;
         var _loc141_:* = undefined;
         var _loc142_:* = undefined;
         var _loc143_:* = undefined;
         var _loc144_:* = undefined;
         var _loc145_:* = undefined;
         var _loc146_:* = undefined;
         var _loc147_:* = undefined;
         var _loc148_:* = undefined;
         var _loc149_:* = undefined;
         var _loc150_:* = undefined;
         var _loc151_:* = undefined;
         var _loc152_:Date = null;
         var _loc153_:* = undefined;
         var _loc154_:* = undefined;
         var _loc155_:* = undefined;
         var _loc156_:* = undefined;
         var _loc157_:* = undefined;
         var _loc158_:* = undefined;
         var _loc159_:* = undefined;
         var _loc160_:* = undefined;
         var _loc161_:* = undefined;
         var _loc162_:* = undefined;
         var _loc163_:* = undefined;
         var _loc164_:* = undefined;
         var _loc165_:* = undefined;
         var _loc166_:* = undefined;
         var _loc167_:* = undefined;
         var _loc168_:* = undefined;
         var _loc169_:* = undefined;
         var _loc170_:* = undefined;
         var _loc171_:* = undefined;
         var _loc172_:* = undefined;
         var _loc173_:* = undefined;
         var _loc174_:Date = null;
         var _loc175_:* = undefined;
         var _loc176_:* = undefined;
         var _loc177_:* = undefined;
         var _loc178_:* = undefined;
         var _loc179_:* = undefined;
         var _loc180_:* = undefined;
         var _loc181_:* = undefined;
         var _loc182_:Number = NaN;
         var _loc183_:* = undefined;
         var _loc184_:* = undefined;
         var _loc185_:* = undefined;
         var _loc186_:Number = NaN;
         var _loc187_:* = undefined;
         var _loc188_:* = undefined;
         var _loc189_:* = undefined;
         var _loc190_:* = undefined;
         var _loc191_:* = undefined;
         var _loc192_:* = undefined;
         var _loc193_:* = undefined;
         var _loc194_:* = undefined;
         var _loc195_:* = undefined;
         var _loc196_:* = undefined;
         var _loc197_:* = undefined;
         var _loc198_:* = undefined;
         var _loc199_:* = undefined;
         var _loc200_:* = undefined;
         var _loc201_:* = undefined;
         var _loc202_:* = undefined;
         var _loc203_:* = undefined;
         var _loc204_:* = undefined;
         var _loc205_:* = undefined;
         if(this.cur_screen[this.cur_screen[0]].name != "settings" && this.cur_screen[this.cur_screen[0]].name != "buy_perk" && this.cur_screen[this.cur_screen[0]].name != "choose_perk" && this.cur_screen[this.cur_screen[0]].name != "view_perks" && this.cur_screen[this.cur_screen[0]].name != "question")
         {
            this.MainBitmapData.fillRect(new Rectangle(0,0,this.MainBitmap.width,this.MainBitmap.height),0);
         }
         _loc32_ = this.cur_screen[this.cur_screen[0]].link;
         _loc33_ = this.FWP.temp_player;
         _loc34_ = this.FWP.player;
         var _loc35_:* = {
            "attack":_loc34_.attack.value,
            "protect":_loc34_.protect.value,
            "health":100 + 50 * _loc34_.health.value,
            "worms":2 + _loc34_.worms.value,
            "tired":_loc34_.tired,
            "stim_to_fight":_loc34_.stim_to_fight,
            "impl":_loc34_.cur_impl
         };
         _loc36_ = this.FWP.get_affected_skills(_loc35_);
         if(this.cur_screen[this.cur_screen[0]].name == "mainframe")
         {
            _loc32_.announcement_achiev.visible = this.FWP.get_achiev_bonus().exist;
            _loc32_.announcement_task.visible = !(_loc34_.cur_task == 31 && _loc34_.last_presented_task == 31);
            if(this.FWP.get_task_bonus().exist)
            {
               _loc32_.announcement_task.gotoAndPlay(1);
            }
            else
            {
               _loc32_.announcement_task.gotoAndStop(1);
            }
            _loc32_.my_level.text = _loc34_.level.value;
            _loc32_.gold.text = this.x3SHString(_loc34_.gold.value);
            _loc32_.diam.text = this.x3SHString(_loc34_.diam.value);
            _loc32_.exp_bar.width = (_loc34_.exp.value - this.FWP.LEVEL_THRESHOLD[_loc34_.level.value]) / (this.FWP.LEVEL_THRESHOLD[_loc34_.level.value + 1] - this.FWP.LEVEL_THRESHOLD[_loc34_.level.value]) * 111;
            _loc32_.tired_bar.width = 111 * Math.min(100,_loc36_.tired) / 100;
            if(this.FWP.image_loaders["id" + this.FWP.user.user_id] && !this.FWP.LOCAL_TEST)
            {
               _loc32_.avatar_container.addChild(this.FWP.image_loaders["id" + this.FWP.user.user_id]);
            }
            _loc32_.music.gotoAndStop(!!this.FWP.MUSIC ? 1 : 2);
            _loc32_.sound.gotoAndStop(!!this.FWP.SOUND ? 1 : 2);
            _loc32_.init_papa_john_active.visible = this.FWP.PAPA_HERE;
         }
         if(this.cur_screen[this.cur_screen[0]].name == "present")
         {
            _loc32_.main.text = "Вы получили : ";
            _loc2_ = 1;
            while(_loc2_ <= 10)
            {
               _loc32_["present" + _loc2_].gotoAndStop(_loc2_ <= this.FWP.player.tween ? 2 : 1);
               _loc2_++;
            }
            if(!this.FWP.ADMIN_FRIEND)
            {
               _loc32_.admin_bonus.text = "Хотите получать удвоенные ежедневные бонусы?\nДобавляйтесь к администратору в друзья :";
            }
            else
            {
               _loc32_.admin_bonus.text = "Вы в друзьях администратора.\nБонус увеличен в два раза.";
            }
            _loc32_.open_admin.visible = !this.FWP.ADMIN_FRIEND;
            if(!this.FWP.ADMIN_FRIEND)
            {
               if(this.FWP.player.tween == 1)
               {
                  _loc32_.main.text += "50 золота !";
               }
               if(this.FWP.player.tween == 2)
               {
                  _loc32_.main.text += "100 золота !";
               }
               if(this.FWP.player.tween == 3)
               {
                  _loc32_.main.text += "150 золота !";
               }
               if(this.FWP.player.tween == 4)
               {
                  _loc32_.main.text += "200 золота !";
               }
               if(this.FWP.player.tween == 5)
               {
                  _loc32_.main.text += "250 золота !";
               }
               if(this.FWP.player.tween == 6)
               {
                  _loc32_.main.text += "300 золота !";
               }
               if(this.FWP.player.tween == 7)
               {
                  _loc32_.main.text += "400 золота !";
               }
               if(this.FWP.player.tween == 8)
               {
                  _loc32_.main.text += "500 золота !";
               }
               if(this.FWP.player.tween == 9)
               {
                  _loc32_.main.text += "1 алмаз !";
               }
               if(this.FWP.player.tween >= 10)
               {
                  _loc32_.main.text += "5 очков навыков !";
               }
            }
            else
            {
               if(this.FWP.player.tween == 1)
               {
                  _loc32_.main.text += "100 золота !";
               }
               if(this.FWP.player.tween == 2)
               {
                  _loc32_.main.text += "200 золота !";
               }
               if(this.FWP.player.tween == 3)
               {
                  _loc32_.main.text += "300 золота !";
               }
               if(this.FWP.player.tween == 4)
               {
                  _loc32_.main.text += "400 золота !";
               }
               if(this.FWP.player.tween == 5)
               {
                  _loc32_.main.text += "500 золота !";
               }
               if(this.FWP.player.tween == 6)
               {
                  _loc32_.main.text += "600 золота !";
               }
               if(this.FWP.player.tween == 7)
               {
                  _loc32_.main.text += "800 золота !";
               }
               if(this.FWP.player.tween == 8)
               {
                  _loc32_.main.text += "1000 золота !";
               }
               if(this.FWP.player.tween == 9)
               {
                  _loc32_.main.text += "2 алмаза !";
               }
               if(this.FWP.player.tween >= 10)
               {
                  _loc32_.main.text += "10 очков навыков !";
               }
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "skills")
         {
            _loc38_ = {
               "attack":_loc33_.attack.value,
               "protect":_loc33_.protect.value,
               "health":100 + 50 * _loc33_.health.value,
               "worms":2 + _loc33_.worms.value,
               "tired":_loc34_.tired,
               "stim_to_fight":_loc34_.stim_to_fight,
               "impl":_loc34_.cur_impl
            };
            _loc39_ = this.FWP.get_affected_skills(_loc38_);
            _loc32_.skill_attack.htmlText = "<b><font color=" + this.FWP.get_var_color(_loc33_.attack.value,_loc39_.attack) + ">" + _loc39_.attack + "</font></b>";
            _loc32_.skill_protect.htmlText = "<b><font color=" + this.FWP.get_var_color(_loc33_.protect.value,_loc39_.protect) + ">" + _loc39_.protect + "</font></b>";
            _loc32_.skill_health.htmlText = "<b><font color=" + this.FWP.get_var_color(_loc33_.health.value * 50 + 100,_loc39_.health) + ">" + _loc39_.health + "</font></b>";
            _loc32_.skill_worms.text = _loc33_.worms.value + 2;
            _loc32_.skill_pts.text = _loc33_.skill_pts.value;
            _loc32_.add_attack.visible = _loc33_.skill_pts.value >= this.FWP.get_attack_cost(_loc33_.attack.value);
            _loc32_.add_protect.visible = _loc33_.skill_pts.value >= this.FWP.get_attack_cost(_loc33_.protect.value);
            _loc32_.add_health.visible = _loc33_.skill_pts.value >= 30;
            _loc32_.add_team_worm.visible = _loc33_.skill_pts.value >= 150 && _loc33_.worms.value < 3;
            _loc32_.spec.text = this.FWP.spec_to_name(_loc33_.spec);
            _loc32_.choose_spec.visible = _loc33_.spec == 0;
            _loc40_ = "";
            if(this.FWP.get_attack_cost(_loc33_.attack.value) == 1)
            {
               _loc40_ = "о";
            }
            else if(this.FWP.get_attack_cost(_loc33_.attack.value) < 5)
            {
               _loc40_ = "а";
            }
            else
            {
               _loc40_ = "ов";
            }
            _loc41_ = "";
            if(this.FWP.get_attack_cost(_loc33_.protect.value) == 1)
            {
               _loc41_ = "о";
            }
            else if(this.FWP.get_attack_cost(_loc33_.protect.value) < 5)
            {
               _loc41_ = "а";
            }
            else
            {
               _loc41_ = "ов";
            }
            _loc32_.desc_attack.htmlText = "Влияет на урон врагу, наносимый вашими червяками. Повышение Атаки на <b>1</b> пункт стоит <b>" + this.FWP.get_attack_cost(_loc33_.attack.value) + "</b> очк" + _loc40_ + " навыков.";
            _loc32_.desc_protect.htmlText = "Чем больше Защита, тем меньший урон вы получаете от снарядов врага. Повышение Защиты на <b>1</b> пункт стоит <b>" + this.FWP.get_attack_cost(_loc33_.protect.value) + "</b> очк" + _loc41_ + " навыков.";
            _loc32_.perk_pts.text = _loc33_.perk_pts.value;
            _loc2_ = 1;
            while(_loc2_ <= 9)
            {
               _loc32_["buy_perk" + String(_loc2_)].visible = _loc33_.perk_slots < _loc2_;
               _loc32_["add_perk" + String(_loc2_)].visible = _loc33_.perk_slots < _loc2_;
               _loc32_["upg_perk" + String(_loc2_)].visible = false;
               _loc32_["upg_inact_perk" + String(_loc2_)].visible = false;
               _loc2_++;
            }
            _loc42_ = new Array();
            _loc43_ = 0;
            for(_loc14_ in _loc33_.perks)
            {
               _loc42_[_loc43_] = new Array(this.FWP.PERKS_DEF[_loc14_].id,_loc14_);
               _loc43_++;
            }
            _loc42_.sortOn("0",Array.NUMERIC);
            _loc44_ = 0;
            this.perk_places = new Array();
            _loc15_ = 0;
            _loc16_ = 0;
            _loc2_ = 1;
            while(_loc2_ <= _loc43_)
            {
               _loc14_ = _loc42_[_loc2_ - 1][1];
               this.perk_places[_loc2_] = _loc14_;
               this.MainBitmapData.copyPixels(this.PerksSheet,new Rectangle(0,(this.FWP.PERKS_DEF[_loc14_].id - 1) * 47,47,47),new Point(_loc15_,_loc16_));
               this.MainBitmapData.copyPixels(this.PerkLevels[_loc33_.perks[_loc14_]],new Rectangle(0,0,47,47),new Point(_loc15_,_loc16_),null,null,true);
               this.MainBitmapData.copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(_loc15_,_loc16_),null,null,true);
               _loc32_["upg_perk" + String(_loc2_)].visible = _loc33_.perks[_loc14_] >= 1 && _loc33_.perks[_loc14_] < this.FWP.PERKS_DEF[_loc14_].max_lim && _loc33_.perk_pts.value >= this.FWP.PERKS_DEF[_loc14_].upg[_loc33_.perks[_loc14_]];
               _loc32_["upg_inact_perk" + String(_loc2_)].visible = true;
               if((_loc15_ += 130) >= 390)
               {
                  _loc15_ = 0;
                  _loc16_ += 54;
               }
               _loc2_++;
            }
            _loc2_ = _loc43_ + 1;
            while(_loc2_ <= 9)
            {
               _loc32_["add_perk" + String(_loc2_)].visible = _loc33_.perk_slots >= _loc2_;
               this.MainBitmapData.copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(_loc15_,_loc16_),null,null,true);
               if((_loc15_ += 130) >= 390)
               {
                  _loc15_ = 0;
                  _loc16_ += 54;
               }
               _loc2_++;
            }
            _loc32_.restore.visible = this.changes_made;
            _loc32_.svtemp.visible = this.changes_made;
         }
         if(this.cur_screen[this.cur_screen[0]].name == "choose_perk" || this.cur_screen[this.cur_screen[0]].name == "view_perks")
         {
            _loc32_.perk_pts.text = _loc33_.perk_pts.value;
            _loc46_ = new Array();
            _loc47_ = 0;
            _loc46_[0] = new Array(0,"");
            for(_loc48_ in this.FWP.PERKS_DEF)
            {
               if(this.perks_mode == this.FWP.PERKS_DEF[_loc48_].mode || this.perks_mode == "all")
               {
                  _loc46_[_loc47_] = new Array(this.FWP.PERKS_DEF[_loc48_].id,_loc48_,this.FWP.PERKS_DEF[_loc48_].upg[0]);
                  _loc47_++;
               }
            }
            _loc49_ = (this.shop_page - 1) * 28 + 1;
            _loc50_ = Math.min(_loc47_,_loc49_ + 27);
            _loc51_ = Math.ceil(_loc47_ / 28);
            _loc32_.choose_page.gotoAndStop(_loc51_);
            _loc46_.sortOn("2",Array.NUMERIC);
            _loc52_ = new Array({
               "id":"all",
               "name":"Все способности"
            },{
               "id":"wptype",
               "name":"Урон по типам оружия"
            },{
               "id":"wpmode",
               "name":"Урон по режимам оружия"
            },{
               "id":"dother",
               "name":"Урон (прочее)"
            },{
               "id":"dres",
               "name":"Сопротивление урону"
            },{
               "id":"crit",
               "name":"Критический выстрел"
            },{
               "id":"fail",
               "name":"Шанс осечки"
            },{
               "id":"char",
               "name":"Улучшение характеристик"
            },{
               "id":"int",
               "name":"Обучаемость"
            },{
               "id":"other",
               "name":"Прочее небоевое"
            });
            _loc32_.filt.gotoAndStop(!!this.opened_filter ? 2 : 1);
            for(_loc53_ in _loc52_)
            {
               if(this.perks_mode == _loc52_[_loc53_].id)
               {
                  _loc32_.filt.cur_filt.text = _loc52_[_loc53_].name;
               }
            }
            if(this.opened_filter)
            {
               for(_loc53_ in _loc52_)
               {
                  _loc55_ = _loc52_[_loc53_].name;
                  if(this.perks_mode == _loc52_[_loc53_].id)
                  {
                     _loc55_ = "<b>" + _loc52_[_loc53_].name + "</b>";
                  }
                  _loc32_.filt["perk_mode_" + _loc52_[_loc53_].id].htmlText = _loc55_;
                  _loc32_.filt["perk_mode_" + _loc52_[_loc53_].id].textColor = this.perks_mode == _loc52_[_loc53_].id ? 16711680 : 0;
               }
            }
            _loc2_ = 1;
            while(_loc2_ <= _loc51_)
            {
               _loc32_.choose_page["page" + _loc2_].textColor = 7417088;
               _loc2_++;
            }
            _loc32_.choose_page["page" + this.shop_page].textColor = 16750848;
            _loc4_ = 0;
            _loc54_ = _loc49_;
            while(_loc54_ <= _loc50_)
            {
               _loc4_++;
               _loc14_ = _loc46_[_loc54_ - 1][1];
               this.buttons["pk_buy_" + _loc4_].visible = true;
               this.buttons["pk_buy_" + _loc4_].name = "clickperk_" + _loc14_;
               this.buttons["pk_buy_" + _loc4_].pts.text = this.FWP.PERKS_DEF[_loc14_].upg[0] + " очк.";
               this.bitmap_datas["cperk" + _loc4_].copyPixels(this.PerksSheet,new Rectangle(0,(this.FWP.PERKS_DEF[_loc14_].id - 1) * 47,47,47),new Point(0,0));
               this.bitmap_datas["cperk" + _loc4_].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               this.buttons["pk_buy_" + _loc4_].back.gotoAndStop(1);
               if(_loc46_[_loc54_ - 1][0] == this.cur_element)
               {
                  this.buttons["pk_buy_" + _loc4_].back.gotoAndStop(2);
               }
               else if(this.cur_screen[this.cur_screen[0]].name == "choose_perk" && (_loc33_.perk_pts.value < this.FWP.PERKS_DEF[_loc14_].upg[0] || _loc33_.perks[_loc14_] && _loc33_.perks[_loc14_] > 0))
               {
                  this.bitmap_datas["cperk" + _loc4_].copyPixels(this.WPBlurGray,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
                  this.buttons["pk_buy_" + _loc4_].back.gotoAndStop(3);
               }
               _loc54_++;
            }
            _loc54_ = _loc50_ + 1;
            while(_loc54_ <= _loc49_ + 27)
            {
               _loc4_++;
               this.buttons["pk_buy_" + _loc4_].visible = false;
               _loc54_++;
            }
            if(this.FWP.PERKS_DEF[this.cur_weapon])
            {
               _loc32_.perk_name.text = this.FWP.PERKS_DEF[this.cur_weapon].name;
               _loc56_ = "";
               if(_loc33_.perks[this.cur_weapon] && _loc33_.perks[this.cur_weapon] > 0)
               {
                  _loc56_ += "<font color=\"#660000\"><b>У вас уже есть эта способность</b></font>\n";
               }
               if(_loc33_.spec != 0)
               {
                  _loc57_ = 0;
                  while(_loc57_ <= 1)
                  {
                     if(this.FWP.SPEC_DEF[_loc33_.spec][_loc57_] == this.cur_weapon)
                     {
                        _loc56_ += "<font color=\"#660000\"><b>Эта способность уже предоставлена вам специальностью.</b></font>\n";
                     }
                     _loc57_++;
                  }
               }
               _loc56_ = (_loc56_ = (_loc56_ += "<b>Уровней: </b>" + this.FWP.PERKS_DEF[this.cur_weapon].max_lim + "\n") + ("<b>Стоимость: </b>" + this.FWP.PERKS_DEF[this.cur_weapon].upg[0] + " очк.\n")) + ("\n" + (!!this.perks_text[this.cur_weapon] ? this.perks_text[this.cur_weapon] : ""));
               _loc32_.perk_desc.htmlText = _loc56_;
            }
            if(this.cur_element <= 0)
            {
               _loc32_.perk_name.text = "Способности";
               _loc32_.perk_desc.htmlText = "Здесь вы можете выбрать себе любую способность. Механизм такой же, как в магазине: при клике на иконку способности здесь выведется ее описание; если у вас достаточно очков способностей, кнопка внизу станет активной.";
               _loc32_.add_p.visible = false;
            }
            if(this.cur_element > 0)
            {
               _loc58_ = false;
               for(_loc59_ in _loc33_.perks)
               {
                  if(_loc59_ == this.cur_weapon)
                  {
                     _loc58_ = true;
                  }
               }
               _loc45_ = false;
               if(_loc33_.spec != 0)
               {
                  _loc57_ = 0;
                  while(_loc57_ <= 1)
                  {
                     if(this.FWP.SPEC_DEF[_loc33_.spec][_loc57_] == this.cur_weapon)
                     {
                        _loc45_ = true;
                     }
                     _loc57_++;
                  }
               }
               _loc32_.add_p.visible = !_loc58_ && !_loc45_ && _loc33_.perk_pts.value >= this.FWP.PERKS_DEF[this.cur_weapon].upg[0];
            }
            _loc32_.view_perks_hide.visible = this.cur_screen[this.cur_screen[0]].name == "view_perks";
         }
         if(this.cur_screen[this.cur_screen[0]].name == "buy_perk")
         {
            _loc60_ = 0;
            _loc61_ = 0;
            if(_loc33_.perk_slots == 2)
            {
               _loc60_ = 500;
               _loc61_ = 1;
            }
            if(_loc33_.perk_slots == 3)
            {
               _loc60_ = 1000;
               _loc61_ = 1;
            }
            if(_loc33_.perk_slots == 4)
            {
               _loc60_ = 5000;
               _loc61_ = 5;
            }
            if(_loc33_.perk_slots == 5)
            {
               _loc60_ = 10000;
               _loc61_ = 10;
            }
            if(_loc33_.perk_slots == 6)
            {
               _loc60_ = 20000;
               _loc61_ = 20;
            }
            if(_loc33_.perk_slots == 7)
            {
               _loc60_ = 40000;
               _loc61_ = 40;
            }
            if(_loc33_.perk_slots == 8)
            {
               _loc60_ = 60000;
               _loc61_ = 60;
            }
            _loc32_.price_gold.text = this.x3String(_loc60_);
            _loc32_.price_diam.text = this.x3String(_loc61_);
            _loc32_.buy_gold.visible = _loc33_.gold.value >= _loc60_;
            _loc32_.buy_diam.visible = _loc33_.diam.value >= _loc61_;
         }
         if(this.cur_screen[this.cur_screen[0]].name == "arsenal")
         {
            _loc62_ = 0;
            while(_loc32_.arsenal_weapon_container.numChildren != 0)
            {
               if(++_loc62_ > 100000)
               {
                  break;
               }
               _loc32_.arsenal_weapon_container.getChildAt(0).removeEventListener(MouseEvent.CLICK,this.click);
               _loc32_.arsenal_weapon_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OVER,this.mouse_event);
               _loc32_.arsenal_weapon_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OUT,this.mouse_event);
               _loc32_.arsenal_weapon_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_UP,this.mouse_event);
               _loc32_.arsenal_weapon_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_DOWN,this.mouse_event);
               _loc66_ = _loc32_.arsenal_weapon_container.getChildAt(0);
               _loc32_.arsenal_weapon_container.removeChildAt(0);
               _loc66_ = null;
            }
            if(this.shop_type == "weapons")
            {
               _loc30_ = this.FWP.WEAPONS_DEF;
               _loc31_ = _loc34_.weapons;
            }
            if(this.shop_type == "help")
            {
               _loc30_ = this.FWP.STIM_DEF;
               _loc31_ = _loc34_.stim_behave;
            }
            if(this.shop_type == "flags")
            {
               _loc30_ = this.FWP.FLAGS_DEF;
               _loc31_ = _loc34_.flags;
            }
            if(this.shop_type == "rip")
            {
               _loc30_ = this.FWP.RIPS_DEF;
               _loc31_ = _loc34_.rip;
            }
            if(this.shop_type == "impl")
            {
               _loc30_ = this.FWP.IMPL_DEF;
               _loc31_ = _loc34_.impl;
            }
            if(this.shop_type == "objs")
            {
               _loc30_ = this.FWP.OBJ_DEF;
               _loc31_ = _loc34_.objs;
            }
            _loc63_ = new Array();
            _loc64_ = 0;
            for(_loc65_ in _loc31_)
            {
               if(this.shop_type == "weapons")
               {
                  if(_loc31_[_loc65_][0] != 0 && _loc65_ != "skip_go")
                  {
                     _loc67_ = 0;
                     _loc68_ = 0;
                     for(_loc69_ in this.FWP.WP_PLACES_SORT)
                     {
                        if(_loc65_ == this.FWP.WP_PLACES_SORT[_loc69_])
                        {
                           break;
                        }
                     }
                     _loc67_ = _loc69_;
                     _loc70_ = 1;
                     while(_loc70_ <= _loc31_[_loc65_][0])
                     {
                        _loc71_ = true;
                        _loc72_ = 0;
                        while(_loc72_ < _loc64_)
                        {
                           if(_loc63_[_loc72_][0] == _loc30_[_loc65_].id && _loc63_[_loc72_][1] == _loc65_ && _loc63_[_loc72_][3].range == _loc31_[_loc65_][_loc70_].range && _loc63_[_loc72_][3].stolen == _loc31_[_loc65_][_loc70_].stolen && _loc63_[_loc72_][3].crafted == _loc31_[_loc65_][_loc70_].crafted)
                           {
                              _loc71_ = false;
                              ++_loc63_[_loc72_][4];
                           }
                           _loc72_++;
                        }
                        if(_loc71_)
                        {
                           _loc63_[_loc64_] = new Array(_loc30_[_loc65_].id,_loc65_,_loc67_,{
                              "range":_loc31_[_loc65_][_loc70_].range,
                              "stolen":_loc31_[_loc65_][_loc70_].stolen,
                              "crafted":_loc31_[_loc65_][_loc70_].crafted
                           },1);
                           _loc64_++;
                        }
                        _loc70_++;
                     }
                  }
               }
               else if(_loc31_[_loc65_] != 0)
               {
                  _loc63_[_loc64_] = new Array(_loc30_[_loc65_].id,_loc65_,_loc30_[_loc65_].id,{});
                  _loc64_++;
               }
            }
            _loc63_.sortOn("2",Array.NUMERIC);
            _loc24_ = 0;
            if(this.shop_type == "weapons")
            {
               if(this.FWP.win_auc_weapons.annihilator != 0 || this.FWP.auc_weapons.annihilator != 0)
               {
                  _loc63_[_loc64_] = [123,"annihilator",100500,{
                     "range":1,
                     "stolen":false,
                     "crafted":false
                  },this.FWP.win_auc_weapons.annihilator + this.FWP.auc_weapons.annihilator];
                  _loc64_++;
               }
            }
            _loc2_ = 0;
            while(_loc2_ <= _loc64_ - 1)
            {
               _loc65_ = _loc63_[_loc2_][1];
               _loc73_ = "%";
               if(this.shop_type == "weapons")
               {
                  if(_loc63_[_loc2_][3].stolen)
                  {
                     _loc73_ += "s";
                  }
                  else if(_loc63_[_loc2_][3].crafted)
                  {
                     _loc73_ += "c";
                  }
                  _loc73_ += "%" + _loc63_[_loc2_][3].range;
               }
               (_loc74_ = _loc32_.arsenal_weapon_container.addChild(this.FWP.container_interf.get_object("clip_weapon_arsenal"))).weapon_functions.visible = false;
               if(this.shop_type == "weapons")
               {
                  if(_loc30_[_loc65_].allow_upg && _loc63_[_loc2_][3].range != 10)
                  {
                     _loc74_.weapon_functions.gotoAndStop(1);
                  }
                  else
                  {
                     _loc74_.weapon_functions.gotoAndStop(2);
                  }
                  if(_loc65_ == "annihilator")
                  {
                     _loc74_.weapon_functions.gotoAndStop(5);
                  }
               }
               else if(this.shop_type == "impl")
               {
                  _loc74_.weapon_functions.gotoAndStop(4);
               }
               else if(this.shop_type == "objs")
               {
                  if(_loc30_[_loc65_].usable)
                  {
                     _loc74_.weapon_functions.gotoAndStop(4);
                  }
                  else
                  {
                     _loc74_.weapon_functions.gotoAndStop(2);
                  }
               }
               else
               {
                  _loc74_.weapon_functions.gotoAndStop(3);
               }
               _loc74_.name = "weapon_" + _loc65_ + _loc73_;
               this.bitmaps["ars_wp" + _loc2_] = new Bitmap();
               this.bitmap_datas["ars_wp" + _loc2_] = new BitmapData(50,50,true,0);
               _loc74_.wp_name.text = _loc30_[_loc65_].name;
               if(this.shop_type == "weapons")
               {
                  _loc75_ = this.FWP.get_wpij(_loc30_[_loc65_].id).i;
                  _loc76_ = this.FWP.get_wpij(_loc30_[_loc65_].id).j;
                  this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc76_ - 1),1 + 44 * (_loc75_ - 1),44,43),new Point(2,2));
               }
               else if(this.shop_type == "help")
               {
                  _loc3_ = _loc30_[_loc65_].id;
                  this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.BigStims,new Rectangle(1 + 45 * (_loc3_ - 1),1,44,43),new Point(2,2));
                  _loc77_ = 0;
                  if(_loc34_.perks["stims"])
                  {
                     _loc77_ = this.FWP.get_perk_effect("stims",_loc34_.perks.stims,"");
                  }
                  _loc78_ = 0;
                  for(_loc79_ in this.FWP.STIM_DEF)
                  {
                     if(_loc34_.stim_to_fight[_loc79_])
                     {
                        _loc78_ += _loc34_.stim_to_fight[_loc79_];
                     }
                  }
                  if(_loc78_ >= this.MAX_STIM + _loc77_)
                  {
                     _loc74_.weapon_functions.gotoAndStop(5);
                  }
               }
               else if(this.shop_type == "flags")
               {
                  _loc3_ = _loc30_[_loc65_].id;
                  this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.BigFlags,new Rectangle(1 + 45 * (_loc3_ - 1),1,44,43),new Point(2,2));
                  if(_loc63_[_loc2_][0] == _loc34_.cur_flag)
                  {
                     this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.IconCurrent,new Rectangle(0,0,44,43),new Point(0,2),null,null,true);
                     _loc74_.weapon_functions.gotoAndStop(5);
                  }
               }
               else if(this.shop_type == "rip")
               {
                  _loc3_ = _loc30_[_loc65_].id;
                  this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.BigRIPs,new Rectangle(1 + 45 * (_loc3_ - 1),1,44,43),new Point(2,2));
                  if(_loc63_[_loc2_][0] == _loc34_.cur_rip)
                  {
                     this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.IconCurrent,new Rectangle(0,0,44,43),new Point(0,2),null,null,true);
                     _loc74_.weapon_functions.gotoAndStop(5);
                  }
               }
               else if(this.shop_type == "impl")
               {
                  _loc3_ = _loc30_[_loc65_].id;
                  this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.BigImpls,new Rectangle(1 + 45 * (_loc3_ - 1),1,44,43),new Point(2,2));
                  if(_loc63_[_loc2_][0] == _loc34_.cur_impl)
                  {
                     this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.IconCurrent,new Rectangle(0,0,44,43),new Point(0,2),null,null,true);
                     _loc74_.weapon_functions.gotoAndStop(2);
                  }
               }
               else if(this.shop_type == "objs")
               {
                  _loc3_ = _loc30_[_loc65_].id;
                  this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.BigObjs,new Rectangle(1 + 45 * (_loc3_ - 1),1,44,43),new Point(2,2));
               }
               if(this.shop_type != "weapons")
               {
                  if(_loc31_[_loc65_] > 1 && _loc31_[_loc65_] <= 10)
                  {
                     this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.WPAmount,new Rectangle(0,(_loc31_[_loc65_] - 2) * 10,21,9),new Point(3 - 1 + 44 - 16 - 7,3 - 1 + 43 - 11),null,null,true);
                  }
                  if(_loc31_[_loc65_] > 10)
                  {
                     this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.WP10Plus,new Rectangle(0,0,21,9),new Point(3 - 1 + 44 - 16 - 7,3 - 1 + 43 - 11),null,null,true);
                  }
                  if(this.shop_type == "impl" || this.shop_type == "objs")
                  {
                     _loc74_.wp_range_and_status.htmlText = "Стоимость: <b>" + this.x3String(this.get_sell_price(_loc65_)) + "</b>";
                  }
               }
               else
               {
                  this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.PerkLevels[_loc63_[_loc2_][3].range],new Rectangle(0,0,47,47),new Point(0,0),null,null,true);
                  _loc80_ = "";
                  if(_loc63_[_loc2_][3].stolen)
                  {
                     _loc80_ += "<b>(Украдено)</b> ";
                  }
                  if(_loc63_[_loc2_][3].crafted)
                  {
                     _loc80_ += "<b>(Скрафтено)</b> ";
                  }
                  _loc74_.wp_range_and_status.htmlText = _loc80_ + "Ранг оружия: <b>" + _loc63_[_loc2_][3].range + "</b>";
                  if(_loc63_[_loc2_][4] > 1)
                  {
                     this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.WPAmount,new Rectangle(0,(_loc63_[_loc2_][4] - 2) * 10,21,9),new Point(3 - 1 + 44 - 16 - 7,3 - 1 + 43 - 11),null,null,true);
                  }
               }
               this.bitmap_datas["ars_wp" + _loc2_].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               this.bitmaps["ars_wp" + _loc2_].bitmapData = this.bitmap_datas["ars_wp" + _loc2_];
               _loc74_.bitmap_container.addChild(this.bitmaps["ars_wp" + _loc2_]);
               _loc74_.y = _loc24_;
               _loc24_ += 55;
               _loc2_++;
            }
            _loc32_.slider.visible = _loc32_.arsenal_weapon_container.height > 440;
            if(this.shop_type == "weapons")
            {
               _loc32_.shop_types.gotoAndStop(1);
            }
            if(this.shop_type == "help")
            {
               _loc32_.shop_types.gotoAndStop(2);
            }
            if(this.shop_type == "flags")
            {
               _loc32_.shop_types.gotoAndStop(3);
            }
            if(this.shop_type == "rip")
            {
               _loc32_.shop_types.gotoAndStop(4);
            }
            if(this.shop_type == "impl")
            {
               _loc32_.shop_types.gotoAndStop(5);
            }
            if(this.shop_type == "objs")
            {
               _loc32_.shop_types.gotoAndStop(6);
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "info")
         {
            _loc81_ = new Array("p","e","a","c","h","f","l");
            _loc2_ = 0;
            while(_loc2_ <= 6)
            {
               _loc91_ = this.FWP.get_peachful_bonus({
                  "spec":_loc34_.spec,
                  "wptype":_loc81_[_loc2_],
                  "attack":_loc36_.attack,
                  "perks":_loc34_.perks,
                  "spec_mod":"",
                  "wpclass":0
               });
               _loc19_ = "<b>" + Math.round(100 + 100 * _loc91_.damage) + "%</b> (";
               if(_loc91_.damage == 0)
               {
                  _loc19_ += "нет модификаторов";
               }
               else
               {
                  _loc92_ = false;
                  if(_loc91_.attack < 0)
                  {
                     _loc19_ += Math.round(_loc91_.attack * 100) + " УСТ";
                     _loc92_ = true;
                  }
                  if(_loc91_.attack > 0)
                  {
                     _loc19_ += "+" + Math.round(_loc91_.attack * 100) + " АТ";
                     _loc92_ = true;
                  }
                  if(_loc91_.spec != 0)
                  {
                     if(_loc92_)
                     {
                        _loc19_ += ", ";
                     }
                     _loc19_ += "+" + Math.round(_loc91_.spec * 100) + " СПЦ";
                     _loc92_ = true;
                  }
                  if(_loc91_.perks != 0)
                  {
                     if(_loc92_)
                     {
                        _loc19_ += ", ";
                     }
                     _loc19_ += "+" + Math.round(_loc91_.perks * 100) + " СП";
                  }
               }
               _loc19_ += ")";
               _loc32_["damage_" + _loc81_[_loc2_]].htmlText = _loc19_;
               _loc2_++;
            }
            if((_loc82_ = Math.round(this.FWP.get_damage_resistance(_loc36_.protect))) == 100)
            {
               _loc32_.damage_res.htmlText = "<b>" + _loc82_ + "%</b> (нет модификаторов)";
            }
            else if(_loc82_ > 100)
            {
               _loc32_.damage_res.htmlText = "<b>" + _loc82_ + "%</b> (+" + (_loc82_ - 100) + " УСТ)";
            }
            else
            {
               _loc32_.damage_res.htmlText = "<b>" + _loc82_ + "%</b> (" + (_loc82_ - 100) + " ЗЩ)";
            }
            _loc83_ = 0;
            if(_loc34_.perks["dmg_thr"])
            {
               _loc83_ = this.FWP.get_perk_effect("dmg_thr",_loc34_.perks.dmg_thr,"");
            }
            _loc32_.damage_thr.htmlText = "<b>" + _loc83_ + "</b>" + (_loc83_ > 0 ? " (+" + _loc83_ + " СП)" : "");
            _loc84_ = 1;
            if(_loc34_.perks["luck"])
            {
               _loc84_ += this.FWP.get_perk_effect("luck",_loc34_.perks.luck,"") * 100;
            }
            if(_loc34_.perks["luck2"])
            {
               _loc84_ += this.FWP.get_perk_effect("luck2",_loc34_.perks.luck2,"") * 100;
            }
            if((_loc84_ = Math.round(_loc84_)) == 1)
            {
               _loc32_.crit.htmlText = "<b>" + _loc84_ + "%</b> (нет модификаторов)";
            }
            else
            {
               _loc32_.crit.htmlText = "<b>" + _loc84_ + "%</b> (+" + (_loc84_ - 1) + " СП)";
            }
            _loc85_ = 1;
            _loc86_ = 0;
            if(_loc34_.perks["less_fail"])
            {
               _loc85_ = this.FWP.get_perk_effect("less_fail",_loc34_.perks.less_fail,"");
            }
            if(_loc34_.perks["more_fail"])
            {
               _loc86_ = this.FWP.get_perk_effect("more_fail",_loc34_.perks.more_fail,"");
            }
            _loc87_ = this.FWP.get_fail_chance(_loc36_.tired,_loc85_,_loc86_,false);
            _loc88_ = "<b>" + Math.round(_loc87_.fail * 100) + "%</b> (";
            if(Math.ceil(_loc87_.fail * 100) == 0)
            {
               _loc88_ += "нет модификаторов";
            }
            else
            {
               if(Math.ceil(_loc87_.tired * 100) != 0)
               {
                  _loc88_ += "+" + (Math.ceil(_loc87_.tired * 100) - 1) + " УСТ";
               }
               if(Math.ceil(_loc87_.perks * 100) != 0)
               {
                  _loc88_ += (Math.ceil(_loc87_.tired * 100) != 0 ? ", " : "") + (Math.ceil(_loc87_.perks * 100) > 0 ? "+" : "") + Math.ceil(_loc87_.perks * 100) + " СП";
               }
            }
            _loc88_ += ")";
            _loc32_.fail.htmlText = _loc88_;
            (_loc89_ = this.FWP.get_ap_chance(_loc34_.perks,{"attack":_loc36_.attack})).ap = Math.round(100 * _loc89_.ap);
            if(_loc89_.ap == 0)
            {
               _loc32_.ap.htmlText = "<b>0%</b> (нет модификаторов)";
            }
            else
            {
               _loc32_.ap.htmlText = "<b>" + _loc89_.ap + "%</b> (";
               if(_loc89_.skills != 0)
               {
                  _loc32_.ap.htmlText += "+" + _loc89_.skills + " АТ";
               }
               if(_loc89_.skills != 0 && _loc89_.perks != 0)
               {
                  _loc32_.ap.htmlText += ", ";
               }
               if(_loc89_.perks != 0)
               {
                  _loc32_.ap.htmlText += "+" + _loc89_.perks + " СП";
               }
               _loc32_.ap.htmlText += ")";
            }
            (_loc90_ = this.FWP.get_absorb_chance(_loc34_.perks,{"protect":_loc36_.protect})).absorb = Math.round(100 * _loc90_.absorb);
            if(_loc90_.absorb == 0)
            {
               _loc32_.absorb.htmlText = "<b>0%</b> (нет модификаторов)";
            }
            else
            {
               _loc32_.absorb.htmlText = "<b>" + _loc90_.absorb + "%</b> (";
               if(_loc90_.skills != 0)
               {
                  _loc32_.absorb.htmlText += "+" + _loc90_.skills + " ЗЩ";
               }
               if(_loc90_.skills != 0 && _loc90_.perks != 0)
               {
                  _loc32_.absorb.htmlText += ", ";
               }
               if(_loc90_.perks != 0)
               {
                  _loc32_.absorb.htmlText += "+" + _loc90_.perks + " СП";
               }
               _loc32_.absorb.htmlText += ")";
            }
         }
         _loc37_ = 1;
         if(_loc34_.perks["merchant"])
         {
            _loc37_ = this.FWP.get_perk_effect("merchant",_loc34_.perks.merchant,"");
         }
         if(this.cur_screen[this.cur_screen[0]].name == "shop")
         {
            if(this.shop_type == "weapons")
            {
               _loc30_ = this.FWP.WEAPONS_DEF;
               _loc31_ = _loc34_.weapons;
            }
            if(this.shop_type == "help")
            {
               _loc30_ = this.FWP.STIM_DEF;
               _loc31_ = _loc34_.stim_behave;
            }
            if(this.shop_type == "flags")
            {
               _loc30_ = this.FWP.FLAGS_DEF;
               _loc31_ = _loc34_.flags;
            }
            if(this.shop_type == "rip")
            {
               _loc30_ = this.FWP.RIPS_DEF;
               _loc31_ = _loc34_.rip;
            }
            if(this.shop_type == "impl")
            {
               _loc30_ = this.FWP.IMPL_DEF;
               _loc31_ = _loc34_.impl;
            }
            if(this.shop_type == "objs")
            {
               _loc30_ = this.FWP.OBJ_DEF;
               _loc31_ = _loc34_.objs;
            }
            if(this.shop_type == "impl")
            {
               _loc37_ = 1;
            }
            _loc63_ = new Array();
            _loc64_ = 0;
            for(_loc65_ in _loc30_)
            {
               if(this.shop_type == "weapons" && _loc30_[_loc65_].level != -1 && _loc30_[_loc65_].id <= 200 && _loc65_ != "skip_go" && _loc30_[_loc65_].shown)
               {
                  if(this.shop_mode == "p" && _loc30_[_loc65_].wptype == "p" || this.shop_mode == "e" && _loc30_[_loc65_].wptype == "e" || this.shop_mode == "a" && _loc30_[_loc65_].wptype == "a" || this.shop_mode == "c" && _loc30_[_loc65_].wptype == "c" || this.shop_mode == "h" && _loc30_[_loc65_].wptype == "h" || this.shop_mode == "f" && _loc30_[_loc65_].wptype == "f" || this.shop_mode == "u" && _loc30_[_loc65_].wptype == "u" || this.shop_mode == "l" && _loc30_[_loc65_].wptype == "l" || this.shop_mode == "1" && _loc30_[_loc65_].wpclass == 1 || this.shop_mode == "2" && _loc30_[_loc65_].wpclass == 2 || this.shop_mode == "3" && _loc30_[_loc65_].wpclass == 3 || this.shop_mode == "4" && _loc30_[_loc65_].wpclass == 4 || this.shop_mode == "5" && _loc30_[_loc65_].wpclass == 5 || this.shop_mode == "6" && _loc30_[_loc65_].wpclass == 6 || this.shop_mode == "7" && _loc30_[_loc65_].wpclass == 7 || this.shop_mode == "all" || this.shop_mode == "available" && _loc30_[_loc65_].level != 0 && (Math.round(_loc30_[_loc65_].gold * _loc37_) <= _loc34_.gold.value && _loc30_[_loc65_].level <= _loc34_.level.value && this.get_req_params(_loc34_,_loc30_[_loc65_]) || Math.round(_loc30_[_loc65_].diam * _loc37_) <= _loc34_.diam.value) || this.shop_mode == "craft" && _loc30_[_loc65_].level == 0 || this.shop_mode == "unfail" && _loc30_[_loc65_].unfail >= 100)
                  {
                     _loc96_ = 0;
                     _loc97_ = 0;
                     for(_loc98_ in this.FWP.WP_PLACES_SORT)
                     {
                        if(_loc65_ == this.FWP.WP_PLACES_SORT[_loc98_])
                        {
                           break;
                        }
                     }
                     _loc96_ = _loc98_;
                     _loc63_[_loc64_] = new Array(_loc30_[_loc65_].id,_loc65_,_loc96_);
                     _loc64_++;
                  }
               }
               if(this.shop_type == "flags" || this.shop_type == "rip" || this.shop_type == "help" || this.shop_type == "impl")
               {
                  _loc63_[_loc64_] = new Array(_loc30_[_loc65_].id,_loc65_,_loc30_[_loc65_].id);
                  _loc64_++;
               }
               if(this.shop_type == "objs" && _loc30_[_loc65_].show_shop)
               {
                  _loc63_[_loc64_] = new Array(_loc30_[_loc65_].id,_loc65_,_loc30_[_loc65_].id);
                  _loc64_++;
               }
            }
            _loc63_.sortOn("2",Array.NUMERIC);
            _loc93_ = (this.shop_page - 1) * 24 + 1;
            _loc94_ = Math.min(_loc64_,_loc93_ + 23);
            _loc51_ = Math.ceil(_loc64_ / 24);
            _loc32_.choose_page.gotoAndStop(_loc51_);
            if(this.shop_type == "weapons")
            {
               _loc32_.shop_types.gotoAndStop(1);
            }
            if(this.shop_type == "help")
            {
               _loc32_.shop_types.gotoAndStop(2);
            }
            if(this.shop_type == "flags")
            {
               _loc32_.shop_types.gotoAndStop(3);
            }
            if(this.shop_type == "rip")
            {
               _loc32_.shop_types.gotoAndStop(4);
            }
            if(this.shop_type == "impl")
            {
               _loc32_.shop_types.gotoAndStop(5);
            }
            if(this.shop_type == "objs")
            {
               _loc32_.shop_types.gotoAndStop(6);
            }
            _loc32_.filt.gotoAndStop(!!this.opened_filter ? 2 : 1);
            _loc95_ = new Array({
               "id":"all",
               "name":"Все оружие"
            },{
               "id":"available",
               "name":"Только доступное"
            },{
               "id":"craft",
               "name":"Только крафтинг"
            },{
               "id":"unfail",
               "name":"Только безотказн."
            },{
               "id":"p",
               "name":"Снаряды"
            },{
               "id":"e",
               "name":"Взрывчатка"
            },{
               "id":"a",
               "name":"Авиаудары"
            },{
               "id":"c",
               "name":"Ближний бой"
            },{
               "id":"h",
               "name":"Энергооружие"
            },{
               "id":"f",
               "name":"Огнестрельное"
            },{
               "id":"u",
               "name":"Утилиты"
            },{
               "id":"l",
               "name":"Живые бомбы"
            },{
               "id":"1",
               "name":"1 класс"
            },{
               "id":"2",
               "name":"2 класс"
            },{
               "id":"3",
               "name":"3 класс"
            },{
               "id":"4",
               "name":"4 класс"
            },{
               "id":"5",
               "name":"5 класс"
            },{
               "id":"6",
               "name":"6 класс"
            },{
               "id":"7",
               "name":"7 класс"
            });
            if(this.shop_type == "weapons")
            {
               for(_loc99_ in _loc95_)
               {
                  if(this.shop_mode == _loc95_[_loc99_].id)
                  {
                     _loc32_.filt.cur_filt.text = _loc95_[_loc99_].name;
                  }
               }
               _loc32_.filt.visible = true;
            }
            else
            {
               _loc32_.filt.visible = false;
            }
            if(this.opened_filter)
            {
               for(_loc99_ in _loc95_)
               {
                  _loc100_ = _loc95_[_loc99_].name;
                  if(this.shop_mode == _loc95_[_loc99_].id)
                  {
                     _loc100_ = "<b>" + _loc95_[_loc99_].name + "</b>";
                  }
                  _loc32_.filt["shop_mode_" + _loc95_[_loc99_].id].htmlText = _loc100_;
                  _loc32_.filt["shop_mode_" + _loc95_[_loc99_].id].textColor = this.shop_mode == _loc95_[_loc99_].id ? 16711680 : 0;
               }
            }
            _loc2_ = 1;
            while(_loc2_ <= _loc51_)
            {
               _loc32_.choose_page["page" + _loc2_].textColor = 7417088;
               _loc2_++;
            }
            _loc32_.choose_page["page" + this.shop_page].textColor = 16750848;
            _loc4_ = 0;
            _loc54_ = _loc93_;
            while(_loc54_ <= _loc94_)
            {
               _loc4_++;
               _loc65_ = _loc63_[_loc54_ - 1][1];
               this.buttons["wp_buy_" + _loc4_].visible = true;
               this.buttons["wp_buy_" + _loc4_].name = "weapon_" + _loc65_;
               if(_loc30_[_loc65_].level != 0)
               {
                  if(_loc30_[_loc65_].gold * _loc37_ < 10000)
                  {
                     this.buttons["wp_buy_" + _loc4_].gold.text = this.x3String(Math.round(_loc30_[_loc65_].gold * _loc37_));
                  }
                  else
                  {
                     this.buttons["wp_buy_" + _loc4_].gold.text = this.xKString(Math.round(_loc30_[_loc65_].gold * _loc37_));
                  }
                  this.buttons["wp_buy_" + _loc4_].diam.text = Math.round(_loc30_[_loc65_].diam * _loc37_);
               }
               else
               {
                  this.buttons["wp_buy_" + _loc4_].gold.text = "-";
                  this.buttons["wp_buy_" + _loc4_].diam.text = "-";
               }
               if(this.shop_type == "weapons")
               {
                  _loc2_ = this.FWP.get_wpij(_loc30_[_loc65_].id).i;
                  _loc3_ = this.FWP.get_wpij(_loc30_[_loc65_].id).j;
                  this.bitmap_datas["shop" + _loc4_].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc3_ - 1),1 + 44 * (_loc2_ - 1),44,43),new Point(2,2));
               }
               else if(this.shop_type == "help")
               {
                  _loc3_ = _loc30_[_loc65_].id;
                  this.bitmap_datas["shop" + _loc4_].copyPixels(this.BigStims,new Rectangle(1 + 45 * (_loc3_ - 1),1,44,43),new Point(2,2));
               }
               else if(this.shop_type == "flags")
               {
                  _loc3_ = _loc30_[_loc65_].id;
                  this.bitmap_datas["shop" + _loc4_].copyPixels(this.BigFlags,new Rectangle(1 + 45 * (_loc3_ - 1),1,44,43),new Point(2,2));
               }
               else if(this.shop_type == "rip")
               {
                  _loc3_ = _loc30_[_loc65_].id;
                  this.bitmap_datas["shop" + _loc4_].copyPixels(this.BigRIPs,new Rectangle(1 + 45 * (_loc3_ - 1),1,44,43),new Point(2,2));
               }
               else if(this.shop_type == "impl")
               {
                  _loc3_ = _loc30_[_loc65_].id;
                  this.bitmap_datas["shop" + _loc4_].copyPixels(this.BigImpls,new Rectangle(1 + 45 * (_loc3_ - 1),1,44,43),new Point(2,2));
               }
               else if(this.shop_type == "objs")
               {
                  _loc3_ = _loc30_[_loc65_].id;
                  this.bitmap_datas["shop" + _loc4_].copyPixels(this.BigObjs,new Rectangle(1 + 45 * (_loc3_ - 1),1,44,43),new Point(2,2));
               }
               this.bitmap_datas["shop" + _loc4_].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               this.buttons["wp_buy_" + _loc4_].back.gotoAndStop(1);
               if(_loc63_[_loc54_ - 1][0] == this.cur_element)
               {
                  this.buttons["wp_buy_" + _loc4_].back.gotoAndStop(2);
               }
               else if(_loc30_[_loc65_].level == 0 || !(Math.round(_loc30_[_loc65_].gold * _loc37_) <= _loc34_.gold.value && _loc30_[_loc65_].level <= _loc34_.level.value && this.get_req_params(_loc34_,_loc30_[_loc65_])) && Math.round(_loc30_[_loc65_].diam * _loc37_) > _loc34_.diam.value)
               {
                  this.bitmap_datas["shop" + _loc4_].copyPixels(this.WPBlurGray,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
                  this.buttons["wp_buy_" + _loc4_].back.gotoAndStop(3);
               }
               _loc54_++;
            }
            _loc54_ = _loc94_ + 1;
            while(_loc54_ <= _loc93_ + 23)
            {
               _loc4_++;
               this.buttons["wp_buy_" + _loc4_].visible = false;
               _loc54_++;
            }
            if(_loc30_[this.cur_weapon])
            {
               _loc32_.weapon_name.text = _loc30_[this.cur_weapon].name;
               _loc101_ = "";
               if(this.shop_type != "weapons")
               {
                  if(_loc31_[this.cur_weapon])
                  {
                     if(_loc31_[this.cur_weapon] != 0)
                     {
                        _loc32_.weapon_name.text += " (" + _loc31_[this.cur_weapon] + ")";
                     }
                  }
               }
               else if(_loc31_[this.cur_weapon])
               {
                  if(_loc31_[this.cur_weapon][0] != 0)
                  {
                     _loc32_.weapon_name.text += " (" + _loc31_[this.cur_weapon][0] + ")";
                  }
               }
               _loc32_.weapon_desc.htmlText = this.return_weapon_desc(this.cur_weapon,this.shop_type) + _loc101_ + (!!this.weapons_text[this.cur_weapon] ? this.weapons_text[this.cur_weapon] : "");
            }
            if(this.cur_element <= 0)
            {
               if(this.shop_type == "weapons")
               {
                  _loc32_.weapon_name.text = "Оружие";
                  _loc32_.weapon_desc.htmlText = "Здесь вы можете купить самое разнообразное вооружение - как наступательное, так и оборонительное. Если вы хотите продать купленое ранее оружие, то это можно сделать в разделе Арсенал.\n\nДля покупки большинства оружия необходимо иметь требуемый уровень. Если ваш уровень не удовлетворяет требованиям, покупка оружия возможна только за алмазы.\n\nИконка оружия серая, если вам не хватает ни золота, ни алмазов на выбранное оружие.";
               }
               if(this.shop_type == "help")
               {
                  _loc32_.weapon_name.text = "Помощь";
                  _loc32_.weapon_desc.htmlText = "В разделе Помощь у вас есть возможность купить вещи, сильно помогающие в бою. Для использования этих вещей (после покупки) зайдите в соответствующий раздел в Арсенале.";
               }
               if(this.shop_type == "flags")
               {
                  _loc32_.weapon_name.text = "Флаги";
                  _loc32_.weapon_desc.htmlText = "Каждая команда уникальна, а поэтому осмотрите весь ассортимент флагов в нашем магазине и выберите себе подходящий!";
               }
               if(this.shop_type == "rip")
               {
                  _loc32_.weapon_name.text = "Гробики";
                  _loc32_.weapon_desc.htmlText = "После смерти вашего червяка можно оставить памятный подарок врагам.";
               }
               if(this.shop_type == "impl")
               {
                  _loc32_.weapon_name.text = "Имплантанты";
                  _loc32_.weapon_desc.htmlText = "Улучшают разнообразные характеристики вашей команды.\n\nТак как имплантантов нет у продавца под прилавком (они заказываются отдельно), ваша способность Торговец не оказывает никакого влияния на стоимость.\n\nХотя есть и обратная сторона - из-за бешеной стоимости их, как правило, отрывают с руками, поэтому имплантанты вы можете продать всегда по абсолютно той же цене, по какой и покупали.";
               }
               if(this.shop_type == "objs")
               {
                  _loc32_.weapon_name.text = "Предметы";
                  _loc32_.weapon_desc.htmlText = "Предметы используются, как правило, как компоненты для крафтинга более мощного оружия. Некоторые предметы имеют отдельные, уникальные свойства, например повышают Удачу и т.д. Большинство предметов найти можно только в магазине Папы Джона или при обыске гробиков, в нашем магазине ассортимент маленький.";
               }
            }
            _loc32_.try_steal.visible = false;
            if(this.cur_element > 0 && _loc30_[this.cur_weapon].level != 0)
            {
               _loc32_.buy_gold.visible = Math.round(_loc30_[this.cur_weapon].gold * _loc37_) <= _loc34_.gold.value && _loc30_[this.cur_weapon].level <= _loc34_.level.value && this.get_req_params(_loc34_,_loc30_[this.cur_weapon]);
               _loc32_.buy_diam.visible = Math.round(_loc30_[this.cur_weapon].diam * _loc37_) <= _loc34_.diam.value;
               _loc32_.weapon_gold.text = this.x3String(Math.round(_loc30_[this.cur_weapon].gold * _loc37_));
               _loc32_.weapon_diam.text = this.x3String(Math.round(_loc30_[this.cur_weapon].diam * _loc37_));
               _loc32_.weapon_gold.visible = true;
               _loc32_.weapon_diam.visible = true;
               _loc32_.try_steal.visible = this.shop_type == "weapons";
            }
            else
            {
               _loc32_.buy_gold.visible = false;
               _loc32_.buy_diam.visible = false;
               _loc32_.weapon_gold.visible = false;
               _loc32_.weapon_diam.visible = false;
            }
            if(_loc31_[this.cur_weapon])
            {
               if(this.shop_type != "weapons")
               {
                  if(_loc31_[this.cur_weapon] >= _loc30_[this.cur_weapon].limit)
                  {
                     _loc32_.buy_gold.visible = false;
                     _loc32_.buy_diam.visible = false;
                     _loc32_.try_steal.visible = false;
                  }
               }
               else if(_loc31_[this.cur_weapon][0] >= _loc30_[this.cur_weapon].limit)
               {
                  _loc32_.buy_gold.visible = false;
                  _loc32_.buy_diam.visible = false;
                  _loc32_.try_steal.visible = false;
               }
            }
            _loc32_.gold.text = this.x3SHString(_loc34_.gold.value);
            _loc32_.diam.text = this.x3SHString(_loc34_.diam.value);
         }
         if(this.cur_screen[this.cur_screen[0]].name == "fight")
         {
            if(this.play_type == "career")
            {
               _loc102_ = Math.min(this.FWP.player.career_max,this.FWP.TEAMS_DEF.career_max);
            }
            if(this.play_type == "missions")
            {
               _loc102_ = Math.min(this.FWP.player.missions_max,this.FWP.TEAMS_DEF.missions_max);
            }
            if(this.play_type == "survival")
            {
               _loc102_ = Math.min(this.FWP.player.survival_max,this.FWP.TEAMS_DEF.survival_max);
            }
            if(this.play_type == "boss")
            {
               _loc102_ = Math.min(this.FWP.player.boss_max,this.FWP.TEAMS_DEF.boss_max);
            }
            _loc2_ = 1;
            while(_loc2_ <= _loc102_)
            {
               this.buttons["fight" + _loc2_].task_name.textColor = 0;
               _loc2_++;
            }
            this.buttons["fight" + this.cur_element].task_name.textColor = 16711680;
            this.MainBitmapData.copyPixels(this.CPUFlags,new Rectangle(0,0,19,17),new Point(91,173));
            _loc32_["team_name1"].text = this.FWP.user.name;
            _loc32_["attack1"].text = _loc36_.attack;
            _loc32_["protect1"].text = _loc36_.protect;
            _loc32_["health1"].text = _loc36_.health;
            if(this.play_type == "career")
            {
               _loc32_["worms1"].text = Math.min(_loc34_.worms.value + 2,this.FWP.TEAMS_DEF["career" + this.cur_element].worm_limit);
            }
            if(this.play_type == "missions")
            {
               _loc32_["worms1"].text = Math.min(_loc34_.worms.value + 2,this.FWP.TEAMS_DEF["mission" + this.cur_element].worm_limit);
            }
            if(this.play_type == "survival")
            {
               _loc32_["worms1"].text = Math.min(_loc34_.worms.value + 2,this.FWP.TEAMS_DEF["survival" + this.cur_element].worm_limit);
            }
            if(this.play_type == "boss")
            {
               _loc32_["worms1"].text = Math.min(_loc34_.worms.value + 2,this.FWP.TEAMS_DEF["boss" + this.cur_element].worm_limit);
            }
            _loc32_["team_name1"].textColor = this.game_get_color(2);
            _loc32_["attack1"].textColor = this.game_get_color(2);
            _loc32_["protect1"].textColor = this.game_get_color(2);
            _loc32_["health1"].textColor = this.game_get_color(2);
            _loc32_["worms1"].textColor = this.game_get_color(2);
            if(this.play_type == "career")
            {
               _loc103_ = this.FWP.TEAMS_DEF["career" + this.cur_element];
            }
            if(this.play_type == "missions")
            {
               _loc103_ = this.FWP.TEAMS_DEF["mission" + this.cur_element];
            }
            if(this.play_type == "survival")
            {
               _loc103_ = this.FWP.TEAMS_DEF["survival" + this.cur_element];
            }
            if(this.play_type == "boss")
            {
               _loc103_ = this.FWP.TEAMS_DEF["boss" + this.cur_element];
            }
            _loc2_ = 2;
            while(_loc2_ <= _loc103_.teams + 1)
            {
               this.MainBitmapData.copyPixels(this.CPUFlags,new Rectangle(20 * _loc103_["team" + _loc2_].cpu_level,0,19,17),new Point(91,173 + 20 * (_loc2_ - 1)));
               _loc32_["team_name" + String(_loc2_)].text = _loc103_["team" + _loc2_].name;
               _loc32_["attack" + String(_loc2_)].text = _loc103_["team" + _loc2_].worm1.attack;
               _loc32_["protect" + String(_loc2_)].text = _loc103_["team" + _loc2_].worm1.protect;
               _loc32_["health" + String(_loc2_)].text = _loc103_["team" + _loc2_].worm1.health;
               _loc32_["worms" + String(_loc2_)].text = _loc103_["team" + _loc2_].worms;
               _loc109_ = _loc103_["team" + _loc2_].color;
               _loc32_["team_name" + String(_loc2_)].textColor = this.game_get_color(_loc109_);
               _loc32_["attack" + String(_loc2_)].textColor = this.game_get_color(_loc109_);
               _loc32_["protect" + String(_loc2_)].textColor = this.game_get_color(_loc109_);
               _loc32_["health" + String(_loc2_)].textColor = this.game_get_color(_loc109_);
               _loc32_["worms" + String(_loc2_)].textColor = this.game_get_color(_loc109_);
               _loc2_++;
            }
            _loc2_ = _loc103_.teams + 2;
            while(_loc2_ <= 4)
            {
               _loc32_["team_name" + String(_loc2_)].text = "";
               _loc32_["attack" + String(_loc2_)].text = "";
               _loc32_["protect" + String(_loc2_)].text = "";
               _loc32_["health" + String(_loc2_)].text = "";
               _loc32_["worms" + String(_loc2_)].text = "";
               _loc2_++;
            }
            _loc9_ = "";
            _loc106_ = 1;
            _loc107_ = 1;
            if(_loc34_.perks["more_exp"])
            {
               _loc107_ = this.FWP.get_perk_effect("more_exp",_loc34_.perks.more_exp,"");
            }
            if(_loc34_.spec == 4)
            {
               _loc107_ = this.FWP.get_perk_effect("more_exp",3,"");
            }
            if(this.play_type == "career")
            {
               if(_loc34_.career_attempt == 0 && this.cur_element == _loc34_.career_max)
               {
                  _loc106_ = 1.2;
               }
               if(this.cur_element < _loc34_.career_max)
               {
                  _loc106_ = 0.15;
               }
               _loc104_ = this.x3String(Math.round(_loc103_.exp * _loc106_ * _loc107_ * this.FWP.get_skill_multi("exp") * this.FWP.get_hardcore_multi(this.cur_element,_loc34_.career_max)));
               _loc105_ = this.x3String(Math.round(_loc103_.gold * _loc106_ * this.FWP.get_skill_multi("gold") * this.FWP.get_hardcore_multi(this.cur_element,_loc34_.career_max)));
               _loc32_.go.visible = true;
               _loc9_ += "С присвоением этого ранга вы получите <b>" + _loc105_ + "</b> золота и <b>" + _loc104_ + "</b> опыта.";
               if(_loc106_ > 1)
               {
                  _loc9_ += " Вознаграждение увеличено - это первая попытка получить данный ранг.";
               }
               if(_loc106_ < 1)
               {
                  _loc9_ += " Вознаграждение уменьшено - вы уже получили этот ранг.";
               }
            }
            else if(this.play_type == "missions")
            {
               if(_loc34_.missions_attempt == 0 && this.cur_element == _loc34_.missions_max)
               {
                  _loc106_ = 1.2;
               }
               if(this.cur_element < _loc34_.missions_max)
               {
                  _loc106_ = 0.15;
               }
               _loc104_ = this.x3String(Math.round(_loc103_.exp * _loc106_ * _loc107_ * this.FWP.get_skill_multi("exp") * this.FWP.get_hardcore_multi(this.cur_element,_loc34_.missions_max)));
               _loc105_ = this.x3String(Math.round(_loc103_.gold * _loc106_ * this.FWP.get_skill_multi("gold") * this.FWP.get_hardcore_multi(this.cur_element,_loc34_.missions_max)));
               _loc32_.go.visible = true;
               if(_loc103_.level <= _loc34_.level.value)
               {
                  _loc9_ = (_loc9_ = this.FWP.MISSION_DESC[this.cur_element]) + ("\n\nЗа успешное прохождение этой миссии вы получите <b>" + _loc105_ + "</b> золота и <b>" + _loc104_ + "</b> опыта.");
                  if(_loc106_ > 1)
                  {
                     _loc9_ += " Вознаграждение увеличено - это первая попытка пройти данную миссию.";
                  }
                  if(_loc106_ < 1)
                  {
                     _loc9_ += " Вознаграждение уменьшено - вы уже прошли эту миссию.";
                  }
               }
               else
               {
                  _loc9_ = "Для прохождения этой миссии вам необходим " + _loc103_.level + " уровень.";
                  _loc32_.go.visible = false;
               }
               if(this.cur_element == this.FWP.TEAMS_DEF.missions_max)
               {
                  _loc9_ = "Далеко забрались, поздравляем! Подождите некоторое время, данная миссия в разработке.";
                  _loc32_.go.visible = false;
               }
            }
            else if(this.play_type == "survival")
            {
               if(_loc34_.survival_attempt == 0 && this.cur_element == _loc34_.survival_max)
               {
                  _loc106_ = 1.2;
               }
               if(this.cur_element < _loc34_.survival_max)
               {
                  _loc106_ = 0.15;
               }
               _loc104_ = this.x3String(Math.round(_loc103_.exp * _loc106_ * _loc107_ * this.FWP.get_skill_multi("exp") * this.FWP.get_hardcore_multi(this.cur_element,_loc34_.survival_max)));
               _loc105_ = this.x3String(Math.round(_loc103_.gold * _loc106_ * this.FWP.get_skill_multi("gold") * this.FWP.get_hardcore_multi(this.cur_element,_loc34_.survival_max)));
               _loc32_.go.visible = true;
               _loc9_ = (_loc9_ = "Вам необходимо убить <b>" + _loc103_.kills + "</b> червяков. После убийтва данного количества червей они перестанут возрождаться.\n\n") + ("С прохождением этого этапа вы получите <b>" + _loc105_ + "</b> золота и <b>" + _loc104_ + "</b> опыта.");
               if(_loc106_ > 1)
               {
                  _loc9_ += " Вознаграждение увеличено - это первая попытка пройти данный этап.";
               }
               if(_loc106_ < 1)
               {
                  _loc9_ += " Вознаграждение уменьшено - вы уже прошли данный этап.";
               }
               if(this.cur_element == this.FWP.TEAMS_DEF.survival_max)
               {
                  _loc9_ = "Далеко забрались, поздравляем! Подождите некоторое время, данный этап выживания в разработке.";
                  _loc32_.go.visible = false;
               }
            }
            else if(this.play_type == "boss")
            {
               if(_loc34_.boss_attempt == 0 && this.cur_element == _loc34_.boss_max)
               {
                  _loc106_ = 1.2;
               }
               _loc104_ = this.x3String(Math.round(_loc103_.exp * _loc106_ * _loc107_ * this.FWP.get_skill_multi("exp") * this.FWP.get_hardcore_multi(this.cur_element,_loc34_.boss_max)));
               _loc105_ = this.x3String(Math.round(_loc103_.gold * _loc106_ * this.FWP.get_skill_multi("gold") * this.FWP.get_hardcore_multi(this.cur_element,_loc34_.boss_max)));
               _loc32_.go.visible = true;
               if(_loc103_.level <= _loc34_.level.value)
               {
                  _loc9_ = (_loc9_ = "Боссы - крайне опасные, тренированные и хорошо вооруженные червяки. Плюс ко всему этому у них есть походный генератор антигравитации, который позволяет им висеть в воздухе - боссов невозможно утопить. Еще одно устройтсво, которое поставляет боссам Отражение - дезинтегратор материи. На снаряды и пули он действовать не успевает, однако запросто расщепляет балки, если их поставить близко к червяку. ") + ("После победы этого босса вы получите <b>" + _loc105_ + "</b> золота и <b>" + _loc104_ + "</b> опыта.");
                  if(_loc106_ > 1)
                  {
                     _loc9_ += " Вознаграждение увеличено - это первая попытка победить данного босса.";
                  }
                  if(this.cur_element < _loc34_.boss_max)
                  {
                     _loc9_ = "<b>Вы уже победили этого босса.</b>";
                     _loc32_.go.visible = false;
                  }
               }
               else
               {
                  _loc9_ = "Для того, чтобы биться с этим боссом, вам необходим " + _loc103_.level + " уровень.";
                  _loc32_.go.visible = false;
               }
               if(this.cur_element == this.FWP.TEAMS_DEF.boss_max)
               {
                  _loc9_ = "Далеко забрались, поздравляем! Подождите некоторое время, данный босс в разработке.";
                  _loc32_.go.visible = false;
               }
            }
            if(_loc36_.tired >= this.FWP.TIRED_THRESHOLD)
            {
               _loc9_ = "Вы очень устали ( усталость выше <b>" + this.FWP.TIRED_THRESHOLD + "</b>% ) . Подождите или купите стимулятор.";
               _loc32_.go.visible = false;
            }
            _loc108_ = "";
            if(this.play_type == "career" || this.play_type == "survival" || this.play_type == "boss")
            {
               _loc108_ = "";
            }
            else
            {
               _loc108_ = this.get_episode(this.cur_element) + "\n\n";
            }
            _loc32_.fight_text.htmlText = _loc108_ + _loc9_;
            _loc17_ = this.get_minimap_coords(this.play_type,this.cur_element);
            this.MainBitmapData.copyPixels(_loc17_,new Rectangle(0,0,342,154),new Point(10,10));
            _loc17_.dispose();
            _loc17_ = null;
         }
         if(this.cur_screen[this.cur_screen[0]].name == "just_play")
         {
            _loc2_ = 1;
            while(_loc2_ <= 5)
            {
               this.buttons["just" + _loc2_].task_name.textColor = 0;
               _loc2_++;
            }
            this.buttons["just" + this.cur_element].task_name.textColor = 16711680;
            _loc17_ = this.get_minimap_coords(this.play_type,this.cur_element,true);
            this.MainBitmapData.copyPixels(_loc17_,new Rectangle(0,0,342,154),new Point(10,10));
            _loc17_.dispose();
            _loc17_ = null;
            _loc32_.teams.text = this.barracks.teams;
            _loc32_.add_team.visible = this.barracks.teams < 4 && this.barracks.worms < 12;
            _loc32_.remove_team.visible = this.barracks.teams > 2;
            _loc2_ = 1;
            while(_loc2_ <= 4)
            {
               _loc32_["team" + _loc2_].visible = _loc2_ <= this.barracks.teams;
               _loc32_["worms" + _loc2_].visible = _loc2_ <= this.barracks.teams;
               _loc32_["worms" + _loc2_].text = this.barracks["team" + _loc2_].worms;
               _loc32_["team" + _loc2_].textColor = this.game_get_color(this.barracks["team" + _loc2_].color);
               _loc32_["worms" + _loc2_].textColor = this.game_get_color(this.barracks["team" + _loc2_].color);
               _loc32_["remove_worm" + _loc2_].visible = _loc2_ <= this.barracks.teams && this.barracks["team" + _loc2_].worms > 1;
               _loc32_["add_worm" + _loc2_].visible = _loc2_ <= this.barracks.teams && this.barracks["team" + _loc2_].worms < 8 && this.barracks.worms < 12;
               _loc2_++;
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "weapon_sheet")
         {
            _loc62_ = 0;
            while(_loc32_.in_game_weapon_container.numChildren != 0)
            {
               if(++_loc62_ > 100000)
               {
                  break;
               }
               _loc32_.in_game_weapon_container.getChildAt(0).removeEventListener(MouseEvent.CLICK,this.click);
               _loc32_.in_game_weapon_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OVER,this.mouse_event);
               _loc32_.in_game_weapon_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OUT,this.mouse_event);
               _loc32_.in_game_weapon_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_UP,this.mouse_event);
               _loc32_.in_game_weapon_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_DOWN,this.mouse_event);
               _loc66_ = _loc32_.in_game_weapon_container.getChildAt(0);
               _loc32_.in_game_weapon_container.removeChildAt(0);
               _loc66_ = null;
            }
            _loc110_ = this.FWP._proc.teams;
            _loc111_ = this.FWP._proc.cur_team;
            _loc112_ = 0;
            if(_loc34_.perks["fast_temp"])
            {
               _loc112_ = this.FWP.get_perk_effect("fast_temp",_loc34_.perks.fast_temp,"");
            }
            _loc63_ = new Array();
            _loc64_ = 0;
            for(_loc23_ in _loc110_[_loc111_].weapons)
            {
               _loc67_ = 0;
               _loc68_ = 0;
               for(_loc69_ in this.FWP.WP_PLACES_SORT)
               {
                  if(_loc23_ == this.FWP.WP_PLACES_SORT[_loc69_])
                  {
                     break;
                  }
               }
               _loc67_ = _loc69_;
               _loc70_ = 1;
               while(_loc70_ <= 10)
               {
                  if(_loc110_[_loc111_].weapons[_loc23_][_loc70_] > 0)
                  {
                     _loc63_[_loc64_] = new Array(this.FWP.WEAPONS_DEF[_loc23_].id,_loc23_,_loc67_,{"range":_loc70_},_loc110_[_loc111_].weapons[_loc23_][_loc70_]);
                     _loc64_++;
                  }
                  _loc70_++;
               }
            }
            _loc63_.sortOn("2",Array.NUMERIC);
            _loc93_ = (this.shop_page - 1) * 80 + 1;
            _loc94_ = Math.min(_loc64_,_loc93_ + 79);
            if((_loc51_ = Math.ceil(_loc64_ / 80)) > 1)
            {
               _loc32_.in_game_next_page.visible = true;
               _loc32_.in_game_prev_page.visible = true;
            }
            if(this.shop_page == 1)
            {
               _loc32_.in_game_prev_page.visible = false;
            }
            if(this.shop_page == _loc51_)
            {
               _loc32_.in_game_next_page.visible = false;
            }
            _loc113_ = 0;
            _loc114_ = 0;
            _loc2_ = _loc93_;
            while(_loc2_ <= _loc94_)
            {
               _loc23_ = _loc63_[_loc2_ - 1][1];
               _loc73_ = "%%" + _loc63_[_loc2_ - 1][3].range;
               (_loc74_ = _loc32_.in_game_weapon_container.addChild(this.FWP.container_interf.get_object("clip_weapon_in_game"))).name = "ingame_weapon_" + _loc23_ + _loc73_;
               _loc74_.weapon_functions.visible = false;
               this.bitmaps["ing_wp" + _loc2_] = new Bitmap();
               this.bitmap_datas["ing_wp" + _loc2_] = new BitmapData(50,50,true,0);
               _loc75_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc23_].id).i;
               _loc76_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc23_].id).j;
               this.bitmap_datas["ing_wp" + _loc2_].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc76_ - 1),1 + 44 * (_loc75_ - 1),44,43),new Point(2,2));
               this.bitmap_datas["ing_wp" + _loc2_].copyPixels(this.PerkLevels[_loc63_[_loc2_ - 1][3].range],new Rectangle(0,0,47,47),new Point(0,0),null,null,true);
               if(_loc63_[_loc2_ - 1][4] == 100)
               {
                  this.bitmap_datas["ing_wp" + _loc2_].copyPixels(this.WPAmount,new Rectangle(0,(11 - 2) * 10,21,9),new Point(3 - 1 + 44 - 16 - 7,3 - 1 + 43 - 11),null,null,true);
               }
               else if(_loc63_[_loc2_ - 1][4] > 1)
               {
                  this.bitmap_datas["ing_wp" + _loc2_].copyPixels(this.WPAmount,new Rectangle(0,(_loc63_[_loc2_ - 1][4] - 2) * 10,21,9),new Point(3 - 1 + 44 - 16 - 7,3 - 1 + 43 - 11),null,null,true);
               }
               this.bitmap_datas["ing_wp" + _loc2_].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               if(this.FWP.WEAPONS_DEF[_loc23_].delay - _loc110_[_loc111_].turns - _loc112_ > 0)
               {
                  this.bitmap_datas["ing_wp" + _loc2_].copyPixels(this.WPBlur,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
                  this.bitmap_datas["ing_wp" + _loc2_].copyPixels(this.DelayDigits,new Rectangle(0,(this.FWP.WEAPONS_DEF[_loc23_].delay - _loc110_[_loc111_].turns - _loc112_ - 1) * 10,14,9),new Point(3,3),null,null,true);
               }
               this.bitmaps["ing_wp" + _loc2_].bitmapData = this.bitmap_datas["ing_wp" + _loc2_];
               _loc74_.bitmap_container.addChild(this.bitmaps["ing_wp" + _loc2_]);
               _loc74_.x = _loc113_;
               _loc74_.y = _loc114_;
               if((_loc113_ += 50) >= 400)
               {
                  _loc113_ = 0;
                  _loc114_ += 50;
               }
               _loc2_++;
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "crafting")
         {
            _loc62_ = 0;
            while(_loc32_.crafting_wp_container.numChildren != 0)
            {
               if(++_loc62_ > 100000)
               {
                  break;
               }
               _loc32_.crafting_wp_container.getChildAt(0).removeEventListener(MouseEvent.CLICK,this.click);
               _loc32_.crafting_wp_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OVER,this.mouse_event);
               _loc32_.crafting_wp_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OUT,this.mouse_event);
               _loc32_.crafting_wp_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_UP,this.mouse_event);
               _loc32_.crafting_wp_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_DOWN,this.mouse_event);
               _loc66_ = _loc32_.crafting_wp_container.getChildAt(0);
               _loc32_.crafting_wp_container.removeChildAt(0);
               _loc66_ = null;
            }
            _loc62_ = 0;
            while(_loc32_.crafting_obj_container.numChildren != 0)
            {
               if(++_loc62_ > 100000)
               {
                  break;
               }
               _loc32_.crafting_obj_container.getChildAt(0).removeEventListener(MouseEvent.CLICK,this.click);
               _loc32_.crafting_obj_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OVER,this.mouse_event);
               _loc32_.crafting_obj_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OUT,this.mouse_event);
               _loc32_.crafting_obj_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_UP,this.mouse_event);
               _loc32_.crafting_obj_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_DOWN,this.mouse_event);
               _loc66_ = _loc32_.crafting_obj_container.getChildAt(0);
               _loc32_.crafting_obj_container.removeChildAt(0);
               _loc66_ = null;
            }
            _loc62_ = 0;
            while(_loc32_.crafting_stack_container.numChildren != 0)
            {
               if(++_loc62_ > 100000)
               {
                  break;
               }
               _loc32_.crafting_stack_container.getChildAt(0).removeEventListener(MouseEvent.CLICK,this.click);
               _loc32_.crafting_stack_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OVER,this.mouse_event);
               _loc32_.crafting_stack_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OUT,this.mouse_event);
               _loc32_.crafting_stack_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_UP,this.mouse_event);
               _loc32_.crafting_stack_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_DOWN,this.mouse_event);
               _loc66_ = _loc32_.crafting_stack_container.getChildAt(0);
               _loc32_.crafting_stack_container.removeChildAt(0);
               _loc66_ = null;
            }
            _loc62_ = 0;
            while(_loc32_.crafting_diss_container.numChildren != 0)
            {
               if(++_loc62_ > 100000)
               {
                  break;
               }
               _loc32_.crafting_diss_container.getChildAt(0).removeEventListener(MouseEvent.CLICK,this.click);
               _loc32_.crafting_diss_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OVER,this.mouse_event);
               _loc32_.crafting_diss_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OUT,this.mouse_event);
               _loc32_.crafting_diss_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_UP,this.mouse_event);
               _loc32_.crafting_diss_container.getChildAt(0).removeEventListener(MouseEvent.MOUSE_DOWN,this.mouse_event);
               _loc66_ = _loc32_.crafting_diss_container.getChildAt(0);
               _loc32_.crafting_diss_container.removeChildAt(0);
               _loc66_ = null;
            }
            _loc115_ = [0,false,false,false,false,false,false];
            _loc116_ = false;
            _loc117_ = false;
            _loc63_ = new Array();
            _loc64_ = 0;
            _loc31_ = _loc34_.weapons;
            _loc30_ = this.FWP.WEAPONS_DEF;
            for(_loc65_ in _loc31_)
            {
               if(_loc31_[_loc65_][0] != 0 && _loc65_ != "skip_go")
               {
                  _loc67_ = 0;
                  for(_loc69_ in this.FWP.WP_PLACES_SORT)
                  {
                     if(_loc65_ == this.FWP.WP_PLACES_SORT[_loc69_])
                     {
                        break;
                     }
                  }
                  _loc67_ = _loc69_;
                  _loc70_ = 1;
                  while(_loc70_ <= _loc31_[_loc65_][0])
                  {
                     if((_loc130_ = true) && !_loc117_ && this.floating_weapon.id == _loc65_ && Number(this.floating_weapon.range) == _loc31_[_loc65_][_loc70_].range && this.floating_weapon.stolen == _loc31_[_loc65_][_loc70_].stolen && this.floating_weapon.crafted == _loc31_[_loc65_][_loc70_].crafted && this.floating_weapon.tp == "weapon")
                     {
                        _loc117_ = true;
                        _loc130_ = false;
                     }
                     _loc131_ = 1;
                     while(_loc131_ <= 6)
                     {
                        if(this.weapon_stack[_loc131_]["id"])
                        {
                           if(_loc130_ && !_loc115_[_loc131_] && this.weapon_stack[_loc131_].id == _loc65_ && Number(this.weapon_stack[_loc131_].range) == _loc31_[_loc65_][_loc70_].range && this.weapon_stack[_loc131_].stolen == _loc31_[_loc65_][_loc70_].stolen && this.weapon_stack[_loc131_].crafted == _loc31_[_loc65_][_loc70_].crafted && this.weapon_stack[_loc131_].tp == "weapon")
                           {
                              _loc115_[_loc131_] = true;
                              _loc130_ = false;
                           }
                        }
                        _loc131_++;
                     }
                     if(_loc130_ && !_loc116_ && this.weapon_diss.id == _loc65_ && Number(this.weapon_diss.range) == _loc31_[_loc65_][_loc70_].range && this.weapon_diss.stolen == _loc31_[_loc65_][_loc70_].stolen && this.weapon_diss.crafted == _loc31_[_loc65_][_loc70_].crafted && this.weapon_diss.tp == "weapon")
                     {
                        _loc116_ = true;
                        _loc130_ = false;
                     }
                     if(_loc130_)
                     {
                        _loc71_ = true;
                        _loc72_ = 0;
                        while(_loc72_ < _loc64_)
                        {
                           if(_loc63_[_loc72_][0] == _loc30_[_loc65_].id && _loc63_[_loc72_][1] == _loc65_ && _loc63_[_loc72_][3].range == _loc31_[_loc65_][_loc70_].range && _loc63_[_loc72_][3].stolen == _loc31_[_loc65_][_loc70_].stolen && _loc63_[_loc72_][3].crafted == _loc31_[_loc65_][_loc70_].crafted)
                           {
                              _loc71_ = false;
                              ++_loc63_[_loc72_][4];
                           }
                           _loc72_++;
                        }
                        if(_loc71_)
                        {
                           _loc63_[_loc64_] = new Array(_loc30_[_loc65_].id,_loc65_,_loc67_,{
                              "range":_loc31_[_loc65_][_loc70_].range,
                              "stolen":_loc31_[_loc65_][_loc70_].stolen,
                              "crafted":_loc31_[_loc65_][_loc70_].crafted
                           },1);
                           _loc64_++;
                        }
                     }
                     _loc70_++;
                  }
               }
            }
            _loc63_.sortOn("2",Array.NUMERIC);
            _loc118_ = new Array();
            _loc119_ = 0;
            _loc31_ = _loc34_.objs;
            _loc30_ = this.FWP.OBJ_DEF;
            for(_loc120_ in _loc31_)
            {
               if(_loc31_[_loc120_] != 0)
               {
                  _loc132_ = 0;
                  if(!_loc117_ && this.floating_weapon.id == _loc120_ && this.floating_weapon.tp == "object")
                  {
                     _loc117_ = true;
                     _loc132_++;
                  }
                  _loc131_ = 1;
                  while(_loc131_ <= 6)
                  {
                     if(this.weapon_stack[_loc131_]["id"])
                     {
                        if(!_loc115_[_loc131_] && this.weapon_stack[_loc131_].id == _loc120_ && this.weapon_stack[_loc131_].tp == "object")
                        {
                           _loc115_[_loc131_] = true;
                           _loc132_++;
                        }
                     }
                     _loc131_++;
                  }
                  if(_loc31_[_loc120_] > _loc132_)
                  {
                     _loc118_[_loc119_] = new Array(this.FWP.OBJ_DEF[_loc120_].id,_loc120_,this.FWP.OBJ_DEF[_loc120_].id,{},_loc31_[_loc120_] - _loc132_);
                     _loc119_++;
                  }
               }
            }
            _loc118_.sortOn("2",Array.NUMERIC);
            _loc93_ = (this.craft_wp_page - 1) * 11 + 1;
            _loc94_ = Math.min(_loc64_,_loc93_ + 10);
            if((_loc121_ = Math.ceil(_loc64_ / 11)) > 1)
            {
               _loc32_.craft_wp_prev_page.visible = true;
               _loc32_.craft_wp_next_page.visible = true;
            }
            if(this.craft_wp_page == 1)
            {
               _loc32_.craft_wp_prev_page.visible = false;
            }
            if(this.craft_wp_page >= _loc121_)
            {
               _loc32_.craft_wp_next_page.visible = false;
            }
            _loc122_ = (this.craft_obj_page - 1) * 11 + 1;
            _loc123_ = Math.min(_loc119_,_loc122_ + 10);
            if((_loc124_ = Math.ceil(_loc119_ / 11)) > 1)
            {
               _loc32_.craft_obj_prev_page.visible = true;
               _loc32_.craft_obj_next_page.visible = true;
            }
            if(this.craft_obj_page == 1)
            {
               _loc32_.craft_obj_prev_page.visible = false;
            }
            if(this.craft_obj_page >= _loc124_)
            {
               _loc32_.craft_obj_next_page.visible = false;
            }
            _loc113_ = 0;
            _loc114_ = 0;
            _loc2_ = _loc93_;
            while(_loc2_ <= _loc94_)
            {
               _loc23_ = _loc63_[_loc2_ - 1][1];
               _loc73_ = "%";
               if(_loc63_[_loc2_ - 1][3].stolen)
               {
                  _loc73_ += "s";
               }
               else if(_loc63_[_loc2_ - 1][3].crafted)
               {
                  _loc73_ += "c";
               }
               _loc73_ += "%" + _loc63_[_loc2_ - 1][3].range;
               (_loc74_ = _loc32_.crafting_wp_container.addChild(this.FWP.container_interf.get_object("clip_weapon_in_game"))).name = "craft_weapon_" + _loc23_ + _loc73_;
               _loc74_.weapon_functions.visible = false;
               this.bitmaps["craft_wp" + _loc2_] = new Bitmap();
               this.bitmap_datas["craft_wp" + _loc2_] = new BitmapData(50,50,true,0);
               _loc75_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc23_].id).i;
               _loc76_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc23_].id).j;
               this.bitmap_datas["craft_wp" + _loc2_].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc76_ - 1),1 + 44 * (_loc75_ - 1),44,43),new Point(2,2));
               this.bitmap_datas["craft_wp" + _loc2_].copyPixels(this.PerkLevels[_loc63_[_loc2_ - 1][3].range],new Rectangle(0,0,47,47),new Point(0,0),null,null,true);
               if(_loc63_[_loc2_ - 1][4] == 100)
               {
                  this.bitmap_datas["craft_wp" + _loc2_].copyPixels(this.WPAmount,new Rectangle(0,(11 - 2) * 10,21,9),new Point(3 - 1 + 44 - 16 - 7,3 - 1 + 43 - 11),null,null,true);
               }
               else if(_loc63_[_loc2_ - 1][4] > 1)
               {
                  this.bitmap_datas["craft_wp" + _loc2_].copyPixels(this.WPAmount,new Rectangle(0,(_loc63_[_loc2_ - 1][4] - 2) * 10,21,9),new Point(3 - 1 + 44 - 16 - 7,3 - 1 + 43 - 11),null,null,true);
               }
               this.bitmap_datas["craft_wp" + _loc2_].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               this.bitmaps["craft_wp" + _loc2_].bitmapData = this.bitmap_datas["craft_wp" + _loc2_];
               _loc74_.bitmap_container.addChild(this.bitmaps["craft_wp" + _loc2_]);
               _loc74_.x = _loc113_;
               _loc113_ += 50;
               _loc2_++;
            }
            _loc113_ = 0;
            _loc2_ = _loc122_;
            while(_loc2_ <= _loc123_)
            {
               _loc23_ = _loc118_[_loc2_ - 1][1];
               (_loc74_ = _loc32_.crafting_obj_container.addChild(this.FWP.container_interf.get_object("clip_weapon_in_game"))).name = "craft_object_" + _loc23_;
               _loc74_.weapon_functions.visible = false;
               this.bitmaps["craft_obj" + _loc2_] = new Bitmap();
               this.bitmap_datas["craft_obj" + _loc2_] = new BitmapData(50,50,true,0);
               this.bitmap_datas["craft_obj" + _loc2_].copyPixels(this.BigObjs,new Rectangle(1 + 45 * (this.FWP.OBJ_DEF[_loc23_].id - 1),1,44,43),new Point(2,2));
               if(_loc118_[_loc2_ - 1][4] > 10)
               {
                  this.bitmap_datas["craft_obj" + _loc2_].copyPixels(this.WP10Plus,new Rectangle(0,0,21,9),new Point(3 - 1 + 44 - 16 - 7,3 - 1 + 43 - 11),null,null,true);
               }
               else if(_loc118_[_loc2_ - 1][4] > 1)
               {
                  this.bitmap_datas["craft_obj" + _loc2_].copyPixels(this.WPAmount,new Rectangle(0,(_loc118_[_loc2_ - 1][4] - 2) * 10,21,9),new Point(3 - 1 + 44 - 16 - 7,3 - 1 + 43 - 11),null,null,true);
               }
               this.bitmap_datas["craft_obj" + _loc2_].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               this.bitmaps["craft_obj" + _loc2_].bitmapData = this.bitmap_datas["craft_obj" + _loc2_];
               _loc74_.bitmap_container.addChild(this.bitmaps["craft_obj" + _loc2_]);
               _loc74_.x = _loc113_;
               _loc113_ += 50;
               _loc2_++;
            }
            _loc113_ = 0;
            _loc114_ = 0;
            _loc2_ = 1;
            while(_loc2_ <= 6)
            {
               (_loc74_ = _loc32_.crafting_stack_container.addChild(this.FWP.container_interf.get_object("clip_weapon_in_game"))).name = "craft_stack_" + _loc2_;
               _loc74_.weapon_functions.visible = false;
               this.bitmaps["craft_stack" + _loc2_] = new Bitmap();
               this.bitmap_datas["craft_stack" + _loc2_] = new BitmapData(50,50,true,0);
               if(this.weapon_stack[_loc2_].tp)
               {
                  if(this.weapon_stack[_loc2_].tp == "weapon")
                  {
                     _loc75_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.weapon_stack[_loc2_].id].id).i;
                     _loc76_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.weapon_stack[_loc2_].id].id).j;
                     this.bitmap_datas["craft_stack" + _loc2_].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc76_ - 1),1 + 44 * (_loc75_ - 1),44,43),new Point(2,2));
                     this.bitmap_datas["craft_stack" + _loc2_].copyPixels(this.PerkLevels[this.weapon_stack[_loc2_].range],new Rectangle(0,0,47,47),new Point(0,0),null,null,true);
                  }
                  else
                  {
                     this.bitmap_datas["craft_stack" + _loc2_].copyPixels(this.BigObjs,new Rectangle(1 + 45 * (this.FWP.OBJ_DEF[this.weapon_stack[_loc2_].id].id - 1),1,44,43),new Point(2,2));
                  }
               }
               this.bitmap_datas["craft_stack" + _loc2_].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               this.bitmaps["craft_stack" + _loc2_].bitmapData = this.bitmap_datas["craft_stack" + _loc2_];
               _loc74_.bitmap_container.addChild(this.bitmaps["craft_stack" + _loc2_]);
               _loc74_.x = _loc113_;
               _loc74_.y = _loc114_;
               if((_loc113_ += 60) > 120)
               {
                  _loc113_ = 0;
                  _loc114_ += 60;
               }
               _loc2_++;
            }
            (_loc74_ = _loc32_.crafting_stack_container.addChild(this.FWP.container_interf.get_object("clip_weapon_in_game"))).name = "craft_stack_7";
            _loc74_.weapon_functions.visible = false;
            this.bitmaps["craft_stack7"] = new Bitmap();
            this.bitmap_datas["craft_stack7"] = new BitmapData(50,50,true,0);
            _loc125_ = 0;
            if(this.FWP.player.perks["crafting"])
            {
               _loc125_ = this.FWP.player.perks["crafting"];
            }
            if(this.FWP.player.spec == 4)
            {
               _loc125_ = 3;
            }
            _loc126_ = this.check_recipe(this.weapon_stack,_loc34_.recipes,_loc125_);
            _loc127_ = false;
            _loc128_ = 0;
            _loc129_ = 0;
            _loc2_ = 1;
            while(_loc2_ <= 6)
            {
               if(this.weapon_stack[_loc2_].tp == "weapon")
               {
                  _loc128_++;
               }
               if(this.weapon_stack[_loc2_].id)
               {
                  _loc129_++;
               }
               _loc2_++;
            }
            if(_loc129_ > 1 && _loc128_ > 0)
            {
               _loc127_ = true;
            }
            if(_loc126_.id != "" && _loc126_.prob == 100)
            {
               _loc75_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc126_.id].id).i;
               _loc76_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc126_.id].id).j;
               this.bitmap_datas["craft_stack7"].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc76_ - 1),1 + 44 * (_loc75_ - 1),44,43),new Point(2,2));
               this.bitmap_datas["craft_stack7"].copyPixels(this.PerkLevels[_loc126_.range],new Rectangle(0,0,47,47),new Point(0,0),null,null,true);
            }
            else if(_loc127_)
            {
               this.bitmap_datas["craft_stack7"].copyPixels(this.IconQuestion,new Rectangle(0,0,45,45),new Point(2,2));
            }
            _loc32_.craft_assemble.visible = _loc127_;
            this.bitmap_datas["craft_stack7"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
            this.bitmaps["craft_stack7"].bitmapData = this.bitmap_datas["craft_stack7"];
            _loc74_.bitmap_container.addChild(this.bitmaps["craft_stack7"]);
            _loc74_.x = 215;
            _loc74_.y = 30;
            (_loc74_ = _loc32_.crafting_diss_container.addChild(this.FWP.container_interf.get_object("clip_weapon_in_game"))).name = "craft_diss";
            _loc74_.weapon_functions.visible = false;
            this.bitmaps["craft_diss"] = new Bitmap();
            this.bitmap_datas["craft_diss"] = new BitmapData(50,50,true,0);
            if(this.weapon_diss.tp)
            {
               this.bitmaps["craft_diss"] = new Bitmap();
               this.bitmap_datas["craft_diss"] = new BitmapData(50,50,true,0);
               _loc75_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.weapon_diss.id].id).i;
               _loc76_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.weapon_diss.id].id).j;
               this.bitmap_datas["craft_diss"].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc76_ - 1),1 + 44 * (_loc75_ - 1),44,43),new Point(2,2));
               this.bitmap_datas["craft_diss"].copyPixels(this.PerkLevels[this.weapon_diss.range],new Rectangle(0,0,47,47),new Point(0,0),null,null,true);
            }
            _loc32_.craft_disassemble.visible = this.weapon_diss.tp;
            this.bitmap_datas["craft_diss"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
            this.bitmaps["craft_diss"].bitmapData = this.bitmap_datas["craft_diss"];
            _loc74_.bitmap_container.addChild(this.bitmaps["craft_diss"]);
         }
         if(this.cur_screen[this.cur_screen[0]].name == "finish_crafting")
         {
            if(this.crafting_result.error != "")
            {
               _loc32_.header.text = "Вы не можете собрать это оружие";
               _loc32_.main.text = "Вам необходима способность\n\"Крафтинг\" уровня " + this.crafting_result.error.split("req")[1] + ".";
            }
            else if(!this.crafting_result.success)
            {
               _loc32_.header.text = "У вас не получилось собрать оружие";
               _loc32_.main.text = "Попробуйте разобрать нужное\nоружие или купить нужный рецепт.";
               if(this.crafting_result.junk[0] != 0)
               {
                  _loc32_.recipe_opened.text = "В инвентарь добавлены сломанные детали (" + this.crafting_result.junk[0] + ").";
               }
            }
            else if(this.crafting_result.mode == "disassemble")
            {
               _loc32_.header.text = "Вы успешно разобрали оружие!";
               _loc32_.main.text = this.FWP.WEAPONS_DEF[this.crafting_result.id].name;
               if(this.crafting_result.new_recipe)
               {
                  _loc32_.recipe_opened.text = "Открыт новый рецепт.";
               }
               else if(this.crafting_result.new_object)
               {
                  _loc32_.recipe_opened.text = "Добавлен компонент: " + this.FWP.OBJ_DEF[this.crafting_result.new_object].name;
               }
               else
               {
                  _loc32_.recipe_opened.text = "Не получилось достать новых компонентов.";
               }
            }
            else
            {
               _loc32_.header.text = "Вы успешно собрали оружие!";
               _loc32_.main.text = this.FWP.WEAPONS_DEF[this.crafting_result.id].name;
               if(this.crafting_result.new_recipe)
               {
                  _loc32_.recipe_opened.text = "Открыт новый рецепт.";
               }
            }
            if(this.crafting_result.success || this.crafting_result.mode == "disassemble")
            {
               _loc2_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.crafting_result.id].id).i;
               _loc3_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.crafting_result.id].id).j;
               this.bitmap_datas["craft_result_icon"].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc3_ - 1),1 + 44 * (_loc2_ - 1),44,43),new Point(2,2));
               this.bitmap_datas["craft_result_icon"].copyPixels(this.PerkLevels[this.crafting_result.range],new Rectangle(0,0,47,47),new Point(0,0),null,null,true);
            }
            else
            {
               this.bitmap_datas["craft_result_icon"].copyPixels(this.IconQuestion,new Rectangle(0,0,45,45),new Point(2,2));
            }
            this.bitmap_datas["craft_result_icon"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
         }
         if(this.cur_screen[this.cur_screen[0]].name == "recipes")
         {
            _loc24_ = 0;
            _loc133_ = 0;
            _loc134_ = [0,0];
            _loc2_ = 1;
            while(_loc2_ <= this.FWP.CRAFT_DEF[0])
            {
               if(_loc34_.recipes[_loc2_] == 1)
               {
                  ++_loc134_[0];
                  _loc134_[_loc134_[0]] = _loc2_;
               }
               _loc2_++;
            }
            _loc2_ = 1;
            while(_loc2_ <= this.FWP.CRAFT_DEF[0])
            {
               if(_loc34_.recipes[_loc2_] != 1)
               {
                  ++_loc134_[0];
                  _loc134_[_loc134_[0]] = _loc2_;
               }
               _loc2_++;
            }
            _loc3_ = 1;
            while(_loc3_ <= this.FWP.CRAFT_DEF[0])
            {
               _loc2_ = _loc134_[_loc3_];
               (_loc135_ = _loc32_.recipes_container.addChild(this.FWP.container_interf.get_object("clip_weapon_recipes"))).name = "recipe_clip_" + String(_loc2_);
               this.bitmaps["rcp" + _loc2_] = new Bitmap();
               this.bitmap_datas["rcp" + _loc2_] = new BitmapData(50,50,true,0);
               _loc135_.wp_name.text = this.FWP.WEAPONS_DEF[this.FWP.CRAFT_DEF[_loc2_].result].name;
               _loc75_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.FWP.CRAFT_DEF[_loc2_].result].id).i;
               _loc76_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.FWP.CRAFT_DEF[_loc2_].result].id).j;
               this.bitmap_datas["rcp" + _loc2_].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc76_ - 1),1 + 44 * (_loc75_ - 1),44,43),new Point(2,2));
               this.bitmap_datas["rcp" + _loc2_].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               this.bitmaps["rcp" + _loc2_].bitmapData = this.bitmap_datas["rcp" + _loc2_];
               _loc135_.bitmap_container.addChild(this.bitmaps["rcp" + _loc2_]);
               _loc135_.y = _loc24_;
               _loc24_ += 55;
               if(_loc34_.recipes[_loc2_] != 1)
               {
                  _loc135_.alpha = 0.3;
               }
               else
               {
                  _loc133_++;
               }
               _loc3_++;
            }
            _loc32_.slider.visible = _loc32_.recipes_container.height > 489;
            _loc32_.recipes_opened.text = String(_loc133_) + " / " + String(this.FWP.CRAFT_DEF[0]);
            _loc32_.recipes_text.visible = false;
            _loc32_.component_result.visible = false;
            _loc2_ = 1;
            while(_loc2_ <= 6)
            {
               _loc32_["component" + String(_loc2_)].visible = false;
               _loc2_++;
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "pay")
         {
            _loc32_.diam_to_gold.text = this.PLAYER_DIAM - this.DIAM_TO_TRANS;
            _loc32_.gold.text = this.DIAM_TO_TRANS * 1100;
            _loc32_.gold_add.visible = this.PLAYER_DIAM - this.DIAM_TO_TRANS > 0;
            _loc32_.gold_all.visible = this.PLAYER_DIAM - this.DIAM_TO_TRANS > 0;
            _loc32_.gold_pay.visible = this.DIAM_TO_TRANS > 0;
         }
         if(this.cur_screen[this.cur_screen[0]].name == "settings")
         {
            _loc137_ = (_loc136_ = _loc34_.settings.skill) >= 10 ? _loc136_ - 10 : _loc136_;
            _loc32_.skill0.htmlText = "Обычный (1х)";
            _loc32_.skill1.htmlText = "Сложный (1.15х)";
            _loc32_.skill2.htmlText = "Очень сложный (1.3х)";
            _loc32_.skill3.htmlText = "Невозможный (1.6х)";
            _loc32_.skill4.htmlText = "Кошмар (2х)";
            _loc32_["skill" + _loc137_].htmlText = "<b>" + _loc32_["skill" + _loc137_].htmlText + "</b>";
            _loc32_.hardcore_clip.gotoAndStop(_loc136_ >= 10 ? 2 : 1);
            _loc32_.animation_clip.gotoAndStop(_loc34_.settings.no_animation == 0 ? 2 : 1);
            _loc2_ = 0;
            while(_loc2_ <= 4)
            {
               _loc32_["skill" + _loc2_].textColor = _loc137_ == _loc2_ ? 3394560 : 0;
               _loc2_++;
            }
            _loc2_ = 1;
            while(_loc2_ <= 5)
            {
               _loc32_["worm_name" + _loc2_].text = !!_loc34_["worm_name" + _loc2_] ? _loc34_["worm_name" + _loc2_] : "Червь #" + _loc2_;
               if(_loc2_ <= _loc34_.worms.value + 2)
               {
                  _loc32_["worm_name" + _loc2_].type = TextFieldType.INPUT;
                  _loc32_["worm_name" + _loc2_].selectable = true;
                  _loc32_["worm_name" + _loc2_].backgroundColor = 16777215;
                  _loc32_["worm_name" + _loc2_].borderColor = 0;
                  _loc32_["worm_name" + _loc2_].textColor = 0;
               }
               else
               {
                  _loc32_["worm_name" + _loc2_].type = TextFieldType.DYNAMIC;
                  _loc32_["worm_name" + _loc2_].selectable = false;
                  _loc32_["worm_name" + _loc2_].backgroundColor = 10066329;
                  _loc32_["worm_name" + _loc2_].borderColor = 6710886;
                  _loc32_["worm_name" + _loc2_].textColor = 6710886;
               }
               _loc2_++;
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "question")
         {
            if(this.question_mode == "reset_perks")
            {
               _loc32_.header.text = "Сбросить навыки и способности ?";
               _loc32_.main.text = "Стоимость сброса навыков и способностей - 10 алмазов. При сбросе ВСЕ потраченные очки навыков и способностей вам возвращаются. Купленные места для способностей сохраняются." + (_loc34_.last_reset == 0 ? "" : " Вы сможете еще раз сбросить навыки и способности на " + (_loc34_.last_reset + 5) + " уровне.");
               _loc32_.proceed.visible = _loc34_.diam.value >= 10 && (_loc34_.last_reset == 0 || _loc34_.level.value >= _loc34_.last_reset + 5);
            }
            if(this.question_mode == "null_all")
            {
               _loc32_.header.text = "Начать игру заново ?";
               _loc32_.main.text = "Все ваши достижения будут обнулены. Это действие нельзя будет отменить. Вам необходим как минимум пятый уровень для этого действия.";
               _loc32_.proceed.visible = _loc34_.level.value >= 5;
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "tired")
         {
            _loc138_ = "Текущая усталость: <b>" + _loc36_.tired + "%</b>\n\n";
            _loc139_ = _loc36_.attack - _loc34_.attack.value;
            _loc140_ = _loc36_.protect - _loc34_.protect.value;
            _loc141_ = _loc36_.health - (100 + 50 * _loc34_.health.value);
            if(_loc139_ >= 0 && _loc140_ >= 0 && _loc141_ >= 0)
            {
               _loc138_ += "нет эффектов";
            }
            else
            {
               if(_loc139_ < 0)
               {
                  _loc138_ += "Атака <b>" + _loc139_ + "</b>\n";
               }
               if(_loc140_ < 0)
               {
                  _loc138_ += "Защита <b>" + _loc140_ + "</b>\n";
               }
               if(_loc141_ < 0)
               {
                  _loc138_ += "Здоровье <b>" + _loc141_ + "</b>\n";
               }
            }
            _loc32_.main.htmlText = _loc138_;
         }
         if(this.cur_screen[this.cur_screen[0]].name == "achiev")
         {
            _loc142_ = this.FWP.get_achiev_bonus();
            _loc32_.clip_get_achiev_bonus.visible = _loc142_.exist;
            if(this.achiev_bonus_text == "")
            {
               _loc32_.achiev_desc.htmlText = "За разнообразные достижения в игре предусмотрены награды в виде опыта, золота, алмазов и рейтинга. Для подробностей кликните по иконке любого достижения.";
            }
            else
            {
               _loc32_.achiev_desc.htmlText = this.achiev_bonus_text;
            }
            _loc2_ = 1;
            while(_loc2_ <= this.FWP.ACHIEV_DEF[0])
            {
               this.bitmaps["ach" + _loc2_] = new Bitmap();
               this.bitmap_datas["ach" + _loc2_] = new BitmapData(50,50,true,0);
               this.bitmaps["ach" + _loc2_].bitmapData = this.bitmap_datas["ach" + _loc2_];
               this.buttons["ach_" + _loc2_].bitmap_container.addChild(this.bitmaps["ach" + _loc2_]);
               this.buttons["ach_" + _loc2_].back.gotoAndStop(1);
               if(!(_loc143_ = this.FWP.player.achiev[this.FWP.ACHIEV_DEF[_loc2_].id]))
               {
                  _loc143_ = 0;
               }
               if((_loc144_ = this.FWP.get_achiev_level(this.FWP.ACHIEV_DEF[_loc2_].id,_loc143_)) > 0)
               {
                  this.bitmap_datas["ach" + _loc2_].copyPixels(this.AchievBitmap,new Rectangle((_loc2_ - 1) * 47,0,47,47),new Point(0,0));
                  this.bitmap_datas["ach" + _loc2_].copyPixels(this.PerkLevels[_loc144_],new Rectangle(0,0,47,47),new Point(0,0),null,null,true);
               }
               else
               {
                  this.bitmap_datas["ach" + _loc2_].copyPixels(this.AchievBitmap,new Rectangle((_loc2_ - 1) * 47,47,47,47),new Point(0,0));
               }
               this.bitmap_datas["ach" + _loc2_].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               _loc2_++;
            }
            _loc32_.achiev_range.text = _loc34_.last_achiev_range;
            _loc32_.achiev_rating_bonus.text = _loc34_.achiev_rating_bonus;
         }
         if(this.cur_screen[this.cur_screen[0]].name == "roul")
         {
            _loc32_.gold.text = this.x3SHString(_loc34_.gold.value);
            _loc32_.diam.text = this.x3SHString(_loc34_.diam.value);
            _loc32_.bet_gold_500.textColor = _loc34_.gold.value >= 500 ? 6710784 : 10066329;
            _loc32_.bet_gold_3000.textColor = _loc34_.gold.value >= 3000 ? 6710784 : 10066329;
            _loc32_.bet_gold_10000.textColor = _loc34_.gold.value >= 10000 ? 6710784 : 10066329;
            _loc32_.bet_diam_5.textColor = _loc34_.diam.value >= 5 ? 16486 : 10066329;
            _loc32_.bet_diam_25.textColor = _loc34_.diam.value >= 25 ? 16486 : 10066329;
            _loc32_.bet_diam_50.textColor = _loc34_.diam.value >= 50 ? 16486 : 10066329;
         }
         if(this.cur_screen[this.cur_screen[0]].name == "roul result")
         {
            if(this.FWP.roul_weapon != "")
            {
               _loc32_.header.text = "Вы выиграли оружие:";
               _loc32_.main.text = this.FWP.WEAPONS_DEF[this.FWP.roul_weapon].name;
               _loc2_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.FWP.roul_weapon].id).i;
               _loc3_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.FWP.roul_weapon].id).j;
               this.bitmap_datas["roul_or_grave_result_icon"].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc3_ - 1),1 + 44 * (_loc2_ - 1),44,43),new Point(2,2));
               this.bitmap_datas["roul_or_grave_result_icon"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
            }
            else
            {
               _loc32_.header.text = "К сожалению, вы ничего не выиграли.";
               _loc32_.main.text = "";
            }
            this.surprise = "";
         }
         if(this.cur_screen[this.cur_screen[0]].name == "grave_result")
         {
            if(this.FWP.grave_found != "")
            {
               _loc32_.header.text = "Вы нашли:";
               if(this.FWP.grave_found_type == "weapon")
               {
                  _loc32_.main.text = this.FWP.WEAPONS_DEF[this.FWP.grave_found].name;
                  _loc2_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.FWP.grave_found].id).i;
                  _loc3_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.FWP.grave_found].id).j;
                  this.bitmap_datas["roul_or_grave_result_icon"].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc3_ - 1),1 + 44 * (_loc2_ - 1),44,43),new Point(2,2));
                  this.bitmap_datas["roul_or_grave_result_icon"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               }
               if(this.FWP.grave_found_type == "obj")
               {
                  _loc32_.main.text = this.FWP.OBJ_DEF[this.FWP.grave_found].name;
                  this.bitmap_datas["roul_or_grave_result_icon"].copyPixels(this.BigObjs,new Rectangle(1 + 45 * (this.FWP.OBJ_DEF[this.FWP.grave_found].id - 1),1,44,43),new Point(2,2));
                  this.bitmap_datas["roul_or_grave_result_icon"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               }
               if(this.FWP.grave_found_type == "stim")
               {
                  _loc32_.main.text = this.FWP.STIM_DEF[this.FWP.grave_found].name;
                  _loc3_ = this.FWP.STIM_DEF[this.FWP.grave_found].id;
                  this.bitmap_datas["roul_or_grave_result_icon"].copyPixels(this.BigStims,new Rectangle(1 + 45 * (_loc3_ - 1),1,44,43),new Point(2,2));
                  this.bitmap_datas["roul_or_grave_result_icon"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               }
               if(this.FWP.grave_found_type == "gold")
               {
                  _loc32_.main.text = this.FWP.grave_found + " золота";
                  this.bitmap_datas["roul_or_grave_result_icon"].copyPixels(this.GoldIcon,new Rectangle(0,0,45,45),new Point(2,2));
                  this.bitmap_datas["roul_or_grave_result_icon"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               }
               if(this.FWP.grave_found_type == "diam")
               {
                  _loc32_.main.text = this.FWP.grave_found + " алмаз" + (this.FWP.grave_found > 1 ? "а" : "");
                  this.bitmap_datas["roul_or_grave_result_icon"].copyPixels(this.DiamIcon,new Rectangle(0,0,45,45),new Point(2,2));
                  this.bitmap_datas["roul_or_grave_result_icon"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               }
            }
            else
            {
               _loc32_.header.text = "К сожалению, вы ничего не нашли.";
               _loc32_.main.text = "";
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "friends")
         {
            _loc24_ = -75;
            _loc2_ = 1;
            while(_loc2_ <= this.FWP.FRIENDS[0])
            {
               (_loc145_ = _loc32_.friends_container.addChild(this.FWP.container_interf.get_object("clip_friend"))).name = this.FWP.FRIENDS[_loc2_].uid;
               _loc145_.avatar.addChild(this.FWP.image_loaders["id" + this.FWP.FRIENDS[_loc2_].uid]);
               for(_loc10_ in this.FWP.friends_names)
               {
                  if(this.FWP.friends_names[_loc10_].uid == this.FWP.FRIENDS[_loc2_].uid)
                  {
                     _loc145_.user_name.text = this.FWP.friends_names[_loc10_].first_name + " " + this.FWP.friends_names[_loc10_].last_name;
                  }
               }
               _loc24_ += 60 + 15;
               _loc145_.y = _loc24_;
               _loc2_++;
            }
            _loc32_.slider.visible = _loc2_ > 6;
         }
         if(this.cur_screen[this.cur_screen[0]].name == "top")
         {
            _loc32_.my_rating.text = this.x3String(_loc34_.rating + _loc34_.achiev_rating_bonus);
            if(this.top_mode == 1)
            {
               _loc146_ = this.FWP.TOP_BY_LEVEL;
            }
            if(this.top_mode == 2)
            {
               _loc146_ = this.FWP.TOP_BY_RATING;
            }
            if(this.top_mode == 3)
            {
               _loc146_ = this.FWP.TOP_BY_ASSAULT;
            }
            _loc32_.top_by_level.visible = this.top_mode != 1;
            _loc32_.top_by_rating.visible = this.top_mode != 2;
            _loc32_.top_by_assault.visible = this.top_mode != 3;
            _loc32_.top_prev_page.visible = this.top_page != 1;
            _loc32_.top_next_page.visible = this.top_page != 10;
            _loc147_ = (this.top_page - 1) * 10;
            _loc2_ = 0;
            while(_loc2_ <= 9)
            {
               _loc148_ = this.FWP.return_clan(_loc146_[_loc2_ + _loc147_].uid,this.FWP.CLANS_PEOPLE_DEF);
               _loc32_["clip_top" + (_loc2_ + 1)].clan_icon.visible = _loc148_ != 0;
               if(_loc148_ != 0)
               {
                  _loc32_["clip_top" + (_loc2_ + 1)].clan_icon.gotoAndStop(_loc148_);
               }
               _loc32_["clip_top" + (_loc2_ + 1)].id_container.text = _loc146_[_loc2_ + _loc147_].uid;
               for(_loc10_ in this.FWP.top_names)
               {
                  if(this.FWP.top_names[_loc10_].uid == _loc146_[_loc2_ + _loc147_].uid)
                  {
                     _loc32_["clip_top" + (_loc2_ + 1)].user_name.text = this.FWP.top_names[_loc10_].first_name + " " + this.FWP.top_names[_loc10_].last_name;
                  }
               }
               _loc32_["clip_top" + (_loc2_ + 1)].level.text = this.FWP.get_player_level(_loc146_[_loc2_ + _loc147_].exp);
               _loc32_["clip_top" + (_loc2_ + 1)].user_rating.text = this.x3String(_loc146_[_loc2_ + _loc147_].rating);
               _loc32_["clip_top" + (_loc2_ + 1)].ass.text = this.x3String(_loc146_[_loc2_ + _loc147_].assaults);
               _loc32_["clip_top" + (_loc2_ + 1)].place.text = String(_loc2_ + _loc147_ + 1);
               _loc149_ = new Bitmap();
               (_loc150_ = new BitmapData(50,50,true,0)).copyPixels(this.FWP.avdatas["id" + _loc146_[_loc2_ + _loc147_].uid],new Rectangle(0,0,50,50),new Point(0,0));
               _loc149_.bitmapData = _loc150_;
               (_loc151_ = _loc32_["clip_top" + (_loc2_ + 1)].avatar.addChild(_loc149_)).width = 32;
               _loc151_.height = 32;
               _loc2_++;
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "user_info")
         {
            if(this.FWP.get_info.exp.value != 0)
            {
               _loc32_.error_message.visible = false;
               _loc32_.level.text = this.FWP.get_player_level(this.FWP.get_info.exp.value);
               _loc32_.progress.text = "Текущая карьера : " + this.FWP.get_info.career_max + "\nТекущая миссия : " + this.FWP.get_info.missions_max + "\nТекущее выживание : " + this.FWP.get_info.survival_max + "\nТекущий босс : " + this.FWP.get_info.boss_max;
               _loc32_.attack.text = this.FWP.get_info.attack.value;
               _loc32_.protect.text = this.FWP.get_info.protect.value;
               _loc32_.health.text = 100 + 50 * this.FWP.get_info.health.value;
               _loc32_.worms.text = 2 + this.FWP.get_info.worms.value;
               _loc32_.gold.text = this.FWP.get_info.gold.value;
               _loc32_.diam.text = this.FWP.get_info.diam.value;
               _loc153_ = (_loc152_ = new Date(this.FWP.get_info.last_enter * 1000)).getDate();
               _loc154_ = _loc152_.getMonth() + 1;
               _loc155_ = _loc152_.getFullYear();
               _loc32_.last_visit.text = "Последний раз был здесь : ";
               if(this.FWP.get_info.last_enter == 0)
               {
                  _loc32_.last_visit.text += "неизвестно";
               }
               else
               {
                  _loc32_.last_visit.text += _loc153_ + "." + _loc154_ + "." + _loc155_;
               }
               for(_loc10_ in this.FWP.top_names)
               {
                  if(this.FWP.top_names[_loc10_].uid == this.FWP.get_info_uid)
                  {
                     _loc32_.user_name.text = this.FWP.top_names[_loc10_].first_name + " " + this.FWP.top_names[_loc10_].last_name;
                  }
               }
               for(_loc10_ in this.FWP.friends_names)
               {
                  if(this.FWP.friends_names[_loc10_].uid == this.FWP.get_info_uid)
                  {
                     _loc32_.user_name.text = this.FWP.friends_names[_loc10_].first_name + " " + this.FWP.friends_names[_loc10_].last_name;
                  }
               }
               for(_loc10_ in this.FWP.clans_names)
               {
                  if(this.FWP.clans_names[_loc10_].uid == this.FWP.get_info_uid)
                  {
                     _loc32_.user_name.text = this.FWP.clans_names[_loc10_].first_name + " " + this.FWP.clans_names[_loc10_].last_name;
                  }
               }
               _loc32_.award_magnet.visible = this.FWP.get_info.diam_magnet == 1 || this.FWP.get_info_uid == 134819803;
               _loc32_.award_contest.visible = this.FWP.get_award(this.FWP.get_info_uid,"contest");
               _loc32_.award_tester.visible = this.FWP.get_award(this.FWP.get_info_uid,"tester");
               _loc32_.awards_none.visible = !_loc32_.award_magnet.visible && !_loc32_.award_contest.visible && !_loc32_.award_tester.visible;
               if(this.FWP.get_info_uid != 77226401 || this.FWP.user.user_id == 77226401)
               {
                  _loc2_ = 0;
                  for(_loc14_ in this.FWP.get_info.perks)
                  {
                     _loc2_++;
                     _loc15_ = _loc2_ < 5 ? 4 : 55;
                     _loc16_ = _loc2_ < 5 ? (_loc2_ - 1) % 4 * 50 : (_loc2_ - 5) % 4 * 50;
                     this.MainBitmapData.copyPixels(this.PerksSheet,new Rectangle(0,(this.FWP.PERKS_DEF[_loc14_].id - 1) * 47,47,47),new Point(_loc15_,_loc16_));
                     this.MainBitmapData.copyPixels(this.PerkLevels[this.FWP.get_info.perks[_loc14_]],new Rectangle(0,0,47,47),new Point(_loc15_,_loc16_),null,null,true);
                  }
                  _loc2_ = 0;
                  _loc25_ = 0;
                  _loc26_ = new Array();
                  for(_loc23_ in this.FWP.get_info.weapons)
                  {
                     if(this.FWP.get_info.weapons[_loc23_][0] > 0 && _loc23_ != "skip_go")
                     {
                        _loc26_[_loc25_] = {
                           "id":_loc23_,
                           "diam":(this.FWP.WEAPONS_DEF[_loc23_].diam == 0 ? 30 : this.FWP.WEAPONS_DEF[_loc23_].diam)
                        };
                        _loc25_++;
                     }
                  }
                  _loc26_.sortOn("diam",Array.DESCENDING | Array.NUMERIC);
                  _loc27_ = 0;
                  while(_loc27_ < _loc25_)
                  {
                     _loc23_ = _loc26_[_loc27_].id;
                     if(this.FWP.get_info.weapons[_loc23_][0] > 0)
                     {
                        _loc2_++;
                        if(_loc2_ > 28)
                        {
                           break;
                        }
                        if(_loc2_ < 8)
                        {
                           _loc28_ = 146 + (_loc2_ - 1) * 50;
                           _loc29_ = 2;
                        }
                        else if(_loc2_ < 15)
                        {
                           _loc28_ = 146 + (_loc2_ - 8) * 50;
                           _loc29_ = 52;
                        }
                        else if(_loc2_ < 22)
                        {
                           _loc28_ = 146 + (_loc2_ - 15) * 50;
                           _loc29_ = 102;
                        }
                        else
                        {
                           _loc28_ = 146 + (_loc2_ - 22) * 50;
                           _loc29_ = 152;
                        }
                        _loc7_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc23_].id).i;
                        _loc8_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc23_].id).j;
                        this.MainBitmapData.copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc8_ - 1),1 + 44 * (_loc7_ - 1),43,42),new Point(_loc28_,_loc29_));
                        this.MainBitmapData.copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(_loc28_ - 2,_loc29_ - 2),null,null,true);
                        if(this.FWP.get_info.weapons[_loc23_][0] > 1)
                        {
                           this.MainBitmapData.copyPixels(this.WPAmount,new Rectangle(0,(this.FWP.get_info.weapons[_loc23_][0] - 2) * 10,21,9),new Point(_loc28_ + 44 - 16 - 7,_loc29_ + 43 - 11),null,null,true);
                        }
                     }
                     _loc27_++;
                  }
               }
               else
               {
                  _loc32_.gold.text = 0;
                  _loc32_.diam.text = 0;
                  _loc32_.level.text = "?";
                  _loc32_.attack.text = "100";
                  _loc32_.protect.text = "100";
                  _loc32_.health.text = "150";
                  _loc32_.worms.text = "2";
               }
            }
            else
            {
               _loc32_.error_message.visible = true;
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "clans")
         {
            _loc156_ = [];
            _loc157_ = 0;
            _loc2_ = 1;
            while(_loc2_ <= this.FWP.CLANS_DEF[0])
            {
               _loc156_[_loc157_] = {
                  "id":_loc2_,
                  "rating":this.FWP.clans_rating[_loc2_]
               };
               _loc157_++;
               _loc2_++;
            }
            _loc156_.sortOn("rating",Array.DESCENDING | Array.NUMERIC);
            _loc2_ = 0;
            while(_loc2_ <= this.FWP.CLANS_DEF[0] - 1)
            {
               _loc158_ = _loc156_[_loc2_].id;
               _loc32_["clan" + (_loc2_ + 1)].clan_name.text = this.FWP.CLANS_DEF[_loc158_];
               _loc32_["clan" + (_loc2_ + 1)].rate.text = this.x3String(_loc156_[_loc2_].rating);
               _loc32_["clan" + (_loc2_ + 1)].clan_icons.gotoAndStop(_loc158_);
               _loc2_++;
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "clan_members")
         {
            _loc24_ = -75;
            _loc2_ = 1;
            while(_loc2_ <= this.FWP.CLANS[this.opened_clan].people)
            {
               (_loc159_ = _loc32_.friends_container.addChild(this.FWP.container_interf.get_object("clip_friend"))).name = this.FWP.CLANS[this.opened_clan].list[_loc2_ - 1];
               _loc159_.avatar.addChild(this.FWP.image_loaders["id" + this.FWP.CLANS[this.opened_clan].list[_loc2_ - 1]]);
               for(_loc10_ in this.FWP.clans_names)
               {
                  if(this.FWP.clans_names[_loc10_].uid == this.FWP.CLANS[this.opened_clan].list[_loc2_ - 1])
                  {
                     _loc159_.user_name.text = this.FWP.clans_names[_loc10_].first_name + " " + this.FWP.clans_names[_loc10_].last_name;
                  }
               }
               _loc24_ += 60 + 15;
               _loc159_.y = _loc24_;
               _loc2_++;
            }
            _loc32_.slider.visible = _loc2_ > 6;
         }
         if(this.cur_screen[this.cur_screen[0]].name == "replay")
         {
            _loc24_ = 0;
            _loc2_ = 1;
            while(_loc2_ <= Math.min(23,this.FWP.USER_NOTES[0]))
            {
               (_loc160_ = _loc32_.note_container.addChild(this.FWP.container_interf.get_object("clip_note"))).name = _loc2_;
               _loc160_.x = 0;
               _loc160_.y = _loc24_;
               _loc24_ += 20;
               _loc160_.note_name.text = this.FWP.USER_NOTES[_loc2_].title;
               _loc2_++;
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "scaner")
         {
            _loc32_.slider.visible = this.scaner_mode == "worms";
            _loc32_.scaner_teams.visible = this.scaner_mode != "teams";
            _loc32_.scaner_worms.visible = this.scaner_mode != "worms";
            if(this.scaner_mode == "teams")
            {
               _loc24_ = 118;
               _loc2_ = 2;
               while(_loc2_ <= this.FWP._proc.teams[0])
               {
                  _loc161_ = _loc32_.addChild(this.FWP.container_interf.get_object("clip_scaner_team"));
                  this.bitmaps["sc_team" + _loc2_] = new Bitmap();
                  this.bitmap_datas["sc_team" + _loc2_] = new BitmapData(247,96,true,0);
                  _loc3_ = 0;
                  _loc25_ = 0;
                  _loc26_ = new Array();
                  for(_loc23_ in this.FWP._proc.teams[_loc2_].weapons)
                  {
                     if(this.FWP._proc.teams[_loc2_].weapons[_loc23_][1] > 0 && _loc23_ != "skip_go")
                     {
                        _loc26_[_loc25_] = {
                           "id":_loc23_,
                           "diam":(this.FWP.WEAPONS_DEF[_loc23_].diam == 0 ? 30 : this.FWP.WEAPONS_DEF[_loc23_].diam)
                        };
                        _loc25_++;
                     }
                  }
                  _loc26_.sortOn("diam",Array.DESCENDING | Array.NUMERIC);
                  _loc27_ = 0;
                  while(_loc27_ < _loc25_)
                  {
                     _loc23_ = _loc26_[_loc27_].id;
                     if(this.FWP._proc.teams[_loc2_].weapons[_loc23_][1] > 0)
                     {
                        _loc3_++;
                        if(_loc3_ > 10)
                        {
                           break;
                        }
                        if(_loc3_ < 6)
                        {
                           _loc28_ = 2 + (_loc3_ - 1) * 50;
                           _loc29_ = 2;
                        }
                        else
                        {
                           _loc28_ = 2 + (_loc3_ - 6) * 50;
                           _loc29_ = 52;
                        }
                        _loc162_ = this.FWP.WEAPONS_DEF[_loc23_].id;
                        _loc7_ = this.FWP.get_wpij(_loc162_ > 200 ? _loc162_ - 200 : _loc162_).i;
                        _loc8_ = this.FWP.get_wpij(_loc162_ > 200 ? _loc162_ - 200 : _loc162_).j;
                        this.bitmap_datas["sc_team" + _loc2_].copyPixels(_loc162_ > 200 ? this.BigCPUWP : this.BigWP,new Rectangle(1 + 45 * (_loc8_ - 1),1 + 44 * (_loc7_ - 1),43,42),new Point(_loc28_,_loc29_));
                        this.bitmap_datas["sc_team" + _loc2_].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(_loc28_ - 2,_loc29_ - 2),null,null,true);
                        if(this.FWP._proc.teams[_loc2_].weapons[_loc23_][1] >= 100)
                        {
                           this.bitmap_datas["sc_team" + _loc2_].copyPixels(this.WPAmount,new Rectangle(0,9 * 10,21,9),new Point(_loc28_ + 44 - 16 - 7,_loc29_ + 43 - 11),null,null,true);
                        }
                        else if(this.FWP._proc.teams[_loc2_].weapons[_loc23_][1] > 1)
                        {
                           this.bitmap_datas["sc_team" + _loc2_].copyPixels(this.WPAmount,new Rectangle(0,(this.FWP._proc.teams[_loc2_].weapons[_loc23_][1] - 2) * 10,21,9),new Point(_loc28_ + 44 - 16 - 7,_loc29_ + 43 - 11),null,null,true);
                        }
                     }
                     _loc27_++;
                  }
                  this.bitmaps["sc_team" + _loc2_].bitmapData = this.bitmap_datas["sc_team" + _loc2_];
                  _loc161_.bitmap_container.addChild(this.bitmaps["sc_team" + _loc2_]);
                  _loc161_.team_name.text = this.FWP._proc.teams[_loc2_].name;
                  _loc161_.x = 181;
                  _loc161_.y = _loc24_;
                  _loc24_ += 120;
                  _loc2_++;
               }
            }
            else
            {
               _loc24_ = 0;
               _loc163_ = 0;
               _loc2_ = 1;
               while(_loc2_ <= this.FWP._proc.worms[0])
               {
                  if(this.FWP._proc.worms[_loc2_].state == "ok")
                  {
                     if(this.FWP._obj[this.FWP._proc.worms[_loc2_].fid].wteam != 1)
                     {
                        _loc164_ = _loc32_.scaner_container.addChild(this.FWP.container_interf.get_object("clip_scaner_worm"));
                        this.bitmaps["sc_worm" + _loc2_] = new Bitmap();
                        this.bitmap_datas["sc_worm" + _loc2_] = new BitmapData(197,96,true,0);
                        _loc165_ = 0;
                        for(_loc14_ in this.FWP._obj[this.FWP._proc.worms[_loc2_].fid].perks)
                        {
                           _loc15_ = ++_loc165_ < 5 ? (_loc165_ - 1) * 50 : (_loc165_ - 5) * 50;
                           _loc16_ = _loc165_ < 5 ? 0 : 50;
                           this.bitmap_datas["sc_worm" + _loc2_].copyPixels(this.PerksSheet,new Rectangle(0,(this.FWP.PERKS_DEF[_loc14_].id - 1) * 47,47,47),new Point(_loc15_,_loc16_));
                           this.bitmap_datas["sc_worm" + _loc2_].copyPixels(this.PerkLevels[this.FWP._obj[this.FWP._proc.worms[_loc2_].fid].perks[_loc14_]],new Rectangle(0,0,47,47),new Point(_loc15_,_loc16_),null,null,true);
                        }
                        this.bitmaps["sc_worm" + _loc2_].bitmapData = this.bitmap_datas["sc_worm" + _loc2_];
                        _loc164_.bitmap_container.addChild(this.bitmaps["sc_worm" + _loc2_]);
                        _loc164_.team_name.text = this.FWP._proc.teams[this.FWP._obj[this.FWP._proc.worms[_loc2_].fid].wteam].name;
                        _loc164_.worm_name.text = this.FWP._obj[this.FWP._proc.worms[_loc2_].fid].wname;
                        _loc164_.worm_attack.text = this.FWP._obj[this.FWP._proc.worms[_loc2_].fid].skills.attack;
                        _loc164_.worm_protect.text = this.FWP._obj[this.FWP._proc.worms[_loc2_].fid].skills.protect;
                        _loc164_.worm_health.text = this.FWP._obj[this.FWP._proc.worms[_loc2_].fid].vars.health;
                        _loc164_.x = 0;
                        _loc164_.y = _loc24_;
                        _loc24_ += 120;
                        _loc163_++;
                     }
                  }
                  _loc2_++;
               }
               _loc32_.slider.visible = _loc163_ > 3;
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "error")
         {
            if(this.error_mode == "craft_limit")
            {
               _loc166_ = "Невозможно добавить в арсенал еще одно такое оружие - ограничение достигнуто.";
               if(this.crafting_result.new_recipe)
               {
                  _loc166_ += " Однако, при сборке вы открыли новый рецепт (" + this.FWP.WEAPONS_DEF[this.crafting_result.id].name + ").";
               }
               _loc32_.error_text.text = _loc166_;
            }
            if(this.error_mode == "craft_too_diff")
            {
               _loc166_ = "Это оружие слишком сложно для вас. Необходим уровень " + this.crafting_result.error.split("req")[1] + " способности Крафтинг.";
               if(this.crafting_result.new_recipe)
               {
                  _loc166_ += " Однако, при сборке вы открыли новый рецепт (" + this.FWP.WEAPONS_DEF[this.crafting_result.id].name + ").";
               }
               _loc32_.error_text.text = _loc166_;
            }
            if(this.error_mode == "calc")
            {
               _loc32_.error_text.text = "Вам необходима способность Образованность хотя бы базового уровня.";
            }
            if(this.error_mode == "what_opened")
            {
               _loc32_.error_text.text = "На этом уровне не открылось ни одного нового оружия.";
            }
            if(this.error_mode == "grave_search")
            {
               _loc32_.error_text.text = "Вы утопили всех врагов и все вражеские гробики. Нечего обыскивать.";
            }
            if(this.error_mode == "grave_search_assault")
            {
               _loc32_.error_text.text = "В режиме захвата территорий обыскивать гробики нельзя.";
            }
            if(this.error_mode == "new_recipes")
            {
               _loc32_.error_text.text = "Вы узнали новые рецепты (можно посмотреть в книге рецептов в разделе Крафтинг).";
            }
            if(this.error_mode == "new_recipes_fail")
            {
               _loc32_.error_text.text = "Вы не узнали ничего нового.";
            }
            if(this.error_mode == "collect_all_books")
            {
               _loc32_.error_text.text = "Соберите всю коллекцию из 9 книг рецептов - сможете продать ее за 3 000 000 золота. Неполная коллекция мало кому нужна.";
            }
            if(this.error_mode == "wait_few_days")
            {
               _loc32_.error_text.text = "Сервис друзей временно отключен, запустим в ближайшее время. Приносим извенения.";
            }
            if(this.error_mode == "auc_not_enough")
            {
               _loc32_.error_text.text = "У вас недостаточно голосов на балансе приложения. Нажмите \"Настройки\" в правом углу над приложением, переведите необходимое количество голосов на баланс в приложении и перезайдите в меню аукциона.";
            }
            if(this.error_mode == "auc_success")
            {
               this.success_auc = true;
               _loc32_.error_text.text = "Поздравляем! Вы приобрели Аннигилятор.";
            }
            if(this.error_mode == "auc_fail")
            {
               _loc32_.error_text.text = "Что-то пошло не так. Попробуйте еще раз или обратитесь в официальную группу.";
            }
            if(this.error_mode == "fail_server")
            {
               _loc32_.error_text.text = "Приложение немного ограничено в функциональности из-за упавшего сервера. Скоро исправим.";
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "steal")
         {
            if(this.success_steal)
            {
               _loc32_.error_text.htmlText = "Вы успешно украли оружие <b>" + this.FWP.WEAPONS_DEF[this.succ_steal_weapon].name + "</b>.";
            }
            else
            {
               if(this.steal_state == "")
               {
                  _loc32_.speech.text = "\"Эй, что это у тебя в руках? Хотел украсть?\"";
               }
               if(this.steal_state == "luck_fail")
               {
                  _loc32_.speech.text = "\"Ну конечно, так я тебе и поверил. Сразу видно, настоящий жулик и вор.\"";
               }
               if(this.steal_state == "merch_fail")
               {
                  _loc32_.speech.text = "\"Ты меня за идиота держишь? Сейчас, погоди, где мой излучатель...\"";
               }
               if(this.steal_state == "good_bye")
               {
                  _loc32_.speech.text = "\"Ладно, иди отсюда.\"";
               }
               if(this.steal_state == "fuck_off")
               {
                  _loc32_.speech.text = "\"Опять ты! Я же тебе сказал - не приходи ко мне больше!\"";
               }
               if(this.steal_state == "get_off")
               {
                  _loc32_.speech.text = "\"Что-то ты часто заходишь сюда, но ничего не покупаешь! Не желаю с тобой иметь дела.\"";
               }
               if(this.steal_state == "" || this.steal_state == "luck_fail" || this.steal_state == "merch_fail")
               {
                  _loc32_.steal_dial.gotoAndStop(1);
               }
               if(this.steal_state == "good_bye")
               {
                  _loc32_.steal_dial.gotoAndStop(2);
               }
               if(this.steal_state == "fuck_off")
               {
                  _loc32_.steal_dial.gotoAndStop(3);
               }
               if(this.steal_state == "get_off")
               {
                  _loc32_.steal_dial.gotoAndStop(3);
               }
               if(this.steal_state == "" || this.steal_state == "luck_fail" || this.steal_state == "merch_fail")
               {
                  if(!this.steal_try_luck)
                  {
                     _loc32_.steal_dial.try_luck.htmlText = "<font color=\"#000000\">\"Ой, нет, извините. Я случайно. Сам не заметил, как забыл оплатить товар.\" [вероятность <b>" + this.return_steal_luck_prob() + "%</b>].</font>";
                  }
                  else
                  {
                     _loc32_.steal_dial.try_luck.htmlText = "<font color=\"#666666\">\"Ой, нет, извините. Я случайно. Сам не заметил, как забыл оплатить товар.\" [вероятность <b>" + this.return_steal_luck_prob() + "%</b>].</font>";
                  }
                  _loc32_.steal_dial.steal_luck.visible = !this.steal_try_luck;
                  if(!this.steal_try_merch)
                  {
                     _loc32_.steal_dial.try_merch.htmlText = "<font color=\"#000000\">\"А вы в курсе, что в Новом Рено продают такую же пушку в два раза дороже? Что еще остается делать, с такими-то ценами. Простите, больше не повторится.\" [вероятность <b>" + this.return_steal_merch_prob() + "</b>%].</font>";
                  }
                  else
                  {
                     _loc32_.steal_dial.try_merch.htmlText = "<font color=\"#666666\">\"А вы в курсе, что в Новом Рено продают такую же пушку в два раза дороже? Что еще остается делать, с такими-то ценами. Простите, больше не повторится.\" [вероятность <b>" + this.return_steal_merch_prob() + "</b>%].</font>";
                  }
                  _loc32_.steal_dial.steal_merch.visible = !this.steal_try_merch;
               }
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "rating")
         {
            _loc32_.main_rating.text = "Рейтинг : " + (_loc34_.rating + _loc34_.achiev_rating_bonus);
            _loc32_.wins_yest.htmlText = "Одержано побед вчера : <b>" + _loc34_.yest_wins + "</b>";
            _loc32_.wins_today.htmlText = "Одержано побед сегодня : <b>" + _loc34_.today_wins + "</b>";
         }
         if(this.cur_screen[this.cur_screen[0]].name == "wormpedia")
         {
            _loc32_.articles.gotoAndStop(1);
            _loc167_ = new Array({
               "id":"spec",
               "name":"Специальность и прочие\nмодификаторы урона"
            },{
               "id":"rate",
               "name":"Рейтинг и бонусы\nза высокую активность"
            },{
               "id":"hard",
               "name":"Хардкорный режим"
            },{
               "id":"crates",
               "name":"Посылки"
            },{
               "id":"crit",
               "name":"Критический выстрел\nи осечки"
            },{
               "id":"attack",
               "name":"Атака и шанс\nпробивного выстрела"
            },{
               "id":"protect",
               "name":"Защита, порог урона и\nпоглощение урона броней"
            },{
               "id":"steal",
               "name":"Воровство и\nПапа Джон"
            },{
               "id":"crafting",
               "name":"Крафтинг"
            });
            if(this.wpedia_article != "")
            {
               for(_loc168_ in _loc167_)
               {
                  _loc169_ = _loc167_[_loc168_].name;
                  if(this.wpedia_article == _loc167_[_loc168_].id)
                  {
                     _loc169_ = "<b>" + _loc167_[_loc168_].name + "</b>";
                  }
                  _loc32_["wpedia_" + _loc167_[_loc168_].id].htmlText = _loc169_;
                  _loc32_["wpedia_" + _loc167_[_loc168_].id].textColor = this.wpedia_article == _loc167_[_loc168_].id ? 16711680 : 0;
               }
            }
            if(this.wpedia_article == "spec")
            {
               _loc32_.articles.gotoAndStop(2);
            }
            if(this.wpedia_article == "rate")
            {
               _loc32_.articles.gotoAndStop(3);
            }
            if(this.wpedia_article == "hard")
            {
               _loc32_.articles.gotoAndStop(4);
            }
            if(this.wpedia_article == "crates")
            {
               _loc32_.articles.gotoAndStop(5);
            }
            if(this.wpedia_article == "attack")
            {
               _loc32_.articles.gotoAndStop(6);
            }
            if(this.wpedia_article == "protect")
            {
               _loc32_.articles.gotoAndStop(7);
            }
            if(this.wpedia_article == "steal")
            {
               _loc32_.articles.gotoAndStop(8);
            }
            if(this.wpedia_article == "crit")
            {
               _loc32_.articles.gotoAndStop(9);
            }
            if(this.wpedia_article == "crafting")
            {
               _loc32_.articles.gotoAndStop(10);
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "papa_john")
         {
            if(_loc32_.papa_ann)
            {
               _loc170_ = (_loc152_ = new Date(this.FWP.user.unix_time * 1000)).getHours();
               _loc171_ = _loc152_.getTimezoneOffset();
               _loc172_ = _loc170_ + (4 + _loc171_ / 60);
               if(!this.papa_checked)
               {
                  _loc32_.papa_ann.htmlText = "Сейчас Папы нет на месте. Вы можете перезайти в приложение или проверить, пришел ли Папа, нажав на эту кнопку:";
               }
               else
               {
                  _loc173_ = "\nМосковское время: " + _loc172_ + " ч.";
                  if(this.FWP.PAPA_HERE)
                  {
                     _loc32_.papa_ann.htmlText = "<b>Вам повезло ! Папа сейчас на месте.</b>" + _loc173_;
                  }
                  else
                  {
                     _loc32_.papa_ann.htmlText = "Нет, пока Папы нет на месте." + _loc173_;
                  }
               }
            }
            else
            {
               if(this.papa_state == "")
               {
                  _loc32_.speech.text = "Привет, я Папа Джон! Очень тороплюсь, много клиентов еще надо обслужить. Чем могу помочь?";
               }
               if(this.papa_state == "time_win")
               {
                  _loc175_ = (_loc174_ = new Date((this.FWP.user.unix_time + 86400) * 1000)).getDate();
                  _loc176_ = this.FWP.PAPA_HOURS[_loc175_];
                  _loc32_.speech.text = "Дай подумать. Завтра я буду здесь с " + _loc176_ + ":00 по " + (_loc176_ + 1) + ":00 (по московскому времени). Заходи, жду.";
               }
               if(this.papa_state == "time_fail")
               {
                  _loc32_.speech.text = "Не знаю. Как получится.";
               }
               if(this.papa_state == "shop_fail")
               {
                  _loc32_.speech.text = "Сегодня ты у меня уже смотрел товар. Много работы, извини, приходи завтра.";
               }
               _loc32_.papa_dial.papa_ask.visible = _loc34_.papa_asked == 0;
               if(_loc34_.papa_asked == 0)
               {
                  _loc32_.papa_dial.papa_ask_text.htmlText = "<font color=\"#000000\">\"Во сколько ты появишься завтра?\" [вероятность <b>" + this.return_papa_ask_prob() + "%</b>].</font>";
               }
               else
               {
                  _loc32_.papa_dial.papa_ask_text.htmlText = "<font color=\"#666666\">\"Во сколько ты появишься завтра?\" [вероятность <b>" + this.return_papa_ask_prob() + "%</b>].</font>";
               }
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "papa_shop")
         {
            if(this.shop_type == "weapons")
            {
               _loc30_ = this.FWP.WEAPONS_DEF;
               _loc31_ = _loc34_.weapons;
               _loc37_ = 0.6;
            }
            if(this.shop_type == "objs")
            {
               _loc30_ = this.FWP.OBJ_DEF;
               _loc31_ = _loc34_.objs;
               _loc37_ = 1;
            }
            _loc178_ = (_loc177_ = this.FWP.get_papa_weapons(this.shop_type))[0];
            _loc179_ = [0,0];
            _loc2_ = 1;
            while(_loc2_ <= _loc178_)
            {
               for(_loc180_ in _loc30_)
               {
                  if(_loc180_ == _loc177_[_loc2_])
                  {
                     _loc179_[_loc2_] = _loc30_[_loc180_].id;
                  }
               }
               _loc2_++;
            }
            if(this.shop_type == "weapons")
            {
               _loc32_.shop_types.gotoAndStop(1);
            }
            if(this.shop_type == "objs")
            {
               _loc32_.shop_types.gotoAndStop(6);
            }
            _loc54_ = 1;
            while(_loc54_ <= _loc178_)
            {
               _loc65_ = _loc177_[_loc54_];
               this.buttons["wp_buy_" + _loc54_].visible = true;
               this.buttons["wp_buy_" + _loc54_].name = "weapon_" + _loc65_;
               if(_loc30_[_loc65_].gold * _loc37_ < 10000)
               {
                  this.buttons["wp_buy_" + _loc54_].gold.text = this.x3String(Math.round(_loc30_[_loc65_].gold * _loc37_));
               }
               else
               {
                  this.buttons["wp_buy_" + _loc54_].gold.text = this.xKString(Math.round(_loc30_[_loc65_].gold * _loc37_));
               }
               this.buttons["wp_buy_" + _loc54_].diam.text = Math.round(_loc30_[_loc65_].diam * _loc37_);
               if(this.shop_type == "weapons")
               {
                  _loc2_ = this.FWP.get_wpij(_loc30_[_loc65_].id).i;
                  _loc3_ = this.FWP.get_wpij(_loc30_[_loc65_].id).j;
                  this.bitmap_datas["shop" + _loc54_].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc3_ - 1),1 + 44 * (_loc2_ - 1),44,43),new Point(2,2));
               }
               else if(this.shop_type == "objs")
               {
                  _loc3_ = _loc30_[_loc65_].id;
                  this.bitmap_datas["shop" + _loc54_].copyPixels(this.BigObjs,new Rectangle(1 + 45 * (_loc3_ - 1),1,44,43),new Point(2,2));
               }
               this.bitmap_datas["shop" + _loc54_].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               this.buttons["wp_buy_" + _loc54_].back.gotoAndStop(1);
               if(_loc179_[_loc54_] == this.cur_element)
               {
                  this.buttons["wp_buy_" + _loc54_].back.gotoAndStop(2);
               }
               else if(_loc30_[_loc65_].level == 0 || !(Math.round(_loc30_[_loc65_].gold * _loc37_) <= _loc34_.gold.value && _loc30_[_loc65_].level <= _loc34_.level.value && this.get_req_params(_loc34_,_loc30_[_loc65_])) && Math.round(_loc30_[_loc65_].diam * _loc37_) > _loc34_.diam.value)
               {
                  this.bitmap_datas["shop" + _loc54_].copyPixels(this.WPBlurGray,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
                  this.buttons["wp_buy_" + _loc54_].back.gotoAndStop(3);
               }
               _loc54_++;
            }
            _loc54_ = _loc178_ + 1;
            while(_loc54_ <= 10)
            {
               this.buttons["wp_buy_" + _loc54_].visible = false;
               _loc54_++;
            }
            if(_loc30_[this.cur_weapon])
            {
               _loc32_.weapon_name.text = _loc30_[this.cur_weapon].name;
               _loc101_ = "";
               if(this.shop_type != "weapons")
               {
                  if(_loc31_[this.cur_weapon])
                  {
                     if(_loc31_[this.cur_weapon] != 0)
                     {
                        _loc32_.weapon_name.text += " (" + _loc31_[this.cur_weapon] + ")";
                     }
                  }
               }
               else if(_loc31_[this.cur_weapon])
               {
                  if(_loc31_[this.cur_weapon][0] != 0)
                  {
                     _loc32_.weapon_name.text += " (" + _loc31_[this.cur_weapon][0] + ")";
                  }
               }
               _loc32_.weapon_desc.htmlText = this.return_weapon_desc(this.cur_weapon,this.shop_type) + _loc101_ + (!!this.weapons_text[this.cur_weapon] ? this.weapons_text[this.cur_weapon] : "");
            }
            if(this.cur_element <= 0)
            {
               _loc32_.weapon_name.text = "Магазин Папы Джона";
               _loc32_.weapon_desc.htmlText = "Этот магазин отличается от основного тем, что скидки на оружие достигают 40%, и иногда можно найти супер-редкое оружие, которое невозможно купить в обычном магазине. Ассортимент Папы Джона меняется каждый день. С недавнего времени у Папы появились еще и предметы.";
            }
            if(this.cur_element > 0 && _loc30_[this.cur_weapon].level != 0)
            {
               _loc32_.buy_gold.visible = Math.round(_loc30_[this.cur_weapon].gold * _loc37_) <= _loc34_.gold.value && _loc30_[this.cur_weapon].level <= _loc34_.level.value && this.get_req_params(_loc34_,_loc30_[this.cur_weapon]);
               _loc32_.buy_diam.visible = Math.round(_loc30_[this.cur_weapon].diam * _loc37_) <= _loc34_.diam.value;
               _loc32_.weapon_gold.text = this.x3String(Math.round(_loc30_[this.cur_weapon].gold * _loc37_));
               _loc32_.weapon_diam.text = this.x3String(Math.round(_loc30_[this.cur_weapon].diam * _loc37_));
               _loc32_.weapon_gold.visible = true;
               _loc32_.weapon_diam.visible = true;
            }
            else
            {
               _loc32_.buy_gold.visible = false;
               _loc32_.buy_diam.visible = false;
               _loc32_.weapon_gold.visible = false;
               _loc32_.weapon_diam.visible = false;
            }
            if(_loc31_[this.cur_weapon])
            {
               if(this.shop_type != "weapons")
               {
                  if(_loc31_[this.cur_weapon] >= _loc30_[this.cur_weapon].limit)
                  {
                     _loc32_.buy_gold.visible = false;
                     _loc32_.buy_diam.visible = false;
                  }
               }
               else if(_loc31_[this.cur_weapon][0] >= _loc30_[this.cur_weapon].limit)
               {
                  _loc32_.buy_gold.visible = false;
                  _loc32_.buy_diam.visible = false;
               }
            }
            _loc32_.gold.text = this.x3SHString(_loc34_.gold.value);
            _loc32_.diam.text = this.x3SHString(_loc34_.diam.value);
         }
         if(this.cur_screen[this.cur_screen[0]].name == "end_game_surprise")
         {
            _loc181_ = this.FWP.end_game.surprise_weapons[this.cur_page];
            _loc32_.surprise_weapon.text = this.FWP.WEAPONS_DEF[_loc181_].name;
            _loc32_.surprise_weapon.y = 380 + (_loc32_.surprise_weapon.numLines == 1 ? 10 : 0);
            _loc2_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc181_].id).i;
            _loc3_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc181_].id).j;
            this.bitmap_datas["surprise_bitmap"].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc3_ - 1),1 + 44 * (_loc2_ - 1),44,43),new Point(2,2));
            _loc32_.surprise_prev.visible = this.cur_page > 1;
            _loc32_.surprise_next.visible = this.cur_page < this.FWP.end_game.surprise_weapons[0];
         }
         if(this.cur_screen[this.cur_screen[0]].name == "upgrade_weapon")
         {
            _loc32_.upgrade_gold_req.text = "";
            _loc32_.upgrade_nrange.text = "-";
            _loc32_.upgrade_damage.text = "";
            _loc32_.upgrade_crit.text = "";
            _loc32_.upgrade_ap.text = "";
            _loc32_.upgrade_warning.text = "";
            _loc32_.finish_upgrade.visible = false;
            _loc182_ = this.weapon_stack[this.weapon_stack[0]].range;
            _loc183_ = this.weapon_stack[this.weapon_stack[0]].id;
            _loc75_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc183_].id).i;
            _loc76_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc183_].id).j;
            this.MainBitmapData.copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc76_ - 1),1 + 44 * (_loc75_ - 1),44,43),new Point(2,2));
            this.MainBitmapData.copyPixels(this.PerkLevels[_loc182_],new Rectangle(0,0,47,47),new Point(2,2),null,null,true);
            this.MainBitmapData.copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
            if(_loc182_ == 10)
            {
               _loc32_.upgrade_warning.text = "Это оружие нельзя больше улучшить.";
               return;
            }
            this.MainBitmapData.copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc76_ - 1),1 + 44 * (_loc75_ - 1),44,43),new Point(198,2));
            this.MainBitmapData.copyPixels(this.PerkLevels[_loc182_ + 1],new Rectangle(0,0,47,47),new Point(198,2),null,null,true);
            this.MainBitmapData.copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(196,0),null,null,true);
            _loc184_ = Math.round(this.FWP.get_range_upgrade(_loc182_ + 1,"price",this.FWP.WEAPONS_DEF[_loc183_].wpclass) * this.FWP.WEAPONS_DEF[_loc183_].gold);
            this.weapon_stack[this.weapon_stack[0]].upg_price = _loc184_;
            _loc32_.upgrade_gold_req.text = this.x3String(_loc184_);
            _loc32_.upgrade_nrange.text = String(_loc182_ + 1);
            _loc32_.upgrade_damage.text = String(Math.round(this.FWP.get_range_upgrade(_loc182_ + 1,"damage",1) * 100)) + "%";
            _loc32_.upgrade_crit.text = String(Math.round(this.FWP.get_range_upgrade(_loc182_ + 1,"crit",1))) + "%";
            _loc32_.upgrade_ap.text = String(Math.round(this.FWP.get_range_upgrade(_loc182_ + 1,"ap",1))) + "%";
            if(_loc184_ > _loc34_.gold.value)
            {
               _loc32_.upgrade_warning.text = "Недостаточно золота.";
               return;
            }
            _loc125_ = 4;
            if(_loc34_.perks["crafting"])
            {
               if(_loc34_.perks["crafting"] == 1)
               {
                  _loc125_ = 6;
               }
               if(_loc34_.perks["crafting"] == 2)
               {
                  _loc125_ = 8;
               }
               if(_loc34_.perks["crafting"] == 3)
               {
                  _loc125_ = 10;
               }
            }
            if(_loc34_.spec == 4)
            {
               _loc125_ = 10;
            }
            if(_loc182_ + 1 > _loc125_)
            {
               _loc185_ = 1;
               if(_loc182_ + 1 > 6)
               {
                  _loc185_ = 2;
               }
               if(_loc182_ + 1 > 8)
               {
                  _loc185_ = 3;
               }
               _loc32_.upgrade_warning.text = "Вам необходима способность Крафтинг уровня " + _loc185_ + ".";
               return;
            }
            _loc32_.finish_upgrade.visible = true;
         }
         if(this.cur_screen[this.cur_screen[0]].name == "sell_weapon")
         {
            _loc32_.sell_price.text = "";
            _loc32_.sell_warning.text = "";
            _loc32_.finish_sell.visible = true;
            _loc186_ = this.weapon_stack[1].range;
            _loc187_ = this.weapon_stack[1].id;
            _loc75_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc187_].id).i;
            _loc76_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc187_].id).j;
            this.MainBitmapData.copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc76_ - 1),1 + 44 * (_loc75_ - 1),44,43),new Point(2,2));
            this.MainBitmapData.copyPixels(this.PerkLevels[_loc186_],new Rectangle(0,0,47,47),new Point(2,2),null,null,true);
            this.MainBitmapData.copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
            _loc32_.sell_price.text = this.x3String(this.get_sell_price(_loc187_,_loc186_,false,this.weapon_stack[1].stat == "c"));
            if(this.weapon_stack[1].stat == "s")
            {
               _loc32_.sell_warning.text = "Украденное оружие продать обычным способом нельзя. Его можно только продать на запчасти за 50 монет.";
               _loc32_.sell_price.text = "50";
            }
            else if(this.weapon_stack[1].stat == "c")
            {
               _loc32_.sell_warning.text = "Скрафтенное оружие можно продавать только три раза в день. Вы продали сегодня: " + _loc34_.today_craft_sells + ".";
               if(_loc34_.today_craft_sells >= 3)
               {
                  _loc32_.finish_sell.visible = false;
               }
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "assault")
         {
            _loc32_.assault_fight.visible = false;
            _loc32_.my_clan_icon.gotoAndStop(this.FWP.user_clan == 0 ? 29 : this.FWP.user_clan);
            if(this.FWP.user_clan == 0)
            {
               _loc32_.my_clan_name.text = "нет";
            }
            else
            {
               _loc32_.my_clan_name.text = this.FWP.CLANS_DEF[this.FWP.user_clan];
            }
            if(this.cur_element > 0)
            {
               if(this.FWP.ASSAULT[this.cur_element].user_id != this.FWP.user.user_id && (this.FWP.return_clan(this.FWP.ASSAULT[this.cur_element].user_id,this.FWP.CLANS_PEOPLE_DEF) != this.FWP.user_clan || this.FWP.user_clan == 0))
               {
                  _loc32_.assault_fight.visible = true;
               }
               _loc189_ = "";
               _loc190_ = "";
               if(this.FWP.ASSAULT[this.cur_element].zone_stage % 10 == 2 || this.FWP.ASSAULT[this.cur_element].zone_stage % 10 == 3 || this.FWP.ASSAULT[this.cur_element].zone_stage % 10 == 4)
               {
                  _loc190_ = "а";
               }
               _loc189_ += "<b>Территория захвачена:</b> " + this.FWP.ASSAULT[this.cur_element].zone_stage + " раз" + _loc190_ + "\n";
               _loc191_ = "<b>нет</b>";
               if(this.FWP.ASSAULT[this.cur_element].user_id != 0)
               {
                  _loc189_ += "<b>Последний захват: </b> " + this.FWP.ret_time_format(this.FWP.assault_cur_time - this.FWP.ASSAULT[this.cur_element].last_assault) + "\n";
                  for(_loc193_ in this.FWP.assault_names)
                  {
                     if(this.FWP.assault_names[_loc193_].uid == this.FWP.ASSAULT[this.cur_element].user_id)
                     {
                        _loc191_ = this.FWP.assault_names[_loc193_].first_name + " " + this.FWP.assault_names[_loc193_].last_name;
                     }
                  }
               }
               _loc189_ = (_loc189_ = (_loc189_ = (_loc189_ += "<b>Текущий владелец:</b> " + _loc191_ + "\n") + ("<b>Бонусы за захват:</b> " + this.FWP.TEAMS_DEF["assault" + this.cur_element].gold + " зол., " + this.FWP.TEAMS_DEF["assault" + this.cur_element].exp + " опыта\n")) + ("<b>Ежечасные выплаты:</b> " + this.FWP.TEAMS_DEF["assault" + this.cur_element].payments + " зол.\n")) + ("<b>Вражеская команда:</b> " + this.FWP.TEAMS_DEF["assault" + this.cur_element].name + "\n");
               if(this.FWP.ASSAULT[this.cur_element].user_id == this.FWP.user.user_id)
               {
                  _loc189_ += "\n<b><font color=\"#009900\">Вы являетесь владельцем этой территории.</font></b>\n";
               }
               else if(this.FWP.return_clan(this.FWP.ASSAULT[this.cur_element].user_id,this.FWP.CLANS_PEOPLE_DEF) == this.FWP.user_clan && this.FWP.user_clan != 0)
               {
                  _loc189_ += "\n<b><font color=\"#009900\">Ваш клан является владельцем этой территории.</font></b>\n";
               }
               _loc32_.assault_zones.gotoAndStop(2);
               _loc32_.assault_zones.zone_desc.htmlText = _loc189_;
               _loc192_ = this.FWP.ASSAULT[this.cur_element].zone_stage % this.FWP.TEAMS_DEF["assault" + this.cur_element].assault_limit / this.FWP.TEAMS_DEF["assault" + this.cur_element].assault_limit;
               _loc32_.assault_zones.zone_difficulty_mask.width = Math.round(_loc192_ * 200);
            }
            else
            {
               _loc32_.assault_zones.gotoAndStop(1);
               _loc32_.assault_zones.zone_common_desc.htmlText = "При захвате территории вы сражаетесь с червяками, населяющими ее. У каждой территории есть <b>\"предводитель\"</b> - мини-босс, которого нельзя сбить в воду. Более того, он <b>неуязвим</b>, пока жив хоть один червяк из его команды.\n\nПосле захвата территории вы получаете <b>ежечасные</b> бонусы золотом.\n\nЕсли территория захвачена кланом, все члены этого клана получают бонус в размере <b>10%</b> дохода с каждой территории, и это кроме, собственно, перечислений в размере <b>100%</b> золота захватившему игроку.\n\nС каждым следующим захватом территории сила ботов на ней возрастает. Поторопитесь!\n\nУровень сложности в игре и хардкорный режим здесь не учитываются.";
            }
            _loc2_ = 1;
            while(_loc2_ <= 17)
            {
               _loc32_["terr_zone_" + _loc2_].clan_icon.gotoAndStop(29);
               if(this.FWP.ASSAULT[_loc2_].user_id != 0)
               {
                  if(this.FWP.return_clan(this.FWP.ASSAULT[_loc2_].user_id,this.FWP.CLANS_PEOPLE_DEF) > 0)
                  {
                     _loc32_["terr_zone_" + _loc2_].clan_icon.gotoAndStop(this.FWP.return_clan(this.FWP.ASSAULT[_loc2_].user_id,this.FWP.CLANS_PEOPLE_DEF));
                  }
               }
               _loc2_++;
            }
            _loc2_ = 1;
            while(_loc2_ <= 17)
            {
               if(this.FWP.ASSAULT[_loc2_].user_id != 0 && this.FWP.return_clan(this.FWP.ASSAULT[_loc2_].user_id,this.FWP.CLANS_PEOPLE_DEF) == 0)
               {
                  _loc32_["terr_zone_" + _loc2_].clan_icon.gotoAndStop(30);
                  _loc194_ = new Bitmap();
                  (_loc195_ = new BitmapData(50,50,true,0)).copyPixels(this.FWP.avdatas["id" + this.FWP.ASSAULT[_loc2_].user_id],new Rectangle(0,0,50,50),new Point(0,0));
                  _loc194_.bitmapData = _loc195_;
                  (_loc196_ = _loc32_["terr_zone_" + _loc2_].clan_icon.avatar.addChild(_loc194_)).x = 0;
                  _loc196_.y = 0;
                  _loc196_.width = 32;
                  _loc196_.height = 32;
               }
               _loc2_++;
            }
            _loc188_ = false;
            if(this.FWP.get_tribute().my_gold != 0 || this.FWP.get_tribute().clans_gold != 0)
            {
               _loc188_ = true;
            }
            _loc32_.clip_assault_tribute.visible = true;
            if(!_loc188_)
            {
               _loc32_.clip_assault_tribute.gotoAndStop(1);
            }
            else if(_loc34_.next_assault_payment == 0 || _loc34_.next_assault_payment < this.FWP.fwproject_time)
            {
               _loc32_.clip_assault_tribute.gotoAndPlay(1);
            }
            else
            {
               _loc32_.clip_assault_tribute.visible = false;
               _loc32_.assault_next_tribute.text = "Сбор золота\n(через " + Math.ceil(this.mod(this.FWP.fwproject_time - _loc34_.next_assault_payment) / 60) + " мин.)";
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "tribute")
         {
            _loc32_.finish_tribute.visible = false;
            _loc198_ = (_loc197_ = this.FWP.get_tribute()).terr_total;
            _loc199_ = _loc197_.my_gold;
            _loc200_ = _loc197_.clans_gold;
            _loc201_ = (_loc201_ = (_loc201_ = "Вы владете <b>" + _loc198_ + "</b> территор.\n") + ("Выплата: <b>" + this.x3String(_loc199_) + "</b> зол.\n")) + ("Выплата от клана: <b>" + this.x3String(_loc200_) + "</b> зол.\n\n");
            if((_loc202_ = _loc199_ + _loc200_) == 0)
            {
               _loc201_ += "Неоткуда собирать.";
            }
            else
            {
               _loc201_ += "Можете забрать золото: <b>" + this.x3String(_loc202_) + "</b>";
               _loc32_.finish_tribute.visible = true;
            }
            _loc32_.main.htmlText = _loc201_;
         }
         if(this.cur_screen[this.cur_screen[0]].name == "choose_spec")
         {
            _loc32_.finish_choose_spec.visible = false;
            _loc2_ = 1;
            while(_loc2_ <= 4)
            {
               _loc32_["clicked_spec_" + _loc2_].visible = false;
               _loc2_++;
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "tasks")
         {
            if(this.task_bonus_text == "")
            {
               _loc32_.task_desc.htmlText = "Выполняйте задания и получайте бонусы! При клике на каждое задание здесь появится его описание и все необходимые пояснения.";
            }
            else
            {
               _loc32_.task_desc.htmlText = this.task_bonus_text;
            }
            _loc32_.clip_get_task_bonus.visible = this.FWP.get_task_bonus().exist;
            _loc102_ = Math.min(this.FWP.player.cur_task,this.FWP.TASK_DEF[0]);
            _loc2_ = 1;
            while(_loc2_ <= this.FWP.TASK_DEF[0])
            {
               this.buttons["tsk" + _loc2_].visible = _loc2_ <= _loc102_;
               if(_loc2_ <= _loc102_)
               {
                  _loc203_ = "";
                  if(_loc2_ == this.FWP.TASK_DEF[0])
                  {
                     if(_loc2_ == this.cur_element)
                     {
                        _loc203_ += "<font color=\"#ff0000\">";
                     }
                     _loc203_ += "<b>" + this.FWP.TASK_DEF[_loc2_].name + "</b>";
                     if(_loc2_ == this.cur_element)
                     {
                        _loc203_ += "</font>";
                     }
                  }
                  else
                  {
                     if(_loc2_ == this.cur_element)
                     {
                        _loc203_ += "<font color=\"#ff0000\">";
                     }
                     if(_loc2_ == _loc102_)
                     {
                        _loc203_ += "Задание " + _loc2_ + ": <b>" + this.FWP.TASK_DEF[_loc2_].name + "</b>";
                     }
                     else
                     {
                        _loc203_ += "Задание " + _loc2_ + ": " + this.FWP.TASK_DEF[_loc2_].name;
                     }
                     if(_loc2_ == this.cur_element)
                     {
                        _loc203_ += "</font>";
                     }
                  }
                  this.buttons["tsk" + _loc2_].task_text.htmlText = _loc203_;
               }
               _loc2_++;
            }
            if(this.cur_element >= 1 && this.cur_element <= this.FWP.TASK_DEF[0])
            {
               _loc32_.task_name.text = this.FWP.TASK_DEF[this.cur_element].name;
               _loc204_ = "";
               if(this.cur_element != this.FWP.TASK_DEF[0])
               {
                  if(this.FWP.TASK_DEF[this.cur_element].bonus_type == "gold")
                  {
                     _loc204_ += "Награда за выполнение: <b>" + this.x3String(this.FWP.TASK_DEF[this.cur_element].bonus) + " золота</b>\n";
                  }
                  if(this.FWP.TASK_DEF[this.cur_element].bonus_type == "diam")
                  {
                     _loc204_ += "Награда за выполнение: <b>" + this.FWP.TASK_DEF[this.cur_element].bonus + " алм.</b>\n";
                  }
                  if(this.FWP.TASK_DEF[this.cur_element].bonus_type == "exp")
                  {
                     _loc204_ += "Награда за выполнение: <b>" + this.x3String(this.FWP.TASK_DEF[this.cur_element].bonus) + " опыта.</b>\n";
                  }
               }
               _loc32_.task_desc.htmlText = _loc204_ + "\n\n" + this.task_texts[this.cur_element];
            }
         }
         if(this.cur_screen[this.cur_screen[0]].name == "auc")
         {
            _loc205_ = "голосов";
            if(this.FWP.auc_info.price % 100 == 1)
            {
               _loc205_ = "голос";
            }
            if(this.FWP.auc_info.price % 10 >= 2 && this.FWP.auc_info.price % 10 <= 4)
            {
               _loc205_ = "голоса";
            }
            if(this.FWP.auc_info.price % 100 >= 10 && this.FWP.auc_info.price % 100 <= 20)
            {
               _loc205_ = "голосов";
            }
            _loc32_.auc_time.text = this.FWP.ret_time_format(this.FWP.auc_info.cur_time - this.FWP.auc_info.last_buy);
            _loc32_.auc_price.text = this.FWP.auc_info.price + " " + _loc205_;
            _loc32_.auc_master.text = this.FWP.auc_names[0].first_name + " " + this.FWP.auc_names[0].last_name;
            _loc32_.auc_buy.visible = this.FWP.auc_info.user_id != this.FWP.user.user_id;
            _loc194_ = new Bitmap();
            (_loc195_ = new BitmapData(50,50,true,0)).copyPixels(this.FWP.avdatas["id" + this.FWP.auc_info.user_id],new Rectangle(0,0,50,50),new Point(0,0));
            _loc194_.bitmapData = _loc195_;
            (_loc196_ = _loc32_.auc_avatar_container.addChild(_loc194_)).width = 32;
            _loc196_.height = 32;
         }
         if(_loc32_.init_replay)
         {
            _loc32_.init_replay.alpha = 0.25;
         }
         if(_loc32_.wait_fd)
         {
            _loc32_.wait_fd.alpha = 0.25;
         }
         if(_loc32_.post_new_level)
         {
            _loc32_.post_new_level.alpha = 0.25;
         }
         if(_loc32_.post_win_game)
         {
            _loc32_.post_win_game.alpha = 0.25;
         }
      }
      
      public function move_world_map(param1:Event) : *
      {
         if(this.map_moving == "button_down")
         {
            this.world_position_y -= 10;
         }
         if(this.map_moving == "button_up")
         {
            this.world_position_y += 10;
         }
         if(this.map_moving == "button_right")
         {
            this.world_position_x -= 10;
         }
         if(this.map_moving == "button_left")
         {
            this.world_position_x += 10;
         }
         this.render_world_map();
      }
      
      public function stop_moving(param1:MouseEvent) : *
      {
         param1.target.removeEventListener(MouseEvent.MOUSE_OUT,this.stop_moving);
         this.map_moving = "";
         removeEventListener(Event.ENTER_FRAME,this.move_world_map);
      }
      
      public function render_world_map() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(this.world_position_y > 0)
         {
            this.world_position_y = 0;
         }
         if(this.world_position_x > 0)
         {
            this.world_position_x = 0;
         }
         _loc1_ = this.cur_screen[this.cur_screen[0]].link;
         _loc1_.square_container.§internal§.x = this.world_position_x;
         _loc1_.square_container.§internal§.y = this.world_position_y;
         while(_loc1_.square_container.§internal§.x >= 68)
         {
            _loc1_.square_container.§internal§.x -= 68;
         }
         while(_loc1_.square_container.§internal§.x <= -68)
         {
            _loc1_.square_container.§internal§.x += 68;
         }
         while(_loc1_.square_container.§internal§.y >= 68)
         {
            _loc1_.square_container.§internal§.y -= 68;
         }
         while(_loc1_.square_container.§internal§.y <= -68)
         {
            _loc1_.square_container.§internal§.y += 68;
         }
         this.world_left_square = Math.floor(-this.world_position_x / 68) + 1;
         this.world_top_square = Math.floor(-this.world_position_y / 68) + 1;
         _loc2_ = 0;
         _loc3_ = 1;
         while(_loc3_ <= 8)
         {
            _loc4_ = 1;
            while(_loc4_ <= 9)
            {
               _loc2_++;
               if(this.FWP.map_info[_loc3_ + this.world_left_square][_loc4_ + this.world_top_square] == 0)
               {
                  this.squares["sq" + _loc2_].visible = true;
                  this.squares["sq" + _loc2_].alpha = 0.9;
               }
               else if(this.FWP.map_info[_loc3_ + this.world_left_square][_loc4_ + this.world_top_square] == 1)
               {
                  this.squares["sq" + _loc2_].visible = true;
                  this.squares["sq" + _loc2_].alpha = 0.5;
               }
               else
               {
                  this.squares["sq" + _loc2_].visible = false;
               }
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      public function remove() : *
      {
         if(this.cur_screen[this.cur_screen[0]].name in this.no_anim_def)
         {
            this.remove_instant();
            return;
         }
         if(this.FWP.player.settings.no_animation == 0)
         {
            this.FWP.animation = true;
            this.FWP.animation_y = 0;
            this.FWP.animation_mode = "hide";
            this.FWP.set_invisible_button(true);
            return;
         }
         this.remove_instant();
      }
      
      public function remove_instant() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc1_ = this.cur_screen[this.cur_screen[0]].link;
         --this.cur_screen[0];
         _loc2_ = this.cur_screen[this.cur_screen[0] + 1].name;
         if(_loc1_.bitmap_container && this.cur_screen[this.cur_screen[0] + 1].name != "game")
         {
            _loc1_.bitmap_container.removeChild(this.MainBitmap);
         }
         if(_loc1_.bitmap_container && this.cur_screen[this.cur_screen[0] + 1].name == "game")
         {
            _loc1_.bitmap_container.removeChild(this.SecondBitmap);
         }
         if(this.cur_screen[this.cur_screen[0] + 1].name == "settings")
         {
            _loc1_.worm_name1.removeEventListener(Event.CHANGE,this.check_tf);
            _loc1_.worm_name2.removeEventListener(Event.CHANGE,this.check_tf);
            _loc1_.worm_name3.removeEventListener(Event.CHANGE,this.check_tf);
            _loc1_.worm_name4.removeEventListener(Event.CHANGE,this.check_tf);
            _loc1_.worm_name5.removeEventListener(Event.CHANGE,this.check_tf);
         }
         _loc3_ = 0;
         while(_loc1_.numChildren != 0)
         {
            _loc3_++;
            if(_loc3_ > 100000)
            {
               break;
            }
            _loc1_.getChildAt(0).removeEventListener(MouseEvent.CLICK,this.click);
            _loc1_.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OVER,this.mouse_event);
            _loc1_.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OUT,this.mouse_event);
            _loc1_.getChildAt(0).removeEventListener(MouseEvent.MOUSE_UP,this.mouse_event);
            _loc1_.getChildAt(0).removeEventListener(MouseEvent.MOUSE_DOWN,this.mouse_event);
            _loc4_ = _loc1_.getChildAt(0);
            _loc1_.removeChildAt(0);
            _loc4_ = null;
         }
         removeChild(_loc1_);
         _loc1_ = null;
         if(!(_loc2_ in this.no_anim_def))
         {
            _loc1_ = this.cur_screen[this.cur_screen[0]].link;
            --this.cur_screen[0];
            _loc3_ = 0;
            while(_loc1_.numChildren != 0)
            {
               _loc3_++;
               if(_loc3_ > 100000)
               {
                  break;
               }
               _loc1_.getChildAt(0).removeEventListener(MouseEvent.CLICK,this.click);
               _loc1_.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OVER,this.mouse_event);
               _loc1_.getChildAt(0).removeEventListener(MouseEvent.MOUSE_OUT,this.mouse_event);
               _loc1_.getChildAt(0).removeEventListener(MouseEvent.MOUSE_UP,this.mouse_event);
               _loc1_.getChildAt(0).removeEventListener(MouseEvent.MOUSE_DOWN,this.mouse_event);
               _loc4_ = _loc1_.getChildAt(0);
               _loc1_.removeChildAt(0);
               _loc4_ = null;
            }
            removeChild(_loc1_);
            _loc1_ = null;
         }
         if(this.cur_screen[0] != 0 && this.cur_screen[this.cur_screen[0]].name != "friends" && this.cur_screen[this.cur_screen[0]].name != "top" && this.cur_screen[this.cur_screen[0]].name != "clans")
         {
            this.render();
         }
         if(this.cur_screen[0] != 0)
         {
            if(this.cur_screen[this.cur_screen[0]].name == "mainframe")
            {
               this.FWP.interf_mainframe = true;
            }
         }
         try
         {
            new LocalConnection().connect("foo");
            new LocalConnection().connect("foo");
         }
         catch(e:*)
         {
         }
         if(this.cur_screen[0] != 0)
         {
            if(this.cur_screen[this.cur_screen[0]].name == "auc" && this.success_auc)
            {
               this.remove();
            }
         }
      }
      
      public function remove_all() : *
      {
         while(this.cur_screen[0] != 0)
         {
            this.remove();
         }
      }
      
      public function click(param1:MouseEvent) : *
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
         var _loc25_:Object = null;
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
         var _loc37_:* = undefined;
         var _loc38_:* = undefined;
         var _loc39_:* = undefined;
         var _loc40_:* = undefined;
         var _loc41_:* = undefined;
         var _loc42_:* = undefined;
         var _loc43_:* = undefined;
         var _loc44_:* = undefined;
         var _loc45_:* = undefined;
         var _loc46_:* = undefined;
         var _loc47_:* = undefined;
         var _loc48_:* = undefined;
         var _loc49_:Number = NaN;
         var _loc50_:* = undefined;
         var _loc51_:* = undefined;
         var _loc52_:* = undefined;
         var _loc53_:* = undefined;
         var _loc54_:* = undefined;
         var _loc55_:* = undefined;
         var _loc56_:* = undefined;
         var _loc57_:* = undefined;
         var _loc58_:* = undefined;
         var _loc59_:* = undefined;
         var _loc60_:* = undefined;
         var _loc61_:* = undefined;
         var _loc62_:* = undefined;
         var _loc63_:* = undefined;
         var _loc64_:* = undefined;
         var _loc65_:* = undefined;
         var _loc66_:* = undefined;
         var _loc67_:* = undefined;
         var _loc68_:* = undefined;
         var _loc69_:* = undefined;
         var _loc70_:* = undefined;
         var _loc71_:* = undefined;
         var _loc72_:* = undefined;
         var _loc73_:* = undefined;
         var _loc74_:* = undefined;
         var _loc75_:* = undefined;
         var _loc76_:* = undefined;
         var _loc77_:* = undefined;
         var _loc78_:* = undefined;
         var _loc79_:* = undefined;
         var _loc80_:* = undefined;
         var _loc81_:* = undefined;
         var _loc82_:* = undefined;
         var _loc83_:* = undefined;
         var _loc84_:* = undefined;
         var _loc85_:* = undefined;
         var _loc86_:* = undefined;
         var _loc87_:* = undefined;
         var _loc88_:* = undefined;
         this.FWP.deep_trace(this.cur_screen);
         _loc4_ = this.cur_screen[this.cur_screen[0]].link;
         _loc5_ = this.FWP.temp_player;
         _loc6_ = this.FWP.player;
         if(param1.target.name == "wait_fd")
         {
            return;
         }
         if(param1.target.name == "click_auc")
         {
            return;
         }
         if(param1.target.name == "auc_buy")
         {
            if(this.USER_BALANCE / 100 < this.FWP.auc_info.price)
            {
               this.init("error","auc_not_enough");
               return;
            }
            this.FWP.net_withdraw_auc();
            return;
         }
         if(param1.target.name == "my_exp")
         {
            this.init("skills");
            return;
         }
         if(param1.target.name == "how_tribute_calcs")
         {
            this.init("how_tribute_calcs");
            return;
         }
         if(param1.target.parent)
         {
            if(param1.target.parent.name.search("recipe_clip_") != -1)
            {
               _loc11_ = Number(param1.target.parent.name.split("recipe_clip_")[1]);
               _loc4_.recipes_text.visible = true;
               _loc4_.component_result.visible = true;
               _loc12_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.FWP.CRAFT_DEF[_loc11_].result].id).i;
               _loc13_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[this.FWP.CRAFT_DEF[_loc11_].result].id).j;
               this.bitmaps["rec_result"] = new Bitmap();
               this.bitmap_datas["rec_result"] = new BitmapData(50,50,true,0);
               this.bitmap_datas["rec_result"].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc13_ - 1),1 + 44 * (_loc12_ - 1),44,43),new Point(2,2));
               this.bitmap_datas["rec_result"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               this.bitmaps["rec_result"].bitmapData = this.bitmap_datas["rec_result"];
               _loc4_.component_result.bitmap_container.addChild(this.bitmaps["rec_result"]);
               _loc4_.component_result.wp_name.text = this.FWP.WEAPONS_DEF[this.FWP.CRAFT_DEF[_loc11_].result].name;
               _loc4_.recipes_text.craft_req.text = "";
               _loc2_ = 1;
               while(_loc2_ <= 6)
               {
                  _loc4_["component" + String(_loc2_)].visible = false;
                  _loc2_++;
               }
               if(_loc6_.recipes[_loc11_] != 1)
               {
                  _loc4_["component1"].visible = true;
                  _loc4_["component1"].wp_name.text = "?";
                  this.bitmaps["rec_component1"] = new Bitmap();
                  this.bitmap_datas["rec_component1"] = new BitmapData(50,50,true,0);
                  this.bitmap_datas["rec_component1"].copyPixels(this.IconQuestion,new Rectangle(0,0,44,43),new Point(2,2));
                  this.bitmap_datas["rec_component1"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
                  this.bitmaps["rec_component1"].bitmapData = this.bitmap_datas["rec_component1"];
                  _loc4_["component1"].bitmap_container.addChild(this.bitmaps["rec_component1"]);
               }
               else
               {
                  if(this.FWP.CRAFT_DEF[_loc11_].req > 0)
                  {
                     _loc4_.recipes_text.craft_req.text = "(необходима способность Крафтинг уровня " + String(this.FWP.CRAFT_DEF[_loc11_].req) + ")";
                  }
                  _loc14_ = [0,{"id":""},{"id":""},{"id":""},{"id":""},{"id":""},{"id":""}];
                  _loc2_ = 1;
                  while(_loc2_ <= this.FWP.CRAFT_DEF[_loc11_].ingr[0])
                  {
                     _loc3_ = 1;
                     while(_loc3_ <= 6)
                     {
                        if(_loc14_[_loc3_].id == "")
                        {
                           _loc14_[_loc3_] = {
                              "id":this.FWP.CRAFT_DEF[_loc11_].ingr[_loc2_],
                              "amount":1
                           };
                           ++_loc14_[0];
                           break;
                        }
                        if(_loc14_[_loc3_].id == this.FWP.CRAFT_DEF[_loc11_].ingr[_loc2_])
                        {
                           ++_loc14_[_loc3_].amount;
                           break;
                        }
                        _loc3_++;
                     }
                     _loc2_++;
                  }
                  _loc2_ = 1;
                  while(_loc2_ <= _loc14_[0])
                  {
                     _loc4_["component" + String(_loc2_)].visible = true;
                     if((_loc15_ = _loc14_[_loc2_].id.search("obj_") == -1 ? "weapon" : "object") == "weapon")
                     {
                        _loc7_ = this.FWP.WEAPONS_DEF;
                     }
                     if(_loc15_ == "object")
                     {
                        _loc7_ = this.FWP.OBJ_DEF;
                     }
                     this.bitmaps["rec_component" + _loc2_] = new Bitmap();
                     this.bitmap_datas["rec_component" + _loc2_] = new BitmapData(50,50,true,0);
                     if(_loc15_ == "weapon")
                     {
                        _loc12_ = this.FWP.get_wpij(_loc7_[_loc14_[_loc2_].id].id).i;
                        _loc13_ = this.FWP.get_wpij(_loc7_[_loc14_[_loc2_].id].id).j;
                        this.bitmap_datas["rec_component" + _loc2_].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc13_ - 1),1 + 44 * (_loc12_ - 1),44,43),new Point(2,2));
                     }
                     else
                     {
                        this.bitmap_datas["rec_component" + _loc2_].copyPixels(this.BigObjs,new Rectangle(1 + 45 * (_loc7_[_loc14_[_loc2_].id].id - 1),1,44,43),new Point(2,2));
                     }
                     this.bitmap_datas["rec_component" + _loc2_].copyPixels(this.WPAmount,new Rectangle(0,(_loc14_[_loc2_].amount - 2) * 10,21,9),new Point(3 - 1 + 44 - 16 - 7,3 - 1 + 43 - 11),null,null,true);
                     this.bitmap_datas["rec_component" + _loc2_].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
                     this.bitmaps["rec_component" + _loc2_].bitmapData = this.bitmap_datas["rec_component" + _loc2_];
                     _loc4_["component" + String(_loc2_)].bitmap_container.addChild(this.bitmaps["rec_component" + _loc2_]);
                     _loc4_["component" + String(_loc2_)].wp_name.text = _loc7_[_loc14_[_loc2_].id].name;
                     _loc2_++;
                  }
               }
               return;
            }
         }
         if(param1.target.parent)
         {
            if(param1.target.parent.name.search("clip_achiev") != -1)
            {
               _loc16_ = Number(param1.target.parent.name.split("clip_achiev")[1]);
               _loc4_.achiev_name.text = this.FWP.ACHIEV_DEF[_loc16_].name;
               _loc17_ = "";
               _loc18_ = this.FWP.ACHIEV_DEF[_loc16_].id;
               _loc19_ = _loc6_.achiev[_loc18_];
               _loc20_ = this.FWP.get_achiev_level(this.FWP.ACHIEV_DEF[_loc16_].id,_loc19_);
               _loc17_ += "Уровень достижения: <b>" + _loc20_ + "/15</b>\n";
               if(_loc20_ != 15)
               {
                  _loc17_ += "Выполнено: <b>" + this.x3String(_loc19_) + " / " + this.x3String(this.FWP.ACHIEV_DEF[_loc16_].levels[_loc20_ + 1]) + "</b>\n";
                  _loc21_ = this.FWP.ACHIEV_PRISE_DEF[_loc18_].amount[_loc20_ + 1];
                  if(this.FWP.ACHIEV_PRISE_DEF[_loc18_].prise == "exp")
                  {
                     _loc17_ += "Награда за след. уровень: <b>" + this.x3String(Math.round((this.FWP.LEVEL_THRESHOLD[_loc6_.level.value + 1] - this.FWP.LEVEL_THRESHOLD[_loc6_.level.value]) * _loc21_ / 100)) + " опыта</b>\n";
                  }
                  if(this.FWP.ACHIEV_PRISE_DEF[_loc18_].prise == "gold")
                  {
                     _loc17_ += "Награда за след. уровень: <b>" + this.x3String(_loc21_) + " золота</b>\n";
                  }
                  if(this.FWP.ACHIEV_PRISE_DEF[_loc18_].prise == "diam")
                  {
                     _loc17_ += "Награда за след. уровень: <b>" + _loc21_ + " алм.</b>\n";
                  }
               }
               else
               {
                  _loc17_ += "Выполнено: <b>" + this.FWP.ACHIEV_DEF[_loc16_].levels[_loc20_] + "/" + this.FWP.ACHIEV_DEF[_loc16_].levels[_loc20_] + "</b>\n";
               }
               _loc17_ += "\n" + this.achiev_text[_loc18_];
               _loc4_.achiev_desc.htmlText = _loc17_;
            }
         }
         if(param1.target.name == "get_achiev_bonus")
         {
            _loc21_ = this.FWP.get_achiev_bonus();
            this.achiev_bonus_text = "Вы получили следующие бонусы:\n\n";
            if(_loc21_.gold != 0)
            {
               _loc6_.gold.value += _loc21_.gold;
               this.achiev_bonus_text += "<b>" + this.x3String(_loc21_.gold) + " золота</b>\n";
            }
            if(_loc21_.diam != 0)
            {
               _loc6_.diam.value += _loc21_.diam;
               this.achiev_bonus_text += "<b>" + this.x3String(_loc21_.diam) + " алм.</b>\n";
            }
            if(_loc21_.exp != 0)
            {
               _loc22_ = Math.round((this.FWP.LEVEL_THRESHOLD[_loc6_.level.value + 1] - this.FWP.LEVEL_THRESHOLD[_loc6_.level.value]) * _loc21_.exp / 100);
               _loc6_.exp.value += _loc22_;
               this.achiev_bonus_text += "<b>" + this.x3String(_loc22_) + " опыта</b>\n";
            }
            for(_loc16_ in _loc6_.achiev)
            {
               _loc6_.last_achiev[_loc16_] = this.FWP.get_achiev_level(_loc16_,_loc6_.achiev[_loc16_]);
            }
            _loc6_.last_achiev_range = this.FWP.get_achiev_rank(_loc6_.achiev);
            _loc6_.achiev_rating_bonus = this.FWP.ACHIEV_RATING_BONUS[_loc6_.last_achiev_range];
            this.FWP.end_game = {
               "win":false,
               "exp_bonus":0,
               "gold_bonus":0,
               "rating_bonus":0,
               "levels_upg":0,
               "diam_bonus":0,
               "skill_pts":0,
               "perk_pts":0,
               "surprise_weapons":[0,""],
               "game_stage":0,
               "game_mode":"",
               "graves":[0,{}]
            };
            this.FWP.check_new_level();
            if(this.FWP.end_game.levels_upg > 0)
            {
               this.FWP.execute_after = "init new level";
            }
            else
            {
               this.FWP.execute_after = "render";
            }
            this.FWP.init_save_params();
            return;
         }
         if(param1.target.name == "get_task_bonus")
         {
            _loc23_ = this.FWP.get_task_bonus();
            this.task_bonus_text = "Вы получили следующие бонусы:\n\n";
            if(_loc23_.gold != 0)
            {
               _loc6_.gold.value += _loc23_.gold;
               this.task_bonus_text += "<b>" + this.x3String(_loc23_.gold) + " золота</b>\n";
            }
            if(_loc23_.diam != 0)
            {
               _loc6_.diam.value += _loc23_.diam;
               this.task_bonus_text += "<b>" + this.x3String(_loc23_.diam) + " алм.</b>\n";
            }
            if(_loc23_.exp != 0)
            {
               _loc6_.exp.value += _loc23_.exp;
               this.task_bonus_text += "<b>" + this.x3String(_loc23_.exp) + " опыта</b>\n";
            }
            _loc6_.last_presented_task = _loc6_.cur_task;
            this.FWP.end_game = {
               "win":false,
               "exp_bonus":0,
               "gold_bonus":0,
               "rating_bonus":0,
               "levels_upg":0,
               "diam_bonus":0,
               "skill_pts":0,
               "perk_pts":0,
               "surprise_weapons":[0,""],
               "game_stage":0,
               "game_mode":"",
               "graves":[0,{}]
            };
            this.FWP.check_new_level();
            this.cur_element = 0;
            if(this.FWP.end_game.levels_upg > 0)
            {
               this.FWP.execute_after = "init new level";
            }
            else
            {
               this.FWP.execute_after = "render";
            }
            this.FWP.init_save_params();
         }
         if(param1.target.name == "in_game_prev_page")
         {
            --this.shop_page;
            this.render();
            return;
         }
         if(param1.target.name == "in_game_next_page")
         {
            ++this.shop_page;
            this.render();
            return;
         }
         if(param1.target.name == "craft_wp_prev_page")
         {
            --this.craft_wp_page;
            this.render();
            return;
         }
         if(param1.target.name == "craft_wp_next_page")
         {
            ++this.craft_wp_page;
            this.render();
            return;
         }
         if(param1.target.name == "craft_obj_prev_page")
         {
            --this.craft_obj_page;
            this.render();
            return;
         }
         if(param1.target.name == "craft_obj_next_page")
         {
            ++this.craft_obj_page;
            this.render();
            return;
         }
         if(param1.target.name == "craft_assemble")
         {
            _loc24_ = 0;
            if(this.FWP.player.perks["crafting"])
            {
               _loc24_ = this.FWP.player.perks["crafting"];
            }
            if(this.FWP.player.spec == 4)
            {
               _loc24_ = 3;
            }
            _loc25_ = this.check_recipe(this.weapon_stack,_loc6_.recipes,_loc24_);
            this.crafting_result = {};
            this.crafting_result.id = _loc25_.id;
            this.crafting_result.range = Number(_loc25_.range);
            this.crafting_result.error = _loc25_.error;
            this.crafting_result.new_recipe = false;
            this.crafting_result.junk = [0,0];
            this.crafting_result.new_object = "";
            this.crafting_result.mode = "assemble";
            this.crafting_result.success = false;
            _loc26_ = false;
            if(this.crafting_result.id != "")
            {
               if(_loc6_.weapons[this.crafting_result.id])
               {
                  if(_loc6_.weapons[this.crafting_result.id][0] >= this.FWP.WEAPONS_DEF[this.crafting_result.id].limit)
                  {
                     _loc26_ = true;
                  }
               }
            }
            if(this.crafting_result.id != "" && _loc25_.prob > this.FWP.true_random(0,99))
            {
               this.crafting_result.success = true;
            }
            if(this.crafting_result.success)
            {
               if(_loc6_.cur_task == 20)
               {
                  _loc6_.cur_task = 21;
               }
               if(this.FWP.WEAPONS_DEF[this.crafting_result.id].wpclass >= 3 && _loc6_.cur_task == 25)
               {
                  _loc6_.cur_task = 26;
               }
               if(this.FWP.WEAPONS_DEF[this.crafting_result.id].wpclass >= 4 && _loc6_.cur_task == 27)
               {
                  _loc6_.cur_task = 28;
               }
               if(this.FWP.WEAPONS_DEF[this.crafting_result.id].wpclass >= 5 && _loc6_.cur_task == 30)
               {
                  _loc6_.cur_task = 31;
               }
               _loc11_ = 1;
               while(_loc11_ <= this.FWP.CRAFT_DEF[0])
               {
                  if(this.FWP.CRAFT_DEF[_loc11_].result == this.crafting_result.id)
                  {
                     if(_loc6_.recipes[_loc11_] == 0)
                     {
                        _loc6_.recipes[_loc11_] = 1;
                        this.crafting_result.new_recipe = true;
                        break;
                     }
                  }
                  _loc11_++;
               }
               if(this.crafting_result.error != "")
               {
                  this.init("error","craft_too_diff");
                  return;
               }
               if(_loc26_)
               {
                  this.init("error","craft_limit");
                  return;
               }
               if(!_loc26_)
               {
                  if(!_loc6_.weapons[this.crafting_result.id])
                  {
                     _loc6_.weapons[this.crafting_result.id] = [1,{
                        "range":this.crafting_result.range,
                        "stolen":false,
                        "crafted":true
                     }];
                  }
                  else
                  {
                     ++_loc6_.weapons[this.crafting_result.id][0];
                     _loc6_.weapons[this.crafting_result.id][_loc6_.weapons[this.crafting_result.id][0]] = {
                        "range":this.crafting_result.range,
                        "stolen":false,
                        "crafted":true
                     };
                  }
                  if(this.FWP.player.achiev["crafted"])
                  {
                     ++this.FWP.player.achiev["crafted"];
                  }
                  else
                  {
                     this.FWP.player.achiev["crafted"] = 1;
                  }
               }
            }
            else
            {
               this.crafting_result.error = "";
            }
            _loc27_ = 0;
            _loc28_ = 1;
            while(_loc28_ <= 6)
            {
               if(this.weapon_stack[_loc28_].tp)
               {
                  if(this.weapon_stack[_loc28_].tp == "weapon")
                  {
                     _loc29_ = this.weapon_stack[_loc28_].id;
                     _loc30_ = Number(this.weapon_stack[_loc28_].range);
                     _loc31_ = this.weapon_stack[_loc28_].stolen;
                     _loc32_ = this.weapon_stack[_loc28_].crafted;
                     if(_loc6_.weapons[_loc29_])
                     {
                        _loc27_ += this.FWP.WEAPONS_DEF[_loc29_].gold;
                        _loc33_ = 1;
                        while(_loc33_ <= _loc6_.weapons[_loc29_][0])
                        {
                           if(_loc6_.weapons[_loc29_][_loc33_].range == _loc30_ && _loc6_.weapons[_loc29_][_loc33_].stolen == _loc31_ && _loc6_.weapons[_loc29_][_loc33_].crafted == _loc32_)
                           {
                              --_loc6_.weapons[_loc29_][0];
                              _loc6_.weapons[_loc29_][_loc33_] = {};
                              this.FWP.weapon_optimisation(_loc6_.weapons);
                              break;
                           }
                           _loc33_++;
                        }
                     }
                  }
                  else
                  {
                     _loc27_ += this.FWP.OBJ_DEF[this.weapon_stack[_loc28_].id].gold;
                     --_loc6_.objs[this.weapon_stack[_loc28_].id];
                     if(_loc6_.objs[this.weapon_stack[_loc28_].id] < 0)
                     {
                        _loc6_.objs[this.weapon_stack[_loc28_].id] = 0;
                     }
                  }
               }
               _loc28_++;
            }
            if(!this.crafting_result.success)
            {
               if((_loc34_ = 50 + _loc24_ * 10) > this.FWP.true_random(0,99))
               {
                  if(_loc27_ < 4000)
                  {
                     this.crafting_result.junk = [0,0];
                  }
                  else if(_loc27_ < 10000)
                  {
                     this.crafting_result.junk = [this.FWP.true_random(1,2),0];
                     _loc35_ = 1;
                     while(_loc35_ <= this.crafting_result.junk[0])
                     {
                        this.crafting_result.junk[_loc35_] = this.FWP.true_random(1,4);
                        _loc35_++;
                     }
                  }
                  else if(_loc27_ < 20000)
                  {
                     this.crafting_result.junk = [this.FWP.true_random(2,4),0];
                     _loc35_ = 1;
                     while(_loc35_ <= this.crafting_result.junk[0])
                     {
                        this.crafting_result.junk[_loc35_] = this.FWP.true_random(1,8);
                        _loc35_++;
                     }
                  }
                  else if(_loc27_ < 50000)
                  {
                     this.crafting_result.junk = [this.FWP.true_random(4,7),0];
                     _loc35_ = 1;
                     while(_loc35_ <= this.crafting_result.junk[0])
                     {
                        this.crafting_result.junk[_loc35_] = this.FWP.true_random(5,8);
                        _loc35_++;
                     }
                  }
                  else
                  {
                     this.crafting_result.junk = [this.FWP.true_random(7,10),0];
                     _loc35_ = 1;
                     while(_loc35_ <= this.crafting_result.junk[0])
                     {
                        this.crafting_result.junk[_loc35_] = this.FWP.true_random(5,10);
                        _loc35_++;
                     }
                  }
               }
               else
               {
                  this.crafting_result.junk = [0,0];
               }
            }
            if(this.crafting_result.junk[0] != 0)
            {
               _loc36_ = 1;
               while(_loc36_ <= this.crafting_result.junk[0])
               {
                  if(!_loc6_.objs["obj_junk" + String(this.crafting_result.junk[_loc36_])])
                  {
                     _loc6_.objs["obj_junk" + String(this.crafting_result.junk[_loc36_])] = 1;
                  }
                  else if(_loc6_.objs["obj_junk" + String(this.crafting_result.junk[_loc36_])] < this.FWP.OBJ_DEF["obj_junk" + String(this.crafting_result.junk[_loc36_])].limit)
                  {
                     ++_loc6_.objs["obj_junk" + String(this.crafting_result.junk[_loc36_])];
                  }
                  _loc36_++;
               }
            }
            this.FWP.weapon_optimisation(_loc6_.weapons);
            this.weapon_stack = [0,{},{},{},{},{},{}];
            this.weapon_diss = {};
            this.init("finish_crafting");
            this.FWP.execute_after = "render";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "craft_disassemble")
         {
            _loc24_ = 0;
            if(this.FWP.player.perks["crafting"])
            {
               _loc24_ = this.FWP.player.perks["crafting"];
            }
            if(this.FWP.player.spec == 4)
            {
               _loc24_ = 3;
            }
            _loc37_ = false;
            _loc11_ = 1;
            while(_loc11_ <= this.FWP.CRAFT_DEF[0])
            {
               if(this.FWP.CRAFT_DEF[_loc11_].result == this.weapon_diss.id)
               {
                  if(_loc6_.recipes[_loc11_] == 1)
                  {
                     _loc37_ = true;
                  }
                  break;
               }
               _loc11_++;
            }
            this.crafting_result = {};
            this.crafting_result.id = this.weapon_diss.id;
            this.crafting_result.range = Number(this.weapon_diss.range);
            this.crafting_result.error = "";
            this.crafting_result.new_recipe = !_loc37_;
            this.crafting_result.success = true;
            this.crafting_result.junk = [0,0];
            this.crafting_result.new_object = "";
            this.crafting_result.mode = "disassemble";
            _loc11_ = 1;
            while(_loc11_ <= this.FWP.CRAFT_DEF[0])
            {
               if(this.FWP.CRAFT_DEF[_loc11_].result == this.crafting_result.id)
               {
                  if(_loc6_.recipes[_loc11_] == 0)
                  {
                     _loc6_.recipes[_loc11_] = 1;
                     break;
                  }
               }
               _loc11_++;
            }
            if(_loc37_)
            {
               if((_loc38_ = 10 + _loc24_ * 20) > this.FWP.true_random(0,99))
               {
                  _loc39_ = [1,"obj_junk" + String(this.FWP.true_random(1,8))];
                  _loc11_ = 1;
                  while(_loc11_ <= this.FWP.CRAFT_DEF[0])
                  {
                     if(this.FWP.CRAFT_DEF[_loc11_].result == this.crafting_result.id)
                     {
                        _loc40_ = 1;
                        while(_loc40_ <= this.FWP.CRAFT_DEF[_loc11_].ingr[0])
                        {
                           if(this.FWP.CRAFT_DEF[_loc11_].ingr[_loc40_].search("obj_") != -1)
                           {
                              _loc41_ = 1;
                              if(this.FWP.WEAPONS_DEF[this.FWP.CRAFT_DEF[_loc11_].result].wpclass == 5)
                              {
                                 _loc41_ = 2;
                              }
                              if(this.FWP.WEAPONS_DEF[this.FWP.CRAFT_DEF[_loc11_].result].wpclass == 6)
                              {
                                 _loc41_ = 2;
                              }
                              if(this.FWP.WEAPONS_DEF[this.FWP.CRAFT_DEF[_loc11_].result].wpclass == 7)
                              {
                                 _loc41_ = 3;
                              }
                              if(this.FWP.WEAPONS_DEF[this.FWP.CRAFT_DEF[_loc11_].result].wpclass == 8)
                              {
                                 _loc41_ = 3;
                              }
                              _loc42_ = 1;
                              while(_loc42_ <= _loc41_)
                              {
                                 ++_loc39_[0];
                                 _loc39_[_loc39_[0]] = this.FWP.CRAFT_DEF[_loc11_].ingr[_loc40_];
                                 _loc42_++;
                              }
                           }
                           _loc40_++;
                        }
                     }
                     _loc11_++;
                  }
                  this.FWP.deep_trace(_loc39_);
                  this.crafting_result.new_object = _loc39_[this.FWP.true_random(1,_loc39_[0])];
               }
            }
            if(this.crafting_result.new_object != "")
            {
               if(!_loc6_.objs[this.crafting_result.new_object])
               {
                  _loc6_.objs[this.crafting_result.new_object] = 1;
               }
               else if(_loc6_.objs[this.crafting_result.new_object] < this.FWP.OBJ_DEF[this.crafting_result.new_object].limit)
               {
                  ++_loc6_.objs[this.crafting_result.new_object];
               }
            }
            _loc29_ = this.weapon_diss.id;
            _loc30_ = Number(this.weapon_diss.range);
            _loc31_ = this.weapon_diss.stolen;
            _loc32_ = this.weapon_diss.crafted;
            if(_loc6_.weapons[_loc29_])
            {
               _loc33_ = 1;
               while(_loc33_ <= _loc6_.weapons[_loc29_][0])
               {
                  if(_loc6_.weapons[_loc29_][_loc33_].range == _loc30_ && _loc6_.weapons[_loc29_][_loc33_].stolen == _loc31_ && _loc6_.weapons[_loc29_][_loc33_].crafted == _loc32_)
                  {
                     --_loc6_.weapons[_loc29_][0];
                     _loc6_.weapons[_loc29_][_loc33_] = {};
                     break;
                  }
                  _loc33_++;
               }
            }
            if(_loc6_.cur_task == 15)
            {
               _loc6_.cur_task = 16;
            }
            this.FWP.weapon_optimisation(_loc6_.weapons);
            this.weapon_stack = [0,{},{},{},{},{},{}];
            this.weapon_diss = {};
            this.init("finish_crafting");
            this.FWP.execute_after = "render";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "arsenal_sell")
         {
            this.cur_weapon = param1.target.parent.parent.name.split("weapon_")[1].split("%")[0];
            if(this.cur_weapon == "obj_red_book" || this.cur_weapon == "obj_orange_book" || this.cur_weapon == "obj_yellow_book" || this.cur_weapon == "obj_green_book" || this.cur_weapon == "obj_skyblue_book" || this.cur_weapon == "obj_blue_book" || this.cur_weapon == "obj_violet_book" || this.cur_weapon == "obj_white_book" || this.cur_weapon == "obj_black_book")
            {
               _loc7_ = this.FWP.OBJ_DEF;
               _loc8_ = _loc6_.objs;
               if(_loc6_.objs["obj_red_book"] == 1 && _loc6_.objs["obj_orange_book"] == 1 && _loc6_.objs["obj_yellow_book"] == 1 && _loc6_.objs["obj_green_book"] == 1 && _loc6_.objs["obj_skyblue_book"] == 1 && _loc6_.objs["obj_blue_book"] == 1 && _loc6_.objs["obj_violet_book"] == 1 && _loc6_.objs["obj_white_book"] == 1 && _loc6_.objs["obj_black_book"] == 1)
               {
                  _loc6_.objs["obj_red_book"] = 0;
                  _loc6_.objs["obj_orange_book"] = 0;
                  _loc6_.objs["obj_yellow_book"] = 0;
                  _loc6_.objs["obj_green_book"] = 0;
                  _loc6_.objs["obj_skyblue_book"] = 0;
                  _loc6_.objs["obj_blue_book"] = 0;
                  _loc6_.objs["obj_violet_book"] = 0;
                  _loc6_.objs["obj_white_book"] = 0;
                  _loc6_.objs["obj_black_book"] = 0;
                  _loc6_.gold.value += 3000000;
                  this.FWP.execute_after = "render";
                  this.FWP.init_save_params();
                  return;
               }
               this.init("error","collect_all_books");
               return;
            }
            if(this.shop_type == "weapons")
            {
               this.weapon_stack = [1,{
                  "id":this.cur_weapon,
                  "stat":param1.target.parent.parent.name.split("weapon_")[1].split("%")[1],
                  "range":param1.target.parent.parent.name.split("weapon_")[1].split("%")[2],
                  "upg_price":0
               },{},{},{},{},{}];
               this.init("sell_weapon");
               return;
            }
            if(this.shop_type == "help")
            {
               _loc7_ = this.FWP.STIM_DEF;
               _loc8_ = _loc6_.stim_behave;
            }
            if(this.shop_type == "flags")
            {
               _loc7_ = this.FWP.FLAGS_DEF;
               _loc8_ = _loc6_.flags;
            }
            if(this.shop_type == "rip")
            {
               _loc7_ = this.FWP.RIPS_DEF;
               _loc8_ = _loc6_.rip;
            }
            if(this.shop_type == "impl")
            {
               _loc7_ = this.FWP.IMPL_DEF;
               _loc8_ = _loc6_.impl;
            }
            if(this.shop_type == "objs")
            {
               _loc7_ = this.FWP.OBJ_DEF;
               _loc8_ = _loc6_.objs;
            }
            --_loc8_[this.cur_weapon];
            _loc6_.gold.value += this.get_sell_price(this.cur_weapon);
            this.cur_element = 0;
            if(_loc8_[this.cur_weapon] == 0)
            {
               if(this.shop_type == "flags")
               {
                  _loc6_.cur_flag = 0;
               }
               if(this.shop_type == "rip")
               {
                  _loc6_.cur_rip = 0;
               }
               if(this.shop_type == "impl")
               {
                  _loc6_.cur_impl = 0;
               }
            }
            this.FWP.execute_after = "render";
            this.FWP.init_save_params();
            return;
         }
         if(param1.target.name == "finish_sell")
         {
            this.cur_weapon = this.weapon_stack[1].id;
            _loc8_ = _loc6_.weapons;
            _loc43_ = this.weapon_stack[1].stat;
            _loc44_ = this.weapon_stack[1].range;
            _loc45_ = false;
            _loc46_ = false;
            if(_loc43_ == "c")
            {
               _loc46_ = true;
            }
            if(_loc43_ == "s")
            {
               _loc45_ = true;
            }
            if(_loc6_.weapons[this.cur_weapon])
            {
               _loc33_ = 1;
               while(_loc33_ <= _loc6_.weapons[this.cur_weapon][0])
               {
                  if(_loc6_.weapons[this.cur_weapon][_loc33_].range == _loc44_ && _loc6_.weapons[this.cur_weapon][_loc33_].stolen == _loc45_ && _loc6_.weapons[this.cur_weapon][_loc33_].crafted == _loc46_)
                  {
                     --_loc6_.weapons[this.cur_weapon][0];
                     _loc6_.weapons[this.cur_weapon][_loc33_] = {};
                     _loc6_.gold.value += this.get_sell_price(this.cur_weapon,_loc44_,_loc45_,_loc46_);
                     break;
                  }
                  _loc33_++;
               }
            }
            if(_loc46_)
            {
               ++_loc6_.today_craft_sells;
            }
            this.FWP.weapon_optimisation(_loc6_.weapons);
            this.FWP.execute_after = "remove";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "arsenal_upgrade")
         {
            this.weapon_stack = [1,{
               "id":param1.target.parent.parent.name.split("weapon_")[1].split("%")[0],
               "stat":param1.target.parent.parent.name.split("weapon_")[1].split("%")[1],
               "range":param1.target.parent.parent.name.split("weapon_")[1].split("%")[2],
               "upg_price":0
            },{},{},{},{},{}];
            this.init("upgrade_weapon");
            return;
         }
         if(param1.target.name == "finish_upgrade")
         {
            _loc47_ = this.weapon_stack[this.weapon_stack[0]].id;
            _loc48_ = this.weapon_stack[this.weapon_stack[0]].stat;
            _loc49_ = this.weapon_stack[this.weapon_stack[0]].range;
            _loc50_ = false;
            _loc51_ = false;
            if(_loc48_ == "c")
            {
               _loc51_ = true;
            }
            if(_loc48_ == "s")
            {
               _loc50_ = true;
            }
            _loc52_ = this.weapon_stack[this.weapon_stack[0]].upg_price;
            if(_loc6_.weapons[_loc47_])
            {
               _loc33_ = 1;
               while(_loc33_ <= _loc6_.weapons[_loc47_][0])
               {
                  if(_loc6_.weapons[_loc47_][_loc33_].range == _loc49_ && _loc6_.weapons[_loc47_][_loc33_].stolen == _loc50_ && _loc6_.weapons[_loc47_][_loc33_].crafted == _loc51_)
                  {
                     ++_loc6_.weapons[_loc47_][_loc33_].range;
                     _loc6_.gold.value -= _loc52_;
                     ++this.weapon_stack[this.weapon_stack[0]].range;
                     break;
                  }
                  _loc33_++;
               }
            }
            if(_loc6_.cur_task == 17)
            {
               _loc6_.cur_task = 18;
            }
            if(this.FWP.WEAPONS_DEF[_loc47_])
            {
               if(this.FWP.WEAPONS_DEF[_loc47_].wpclass > 1)
               {
                  if(this.FWP.player.achiev["upgraded"])
                  {
                     ++this.FWP.player.achiev["upgraded"];
                  }
                  else
                  {
                     this.FWP.player.achiev["upgraded"] = 1;
                  }
               }
            }
            this.FWP.weapon_optimisation(_loc6_.weapons);
            this.FWP.execute_after = "render";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "arsenal_use")
         {
            this.cur_weapon = param1.target.parent.parent.name.split("weapon_")[1].split("%")[0];
            if(this.shop_type == "objs")
            {
               _loc53_ = 0;
               _loc54_ = this.FWP.get_book_recipes(this.cur_weapon,"array");
               _loc2_ = 1;
               while(_loc2_ <= _loc54_[0])
               {
                  if(_loc6_.recipes[_loc54_[_loc2_]] == 0)
                  {
                     _loc6_.recipes[_loc54_[_loc2_]] = 1;
                     _loc53_++;
                  }
                  _loc2_++;
               }
               if(_loc53_ > 0)
               {
                  this.FWP.execute_after = "new recipes added";
                  this.FWP.init_save_params();
               }
               else
               {
                  this.init("error","new_recipes_fail");
               }
            }
            else
            {
               if(this.shop_type == "help")
               {
                  if(_loc6_.stim_to_fight[this.cur_weapon])
                  {
                     ++_loc6_.stim_to_fight[this.cur_weapon];
                  }
                  else
                  {
                     _loc6_.stim_to_fight[this.cur_weapon] = 1;
                  }
                  --_loc6_.stim_behave[this.cur_weapon];
                  if(_loc6_.stim_behave[this.cur_weapon] == 0)
                  {
                     this.cur_element = 0;
                  }
               }
               if(this.shop_type == "flags")
               {
                  _loc6_.cur_flag = this.cur_element;
               }
               if(this.shop_type == "rip")
               {
                  _loc6_.cur_rip = this.cur_element;
               }
               if(this.shop_type == "impl")
               {
                  _loc6_.cur_impl = this.cur_element;
               }
               this.FWP.execute_after = "render";
               this.FWP.init_save_params();
            }
         }
         if(param1.target.parent)
         {
            if(param1.target.parent.name.search("terr_zone_") != -1)
            {
               this.cur_element = Number(param1.target.parent.name.split("terr_zone_")[1]);
               this.render();
               return;
            }
         }
         if(param1.target.name == "assault_tribute")
         {
            this.init("tribute");
            return;
         }
         if(param1.target.name == "finish_tribute")
         {
            _loc55_ = 0;
            _loc55_ = (_loc56_ = this.FWP.get_tribute()).my_gold + _loc56_.clans_gold;
            _loc6_.gold.value += _loc55_;
            _loc6_.next_assault_payment = this.FWP.fwproject_time + 60 * 60;
            this.FWP.execute_after = "remove";
            this.FWP.init_save_params();
            return;
         }
         if(param1.target.name.search("shop_type_") != -1)
         {
            this.shop_type = param1.target.name.split("shop_type_")[1];
            this.cur_weapon = "";
            this.cur_element = -1;
            this.shop_page = 1;
            if(_loc4_.arsenal_weapon_container)
            {
               _loc4_.arsenal_weapon_container.y = 142;
            }
            if(_loc4_.slider)
            {
               _loc4_.slider.y = 157;
            }
            this.render();
            return;
         }
         if(param1.target.name.search("weapon") != -1 && (this.cur_screen[this.cur_screen[0]].name == "shop" || this.cur_screen[this.cur_screen[0]].name == "papa_shop") && param1.target.name != "weapon_name" && param1.target.name != "weapon_desc")
         {
            this.cur_weapon = param1.target.name.split("weapon_")[1];
            if(this.shop_type == "weapons")
            {
               _loc7_ = this.FWP.WEAPONS_DEF;
            }
            if(this.shop_type == "help")
            {
               _loc7_ = this.FWP.STIM_DEF;
            }
            if(this.shop_type == "flags")
            {
               _loc7_ = this.FWP.FLAGS_DEF;
            }
            if(this.shop_type == "rip")
            {
               _loc7_ = this.FWP.RIPS_DEF;
            }
            if(this.shop_type == "impl")
            {
               _loc7_ = this.FWP.IMPL_DEF;
            }
            if(this.shop_type == "objs")
            {
               _loc7_ = this.FWP.OBJ_DEF;
            }
            for(_loc57_ in _loc7_)
            {
               if(_loc57_ == this.cur_weapon)
               {
                  this.cur_element = _loc7_[_loc57_].id;
               }
            }
            this.render();
         }
         if(param1.target.parent.name.search("weapon") != -1 && param1.target.parent.parent.name == "in_game_weapon_container" && this.cur_screen[this.cur_screen[0]].name == "weapon_sheet")
         {
            this.click_arsenal(param1.target.parent.name.split("ingame_weapon_")[1]);
            return;
         }
         if(param1.target.name == "cancel")
         {
            this.FWP.init_save_map();
         }
         if(param1.target.name == "try_steal")
         {
            this.steal();
            return;
         }
         if(param1.target.name == "steal_close")
         {
            this.remove();
            return;
         }
         if(param1.target.name == "steal_luck")
         {
            if(this.return_steal_luck_prob() > this.FWP.true_random(0,100))
            {
               this.FWP.player.today_steals -= 20;
               this.FWP.player.tired -= 100;
               this.steal_state = "good_bye";
               this.FWP.execute_after = "render";
               this.FWP.init_save_params();
               return;
            }
            this.steal_state = "luck_fail";
            this.steal_try_luck = true;
            this.render();
            return;
         }
         if(param1.target.name == "steal_merch")
         {
            if(this.return_steal_merch_prob() > this.FWP.true_random(0,100))
            {
               this.FWP.player.today_steals -= 20;
               this.FWP.player.tired -= 100;
               this.steal_state = "good_bye";
               this.FWP.execute_after = "render";
               this.FWP.init_save_params();
               return;
            }
            this.steal_state = "merch_fail";
            this.steal_try_luck = true;
            this.steal_try_merch = true;
            this.render();
            return;
         }
         if(param1.target.name == "papa_ask")
         {
            this.FWP.player.papa_asked = 1;
            if(this.return_papa_ask_prob() > this.FWP.true_random(0,100))
            {
               this.papa_state = "time_win";
            }
            else
            {
               this.papa_state = "time_fail";
            }
            this.FWP.execute_after = "render";
            this.FWP.init_save_params();
            return;
         }
         if(param1.target.name == "papa_shop")
         {
            if(this.FWP.player.last_papa != 0)
            {
               this.papa_state = "shop_fail";
               this.render();
               return;
            }
            this.FWP.player.last_papa = this.FWP.user.unix_time;
            this.FWP.execute_after = "init papa shop";
            this.FWP.init_save_params();
            return;
         }
         if(param1.target.name == "papa_close")
         {
            this.FWP.PAPA_HERE = false;
            this.papa_state = "";
            this.remove();
            return;
         }
         if(param1.target.name == "save_names")
         {
            _loc2_ = 1;
            while(_loc2_ <= 5)
            {
               _loc6_["worm_name" + _loc2_] = _loc4_["worm_name" + _loc2_].text;
               _loc2_++;
            }
            this.FWP.execute_after = "render";
            this.FWP.init_save_params();
            return;
         }
         if(param1.target.name == "modify_filt")
         {
            this.opened_filter = !this.opened_filter;
            this.render();
            return;
         }
         if(param1.target.name == "change_music")
         {
            this.FWP.MUSIC = !this.FWP.MUSIC;
            this.FWP._sound.on_change("music");
            this.render();
         }
         if(param1.target.name == "change_sound")
         {
            this.FWP.SOUND = !this.FWP.SOUND;
            this.FWP._sound.on_change("sound");
            this.render();
         }
         if(param1.target.name == "add_team")
         {
            ++this.barracks.teams;
            ++this.barracks.worms;
            this.barracks["team" + this.barracks.teams].worms = 1;
            this.render();
         }
         if(param1.target.name == "remove_team")
         {
            this.barracks.worms -= this.barracks["team" + this.barracks.teams].worms;
            this.barracks["team" + this.barracks.teams].worms = 0;
            --this.barracks.teams;
            this.render();
         }
         if(param1.target.name.search("add_worm") != -1)
         {
            ++this.barracks["team" + Number(param1.target.name.split("add_worm")[1])].worms;
            ++this.barracks.worms;
            this.render();
         }
         if(param1.target.name.search("remove_worm") != -1)
         {
            --this.barracks["team" + Number(param1.target.name.split("remove_worm")[1])].worms;
            --this.barracks.worms;
            this.render();
         }
         if(param1.target.name == "meet_id")
         {
            if((_loc58_ = Number(_loc4_.id_to_meet.text)) > 0 && _loc4_.id_to_meet.text != "" && !isNaN(_loc58_))
            {
               this.init("user_info",_loc58_,"preload");
            }
         }
         if(param1.target.name == "rating")
         {
            this.init("rating");
         }
         if(param1.target.name == "view_perks")
         {
            this.init("view_perks");
         }
         if(param1.target.name == "open_wpsheet")
         {
            this.FWP._proc.call_open_wpsheet = true;
         }
         if(param1.target.name == "close_wpsheet")
         {
            this.FWP._proc.open_wpsheet();
         }
         if(param1.target.name == "cancel_fight")
         {
            this.FWP._proc.cancel_fight();
         }
         if(param1.target.name == "open_scaner")
         {
            this.open_scaner();
         }
         if(param1.target.name == "go")
         {
            this.FWP.prepare_game();
         }
         if(param1.target.name == "go_just")
         {
            _loc2_ = 1;
            while(_loc2_ <= this.barracks.teams)
            {
               _loc3_ = 1;
               while(_loc3_ <= this.barracks["team" + _loc2_].worms)
               {
                  this.barracks["team" + _loc2_]["worm" + _loc3_] = {
                     "attack":0,
                     "protect":0,
                     "health":100,
                     "spec":0,
                     "perks":{},
                     "name":"Червь #" + _loc3_
                  };
                  _loc3_++;
               }
               _loc2_++;
            }
            _loc59_ = this.FWP.TEAMS_DEF["just" + this.cur_element];
            this.barracks.map = _loc59_.map;
            this.barracks.water = _loc59_.water;
            this.barracks.bg_mode = _loc59_.bg_mode;
            this.barracks.bg_type = _loc59_.bg_type;
            this.barracks.worm_limit = 8;
            this.FWP.init_just_play();
         }
         if(param1.target.name == "assault_fight")
         {
            this.FWP._play_zone_stage = this.FWP.ASSAULT[this.cur_element].zone_stage;
            this.FWP.prepare_game(true);
         }
         if(param1.target.name == "donate")
         {
            this.init("pay");
         }
         if(param1.target.name == "top_by_level")
         {
            this.top_mode = 1;
            this.top_page = 1;
            this.FWP.net_get_top_members();
            return;
         }
         if(param1.target.name == "top_by_rating")
         {
            this.top_mode = 2;
            this.top_page = 1;
            this.FWP.net_get_top_members();
            return;
         }
         if(param1.target.name == "top_by_assault")
         {
            this.top_mode = 3;
            this.top_page = 1;
            this.FWP.net_get_top_members();
            return;
         }
         if(param1.target.name == "top_prev_page")
         {
            --this.top_page;
            this.FWP.net_get_top_members();
            return;
         }
         if(param1.target.name == "top_next_page")
         {
            ++this.top_page;
            this.FWP.net_get_top_members();
            return;
         }
         if(param1.target.name.search("wpslot_") != -1)
         {
            this.set_quick_weapon = param1.target.name.split("wpslot_")[1];
            this.render();
         }
         if(param1.target.name.search("wpclear_") != -1)
         {
            _loc6_.quick_weapons[param1.target.name.split("wpclear_")[1]] = 0;
            this.FWP.execute_after = "render";
            this.FWP.init_save_params();
         }
         if(param1.target.name.search("shop_set_") != -1)
         {
            this.shop_mode = param1.target.name.split("shop_set_")[1];
            this.cur_element = 0;
            this.shop_page = 1;
            this.opened_filter = false;
            this.render();
         }
         if(param1.target.name.search("perk_set_") != -1)
         {
            this.perks_mode = param1.target.name.split("perk_set_")[1];
            this.cur_element = 0;
            this.shop_page = 1;
            this.opened_filter = false;
            this.render();
         }
         if(param1.target.name == "learn_more_crafting")
         {
            this.wpedia_article = "crafting";
            this.init("wormpedia");
            return;
         }
         if(param1.target.name.search("wpedia_set_") != -1)
         {
            this.wpedia_article = param1.target.name.split("wpedia_set_")[1];
            this.render();
         }
         if(param1.target.name == "gsearch_button")
         {
            _loc60_ = param1.target.parent.name.split("gsearch_")[1];
            if(!this.graves_array[_loc60_].clicked && _loc60_ <= this.FWP.end_game.graves[0])
            {
               this.clicked_grave = _loc60_;
               this.FWP.grave_searching = true;
               this.FWP.grave_process = 0;
               this.render_grave_search();
               this.FWP.set_invisible_button(true);
            }
         }
         if(param1.target.name == "next_tutorial")
         {
            _loc4_.nextFrame();
         }
         if(param1.target.name == "close_tutorial")
         {
            if(!this.tutor_opened_by_user)
            {
               _loc6_.view_tutorial = 1;
               this.FWP.execute_after = "remove";
               this.FWP.init_save_params();
            }
            else
            {
               this.remove();
            }
         }
         if(param1.target.name == "view_tutorial")
         {
            this.tutor_opened_by_user = true;
            this.remove();
            this.init("view_tutorial");
         }
         if(param1.target.name == "view_tutorial_mf")
         {
            this.tutor_opened_by_user = true;
            this.init("view_tutorial");
         }
         if(param1.target.name == "gold_add")
         {
            ++this.DIAM_TO_TRANS;
            this.render();
         }
         if(param1.target.name == "gold_all")
         {
            this.DIAM_TO_TRANS = this.PLAYER_DIAM;
            this.render();
         }
         if(param1.target.name == "donate1")
         {
            this.FWP.player.diam.value = _loc6_.diam.value + 4;
            this.FWP.execute_after = "remove";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "donate3")
         {
            this.FWP.player.diam.value = _loc6_.diam.value + 12;
            this.FWP.execute_after = "remove";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "donate10")
         {
            this.FWP.player.diam.value = _loc6_.diam.value + 50;
            this.FWP.execute_after = "remove";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "donate25")
         {
            this.FWP.player.diam.value = _loc6_.diam.value + 120;
            this.FWP.execute_after = "remove";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "donate50")
         {
            this.FWP.player.diam.value = _loc6_.diam.value + 250;
            this.FWP.execute_after = "remove";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "donate100")
         {
            this.FWP.player.diam.value = _loc6_.diam.value + 600;
            this.FWP.execute_after = "remove";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "gold_pay")
         {
            this.FWP.player.diam.value = _loc6_.diam.value - this.DIAM_TO_TRANS;
            this.FWP.player.gold.value = _loc6_.gold.value + this.DIAM_TO_TRANS * 1100;
            this.FWP.execute_after = "remove";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "close_win_game")
         {
            this.remove();
            if(this.FWP.end_game.levels_upg != 0)
            {
               if(this.FWP.player.settings.no_animation == 0)
               {
                  this.FWP.execute_after_animation = "new level";
               }
               else
               {
                  this.init_new_level();
               }
            }
         }
         if(param1.target.name == "surprise_prev")
         {
            --this.cur_page;
            this.render();
         }
         if(param1.target.name == "surprise_next")
         {
            ++this.cur_page;
            this.render();
         }
         if(param1.target.name == "what_opened")
         {
            this.init_what_opened();
         }
         if(param1.target.name == "grave_search")
         {
            this.init_grave_search();
         }
         if(param1.target.name == "post_new_level")
         {
         }
         if(param1.target.name == "post_win_game")
         {
         }
         if(param1.target.name == "close_present")
         {
            _loc61_ = 1;
            if(this.FWP.ADMIN_FRIEND)
            {
               _loc61_ = 2;
            }
            if(_loc6_.tween == 1)
            {
               _loc6_.gold.value += 50 * _loc61_;
            }
            if(_loc6_.tween == 2)
            {
               _loc6_.gold.value += 100 * _loc61_;
            }
            if(_loc6_.tween == 3)
            {
               _loc6_.gold.value += 150 * _loc61_;
            }
            if(_loc6_.tween == 4)
            {
               _loc6_.gold.value += 200 * _loc61_;
            }
            if(_loc6_.tween == 5)
            {
               _loc6_.gold.value += 250 * _loc61_;
            }
            if(_loc6_.tween == 6)
            {
               _loc6_.gold.value += 300 * _loc61_;
            }
            if(_loc6_.tween == 7)
            {
               _loc6_.gold.value += 400 * _loc61_;
            }
            if(_loc6_.tween == 8)
            {
               _loc6_.gold.value += 500 * _loc61_;
            }
            if(_loc6_.tween == 9)
            {
               _loc6_.diam.value += 1 * _loc61_;
            }
            if(_loc6_.tween >= 10)
            {
               _loc6_.skill_pts.value += 5 * _loc61_;
               _loc6_.tween = 1;
            }
            this.FWP.execute_after = "remove";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "open_admin")
         {
            navigateToURL(new URLRequest("http://vkontakte.ru/delameter"),"_blank");
         }
         if(param1.target.name == "auc_demo")
         {
            navigateToURL(new URLRequest("http://vkontakte.ru/video-25789258_162157100"),"_blank");
         }
         if(param1.target.name.search("skill") != -1 && param1.target.name != "init_skills" && param1.target.name != "init_skills_main")
         {
            this.click_proceed("skill",Number(param1.target.name.split("skill")[1]));
         }
         if(param1.target.name == "change_hardcore")
         {
            if(_loc6_.settings.skill >= 10)
            {
               _loc6_.settings.skill -= 10;
            }
            else if(_loc6_.settings.skill < 10)
            {
               _loc6_.settings.skill += 10;
            }
            this.FWP.execute_after = "render";
            this.FWP.init_save_params();
            return;
         }
         if(param1.target.name == "change_animation")
         {
            if(_loc6_.settings.no_animation == 0)
            {
               _loc6_.settings.no_animation = 1;
            }
            else
            {
               _loc6_.settings.no_animation = 0;
            }
            this.FWP.execute_after = "render";
            this.FWP.init_save_params();
            return;
         }
         if(param1.target.name == "wormpedia")
         {
            this.init("wormpedia");
            return;
         }
         if(param1.target.name == "null_all" || param1.target.name == "reset_perks")
         {
            this.init("question",param1.target.name);
         }
         if(param1.target.name.search("init") != -1)
         {
            this.click_proceed(param1.target.name);
         }
         if(param1.target.name.search("upg_perk") != -1)
         {
            this.click_proceed("upg_perk",Number(param1.target.name.split("upg_perk")[1]));
         }
         if(param1.target.name.search("choose_perk") != -1)
         {
            this.click_proceed("choose_perk",Number(param1.target.parent.name));
         }
         if(param1.target.name.search("stim_to_fight") != -1)
         {
            this.click_proceed("stim_to_fight",param1.target.name.split("stim_to_fight_")[1]);
         }
         if(param1.target.name.search("add_perk") != -1)
         {
            this.click_proceed("init_choose_perk");
         }
         if(param1.target.name.search("buy_perk") != -1)
         {
            this.click_proceed("init_buy_perk");
         }
         if(param1.target.name.search("choose_task_button") != -1)
         {
            this.click_proceed("choose_task_button",Number(param1.target.parent.name));
         }
         if(param1.target.name == "click_task")
         {
            this.cur_element = Number(param1.target.parent.name);
            this.render();
            return;
         }
         if(param1.target.name == "choose_spec")
         {
            this.init("choose_spec");
            return;
         }
         if(param1.target.name == "spec_learn_more")
         {
            this.init("spec_learn_more");
            return;
         }
         if(param1.target.name.search("click_spec_") != -1)
         {
            _loc6_.spec = Number(param1.target.name.split("click_spec_")[1]);
            _loc4_.finish_choose_spec.visible = true;
            _loc2_ = 1;
            while(_loc2_ <= 4)
            {
               _loc4_["clicked_spec_" + _loc2_].visible = _loc2_ == _loc6_.spec;
               _loc2_++;
            }
            return;
         }
         if(param1.target.name == "finish_choose_spec")
         {
            this.FWP.improve_spec();
            this.FWP.execute_after = "remove";
            this.FWP.init_save_params();
            return;
         }
         if(param1.target.name == "career")
         {
            this.remove();
            this.init("fight","career");
         }
         if(param1.target.name == "missions")
         {
            this.remove();
            this.init("fight","missions");
         }
         if(param1.target.name == "survival")
         {
            this.remove();
            this.init("fight","survival");
         }
         if(param1.target.name == "boss")
         {
            this.remove();
            this.init("fight","boss");
         }
         if(param1.target.name.search("page") != -1)
         {
            this.shop_page = Number(param1.target.name.split("page")[1]);
            this.cur_element = 0;
            this.render();
         }
         if(param1.target.name.search("clickperk") != -1)
         {
            this.cur_weapon = param1.target.name.split("clickperk_")[1];
            for(_loc62_ in this.FWP.PERKS_DEF)
            {
               if(_loc62_ == this.cur_weapon)
               {
                  this.cur_element = this.FWP.PERKS_DEF[_loc62_].id;
               }
            }
            this.render();
            return;
         }
         if(param1.target.name == "close")
         {
            this.remove();
         }
         if(param1.target.name == "close_to_mf")
         {
            this.remove();
            this.init("mainframe");
         }
         if(param1.target.name == "close_to_assault")
         {
            this.remove_all();
            this.init("assault");
         }
         if(param1.target.name == "scaner_teams")
         {
            this.remove();
            this.init("scaner","teams");
         }
         if(param1.target.name == "scaner_worms")
         {
            this.remove();
            this.init("scaner","worms");
         }
         if(param1.target.name == "close_scaner")
         {
            this.remove();
            this.FWP._proc.GAME_FREEZE = false;
            this.FWP.stage_focus();
         }
         if(param1.target.name == "restore")
         {
            this.FWP.refresh_temp_params();
            this.render();
         }
         if(param1.target.name == "save")
         {
            _loc63_ = this.FWP.save_temp_params();
            this.changes_made = false;
            if(_loc63_.new_perks > 0)
            {
               if(this.FWP.player.cur_task == 13)
               {
                  this.FWP.player.cur_task = 14;
               }
               if(this.FWP.player.cur_task == 22)
               {
                  this.FWP.player.cur_task = 23;
               }
            }
            if(_loc63_.health_or_worms)
            {
               if(this.FWP.player.cur_task == 19)
               {
                  this.FWP.player.cur_task = 20;
               }
            }
            this.FWP.execute_after = "render";
            this.FWP.init_save_params();
         }
         if(param1.target.name == "refresh")
         {
            this.FWP.execute_after = "render";
            this.FWP.init_refresh();
         }
         if(param1.target.name == "refresh_papa")
         {
            this.papa_checked = true;
            this.FWP.execute_after = "render";
            this.FWP.init_refresh();
         }
         if(param1.target.name == "add_attack")
         {
            _loc5_.attack.value += 1;
            _loc5_.skill_pts.value -= this.FWP.get_attack_cost(_loc5_.attack.value - 1);
            this.changes_made = true;
            this.render();
         }
         if(param1.target.name == "add_protect")
         {
            _loc5_.protect.value += 1;
            _loc5_.skill_pts.value -= this.FWP.get_attack_cost(_loc5_.protect.value - 1);
            this.changes_made = true;
            this.render();
         }
         if(param1.target.name == "add_health")
         {
            _loc5_.health.value += 1;
            _loc5_.skill_pts.value -= 30;
            this.changes_made = true;
            this.render();
         }
         if(param1.target.name == "add_team_worm")
         {
            _loc5_.worms.value += 1;
            _loc5_.skill_pts.value -= 150;
            this.changes_made = true;
            this.render();
         }
         if(param1.target.name == "buy_gold" || param1.target.name == "buy_diam")
         {
            if(this.cur_screen[this.cur_screen[0]].name == "buy_perk")
            {
               _loc9_ = 0;
               _loc10_ = 0;
               if(_loc5_.perk_slots == 2)
               {
                  _loc9_ = 500;
                  _loc10_ = 1;
               }
               if(_loc5_.perk_slots == 3)
               {
                  _loc9_ = 1000;
                  _loc10_ = 1;
               }
               if(_loc5_.perk_slots == 4)
               {
                  _loc9_ = 5000;
                  _loc10_ = 5;
               }
               if(_loc5_.perk_slots == 5)
               {
                  _loc9_ = 10000;
                  _loc10_ = 10;
               }
               if(_loc5_.perk_slots == 6)
               {
                  _loc9_ = 20000;
                  _loc10_ = 20;
               }
               if(_loc5_.perk_slots == 7)
               {
                  _loc9_ = 40000;
                  _loc10_ = 40;
               }
               if(_loc5_.perk_slots == 8)
               {
                  _loc9_ = 60000;
                  _loc10_ = 60;
               }
               ++_loc5_.perk_slots;
               if(param1.target.name == "buy_gold")
               {
                  _loc5_.gold.value -= _loc9_;
               }
               if(param1.target.name == "buy_diam")
               {
                  _loc5_.diam.value -= _loc10_;
               }
               this.changes_made = true;
               this.remove();
            }
            if(this.cur_screen[this.cur_screen[0]].name == "shop")
            {
               _loc64_ = 1;
               if(_loc6_.perks["merchant"])
               {
                  _loc64_ = this.FWP.get_perk_effect("merchant",_loc6_.perks.merchant,"");
               }
               if(this.shop_type == "impl")
               {
                  _loc64_ = 1;
               }
               if(this.shop_type == "weapons")
               {
                  _loc7_ = this.FWP.WEAPONS_DEF;
                  _loc8_ = _loc6_.weapons;
               }
               if(this.shop_type == "help")
               {
                  _loc7_ = this.FWP.STIM_DEF;
                  _loc8_ = _loc6_.stim_behave;
               }
               if(this.shop_type == "flags")
               {
                  _loc7_ = this.FWP.FLAGS_DEF;
                  _loc8_ = _loc6_.flags;
               }
               if(this.shop_type == "rip")
               {
                  _loc7_ = this.FWP.RIPS_DEF;
                  _loc8_ = _loc6_.rip;
               }
               if(this.shop_type == "impl")
               {
                  _loc7_ = this.FWP.IMPL_DEF;
                  _loc8_ = _loc6_.impl;
               }
               if(this.shop_type == "objs")
               {
                  _loc7_ = this.FWP.OBJ_DEF;
                  _loc8_ = _loc6_.objs;
               }
               _loc9_ = Math.round(_loc7_[this.cur_weapon].gold * _loc64_);
               _loc10_ = Math.round(_loc7_[this.cur_weapon].diam * _loc64_);
               if(this.shop_type == "weapons")
               {
                  if(!_loc8_[this.cur_weapon])
                  {
                     _loc8_[this.cur_weapon] = [1,{
                        "range":1,
                        "stolen":false,
                        "crafted":false
                     }];
                  }
                  else
                  {
                     ++_loc8_[this.cur_weapon][0];
                     _loc8_[this.cur_weapon][_loc8_[this.cur_weapon][0]] = {
                        "range":1,
                        "stolen":false,
                        "crafted":false
                     };
                  }
                  this.FWP.weapon_optimisation(_loc8_);
               }
               else if(!_loc8_[this.cur_weapon])
               {
                  _loc8_[this.cur_weapon] = 1;
               }
               else
               {
                  ++_loc8_[this.cur_weapon];
               }
               if(this.shop_type == "flags")
               {
                  _loc6_.cur_flag = _loc7_[this.cur_weapon].id;
                  if(_loc6_.cur_task == 7)
                  {
                     _loc6_.cur_task = 8;
                  }
               }
               if(this.shop_type == "rip")
               {
                  _loc6_.cur_rip = _loc7_[this.cur_weapon].id;
               }
               if(this.shop_type == "impl")
               {
                  _loc6_.cur_impl = _loc7_[this.cur_weapon].id;
                  if(_loc6_.cur_task == 29)
                  {
                     _loc6_.cur_task = 30;
                  }
               }
               if(this.shop_type == "help" && _loc6_.cur_task == 2)
               {
                  _loc6_.cur_task = 3;
               }
               if(param1.target.name == "buy_gold")
               {
                  _loc6_.gold.value -= _loc9_;
               }
               if(param1.target.name == "buy_diam")
               {
                  _loc6_.diam.value -= _loc10_;
               }
               if(this.shop_type == "weapons")
               {
                  if(_loc7_[this.cur_weapon].wpclass > 1)
                  {
                     if(this.FWP.player.achiev["buys"])
                     {
                        ++this.FWP.player.achiev["buys"];
                     }
                     else
                     {
                        this.FWP.player.achiev["buys"] = 1;
                     }
                  }
                  if(_loc7_[this.cur_weapon].wpclass >= 2 && _loc6_.cur_task == 4)
                  {
                     _loc6_.cur_task = 5;
                  }
                  if(_loc7_[this.cur_weapon].wpclass >= 3 && _loc6_.cur_task == 10)
                  {
                     _loc6_.cur_task = 11;
                  }
                  if(_loc7_[this.cur_weapon].wpclass >= 4 && _loc6_.cur_task == 16)
                  {
                     _loc6_.cur_task = 17;
                  }
                  if(_loc7_[this.cur_weapon].wptype == "h" && _loc6_.cur_task == 21)
                  {
                     _loc6_.cur_task = 22;
                  }
                  if(_loc8_[this.cur_weapon][0] == 1)
                  {
                     this.FWP.new_weapon = this.cur_weapon;
                     this.FWP.execute_after = "post new weapon";
                  }
                  else
                  {
                     this.FWP.execute_after = "render";
                  }
               }
               else
               {
                  this.FWP.execute_after = "render";
               }
               this.FWP.init_save_params();
            }
            if(this.cur_screen[this.cur_screen[0]].name == "papa_shop")
            {
               if(this.shop_type == "weapons")
               {
                  _loc7_ = this.FWP.WEAPONS_DEF;
                  _loc8_ = _loc6_.weapons;
                  _loc65_ = 0.6;
               }
               if(this.shop_type == "objs")
               {
                  _loc7_ = this.FWP.OBJ_DEF;
                  _loc8_ = _loc6_.objs;
                  _loc65_ = 1;
               }
               _loc9_ = Math.round(_loc7_[this.cur_weapon].gold * _loc65_);
               _loc10_ = Math.round(_loc7_[this.cur_weapon].diam * _loc65_);
               if(this.shop_type == "weapons")
               {
                  if(!_loc8_[this.cur_weapon])
                  {
                     _loc8_[this.cur_weapon] = [1,{
                        "range":1,
                        "stolen":false,
                        "crafted":false
                     }];
                  }
                  else
                  {
                     ++_loc8_[this.cur_weapon][0];
                     _loc8_[this.cur_weapon][_loc8_[this.cur_weapon][0]] = {
                        "range":1,
                        "stolen":false,
                        "crafted":false
                     };
                  }
                  this.FWP.weapon_optimisation(_loc8_);
               }
               else if(!_loc8_[this.cur_weapon])
               {
                  _loc8_[this.cur_weapon] = 1;
               }
               else
               {
                  ++_loc8_[this.cur_weapon];
               }
               if(param1.target.name == "buy_gold")
               {
                  _loc6_.gold.value -= _loc9_;
               }
               if(param1.target.name == "buy_diam")
               {
                  _loc6_.diam.value -= _loc10_;
               }
               if(this.FWP.player.achiev["buys"])
               {
                  ++this.FWP.player.achiev["buys"];
               }
               else
               {
                  this.FWP.player.achiev["buys"] = 1;
               }
               if(this.shop_type == "weapons")
               {
                  if(_loc8_[this.cur_weapon][0] == 1)
                  {
                     this.FWP.new_weapon = this.cur_weapon;
                     this.FWP.execute_after = "post new weapon";
                  }
                  else
                  {
                     this.FWP.execute_after = "render";
                  }
               }
               else
               {
                  this.FWP.execute_after = "render";
               }
               this.FWP.init_save_params();
            }
         }
         if(param1.target.name == "add_p")
         {
            for(_loc66_ in this.FWP.PERKS_DEF)
            {
               if(_loc66_ == this.cur_weapon)
               {
                  break;
               }
            }
            _loc5_.perks[_loc66_] = 1;
            _loc5_.perk_pts.value -= this.FWP.PERKS_DEF[_loc66_].upg[0];
            this.changes_made = true;
            this.remove();
         }
         if(param1.target.name == "proceed")
         {
            if(this.question_mode == "reset_perks")
            {
               this.FWP.reset_perks();
               this.FWP.execute_after = "remove";
               this.FWP.init_save_params();
            }
            if(this.question_mode == "null_all")
            {
               this.FWP.create_new_params("null");
               this.FWP.execute_after = "remove";
               this.FWP.init_save_params();
            }
         }
         if(param1.target.name == "check_replay")
         {
            this.temp_replay_string = _loc4_.replay_text.text;
            _loc4_.caution.text = "Запись повреждена, проиграть невозможно.";
            if(this.FWP.check_replay_string(this.temp_replay_string).state)
            {
               _loc4_.go_replay.visible = true;
               _loc4_.replay_info_zone.visible = true;
               this.bitmap_datas["replay_weapons"].fillRect(new Rectangle(0,0,this.bitmap_datas["replay_weapons"].width,this.bitmap_datas["replay_weapons"].height),0);
               _loc67_ = this.FWP.check_replay_string(this.temp_replay_string);
               _loc4_.replay_info_zone.attack.text = _loc67_.params.attack;
               _loc4_.replay_info_zone.protect.text = _loc67_.params.protect;
               _loc4_.replay_info_zone.health.text = _loc67_.params.health;
               _loc4_.replay_info_zone.worms.text = _loc67_.params.worms;
               _loc2_ = 0;
               _loc68_ = 0;
               _loc69_ = new Array();
               _loc70_ = 1;
               for(_loc88_ in _loc67_.params.weapons)
               {
                  if(_loc67_.params.weapons[_loc88_] > 0 && _loc88_ != "skip_go")
                  {
                     _loc69_[_loc68_] = {
                        "id":_loc88_,
                        "diam":(this.FWP.WEAPONS_DEF[_loc88_].diam == 0 ? 30 : this.FWP.WEAPONS_DEF[_loc88_].diam)
                     };
                     if(this.FWP.WEAPONS_DEF[_loc88_].wpclass > _loc70_)
                     {
                        _loc70_ = this.FWP.WEAPONS_DEF[_loc88_].wpclass;
                     }
                     _loc68_++;
                  }
               }
               _loc4_.replay_info_zone.wpclass.text = _loc70_;
               _loc4_.replay_info_zone.turns.text = _loc67_.params.turns;
               _loc4_.replay_info_zone.skill_level.text = _loc67_.params.skill_level;
               _loc69_.sortOn("diam",Array.DESCENDING | Array.NUMERIC);
               _loc71_ = 0;
               while(_loc71_ < _loc68_)
               {
                  _loc88_ = _loc69_[_loc71_].id;
                  if(_loc67_.params.weapons[_loc88_] > 0)
                  {
                     _loc2_++;
                     if(_loc2_ > 10)
                     {
                        break;
                     }
                     if(_loc2_ < 6)
                     {
                        _loc76_ = 2 + (_loc2_ - 1) * 50;
                        _loc77_ = 2;
                     }
                     else
                     {
                        _loc76_ = 2 + (_loc2_ - 6) * 50;
                        _loc77_ = 52;
                     }
                     _loc78_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc88_].id).i;
                     _loc79_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc88_].id).j;
                     this.bitmap_datas["replay_weapons"].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc79_ - 1),1 + 44 * (_loc78_ - 1),43,42),new Point(_loc76_,_loc77_));
                     this.bitmap_datas["replay_weapons"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(_loc76_ - 2,_loc77_ - 2),null,null,true);
                  }
                  _loc71_++;
               }
               _loc72_ = _loc67_.play_type;
               _loc73_ = Number(_loc67_.play_id);
               if(_loc72_ == "career")
               {
                  _loc74_ = this.FWP.TEAMS_DEF["career" + _loc73_];
               }
               if(_loc72_ == "missions")
               {
                  _loc74_ = this.FWP.TEAMS_DEF["mission" + _loc73_];
               }
               if(_loc72_ == "survival")
               {
                  _loc74_ = this.FWP.TEAMS_DEF["survival" + _loc73_];
               }
               if(_loc72_ == "boss")
               {
                  _loc74_ = this.FWP.TEAMS_DEF["boss" + _loc73_];
               }
               _loc75_ = this.get_minimap_coords(_loc72_,this.cur_element);
               this.MainBitmapData.copyPixels(_loc75_,new Rectangle(0,0,342,154),new Point(0,0));
               _loc75_.dispose();
               _loc75_ = null;
               _loc4_.replay_text.type = TextFieldType.DYNAMIC;
               _loc4_.replay_text.textColor = 6710886;
               _loc4_.replay_text.selectable = false;
               if(_loc72_ == "career")
               {
                  _loc4_.caution.text = "Карьера №" + _loc73_ + " . Нажмите кнопку \"Вперед !\"";
               }
               else if(_loc72_ == "missions")
               {
                  _loc4_.caution.text = "Миссия №" + _loc73_ + " . Нажмите кнопку \"Вперед !\"";
               }
               else if(_loc72_ == "survival")
               {
                  _loc4_.caution.text = "Выживание №" + _loc73_ + " . Нажмите кнопку \"Вперед !\"";
               }
               else
               {
                  _loc4_.caution.text = "Босс №" + _loc73_ + " . Нажмите кнопку \"Вперед !\"";
               }
            }
         }
         if(param1.target.name == "go_replay")
         {
            this.FWP.REPLAY_STRING = this.temp_replay_string;
            this.FWP.prepare_replay();
            return;
         }
         if(param1.target.parent)
         {
            if(param1.target.parent.name == "get_replay_clip")
            {
               this.FWP.save_replay();
               _loc4_.get_replay_clip.visible = false;
            }
         }
         if(param1.target.name == "clan_info")
         {
            this.opened_clan = Number(param1.target.parent.name);
            this.FWP.net_get_clan_members(this.opened_clan);
         }
         if(param1.target.name == "open_note")
         {
            _loc4_.replay_text.text = this.FWP.USER_NOTES[Number(param1.target.parent.name)].text;
            _loc4_.replay_text.type = TextFieldType.INPUT;
            _loc4_.replay_text.textColor = 0;
            _loc4_.replay_text.selectable = true;
            _loc4_.caution.text = "";
            this.MainBitmapData.fillRect(new Rectangle(0,0,this.MainBitmap.width,this.MainBitmap.height),0);
            _loc4_.go_replay.visible = false;
            _loc4_.replay_info_zone.visible = false;
         }
         if(param1.target.name == "user_info")
         {
            return;
         }
         if(param1.target.name == "open_page")
         {
            navigateToURL(new URLRequest("http://vkontakte.ru/id" + String(this.opened_user_uid)),"_blank");
         }
         if(param1.target.name.search("bet") != -1)
         {
            _loc81_ = param1.target.name.split("_")[1];
            _loc82_ = Number(param1.target.name.split("_")[2]);
            if(_loc6_[_loc81_].value >= _loc82_)
            {
               _loc6_[_loc81_].value -= _loc82_;
               _loc83_ = this.FWP.ROUL_VER[_loc81_ + "_" + String(_loc82_)];
               _loc84_ = new Array(_loc83_[0],0);
               this.FWP.get_roul = 0;
               this.FWP.roul_weapon = "";
               _loc2_ = 1;
               while(_loc2_ <= 7)
               {
                  _loc84_[_loc2_] = _loc83_[_loc2_] + _loc84_[_loc2_ - 1];
                  _loc2_++;
               }
               _loc85_ = this.FWP.true_random(0,99);
               _loc3_ = 0;
               while(_loc3_ <= 7)
               {
                  if(_loc85_ < _loc84_[_loc3_])
                  {
                     this.FWP.get_roul = _loc3_;
                     break;
                  }
                  _loc3_++;
               }
               _loc86_ = 0;
               if(this.FWP.get_roul != 0)
               {
                  do
                  {
                     _loc87_ = this.FWP.true_random(1,200);
                     for(_loc88_ in this.FWP.WEAPONS_DEF)
                     {
                        if(this.FWP.WEAPONS_DEF[_loc88_].id == _loc87_ && this.FWP.WEAPONS_DEF[_loc88_].id != 61 && _loc88_.search("rez") == -1)
                        {
                           if(this.FWP.WEAPONS_DEF[_loc88_].wpclass == _loc3_)
                           {
                              this.FWP.roul_weapon = _loc88_;
                           }
                        }
                     }
                  }
                  while(this.FWP.roul_weapon == "");
                  
                  if(this.FWP.player.weapons[this.FWP.roul_weapon] && this.FWP.player.weapons[this.FWP.roul_weapon][0] < this.FWP.WEAPONS_DEF[this.FWP.roul_weapon].limit)
                  {
                     ++this.FWP.player.weapons[this.FWP.roul_weapon][0];
                     this.FWP.player.weapons[this.FWP.roul_weapon][this.FWP.player.weapons[this.FWP.roul_weapon][0]] = {
                        "range":1,
                        "stolen":false,
                        "crafted":false
                     };
                     _loc86_++;
                  }
                  else if(!this.FWP.player.weapons[this.FWP.roul_weapon])
                  {
                     this.FWP.player.weapons[this.FWP.roul_weapon] = [1,{
                        "range":1,
                        "stolen":false,
                        "crafted":false
                     }];
                     _loc86_++;
                  }
               }
               if(this.FWP.player.achiev["wins"])
               {
                  this.FWP.player.achiev["wins"] += _loc86_;
               }
               else
               {
                  this.FWP.player.achiev["wins"] = _loc86_;
               }
               if(this.FWP.player.cur_task == 11)
               {
                  this.FWP.player.cur_task = 12;
               }
               this.FWP.execute_after = "init roul result";
               this.FWP.init_save_params();
            }
         }
      }
      
      public function click_proceed(param1:String, param2:* = 0) : *
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc3_:* = this.cur_screen[this.cur_screen[0]].link;
         _loc4_ = this.FWP.temp_player;
         _loc5_ = this.FWP.player;
         if(param1.search("init") != -1)
         {
            if(param1 == "init_replay")
            {
               return;
            }
            if(param1 == "init_arsenal" || param1 == "init_crafting" || param1 == "init_skills" || param1 == "init_perks" || param1 == "init_achiev" || param1 == "init_skills_main" || param1 == "init_fight" || param1 == "init_shop" || param1 == "init_friends" || param1 == "init_roul" || param1 == "init_top" || param1 == "init_assault" || param1 == "init_tasks")
            {
               this.remove_all();
            }
            this.init(param1.split("init_")[1],"career");
         }
         if(param1 == "upg_perk")
         {
            _loc6_ = param2;
            if((_loc7_ = _loc4_.perks[this.perk_places[_loc6_]]) >= 1 && _loc7_ < this.FWP.PERKS_DEF[this.perk_places[_loc6_]].max_lim && _loc4_.perk_pts.value >= this.FWP.PERKS_DEF[this.perk_places[_loc6_]].upg[_loc7_])
            {
               _loc4_.perk_pts.value -= this.FWP.PERKS_DEF[this.perk_places[_loc6_]].upg[_loc7_];
               ++_loc4_.perks[this.perk_places[_loc6_]];
               this.changes_made = true;
               this.render();
            }
         }
         if(param1 == "skill" && _loc5_.settings.skill != param2)
         {
            _loc8_ = 0;
            if(_loc5_.settings.skill >= 10)
            {
               _loc8_ = 10;
            }
            _loc5_.settings.skill = param2 + _loc8_;
            this.FWP.execute_after = "render";
            this.FWP.init_save_params();
         }
         if(param1 == "choose_spec")
         {
            _loc4_.spec = this.FWP.wptype_to_spec(param2);
            this.render();
         }
         if(param1 == "choose_perk")
         {
            for(_loc9_ in this.FWP.PERKS_DEF)
            {
               if(this.FWP.PERKS_DEF[_loc9_].id == Number(param2))
               {
                  break;
               }
            }
            _loc4_.perks[_loc9_] = 1;
            _loc4_.perk_pts.value -= this.FWP.PERKS_DEF[_loc9_].upg[0];
            this.changes_made = true;
            this.remove();
         }
         if(param1 == "choose_task_button")
         {
            this.cur_element = param2;
            this.render();
         }
         if(param1 == "stim_to_fight")
         {
            if(_loc5_.stim_to_fight[param2])
            {
               ++_loc5_.stim_to_fight[param2];
            }
            else
            {
               _loc5_.stim_to_fight[param2] = 1;
            }
            --_loc5_.stim_behave[param2];
            this.FWP.execute_after = "render";
            this.FWP.init_save_params();
         }
      }
      
      public function click_arsenal(param1:String) : *
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
         var _loc2_:* = this.cur_screen[this.cur_screen[0]].link;
         _loc4_ = this.FWP.player;
         if(this.FWP._proc.mousecontrol)
         {
            return;
         }
         _loc5_ = Number(this.FWP.WEAPONS_DEF[param1.split("%")[0]].id);
         _loc6_ = Number(param1.split("%")[2]);
         _loc7_ = this.FWP._proc.teams;
         _loc8_ = this.FWP._proc.cur_team;
         _loc9_ = 0;
         if(_loc4_.perks["fast_temp"])
         {
            _loc9_ = this.FWP.get_perk_effect("fast_temp",_loc4_.perks.fast_temp,"");
         }
         for(_loc10_ in this.FWP.WEAPONS_DEF)
         {
            if(this.FWP.WEAPONS_DEF[_loc10_].id == _loc5_)
            {
               _loc11_ = _loc10_;
            }
         }
         if(this.FWP.WEAPONS_DEF[_loc11_].delay - _loc9_ - _loc7_[_loc8_].turns > 0)
         {
            return;
         }
         this.FWP._proc.close_wpsheet(_loc5_,_loc6_);
      }
      
      public function mouse_event(param1:MouseEvent) : *
      {
         var _loc2_:* = undefined;
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
         _loc2_ = this.cur_screen[this.cur_screen[0]].link;
         var _loc3_:* = this.FWP.temp_player;
         _loc4_ = this.FWP.player;
         if(param1.target.name == "button_down" || param1.target.name == "button_up" || param1.target.name == "button_left" || param1.target.name == "button_right")
         {
            if(param1.type == "mouseDown")
            {
               this.map_moving = param1.target.name;
               addEventListener(Event.ENTER_FRAME,this.move_world_map,false,0,true);
               param1.target.addEventListener(MouseEvent.MOUSE_OUT,this.stop_moving,false,0,true);
            }
            if(param1.type == "mouseUp")
            {
               this.map_moving = "";
               removeEventListener(Event.ENTER_FRAME,this.move_world_map);
            }
         }
         _loc5_ = {
            "my_level":0,
            "init_tired":0,
            "my_exp":0,
            "my_rating":0,
            "skill_pts":0,
            "perk_pts":0,
            "sell":0,
            "diam_add":0,
            "diam_all":0,
            "gold_add":0,
            "gold_all":0,
            "view_perks":0,
            "award_magnet":0,
            "award_contest":0,
            "award_tester":0,
            "try_steal":0,
            "career":0,
            "missions":0,
            "survival":0,
            "boss":0,
            "init_just_play":0,
            "skill_attack":0,
            "skill_protect":0,
            "skill_health":0,
            "open_wpsheet":0,
            "cancel_fight":0,
            "open_scaner":0,
            "hardcore_popup":0,
            "achiev_range_popup":0,
            "assault_diff_popup":0,
            "clans_rating":0,
            "click_auc":0
         };
         _loc6_ = param1.target.name;
         _loc8_ = "";
         if(_loc6_ == "init_tasks" && param1.target.parent.name == "announcement_task")
         {
            _loc8_ = "announcement_task";
         }
         if(_loc6_ == "init_achiev" && param1.target.parent.name == "announcement_achiev")
         {
            _loc8_ = "announcement_achiev";
         }
         if(_loc6_ in _loc5_ || _loc8_ != "" || _loc6_.search("buy_perk") != -1 || _loc6_.search("add_perk") != -1 || _loc6_.search("upg_perk") != -1 || _loc6_.search("upg_inact_perk") != -1 || _loc6_.search("perk_box") != -1 || _loc6_.search("stim_desc") != -1)
         {
            if((_loc7_ = this.popup_modify(_loc8_ != "" ? _loc8_ : param1.target.name)) && param1.type == "mouseOver")
            {
               this.popup_displace();
               addEventListener(Event.ENTER_FRAME,this.popup_displace);
               this.popup.visible = true;
            }
            if(param1.type == "mouseOut")
            {
               removeEventListener(Event.ENTER_FRAME,this.popup_displace);
               this.popup.visible = false;
            }
         }
         if(param1.target.parent.name == "get_replay_clip")
         {
            if((_loc7_ = this.popup_modify(param1.target.parent.name)) && param1.type == "mouseOver")
            {
               this.popup_displace();
               addEventListener(Event.ENTER_FRAME,this.popup_displace,false,0,true);
               this.popup.visible = true;
            }
            if(param1.type == "mouseOut")
            {
               removeEventListener(Event.ENTER_FRAME,this.popup_displace);
               this.popup.visible = false;
            }
         }
         if(param1.target.parent)
         {
            if(param1.target.parent.parent)
            {
               if(param1.target.parent.name.search("weapon") != -1 && (param1.target.parent.parent.name == "arsenal_weapon_container" || param1.target.parent.parent.name == "in_game_weapon_container") || param1.target.parent.name == "weapon_functions")
               {
                  if(param1.target.parent.name == "weapon_functions")
                  {
                     _loc9_ = param1.target.parent.parent;
                  }
                  else
                  {
                     _loc9_ = param1.target.parent;
                  }
                  _loc12_ = 1;
                  if(this.shop_type == "weapons")
                  {
                     _loc10_ = this.FWP.WEAPONS_DEF;
                     _loc11_ = _loc4_.weapons;
                  }
                  if(this.shop_type == "help")
                  {
                     _loc10_ = this.FWP.STIM_DEF;
                     _loc11_ = _loc4_.stim_behave;
                  }
                  if(this.shop_type == "flags")
                  {
                     _loc10_ = this.FWP.FLAGS_DEF;
                     _loc11_ = _loc4_.flags;
                  }
                  if(this.shop_type == "rip")
                  {
                     _loc10_ = this.FWP.RIPS_DEF;
                     _loc11_ = _loc4_.rip;
                  }
                  if(this.shop_type == "impl")
                  {
                     _loc10_ = this.FWP.IMPL_DEF;
                     _loc11_ = _loc4_.impl;
                  }
                  if(this.shop_type == "objs")
                  {
                     _loc10_ = this.FWP.OBJ_DEF;
                     _loc11_ = _loc4_.objs;
                  }
                  if(this.cur_screen[this.cur_screen[0]].name == "weapon_sheet")
                  {
                     _loc10_ = this.FWP.WEAPONS_DEF;
                  }
                  if(param1.type == "mouseOver")
                  {
                     this.cur_weapon = _loc9_.name.split("weapon_")[1].split("%")[0];
                     _loc12_ = _loc9_.name.split("weapon_")[1].split("%")[2];
                     for(_loc13_ in _loc10_)
                     {
                        if(_loc13_ == this.cur_weapon)
                        {
                           this.cur_element = _loc10_[_loc13_].id;
                        }
                     }
                     _loc9_.weapon_functions.visible = true;
                  }
                  else if(param1.type == "mouseOut")
                  {
                     this.cur_weapon = "";
                     this.cur_element = 0;
                     _loc9_.weapon_functions.visible = false;
                  }
                  if(param1.type == "mouseOver" || param1.type == "mouseOut")
                  {
                     _loc14_ = 0;
                     if(_loc4_.perks["stims"])
                     {
                        _loc14_ = this.FWP.get_perk_effect("stims",_loc4_.perks.stims,"");
                     }
                     _loc15_ = 0;
                     for(_loc16_ in this.FWP.STIM_DEF)
                     {
                        if(_loc4_.stim_to_fight[_loc16_])
                        {
                           _loc15_ += _loc4_.stim_to_fight[_loc16_];
                        }
                     }
                     if(_loc10_[this.cur_weapon] && this.cur_element > 0)
                     {
                        _loc17_ = 0;
                        if(_loc11_[this.cur_weapon])
                        {
                           if(this.shop_type == "weapons")
                           {
                              _loc17_ = _loc11_[this.cur_weapon][0];
                           }
                           else
                           {
                              _loc17_ = _loc11_[this.cur_weapon];
                           }
                        }
                        if(this.cur_screen[this.cur_screen[0]].name != "weapon_sheet")
                        {
                           _loc2_.weapon_name.text = _loc10_[this.cur_weapon].name + (" (" + _loc17_ + ")");
                        }
                        else
                        {
                           _loc2_.weapon_name.text = _loc10_[this.cur_weapon].name;
                        }
                        if(this.shop_type != "weapons" && this.cur_screen[this.cur_screen[0]].name != "weapon_sheet")
                        {
                           _loc2_.weapon_desc.htmlText = this.return_weapon_desc(this.cur_weapon,this.shop_type,_loc12_) + (!!this.weapons_text[this.cur_weapon] ? this.weapons_text[this.cur_weapon] : "");
                           if(this.shop_type == "help")
                           {
                              _loc2_.weapon_desc.htmlText += "\nИспользовано стимуляторов: <b>" + _loc15_ + " / " + (this.MAX_STIM + _loc14_) + "</b>.";
                           }
                        }
                        else
                        {
                           _loc18_ = {
                              "attack":_loc4_.attack.value,
                              "protect":_loc4_.protect.value,
                              "health":100 + 50 * _loc4_.health.value,
                              "worms":2 + _loc4_.worms.value,
                              "tired":_loc4_.tired,
                              "stim_to_fight":_loc4_.stim_to_fight,
                              "impl":_loc4_.cur_impl
                           };
                           _loc19_ = this.FWP.get_affected_skills(_loc18_);
                           _loc20_ = this.FWP.get_peachful_bonus({
                              "spec":_loc4_.spec,
                              "wptype":this.FWP.WEAPONS_DEF[this.cur_weapon].wptype,
                              "attack":_loc19_.attack,
                              "perks":_loc4_.perks,
                              "spec_mod":this.FWP.WEAPONS_DEF[this.cur_weapon].spec_mod,
                              "wpclass":this.FWP.WEAPONS_DEF[this.cur_weapon].wpclass
                           });
                           _loc21_ = 1 + _loc20_.damage;
                           _loc22_ = this.FWP.get_bullet_amount(this.cur_weapon);
                           _loc23_ = {
                              "dmg_mult":_loc21_,
                              "shots_add":_loc22_
                           };
                           _loc2_.weapon_desc.htmlText = this.return_weapon_desc(this.cur_weapon,this.shop_type,_loc12_,true,_loc23_,true) + (!!this.weapons_text[this.cur_weapon] ? this.weapons_text[this.cur_weapon] : "");
                        }
                     }
                     else
                     {
                        if(_loc2_.weapon_name)
                        {
                           _loc2_.weapon_name.text = "Арсенал";
                        }
                        if(_loc2_.weapon_desc)
                        {
                           _loc2_.weapon_desc.htmlText = "Здесь вы можете посмотреть, какие оружия, стимуляторы, флаги и т.п. имеются у вас в наличии, а также собрать из составляющих компонентов новые типы вооружения (кнопка Крафтинг). Однако, для крафтинга вам необходима одноименная способность Крафтинг.\n\nДля использования стимулятора выберите его и нажмите внизу кнопку Использовать. Под описанием каждого стимулятора будет показано, сколько вы уже использовали стимуляторов и лимит на использование. По умолчанию вы можете использовать 4 стимулятора перед боем. Это число можно увеличить, взяв способность Стимуляторы.\n\nВ разделе Флаги и Гробики галочкой отмечен текущий выбранный флаг/гроб. Чтобы поменять свое решение, выделите объект и нажмите Использовать.\n\nТакже любую вещь из арсенала вы можете продать.";
                        }
                     }
                  }
               }
            }
         }
         if(param1.type == "mouseUp" && (_loc6_ == "slider" || _loc6_ == "slider2"))
         {
            this.last_slider_clicked = _loc6_;
            param1.stopImmediatePropagation();
            removeEventListener(Event.ENTER_FRAME,this.slider_proceed);
            param1.target.stage.removeEventListener(MouseEvent.MOUSE_UP,this.slider_outside);
            this.slider_control = false;
         }
         if(param1.type == "mouseDown" && (_loc6_ == "slider" || _loc6_ == "slider2"))
         {
            this.last_slider_clicked = _loc6_;
            this.init_slider(this.cur_screen[this.cur_screen[0]].name,_loc6_);
            addEventListener(Event.ENTER_FRAME,this.slider_proceed,false,0,true);
            param1.target.stage.addEventListener(MouseEvent.MOUSE_UP,this.slider_outside,false,0,true);
            this.slider_control = true;
         }
         if(param1.type == "mouseDown" && (param1.target.parent.name.search("craft_weapon") != -1 || param1.target.parent.name.search("craft_object") != -1 || param1.target.parent.name.search("craft_stack") != -1 || param1.target.parent.name == "craft_diss"))
         {
            addEventListener(Event.ENTER_FRAME,this.floating_weapon_proceed,false,0,true);
            param1.target.stage.addEventListener(MouseEvent.MOUSE_UP,this.floating_outside,false,0,true);
            this.floating_control = true;
            _loc24_ = "";
            this.bitmaps["float"] = new Bitmap();
            this.bitmap_datas["float"] = new BitmapData(50,50,true,0);
            if(param1.target.parent.name.search("craft_stack") == -1 && param1.target.parent.name != "craft_diss")
            {
               if(param1.target.parent.name.search("craft_weapon") != -1)
               {
                  _loc24_ = param1.target.parent.name.split("craft_weapon_")[1];
               }
               if(param1.target.parent.name.search("craft_object") != -1)
               {
                  _loc24_ = param1.target.parent.name.split("craft_object_")[1];
               }
               _loc25_ = false;
               _loc26_ = false;
               if(_loc24_.split("%")[1] == "c")
               {
                  _loc26_ = true;
               }
               if(_loc24_.split("%")[1] == "s")
               {
                  _loc25_ = true;
               }
               this.floating_weapon = {
                  "id":_loc24_.split("%")[0],
                  "stolen":_loc25_,
                  "crafted":_loc26_,
                  "range":_loc24_.split("%")[2],
                  "tp":(param1.target.parent.name.search("craft_weapon") != -1 ? "weapon" : "object")
               };
            }
            else if(param1.target.parent.name == "craft_diss")
            {
               this.floating_weapon = {
                  "id":this.weapon_diss.id,
                  "stolen":this.weapon_diss.stolen,
                  "crafted":this.weapon_diss.crafted,
                  "range":this.weapon_diss.range,
                  "tp":this.weapon_diss.tp
               };
               _loc24_ = String(this.floating_weapon.id + "%%" + this.floating_weapon.range);
               this.weapon_diss = {};
            }
            else
            {
               _loc27_ = Number(param1.target.parent.name.split("craft_stack_")[1]);
               this.floating_weapon = {
                  "id":this.weapon_stack[_loc27_].id,
                  "stolen":this.weapon_stack[_loc27_].stolen,
                  "crafted":this.weapon_stack[_loc27_].crafted,
                  "range":this.weapon_stack[_loc27_].range,
                  "tp":this.weapon_stack[_loc27_].tp
               };
               _loc24_ = String(this.floating_weapon.id + "%%" + this.floating_weapon.range);
               this.weapon_stack[_loc27_] = {};
            }
            if(this.floating_weapon.tp == "weapon")
            {
               _loc28_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc24_.split("%")[0]].id).i;
               _loc29_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc24_.split("%")[0]].id).j;
               this.bitmap_datas["float"].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc29_ - 1),1 + 44 * (_loc28_ - 1),44,43),new Point(2,2));
               this.bitmap_datas["float"].copyPixels(this.PerkLevels[_loc24_.split("%")[2]],new Rectangle(0,0,47,47),new Point(0,0),null,null,true);
               this.bitmap_datas["float"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
            }
            else
            {
               this.bitmap_datas["float"].copyPixels(this.BigObjs,new Rectangle(1 + 45 * (this.FWP.OBJ_DEF[_loc24_.split("%")[0]].id - 1),0,44,43),new Point(2,2));
               this.bitmap_datas["float"].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
            }
            this.bitmaps["float"].bitmapData = this.bitmap_datas["float"];
            _loc2_.floating_container.addChild(this.bitmaps["float"]);
            _loc2_.floating_container.visible = true;
            this.render();
         }
      }
      
      public function init_slider(param1:String, param2:String = "") : *
      {
         if(param1 == "choose_perk" || param1 == "view_perks" || param1 == "crafting")
         {
            this.slider_top = 138;
            this.slider_bottom = 448;
         }
         if(param1 == "achiev")
         {
            this.slider_top = 108;
            this.slider_bottom = 557;
         }
         if(param1 == "friends")
         {
            this.slider_top = 154;
            this.slider_bottom = 489;
         }
         if(param1 == "clan_members")
         {
            this.slider_top = 138;
            this.slider_bottom = 473;
         }
         if(param1 == "clans")
         {
            this.slider_top = 222;
            this.slider_bottom = 560;
         }
         if(param1 == "top")
         {
            this.slider_top = 181;
            this.slider_bottom = 560;
         }
         if(param1 == "fight" && param2 == "slider")
         {
            this.slider_top = 213;
            this.slider_bottom = 512;
         }
         if(param1 == "fight" && param2 == "slider2")
         {
            this.slider_top = 421;
            this.slider_bottom = 569;
         }
         if(param1 == "scaner")
         {
            this.slider_top = 133;
            this.slider_bottom = 523;
         }
         if(param1 == "arsenal")
         {
            this.slider_top = 157;
            this.slider_bottom = 567;
         }
         if(param1 == "recipes")
         {
            this.slider_top = 84;
            this.slider_bottom = 543;
         }
         if(param1 == "weapon_sheet")
         {
            this.slider_top = 66;
            this.slider_bottom = 561;
         }
         if(param1 == "tasks")
         {
            this.slider_top = 132;
            this.slider_bottom = 553;
         }
      }
      
      public function slider_outside(param1:MouseEvent) : *
      {
         removeEventListener(Event.ENTER_FRAME,this.slider_proceed);
         param1.target.stage.removeEventListener(MouseEvent.MOUSE_UP,this.slider_outside);
         this.slider_control = false;
      }
      
      public function slider_proceed(param1:Event) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         _loc2_ = this.cur_screen[this.cur_screen[0]].link;
         _loc3_ = this.cur_screen[this.cur_screen[0]].name;
         if(this.slider_control)
         {
            if((_loc4_ = mouseY) < this.slider_top)
            {
               _loc4_ = this.slider_top;
            }
            if(_loc4_ > this.slider_bottom)
            {
               _loc4_ = this.slider_bottom;
            }
            _loc2_[this.last_slider_clicked].y = _loc4_;
            if(_loc3_ == "choose_perk" || _loc3_ == "view_perks")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.perks_container.y = 140 - _loc5_ * (_loc2_.perks_container.height - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "achiev")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.achiev_container.y = 92 - _loc5_ * (_loc2_.achiev_container.height - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "friends")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.friends_container.y = 185 - _loc5_ * (_loc2_.friends_container.height - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "clan_members")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.friends_container.y = 140 - _loc5_ * (_loc2_.friends_container.height - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "clans")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.clan_container.y = 235 - _loc5_ * (_loc2_.clan_container.height - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "top")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.top_container.y = 166 - _loc5_ * (_loc2_.top_container.height - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "crafting")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.craft_container.y = 140 - _loc5_ * (_loc2_.craft_container.height + 20 - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "fight" && this.last_slider_clicked == "slider")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.choose_container.y = 200 - _loc5_ * (_loc2_.choose_container.height - 20 - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "fight" && this.last_slider_clicked == "slider2")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.text_desc_container.y = 406 - _loc5_ * ((_loc2_.text_desc_container.field.numLines + 1) * 14 - 20 - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "scaner")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.scaner_container.y = 118 - _loc5_ * (_loc2_.scaner_container.height - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "arsenal")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.arsenal_weapon_container.y = 142 - _loc5_ * (_loc2_.arsenal_weapon_container.height - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "recipes")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.recipes_container.y = 69 - _loc5_ * (_loc2_.recipes_container.height - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "weapon_sheet")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.arsenal_weapon_container.y = 51 - _loc5_ * (_loc2_.arsenal_weapon_container.height - (this.slider_bottom - this.slider_top));
            }
            if(_loc3_ == "tasks")
            {
               _loc5_ = Math.round(1000 * (_loc4_ - this.slider_top) / (this.slider_bottom - this.slider_top)) / 1000;
               _loc2_.tasks_container.y = 118 - _loc5_ * (_loc2_.tasks_container.height - 20 - (this.slider_bottom - this.slider_top));
            }
         }
      }
      
      public function floating_outside(param1:MouseEvent) : *
      {
         removeEventListener(Event.ENTER_FRAME,this.floating_weapon_proceed);
         param1.target.stage.removeEventListener(MouseEvent.MOUSE_UP,this.floating_outside);
         this.floating_control = false;
         this.cur_screen[this.cur_screen[0]].link.floating_container.visible = false;
         this.check_crafting_target();
         this.floating_weapon = {};
         this.render();
      }
      
      public function check_crafting_target() : *
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
         var _loc11_:* = undefined;
         _loc1_ = this.cur_screen[this.cur_screen[0]].link;
         _loc2_ = this.FWP.player;
         _loc3_ = "";
         _loc4_ = _loc1_.crafting_stack_container.x;
         _loc6_ = (_loc5_ = _loc1_.crafting_stack_container.y) + 60;
         _loc7_ = _loc1_.crafting_diss_container.x;
         _loc8_ = _loc1_.crafting_diss_container.y;
         if(mouseX > _loc4_ - 10 && mouseX < _loc4_ + 47 + 10 && mouseY > _loc5_ - 10 && mouseY < _loc5_ + 46 + 10)
         {
            _loc3_ = "stack1";
         }
         if(mouseX > _loc4_ + 60 - 10 && mouseX < _loc4_ + 60 + 47 + 10 && mouseY > _loc5_ - 10 && mouseY < _loc5_ + 46 + 10)
         {
            _loc3_ = "stack2";
         }
         if(mouseX > _loc4_ + 60 + 60 - 10 && mouseX < _loc4_ + 60 + 60 + 47 + 10 && mouseY > _loc5_ - 10 && mouseY < _loc5_ + 46 + 10)
         {
            _loc3_ = "stack3";
         }
         if(mouseX > _loc4_ - 10 && mouseX < _loc4_ + 47 + 10 && mouseY > _loc6_ - 10 && mouseY < _loc6_ + 46 + 10)
         {
            _loc3_ = "stack4";
         }
         if(mouseX > _loc4_ + 60 - 10 && mouseX < _loc4_ + 60 + 47 + 10 && mouseY > _loc6_ - 10 && mouseY < _loc6_ + 46 + 10)
         {
            _loc3_ = "stack5";
         }
         if(mouseX > _loc4_ + 60 + 60 - 10 && mouseX < _loc4_ + 60 + 60 + 47 + 10 && mouseY > _loc6_ - 10 && mouseY < _loc6_ + 46 + 10)
         {
            _loc3_ = "stack6";
         }
         if(mouseX > _loc7_ - 10 && mouseX < _loc7_ + 47 + 10 && mouseY > _loc8_ - 10 && mouseY < _loc8_ + 46 + 10)
         {
            _loc3_ = "diss";
         }
         if(_loc3_ == "diss" && this.floating_weapon.tp == "weapon")
         {
            _loc9_ = false;
            _loc10_ = false;
            _loc11_ = 1;
            while(_loc11_ <= this.FWP.CRAFT_DEF[0])
            {
               if(this.FWP.CRAFT_DEF[_loc11_].result == this.floating_weapon.id)
               {
                  _loc10_ = true;
                  if(_loc2_.recipes[_loc11_] == 1)
                  {
                     _loc9_ = true;
                  }
                  break;
               }
               _loc11_++;
            }
            if(_loc10_)
            {
               this.weapon_diss = {
                  "id":this.floating_weapon.id,
                  "stolen":this.floating_weapon.stolen,
                  "crafted":this.floating_weapon.crafted,
                  "range":this.floating_weapon.range,
                  "tp":"weapon"
               };
            }
            if(!_loc10_)
            {
               _loc1_.craft_error_mc.gotoAndPlay(2);
               _loc1_.craft_error_mc.anim.craft_error.text = "Это оружие базовое, его нельзя разобрать.";
            }
            if(_loc9_)
            {
               _loc1_.craft_error_mc.gotoAndPlay(2);
               _loc1_.craft_error_mc.anim.craft_error.text = "Вы уже знаете рецепт для этого оружия.";
            }
         }
         if(_loc3_ == "diss" && this.floating_weapon.tp != "weapon")
         {
            _loc1_.craft_error_mc.gotoAndPlay(2);
            _loc1_.craft_error_mc.anim.craft_error.text = "Предметы нельзя разбирать.";
         }
         if(_loc3_.search("stack") != -1)
         {
            this.weapon_stack[Number(_loc3_.split("stack")[1])] = {
               "id":this.floating_weapon.id,
               "stolen":this.floating_weapon.stolen,
               "crafted":this.floating_weapon.crafted,
               "range":this.floating_weapon.range,
               "tp":this.floating_weapon.tp
            };
         }
      }
      
      public function floating_weapon_proceed(param1:Event) : *
      {
         this.cur_screen[this.cur_screen[0]].link.floating_container.x = mouseX - 25;
         this.cur_screen[this.cur_screen[0]].link.floating_container.y = mouseY - 25;
      }
      
      public function popup_displace(... rest) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = mouseX;
         _loc3_ = mouseY;
         this.popup.x = _loc2_;
         this.popup.y = _loc3_;
         if(_loc2_ + this.popup.popup_bg.width > 807 - 12 - 5)
         {
            this.popup.x = _loc2_ - this.popup.popup_bg.width - 12;
         }
         else
         {
            this.popup.x = _loc2_ + 12;
         }
         if(_loc3_ + this.popup.popup_bg.height > 600 - 12 - 5)
         {
            this.popup.y = _loc3_ - this.popup.popup_bg.height - 12;
         }
         else
         {
            this.popup.y = _loc3_ + 12;
         }
      }
      
      public function popup_modify(param1:String) : Boolean
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
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc2_:* = this.cur_screen[this.cur_screen[0]].link;
         _loc3_ = this.FWP.temp_player;
         _loc4_ = this.FWP.player;
         _loc5_ = {
            "attack":_loc4_.attack.value,
            "protect":_loc4_.protect.value,
            "health":100 + 50 * _loc4_.health.value,
            "worms":2 + _loc4_.worms.value,
            "tired":_loc4_.tired,
            "stim_to_fight":_loc4_.stim_to_fight,
            "impl":_loc4_.cur_impl
         };
         _loc6_ = this.FWP.get_affected_skills(_loc5_);
         if(this.shop_type == "weapons")
         {
            _loc7_ = this.FWP.WEAPONS_DEF;
         }
         if(this.shop_type == "help")
         {
            _loc7_ = this.FWP.STIM_DEF;
         }
         if(this.shop_type == "flags")
         {
            _loc7_ = this.FWP.FLAGS_DEF;
         }
         if(this.shop_type == "rip")
         {
            _loc7_ = this.FWP.RIPS_DEF;
         }
         if(this.shop_type == "impl")
         {
            _loc7_ = this.FWP.IMPL_DEF;
         }
         if(this.shop_type == "objs")
         {
            _loc7_ = this.FWP.OBJ_DEF;
         }
         if(param1 == "click_auc")
         {
            this.popup.header.text = "Аукцион";
            this.popup.main_text.text = "";
         }
         if(param1 == "career")
         {
            this.popup.header.text = "Карьера";
            this.popup.main_text.text = "";
         }
         if(param1 == "missions")
         {
            this.popup.header.text = "Миссии";
            this.popup.main_text.text = "";
         }
         if(param1 == "survival")
         {
            this.popup.header.text = "Выживание";
            this.popup.main_text.text = "";
         }
         if(param1 == "boss")
         {
            this.popup.header.text = "Боссы";
            this.popup.main_text.text = "";
         }
         if(param1 == "init_just_play")
         {
            this.popup.header.text = "Просто играть";
            this.popup.main_text.text = "";
         }
         if(param1 == "hardcore_popup")
         {
            this.popup.header.text = "Хардкорный режим";
            this.popup.main_text.text = "В этом режиме вам дается меньше времени на ход, и утилита \"Дополнительное время\" не так эфективна, зато при победе предоставляется увеличенное количество золота и опыта. Подробнее - в Вормпедии.";
         }
         if(param1 == "achiev_range_popup")
         {
            this.popup.header.text = "Ранг достижений";
            this.popup.main_text.text = "За каждые 10 уровней любого достижения вы получаете +1 к рангу достижений. За каждый ранг достижений вам дается определенное количество очков к рейтингу. Например, на 5 ранге: +1000 к рейтингу, на 15: +5000 к рейтингу, и т.д.";
         }
         if(param1 == "assault_diff_popup")
         {
            this.popup.header.text = "Сложность территории";
            this.popup.main_text.text = "С каждым захватом сложность территории увеличивается (растут показатели Атаки, Защиты и Здоровья врагов). Однако, сложность меняется циклически, то есть, когда сложность доходит до определенного предела, она снова сбрасывается в ноль, и показатели Атаки, Защиты и Здоровья становятся существенно меньше. Это сделано для того, чтобы не только топовые игроки могли захватывать территории.";
         }
         if(param1 == "clans_rating")
         {
            this.popup.header.text = "Рейтинг кланов";
            this.popup.main_text.text = "Рейтинг каждого клана - количество успешных захватов территорий всех игроков, входящих в клан.";
         }
         if(param1 == "open_wpsheet")
         {
            this.popup.header.text = "Арсенал";
            this.popup.main_text.text = "";
         }
         if(param1 == "cancel_fight")
         {
            this.popup.header.text = !!this.FWP.REPLAY ? "Выход" : "Завершить бой";
            this.popup.main_text.text = "";
         }
         if(param1 == "open_scaner")
         {
            this.popup.header.text = "Сканер";
            this.popup.main_text.text = "";
         }
         if(param1 == "my_level")
         {
            this.popup.header.text = "Уровень";
            this.popup.main_text.text = "В зависимсти от уровня вам открывается новое оружие и задания. Уровень зависит от набранного опыта (зеленая шкала).";
         }
         if(param1 == "init_tired")
         {
            this.popup.header.text = "Уровень усталости";
            this.popup.main_text.text = "Показывает, насколько устала ваша команда. Усталость начисляется каждый бой. При усталости выше 80% начинают проявляться негативные эффекты. Чтобы снизить усталость, используйте стимуляторы в разделе Арсенал или кликните по этой шкале.\n\nУсталость: " + _loc6_.tired + "%";
         }
         if(param1 == "my_exp")
         {
            this.popup.header.text = "Опыт";
            this.popup.main_text.text = "Опыт выдается за победы в бою. Чем больше опыта, тем выше ваш уровень.С каждым уровнем вы получаете очки навыков и способностей, которые можно использовать в разделе Развитие (нажмите на эту шкалу для быстрого перехода).\n\nОпыта набрано:\n" + this.x3String(_loc4_.exp.value) + " / " + this.x3String(this.FWP.LEVEL_THRESHOLD[_loc4_.level.value + 1]);
         }
         if(param1 == "my_rating")
         {
            this.popup.header.text = "Ваш рейтинг";
            this.popup.main_text.text = "Рейтинг определяет ваше влияние и авторитет в игре, от него зависит, в какой лиге и на каком месте вы будете в списке лучших игроков. Рейтинг дается за победы, в некоторых случаях предусмотрены бонусы.";
         }
         if(param1 == "skill_pts")
         {
            this.popup.header.text = "Очки навыков";
            this.popup.main_text.text = "Очки навыков выдаются при получении нового уровня - по 15 очков за каждый.";
         }
         if(param1 == "perk_pts")
         {
            this.popup.header.text = "Очки способностей";
            this.popup.main_text.text = "Очки способностей выдаются при получении нового уровня - по 20 очков за каждый.";
         }
         if(param1 == "diam_add")
         {
            this.popup.header.text = "+1 голос";
            this.popup.main_text.text = "";
         }
         if(param1 == "diam_all")
         {
            this.popup.header.text = "Все голоса";
            this.popup.main_text.text = "";
         }
         if(param1 == "gold_add")
         {
            this.popup.header.text = "+1 алмаз";
            this.popup.main_text.text = "";
         }
         if(param1 == "gold_all")
         {
            this.popup.header.text = "Все алмазы";
            this.popup.main_text.text = "";
         }
         if(param1 == "get_replay_clip")
         {
            this.popup.header.text = "Повтор боя";
            this.popup.main_text.text = "При нажатии на этот значок запись вашего боя сохранится у вас в заметках и одновременно скопируется в буфер обмена. После нажатия вы можете зайти в меню Просмотры боев, вставить вашу запись игры в текстовое поле и просмотреть повтор боя.";
         }
         if(param1 == "award_magnet")
         {
            this.popup.header.text = "Алмазный магнат";
            this.popup.main_text.text = "Выдается при единовременной покупке 100 и более алмазов.";
         }
         if(param1 == "award_contest")
         {
            this.popup.header.text = "Победитель конкурсов";
            this.popup.main_text.text = "";
         }
         if(param1 == "award_tester")
         {
            this.popup.header.text = "Почетный тестер";
            this.popup.main_text.text = "";
         }
         if(param1.search("buy_perk") != -1)
         {
            this.popup.header.text = "Добавить место";
            this.popup.main_text.text = "";
         }
         if(param1.search("add_perk") != -1)
         {
            this.popup.header.text = "Добавить способность";
            this.popup.main_text.text = "";
         }
         if(param1.search("view_perks") != -1)
         {
            this.popup.header.text = "Просмотр способностей";
            this.popup.main_text.text = "";
         }
         if(param1 == "try_steal")
         {
            this.popup.header.text = "Украсть";
            this.popup.main_text.text = "Вероятность: " + this.return_steal_prob(this.cur_weapon) + "%";
         }
         if(param1.search("upg_perk") != -1)
         {
            _loc8_ = this.perk_places[Number(param1.split("upg_perk")[1])];
            this.popup.header.text = "Улучшить способность";
            this.popup.main_text.text = "Стоимость: " + this.FWP.PERKS_DEF[_loc8_].upg[_loc3_.perks[_loc8_]] + " очков способностей.";
         }
         if(param1.search("upg_inact_perk") != -1)
         {
            _loc8_ = this.perk_places[Number(param1.split("upg_inact_perk")[1])];
            this.popup.header.text = "Улучшить способность";
            if(_loc3_.perks[_loc8_] == this.FWP.PERKS_DEF[_loc8_].max_lim)
            {
               this.popup.main_text.text = "На макс. уровне.";
            }
            else
            {
               this.popup.main_text.text = "Стоимость: " + this.FWP.PERKS_DEF[_loc8_].upg[_loc3_.perks[_loc8_]] + " очков способностей.";
            }
         }
         if(param1.search("perk_box") != -1)
         {
            if(!(_loc8_ = this.perk_places[Number(param1.split("perk_box")[1])]))
            {
               return false;
            }
            this.popup.header.text = this.FWP.PERKS_DEF[_loc8_].name;
            this.popup.main_text.text = "Уровень: " + String(_loc3_.perks[_loc8_]);
         }
         if(param1.search("stim_desc") != -1)
         {
            if(!(_loc11_ = param1.split("stim_desc_")[1]))
            {
               return false;
            }
            _loc12_ = this.FWP.STIM_DEF[_loc11_];
            this.popup.header.text = _loc12_.name;
            _loc13_ = "";
            if(_loc12_.tired != 0)
            {
               _loc13_ += "Усталость " + _loc12_.tired + "%\n";
            }
            if(_loc12_.attack != 0)
            {
               _loc13_ += "Атака " + (_loc12_.attack > 0 ? "+" + _loc12_.attack : _loc12_.attack) + "\n";
            }
            if(_loc12_.protect != 0)
            {
               _loc13_ += "Защита " + (_loc12_.protect > 0 ? "+" + _loc12_.protect : _loc12_.protect) + "\n";
            }
            if(_loc12_.health != 0)
            {
               _loc13_ += "Здоровье " + (_loc12_.health > 0 ? "+" + _loc12_.health : _loc12_.health) + "\n";
            }
            _loc13_ += "\nСтоимость:\n";
            if(_loc12_.gold != 0)
            {
               _loc13_ += _loc12_.gold + " золота\nили ";
            }
            _loc13_ += _loc12_.diam + " алмаз" + (_loc12_.diam == 1 ? "" : (_loc12_.diam < 5 ? "а" : "ов"));
            this.popup.main_text.text = _loc13_;
         }
         _loc9_ = {
            "attack":_loc3_.attack.value,
            "protect":_loc3_.protect.value,
            "health":100 + 50 * _loc3_.health.value,
            "worms":2 + _loc3_.worms.value,
            "tired":_loc4_.tired,
            "stim_to_fight":_loc4_.stim_to_fight,
            "impl":_loc4_.cur_impl
         };
         _loc10_ = this.FWP.get_affected_skills(_loc9_);
         if(param1 == "skill_attack")
         {
            this.popup.header.text = "Модификаторы Атаки";
            if(_loc10_.desc_attack.tired == 0 && _loc10_.desc_attack.stim == 0 && _loc10_.desc_attack.impl == 0)
            {
               this.popup.main_text.text = "нет модификаторов";
            }
            else
            {
               this.popup.main_text.text = "";
               if(_loc10_.desc_attack.tired != 0)
               {
                  this.popup.main_text.text += "Эффект усталости: " + _loc10_.desc_attack.tired + "\n";
               }
               if(_loc10_.desc_attack.stim != 0)
               {
                  this.popup.main_text.text += "Стимуляторы: " + (_loc10_.desc_attack.stim > 0 ? "+" : "") + _loc10_.desc_attack.stim + "\n";
               }
               if(_loc10_.desc_attack.impl != 0)
               {
                  this.popup.main_text.text += "Имплантанты: +" + _loc10_.desc_attack.impl + "\n";
               }
            }
         }
         if(param1 == "skill_protect")
         {
            this.popup.header.text = "Модификаторы Защиты";
            if(_loc10_.desc_protect.tired == 0 && _loc10_.desc_protect.stim == 0 && _loc10_.desc_protect.impl == 0)
            {
               this.popup.main_text.text = "нет модификаторов";
            }
            else
            {
               this.popup.main_text.text = "";
               if(_loc10_.desc_protect.tired != 0)
               {
                  this.popup.main_text.text += "Эффект усталости: " + _loc10_.desc_protect.tired + "\n";
               }
               if(_loc10_.desc_protect.stim != 0)
               {
                  this.popup.main_text.text += "Стимуляторы: " + (_loc10_.desc_protect.stim > 0 ? "+" : "") + _loc10_.desc_protect.stim + "\n";
               }
               if(_loc10_.desc_protect.impl != 0)
               {
                  this.popup.main_text.text += "Имплантанты: +" + _loc10_.desc_protect.impl + "\n";
               }
            }
         }
         if(param1 == "skill_health")
         {
            this.popup.header.text = "Модификаторы Здоровья";
            if(_loc10_.desc_health.tired == 1 && _loc10_.desc_health.stim == 0 && _loc10_.desc_health.impl == 0)
            {
               this.popup.main_text.text = "нет модификаторов";
            }
            else
            {
               this.popup.main_text.text = "";
               if(_loc10_.desc_health.tired != 1)
               {
                  this.popup.main_text.text += "Эффект усталости: -" + Math.round((1 - _loc10_.desc_health.tired) * 100) + "%\n";
               }
               if(_loc10_.desc_health.stim != 0)
               {
                  this.popup.main_text.text += "Стимуляторы: " + (_loc10_.desc_health.stim > 0 ? "+" : "") + _loc10_.desc_health.stim + "\n";
               }
               if(_loc10_.desc_health.impl != 0)
               {
                  this.popup.main_text.text += "Имплантанты: +" + _loc10_.desc_health.impl + "\n";
               }
            }
         }
         if(param1 == "announcement_task")
         {
            this.popup.header.text = "Журнал заданий";
            if(this.FWP.get_task_bonus().exist)
            {
               this.popup.main_text.text = "Есть новые!";
            }
            else
            {
               this.popup.main_text.text = "";
            }
         }
         if(param1 == "announcement_achiev")
         {
            this.popup.header.text = "Достижения";
            this.popup.main_text.text = "Получите награду!";
         }
         this.popup_set_height();
         return true;
      }
      
      public function popup_set_height() : *
      {
         var _loc1_:* = undefined;
         _loc1_ = this.popup.main_text.numLines;
         if(this.popup.main_text.text == "")
         {
            this.popup.popup_bg.height = 32;
         }
         else
         {
            this.popup.popup_bg.height = 40 + _loc1_ * 15;
         }
      }
      
      public function return_damage_desc(param1:String, param2:Number, param3:Number, param4:Number = 1) : String
      {
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         _loc5_ = this.FWP.WEAPONS_DEF[param1].add_damage.mode != "none" ? this.FWP.WEAPONS_DEF[param1].add_damage.amount + param3 : 0;
         _loc6_ = Math.round(this.FWP.WEAPONS_DEF[param1].damage * param2 * this.FWP.get_range_upgrade(param4,"damage"));
         _loc7_ = -1;
         if(this.FWP.WEAPONS_DEF[param1].add_damage.a_dmg)
         {
            _loc7_ = Math.round(this.FWP.WEAPONS_DEF[param1].add_damage.a_dmg * param2);
         }
         _loc8_ = "";
         if(this.FWP.WEAPONS_DEF[param1].damage == -3)
         {
            _loc8_ = "50% ОЗ или 300 ОЗ";
         }
         else if(this.FWP.WEAPONS_DEF[param1].damage == -2)
         {
            _loc8_ = "50% ОЗ или 200 ОЗ";
         }
         else if(this.FWP.WEAPONS_DEF[param1].damage == -1 || this.FWP.WEAPONS_DEF[param1].damage == 0)
         {
            _loc8_ = "-";
         }
         else if(_loc5_ == 0 || _loc5_ == 1)
         {
            _loc8_ = _loc6_ + " ОЗ";
         }
         else if(this.FWP.WEAPONS_DEF[param1].add_damage.mode == "shots")
         {
            _loc8_ = String(_loc5_) + " выстрел" + (_loc5_ < 5 ? "а" : "ов") + " по " + _loc6_ + " ОЗ";
         }
         else if(this.FWP.WEAPONS_DEF[param1].add_damage.mode == "multi_shots")
         {
            _loc8_ = String(_loc5_) + " выстрел" + (_loc5_ < 5 ? "а" : "ов") + " по " + _loc6_ + " ОЗ";
         }
         else if(this.FWP.WEAPONS_DEF[param1].add_damage.mode == "cluster")
         {
            _loc8_ = "1 + " + String(_loc5_) + " разрывн. по " + (_loc7_ == -1 ? _loc6_ : _loc7_) + " ОЗ";
         }
         else if(this.FWP.WEAPONS_DEF[param1].add_damage.mode == "mines")
         {
            _loc8_ = _loc6_ + " + " + String(_loc5_) + " мин по " + Math.round(50 * param2) + " ОЗ";
         }
         else if(this.FWP.WEAPONS_DEF[param1].add_damage.mode == "pmines")
         {
            _loc8_ = _loc6_ + " + " + String(_loc5_) + " мин по " + Math.round(110 * param2) + " ОЗ";
         }
         else if(this.FWP.WEAPONS_DEF[param1].add_damage.mode == "airstrike")
         {
            _loc8_ = String(_loc5_) + " снарядов по " + _loc6_ + " ОЗ";
         }
         else if(this.FWP.WEAPONS_DEF[param1].add_damage.mode == "ap")
         {
            _loc8_ = String(_loc5_) + " x " + _loc6_ + " ОЗ";
         }
         else if(this.FWP.WEAPONS_DEF[param1].add_damage.mode == "banana")
         {
            _loc8_ = "1 + " + String(_loc5_) + " банано-бомб по " + (_loc7_ == -1 ? _loc6_ : _loc7_) + " ОЗ";
         }
         return _loc8_;
      }
      
      public function return_weapon_desc(param1:String, param2:String = "weapons", param3:Number = 1, param4:Boolean = false, param5:* = 0, param6:Boolean = false) : String
      {
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
         _loc7_ = "";
         if(param2 == "weapons" || param6)
         {
            _loc8_ = "";
            switch(this.FWP.WEAPONS_DEF[param1].wptype)
            {
               case "p":
                  _loc8_ = "Снаряд";
                  break;
               case "e":
                  _loc8_ = "Взрывчатка";
                  break;
               case "a":
                  _loc8_ = "Авиаудар";
                  break;
               case "c":
                  _loc8_ = "Ближний бой";
                  break;
               case "h":
                  _loc8_ = "Энергетическое";
                  break;
               case "f":
                  _loc8_ = "Огнестрельное";
                  break;
               case "u":
                  _loc8_ = "Утилита";
                  break;
               case "l":
                  _loc8_ = "Живая бомба";
            }
            if(!param4 || this.last_call_game_mode == "just")
            {
               _loc9_ = this.return_damage_desc(param1,1,0,param3);
            }
            else
            {
               _loc9_ = this.return_damage_desc(param1,param5.dmg_mult,param5.shots_add,param3);
            }
            _loc10_ = Math.min(100,this.FWP.WEAPONS_DEF[param1].crit + this.FWP.get_range_upgrade(param3,"crit"));
            _loc11_ = Math.min(100,this.FWP.WEAPONS_DEF[param1].ap_mod + this.FWP.get_range_upgrade(param3,"ap"));
            _loc12_ = this.FWP.WEAPONS_DEF[param1].limit == 0 ? "Нет" : String(this.FWP.WEAPONS_DEF[param1].limit);
            _loc13_ = this.FWP.WEAPONS_DEF[param1].delay == 0 ? "Нет" : String(this.FWP.WEAPONS_DEF[param1].delay) + " ход" + (this.FWP.WEAPONS_DEF[param1].delay == 1 ? "" : (this.FWP.WEAPONS_DEF[param1].delay < 5 ? "а" : "ов"));
            _loc14_ = _loc10_ == 0 ? "Нет" : "+" + String(_loc10_) + "%";
            _loc15_ = _loc11_ == 0 ? "Нет" : "+" + String(_loc11_) + "%";
            switch(this.FWP.WEAPONS_DEF[param1].wpclass)
            {
               case 0:
                  _loc16_ = "не опред.";
                  break;
               case 1:
                  _loc16_ = "Первый";
                  break;
               case 2:
                  _loc16_ = "Второй";
                  break;
               case 3:
                  _loc16_ = "Третий";
                  break;
               case 4:
                  _loc16_ = "Четвертый";
                  break;
               case 5:
                  _loc16_ = "Пятый";
                  break;
               case 6:
                  _loc16_ = "Шестой";
                  break;
               case 7:
                  _loc16_ = "Седьмой";
                  break;
               case 8:
                  _loc16_ = "Восьмой";
            }
            if(this.FWP.WEAPONS_DEF[param1].level != 0)
            {
               _loc7_ = "<b>Требуемый уровень: </b>" + this.FWP.WEAPONS_DEF[param1].level;
            }
            else
            {
               _loc7_ = "<b>Только крафтинг</b>";
            }
            _loc7_ += "\n<b>Урон: </b>" + _loc9_ + "\n<b>Класс: </b>" + _loc16_ + "\n<b>Тип: </b>" + _loc8_ + "\n<b>Макс. количество: </b>" + _loc12_;
            if(this.FWP.WEAPONS_DEF[param1].delay != 0 && this.FWP.WEAPONS_DEF[param1].delay != Number.POSITIVE_INFINITY)
            {
               _loc7_ += "\n<b>Задержка: </b>" + _loc13_;
            }
            if(_loc10_ != 0)
            {
               _loc7_ += "\n<b>Бонус к шансу крит. выстрела: </b>" + _loc14_;
            }
            if(_loc11_ != 0)
            {
               _loc7_ += "\n<b>Бонус к шансу проб. выстрела: </b>" + _loc15_;
            }
            if(this.FWP.WEAPONS_DEF[param1].unfail == 150)
            {
               _loc7_ += "\n<b>Бонус безотказности: нет осечек</b>";
            }
            if(this.FWP.WEAPONS_DEF[param1].add_damage.mode == "multi_shots")
            {
               _loc7_ += "\n<b>Бонус мультивыстрела</b>";
            }
            _loc7_ += "\n\n";
         }
         else if(param2 == "help")
         {
            _loc17_ = this.FWP.STIM_DEF[param1];
            _loc7_ += "<b>Эффекты:</b>\n\n";
            if(_loc17_.tired != 0)
            {
               _loc7_ += "<b>Усталость:</b> " + _loc17_.tired + "%\n";
            }
            if(_loc17_.attack != 0)
            {
               _loc7_ += "<b>Атака:</b> " + (_loc17_.attack > 0 ? "+" + _loc17_.attack : _loc17_.attack) + "\n";
            }
            if(_loc17_.protect != 0)
            {
               _loc7_ += "<b>Защита:</b> " + (_loc17_.protect > 0 ? "+" + _loc17_.protect : _loc17_.protect) + "\n";
            }
            if(_loc17_.health != 0)
            {
               _loc7_ += "<b>Здоровье:</b> " + (_loc17_.health > 0 ? "+" + _loc17_.health : _loc17_.health) + " ОЗ\n";
            }
            _loc7_ += "\n";
         }
         else if(param2 == "flags" || param2 == "rip")
         {
            if(param2 == "flags")
            {
               _loc18_ = this.FWP.FLAGS_DEF[param1];
            }
            if(param2 == "rip")
            {
               _loc18_ = this.FWP.RIPS_DEF[param1];
            }
            _loc7_ += "<b>Требования:</b>\n";
            if(_loc18_.req == "none")
            {
               _loc7_ += "Нет\n";
            }
            if(_loc18_.req == "level")
            {
               _loc7_ += "<b>Уровень:</b> " + _loc18_.req_amnt + "\n";
            }
            if(_loc18_.req == "achiev")
            {
               _loc7_ += "<b>Ранг достижений:</b> " + _loc18_.req_amnt + "\n";
            }
            if(_loc18_.req == "career")
            {
               _loc7_ += "<b>Ранг карьеры:</b> " + _loc18_.req_amnt + "\n";
            }
            if(_loc18_.req == "mission")
            {
               _loc7_ += "<b>Пройденных миссий:</b> " + _loc18_.req_amnt + "\n";
            }
            _loc7_ += "\n";
         }
         else if(param2 == "impl")
         {
            _loc19_ = this.FWP.IMPL_DEF[param1];
            _loc7_ += "<b>Эффекты:</b>\n\n";
            if(_loc19_.attack != 0)
            {
               _loc7_ += "<b>Атака:</b> " + (_loc19_.attack > 0 ? "+" + _loc19_.attack : _loc19_.attack) + "\n";
            }
            if(_loc19_.protect != 0)
            {
               _loc7_ += "<b>Защита:</b> " + (_loc19_.protect > 0 ? "+" + _loc19_.protect : _loc19_.protect) + "\n";
            }
            if(_loc19_.health != 0)
            {
               _loc7_ += "<b>Здоровье:</b> " + (_loc19_.health > 0 ? "+" + _loc19_.health : _loc19_.health) + " ОЗ\n";
            }
            if(_loc19_.special.fire_res)
            {
               _loc7_ += "<b>Сопротивление огню +100%</b>\n";
            }
            if(_loc19_.special.poison_res)
            {
               _loc7_ += "<b>Сопротивление яду/радиации +100%</b>\n";
            }
            if(_loc19_.special.para_res)
            {
               _loc7_ += "<b>Сопротивление парализации +100%</b>\n";
            }
            _loc7_ += "\n";
         }
         return _loc7_;
      }
      
      public function get_req_params(param1:Object, param2:Object) : Boolean
      {
         if(!param2.req)
         {
            return true;
         }
         if(param2.req == "none")
         {
            return true;
         }
         if(param2.req == "level" && param1.level.value >= param2.req_amnt)
         {
            return true;
         }
         if(param2.req == "achiev" && this.FWP.get_achiev_rank(param1.achiev) >= param2.req_amnt)
         {
            return true;
         }
         if(param2.req == "career" && param1.career_max >= param2.req_amnt)
         {
            return true;
         }
         if(param2.req == "mission" && param1.missions_max >= param2.req_amnt)
         {
            return true;
         }
         return false;
      }
      
      public function return_steal_prob(param1:String) : Number
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = 0;
         if(this.FWP.player.perks["steal"])
         {
            _loc2_ = this.FWP.player.perks.steal;
         }
         _loc3_ = 0;
         if(this.FWP.player.perks["pe"])
         {
            _loc3_ = this.FWP.player.perks.pe;
         }
         return this.FWP.get_steal_prob(this.FWP.player.level.value,this.FWP.WEAPONS_DEF[param1].level,_loc2_,_loc3_);
      }
      
      public function return_steal_luck_prob() : Number
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc1_ = 0;
         if(this.FWP.player.perks["luck"])
         {
            _loc1_ = this.FWP.player.perks.luck;
         }
         _loc2_ = 0;
         if(this.FWP.player.perks["luck2"])
         {
            _loc2_ = this.FWP.player.perks.luck2;
         }
         _loc3_ = 0;
         if(this.FWP.player.perks["education"])
         {
            _loc3_ = this.FWP.player.perks.education;
         }
         return Math.round(_loc3_ * 10 + _loc1_ * 2 + _loc2_ * 3);
      }
      
      public function return_steal_merch_prob() : Number
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         _loc1_ = 0;
         if(this.FWP.player.perks["merchant"])
         {
            _loc1_ = this.FWP.player.perks.merchant;
         }
         _loc2_ = 0;
         if(this.FWP.player.perks["bar"])
         {
            _loc2_ = this.FWP.player.perks.bar;
         }
         return Math.round((_loc1_ + _loc2_) * 8);
      }
      
      public function return_papa_ask_prob() : Number
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc1_ = 0;
         if(this.FWP.player.perks["luck"])
         {
            _loc1_ = this.FWP.player.perks.luck;
         }
         _loc2_ = 0;
         if(this.FWP.player.perks["luck2"])
         {
            _loc2_ = this.FWP.player.perks.luck2;
         }
         _loc3_ = 0;
         if(this.FWP.player.perks["education"])
         {
            _loc3_ = this.FWP.player.perks.education;
         }
         return Math.round(_loc3_ * 4 + _loc1_ + _loc2_);
      }
      
      public function check_recipe(param1:Array, param2:Array, param3:Number) : Object
      {
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
         _loc4_ = "";
         _loc5_ = 1;
         _loc6_ = "";
         _loc7_ = 5;
         _loc8_ = 0;
         _loc9_ = 1;
         _loc10_ = 1;
         while(_loc10_ <= this.FWP.CRAFT_DEF[0])
         {
            _loc11_ = [0,false,false,false,false,false,false];
            _loc12_ = 1;
            while(_loc12_ <= this.FWP.CRAFT_DEF[_loc10_].ingr[0])
            {
               _loc9_ = 1;
               while(_loc9_ <= 6)
               {
                  if(!_loc11_[_loc9_] && param1[_loc9_].id == this.FWP.CRAFT_DEF[_loc10_].ingr[_loc12_])
                  {
                     _loc11_[_loc9_] = true;
                     ++_loc11_[0];
                     break;
                  }
                  _loc9_++;
               }
               _loc12_++;
            }
            if(_loc11_[0] == this.FWP.CRAFT_DEF[_loc10_].ingr[0])
            {
               _loc8_ = _loc10_;
               break;
            }
            _loc10_++;
         }
         if(_loc8_ != 0)
         {
            _loc4_ = this.FWP.CRAFT_DEF[_loc8_].result;
            if(param3 < this.FWP.CRAFT_DEF[_loc8_].req)
            {
               _loc6_ = "req" + String(this.FWP.CRAFT_DEF[_loc8_].req);
            }
            _loc13_ = 10;
            _loc9_ = 1;
            while(_loc9_ <= 6)
            {
               if(param1[_loc9_].tp == "weapon")
               {
                  if(Number(param1[_loc9_].range) < _loc13_)
                  {
                     _loc13_ = Number(param1[_loc9_].range);
                  }
               }
               _loc9_++;
            }
            _loc5_ = _loc13_ > 5 ? 5 : _loc13_;
            if(!this.FWP.WEAPONS_DEF[this.FWP.CRAFT_DEF[_loc8_].result].allow_upg)
            {
               _loc5_ = 1;
            }
            if(param2[_loc8_])
            {
               if(param2[_loc8_] == 1)
               {
                  _loc7_ = 100;
               }
            }
            else
            {
               _loc7_ += param3 * 15;
            }
         }
         return {
            "id":_loc4_,
            "range":_loc5_,
            "error":_loc6_,
            "prob":_loc7_
         };
      }
      
      public function steal() : *
      {
         var _loc1_:* = undefined;
         _loc1_ = this.FWP.player.weapons;
         this.success_steal = false;
         this.steal_try_luck = false;
         this.steal_try_merch = false;
         this.steal_state = "";
         ++this.FWP.player.today_steals;
         this.FWP.player.last_steal = this.FWP.player.last_enter;
         if(this.return_steal_prob(this.cur_weapon) - 1 > this.FWP.true_random(0,100))
         {
            this.success_steal = true;
            if(!_loc1_[this.cur_weapon])
            {
               _loc1_[this.cur_weapon] = [1,{
                  "range":1,
                  "stolen":true,
                  "crafted":false
               }];
            }
            else
            {
               ++_loc1_[this.cur_weapon][0];
               _loc1_[this.cur_weapon][_loc1_[this.cur_weapon][0]] = {
                  "range":1,
                  "stolen":true,
                  "crafted":false
               };
            }
            if(this.FWP.player.cur_task == 24)
            {
               this.FWP.player.cur_task = 25;
            }
            if(this.FWP.player.achiev["steal"])
            {
               ++this.FWP.player.achiev["steal"];
            }
            else
            {
               this.FWP.player.achiev["steal"] = 1;
            }
            this.succ_steal_weapon = this.cur_weapon;
         }
         else
         {
            this.FWP.player.tired += 100;
            this.FWP.player.today_steals += 20;
         }
         this.FWP.execute_after = "steal proceed";
         this.FWP.init_save_params();
      }
      
      public function check_tf(param1:Event) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc2_ = param1.target.text;
         _loc3_ = "";
         _loc4_ = 0;
         while(_loc4_ <= _loc2_.length - 1)
         {
            if(_loc2_.charCodeAt(_loc4_) == 32 || _loc2_.charCodeAt(_loc4_) == 35 || _loc2_.charCodeAt(_loc4_) >= 48 && _loc2_.charCodeAt(_loc4_) <= 57 || _loc2_.charCodeAt(_loc4_) >= 65 && _loc2_.charCodeAt(_loc4_) <= 90 || _loc2_.charCodeAt(_loc4_) >= 97 && _loc2_.charCodeAt(_loc4_) <= 122 || _loc2_.charCodeAt(_loc4_) >= 1040 && _loc2_.charCodeAt(_loc4_) <= 1103)
            {
               _loc3_ = _loc3_.concat(_loc2_.charAt(_loc4_));
            }
            _loc4_++;
         }
         param1.target.text = _loc3_;
      }
      
      public function mod(param1:Number) : Number
      {
         return Math.abs(param1);
      }
      
      public function sign(param1:Number) : Number
      {
         return param1 >= 0 ? Number(1) : Number(-1);
      }
      
      public function init_win_or_lose() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc1_ = this.FWP.end_game;
         this.graves_array = [];
         _loc2_ = 1;
         while(_loc2_ <= 16)
         {
            this.graves_array[_loc2_] = {"clicked":false};
            _loc2_++;
         }
         if(_loc1_.win)
         {
            this.init("end_game_win");
            _loc3_ = this.cur_screen[this.cur_screen[0]].link;
            _loc3_.exp_bonus.text = "Опыт\n+ " + this.x3String(_loc1_.exp_bonus);
            _loc3_.gold_bonus.text = "Золото\n+ " + this.x3String(_loc1_.gold_bonus);
            _loc3_.rating_bonus.text = "Рейтинг \n+ " + this.x3String(_loc1_.rating_bonus);
         }
         else
         {
            this.init("end_game_lose");
         }
      }
      
      public function init_new_level() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc1_ = this.FWP.end_game;
         this.FWP.player.level.value = this.FWP.get_player_level(this.FWP.player.exp.value);
         if(_loc1_.surprise_weapons[0] == 0)
         {
            this.init("end_game_new_lvl");
         }
         else
         {
            this.init("end_game_surprise");
         }
         _loc2_ = this.cur_screen[this.cur_screen[0]].link;
         _loc2_.new_level_number.htmlText = "Поздравляем вас с переходом на новый уровень <b>(" + this.FWP.player.level.value + ")</b>.";
         _loc3_ = "Вы получаете <b>+" + _loc1_.levels_upg * 100 + "</b> к рейтингу, а также : \n";
         if(_loc1_.diam_bonus != 0)
         {
            _loc3_ += "<b>+" + _loc1_.diam_bonus + "</b> алмазов, ";
         }
         _loc3_ += "<b>+" + _loc1_.perk_pts + "</b> очк. навыков, ";
         _loc3_ += "<b>+" + _loc1_.skill_pts + "</b> очк. способностей.";
         _loc2_.new_level_goods.htmlText = _loc3_;
         if(_loc1_.surprise_weapons[0] != 0)
         {
            this.bitmaps["surprise_bitmap"] = new Bitmap();
            this.bitmap_datas["surprise_bitmap"] = new BitmapData(50,50,true,0);
            this.bitmaps["surprise_bitmap"].bitmapData = this.bitmap_datas["surprise_bitmap"];
            _loc2_.surprise_weapon_icon.addChild(this.bitmaps["surprise_bitmap"]);
            this.bitmaps["surprise_bitmap"].x = 0;
            this.bitmaps["surprise_bitmap"].y = 0;
            this.cur_page = 1;
            this.render();
         }
         this.FWP._sound.play_sound("new_level",1,false,true);
      }
      
      public function init_what_opened() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         _loc1_ = new Array(12);
         _loc2_ = 0;
         _loc3_ = 0;
         for(_loc4_ in this.FWP.WEAPONS_DEF)
         {
            if(this.FWP.WEAPONS_DEF[_loc4_].level == this.FWP.player.level.value && this.FWP.WEAPONS_DEF[_loc4_].id <= 200)
            {
               _loc1_[_loc2_] = new Array("W",_loc4_);
               _loc2_++;
            }
         }
         if(_loc2_ == 0)
         {
            this.init("error","what_opened");
            return;
         }
         this.init("what_opened");
         _loc5_ = this.cur_screen[this.cur_screen[0]].link;
         _loc3_ = 0;
         while(_loc3_ <= 9)
         {
            if(_loc3_ > _loc2_ - 1)
            {
               this.buttons["what_op_" + (_loc3_ + 1)].gain.text = "";
            }
            else if(_loc1_[_loc3_][0] == "W")
            {
               _loc6_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc1_[_loc3_][1]].id).i;
               _loc7_ = this.FWP.get_wpij(this.FWP.WEAPONS_DEF[_loc1_[_loc3_][1]].id).j;
               this.bitmap_datas["what_op_" + (_loc3_ + 1)].copyPixels(this.BigWP,new Rectangle(1 + 45 * (_loc7_ - 1),1 + 44 * (_loc6_ - 1),43,42),new Point(2,2));
               this.bitmap_datas["what_op_" + (_loc3_ + 1)].copyPixels(this.WPBox,new Rectangle(0,0,47,46),new Point(0,0),null,null,true);
               this.buttons["what_op_" + (_loc3_ + 1)].gain.text = this.FWP.WEAPONS_DEF[_loc1_[_loc3_][1]].name;
               if(this.buttons["what_op_" + (_loc3_ + 1)].gain.numLines == 1)
               {
                  this.buttons["what_op_" + (_loc3_ + 1)].gain.y += 10;
               }
            }
            _loc3_++;
         }
      }
      
      public function init_grave_search() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(this.FWP.end_game.game_mode == "assault")
         {
            this.init("error","grave_search_assault");
            return;
         }
         if(this.FWP.end_game.graves[0] == 0)
         {
            this.init("error","grave_search");
            return;
         }
         this.init("grave_search");
         _loc1_ = this.cur_screen[this.cur_screen[0]].link;
         _loc2_ = 1;
         while(_loc2_ <= 16)
         {
            this.buttons["gsearch_" + _loc2_].pbar.visible = false;
            if(_loc2_ > this.FWP.end_game.graves[0])
            {
               this.buttons["gsearch_" + _loc2_].visible = false;
            }
            else
            {
               this.buttons["gsearch_" + _loc2_].worm_name.text = this.FWP.end_game.graves[_loc2_].name;
            }
            _loc2_++;
         }
         this.render_grave_search();
      }
      
      public function render_grave_search() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(this.clicked_grave != 0)
         {
            _loc1_ = 1;
            if(this.FWP.player.perks["gsearch"])
            {
               _loc1_ = this.FWP.get_perk_effect("gsearch",this.FWP.player.perks.gsearch,"");
            }
            this.buttons["gsearch_" + this.clicked_grave].pbar.visible = true;
            this.buttons["gsearch_" + this.clicked_grave].pbar.gotoAndStop(Math.ceil(this.FWP.grave_process * 60 / (this.FWP.GSEARCHTIME * _loc1_)));
         }
         else
         {
            _loc2_ = 1;
            while(_loc2_ <= 16)
            {
               this.buttons["gsearch_" + _loc2_].pbar.visible = false;
               this.buttons["gsearch_" + _loc2_].alpha = !!this.graves_array[_loc2_].clicked ? 0.5 : 1;
               this.buttons["gsearch_" + _loc2_].gsearch_button.visible = !this.graves_array[_loc2_].clicked;
               _loc2_++;
            }
         }
      }
      
      public function finish_grave_search() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         _loc1_ = this.FWP.end_game.graves[this.clicked_grave].cpu_level;
         this.graves_array[this.clicked_grave].clicked = true;
         this.clicked_grave = 0;
         this.render_grave_search();
         _loc2_ = this.FWP.get_grave_result(_loc1_,this.FWP.end_game.game_mode,this.FWP.end_game.game_stage);
         this.FWP.grave_found = _loc2_.id;
         this.FWP.grave_found_type = _loc2_.ptype;
         if(this.FWP.grave_found_type == "")
         {
            this.init("grave_result");
            return;
         }
         if(this.FWP.grave_found_type == "weapon")
         {
            if(this.FWP.player.weapons[this.FWP.grave_found] && this.FWP.player.weapons[this.FWP.grave_found][0] < this.FWP.WEAPONS_DEF[this.FWP.grave_found].limit)
            {
               ++this.FWP.player.weapons[this.FWP.grave_found][0];
               this.FWP.player.weapons[this.FWP.grave_found][this.FWP.player.weapons[this.FWP.grave_found][0]] = {
                  "range":1,
                  "stolen":false,
                  "crafted":false
               };
            }
            else if(!this.FWP.player.weapons[this.FWP.grave_found])
            {
               this.FWP.player.weapons[this.FWP.grave_found] = [1,{
                  "range":1,
                  "stolen":false,
                  "crafted":false
               }];
            }
            this.FWP.weapon_optimisation(this.FWP.player.weapons);
         }
         else if(this.FWP.grave_found_type == "obj")
         {
            if(this.FWP.player.objs[this.FWP.grave_found] && this.FWP.player.objs[this.FWP.grave_found] < 50)
            {
               ++this.FWP.player.objs[this.FWP.grave_found];
            }
            else if(!this.FWP.player.objs[this.FWP.grave_found])
            {
               this.FWP.player.objs[this.FWP.grave_found] = 1;
            }
         }
         else if(this.FWP.grave_found_type == "stim")
         {
            if(this.FWP.player.stim_behave[this.FWP.grave_found] && this.FWP.player.stim_behave[this.FWP.grave_found] < 50)
            {
               ++this.FWP.player.stim_behave[this.FWP.grave_found];
            }
            else if(!this.FWP.player.stim_behave[this.FWP.grave_found])
            {
               this.FWP.player.stim_behave[this.FWP.grave_found] = 1;
            }
         }
         else if(this.FWP.grave_found_type == "gold")
         {
            this.FWP.player.gold.value += Number(this.FWP.grave_found);
         }
         else if(this.FWP.grave_found_type == "diam")
         {
            this.FWP.player.diam.value += Number(this.FWP.grave_found);
         }
         this.FWP.player.tired += 3;
         this.FWP.execute_after = "init grave result";
         this.FWP.init_save_params();
      }
      
      public function init_game_menu() : *
      {
         this.init("game");
      }
      
      public function init_mainframe() : *
      {
         this.init("mainframe");
      }
      
      public function init_weapon_sheet(param1:String) : *
      {
         this.shop_page = 1;
         this.last_call_game_mode = param1;
         this.init("weapon_sheet");
      }
      
      public function render_game_menu() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         this.SecondBitmapData.fillRect(new Rectangle(0,0,this.MainBitmap.width,this.MainBitmap.height),0);
         _loc1_ = this.cur_screen[this.cur_screen[0]].link;
         if(this.cur_screen[this.cur_screen[0]].name == "game")
         {
            if(!this.FWP._proc.teams[1].weapons["ultra_scaner"] || this.FWP._proc.teams[1].weapons["ultra_scaner"][1] == 0 || this.FWP.REPLAY)
            {
               _loc1_.open_scaner.visible = false;
            }
            else
            {
               _loc1_.open_scaner.visible = true;
            }
            _loc1_.open_wpsheet.visible = !this.FWP.REPLAY;
         }
         _loc2_ = 1;
         while(_loc2_ <= this.FWP._proc.teams[0])
         {
            if(_loc2_ == 1 && this.FWP.player.cur_flag != 0)
            {
               this.SecondBitmapData.copyPixels(this.BigFlags,new Rectangle(10 + 45 * (this.FWP.player.cur_flag - 1),14,26,17),new Point(0,22 * (_loc2_ - 1)));
            }
            else
            {
               this.SecondBitmapData.copyPixels(this.CPUFlags,new Rectangle(20 * this.FWP._proc.teams[_loc2_].cpu_level,0,19,17),new Point(3,22 * (_loc2_ - 1)));
            }
            _loc3_ = 0;
            _loc4_ = 1;
            while(_loc4_ <= this.FWP._proc.worms[0])
            {
               if(this.FWP._proc.worms[_loc4_].state == "ok")
               {
                  if(this.FWP._obj[this.FWP._proc.worms[_loc4_].fid].wteam == _loc2_)
                  {
                     _loc3_ += this.FWP._obj[this.FWP._proc.worms[_loc4_].fid].vars.health;
                  }
               }
               _loc4_++;
            }
            if((_loc5_ = Math.ceil(_loc3_ / this.FWP._proc.max_team_hp * this.MAX_HP_WIDTH)) > this.MAX_HP_WIDTH)
            {
               _loc5_ = this.MAX_HP_WIDTH;
            }
            if(_loc5_ > 0)
            {
               this.SecondBitmapData.fillRect(new Rectangle(30,1 + 22 * (_loc2_ - 1),_loc5_,14),this.interface_get_color(this.FWP._proc.teams[_loc2_].color,0));
               _loc4_ = 1;
               while(_loc4_ <= _loc5_)
               {
                  this.SecondBitmapData.setPixel32(30 + _loc4_,1 + 22 * (_loc2_ - 1),this.interface_get_color(this.FWP._proc.teams[_loc2_].color,1));
                  _loc4_++;
               }
               _loc4_ = 1;
               while(_loc4_ <= _loc5_)
               {
                  this.SecondBitmapData.setPixel32(30 + _loc4_,1 + 22 * (_loc2_ - 1) + 14,this.interface_get_color(this.FWP._proc.teams[_loc2_].color,-1));
                  _loc4_++;
               }
               _loc4_ = 0;
               while(_loc4_ <= 14)
               {
                  this.SecondBitmapData.setPixel32(30,1 + 22 * (_loc2_ - 1) + _loc4_,this.interface_get_color(this.FWP._proc.teams[_loc2_].color,1));
                  _loc4_++;
               }
               _loc4_ = 1;
               while(_loc4_ <= 14)
               {
                  this.SecondBitmapData.setPixel32(30 + _loc5_,1 + 22 * (_loc2_ - 1) + _loc4_,this.interface_get_color(this.FWP._proc.teams[_loc2_].color,-1));
                  _loc4_++;
               }
            }
            _loc2_++;
         }
      }
      
      public function open_scaner() : *
      {
         if(this.FWP.REPLAY)
         {
            return;
         }
         if(this.FWP._proc.cur_worm != 0)
         {
            if(this.FWP._proc.game_control && this.FWP._proc.worms[this.FWP._proc.cur_worm].state == "ok")
            {
               if(this.FWP._proc.teams[1].weapons["ultra_scaner"][1] != 100)
               {
                  --this.FWP._proc.teams[1].weapons["ultra_scaner"][1];
               }
               this.render_game_menu();
               this.FWP._proc.GAME_FREEZE = true;
               this.init("scaner","teams");
            }
         }
      }
      
      public function click_game_invisible(param1:MouseEvent) : *
      {
         if(param1.type == "mouseDown")
         {
            this.FWP._proc.mouse_down = true;
         }
         if(param1.type == "mouseUp")
         {
            this.FWP._proc.mouse_down = false;
         }
         if(param1.type == "doubleClick")
         {
            this.FWP._proc.double_clicked();
         }
      }
      
      public function show_cursor(param1:String) : *
      {
         if(param1 == "cursor")
         {
            this.CursorClip.visible = true;
            this.modify_cursor("");
            Mouse.hide();
         }
         if(param1 == "girder")
         {
            this.GirderClip.visible = true;
         }
      }
      
      public function modify_cursor(param1:String) : *
      {
         switch(param1)
         {
            case "":
               this.CursorClip.gotoAndStop(1);
               break;
            case "from left":
               this.CursorClip.gotoAndStop(2);
               break;
            case "from right":
               this.CursorClip.gotoAndStop(3);
         }
      }
      
      public function add_distance_box(param1:Number, param2:String) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         this.distance_boxes["box" + param1] = this.FWP.container_interf.get_object("clip_distance");
         this.distance_box_container.addChild(this.distance_boxes["box" + param1]);
         this.distance_boxes["box" + param1].visible = false;
         _loc3_ = 1;
         _loc4_ = 13421772;
         switch(param2)
         {
            case "P":
               _loc3_ = 1;
               _loc4_ = 13421772;
               break;
            case "M":
               _loc3_ = 1;
               _loc4_ = 13421772;
               break;
            case "C":
               _loc3_ = 2;
               _loc4_ = 16763904;
               break;
            case "W":
               _loc3_ = 3;
               _loc4_ = 16751103;
         }
         this.distance_boxes["box" + param1].distance_box.gotoAndStop(_loc3_);
         this.distance_boxes["box" + param1].distance.text = "";
         this.distance_boxes["box" + param1].distance.textColor = _loc4_;
      }
      
      public function modify_girder_cursor(param1:Number) : *
      {
         this.GirderClip.gotoAndStop(param1);
      }
      
      public function hide_cursor(param1:String) : *
      {
         if(param1 == "cursor")
         {
            this.CursorClip.visible = false;
            Mouse.show();
         }
         if(param1 == "girder")
         {
            this.GirderClip.visible = false;
         }
      }
      
      public function x3String(param1:Number) : String
      {
         var _loc2_:* = undefined;
         _loc2_ = String(param1);
         var _loc3_:* = "";
         if(_loc2_.length == 4)
         {
            return _loc2_.charAt(0) + " " + _loc2_.substr(1,3);
         }
         if(_loc2_.length == 5)
         {
            return _loc2_.substr(0,2) + " " + _loc2_.substr(2,3);
         }
         if(_loc2_.length == 6)
         {
            return _loc2_.substr(0,3) + " " + _loc2_.substr(3,3);
         }
         if(_loc2_.length == 7)
         {
            return _loc2_.charAt(0) + " " + _loc2_.substr(1,3) + " " + _loc2_.substr(4,3);
         }
         if(_loc2_.length == 8)
         {
            return _loc2_.substr(0,2) + " " + _loc2_.substr(2,3) + " " + _loc2_.substr(5,3);
         }
         if(_loc2_.length == 9)
         {
            return _loc2_.substr(0,3) + " " + _loc2_.substr(3,3) + " " + _loc2_.substr(6,3);
         }
         return _loc2_;
      }
      
      public function x3SHString(param1:Number) : String
      {
         if(param1 < 1000000)
         {
            return this.x3String(param1);
         }
         return this.x3String(Math.floor(param1 / 1000)) + " k";
      }
      
      public function xKString(param1:Number) : String
      {
         var _loc2_:* = undefined;
         if(param1 < 1000)
         {
            _loc2_ = String(param1);
         }
         else if(param1 < 10000)
         {
            _loc2_ = String(Math.floor(param1 / 100) / 10) + "k";
         }
         else if(param1 < 100000)
         {
            _loc2_ = String(Math.floor(param1 / 100) / 10) + "k";
         }
         else if(param1 < 1000000)
         {
            _loc2_ = String(Math.floor(param1 / 1000)) + "k";
         }
         else
         {
            _loc2_ = String(Math.floor(param1 / 100000) / 10) + "m";
         }
         return _loc2_;
      }
      
      public function compare_rcolor(param1:Number, param2:Number) : Number
      {
         if(param1 < param2)
         {
            return 16731648;
         }
         if(param1 > param2)
         {
            return 10026752;
         }
         return 16763904;
      }
      
      public function interface_get_color(param1:Number, param2:Number) : Number
      {
         if(param2 == 1)
         {
            switch(param1)
            {
               case 1:
                  return 4294947506;
               case 2:
                  return 4291941119;
               case 3:
                  return 4294967295;
               case 4:
                  return 4294967295;
               case 5:
                  return 4293263359;
               case 6:
                  return 4294947583;
               case 7:
                  return 4294967295;
               default:
                  return 4294967295;
            }
         }
         else if(param2 == 0)
         {
            switch(param1)
            {
               case 1:
                  return 4294934399;
               case 2:
                  return 4288520191;
               case 3:
                  return 4286644096;
               case 4:
                  return 4294967168;
               case 5:
                  return 4286644223;
               case 6:
                  return 4294934783;
               case 7:
                  return 4293914607;
               default:
                  return 4294967295;
            }
         }
         else
         {
            switch(param1)
            {
               case 1:
                  return 4294921292;
               case 2:
                  return 4285361919;
               case 3:
                  return 4283301708;
               case 4:
                  return 4292466966;
               case 5:
                  return 4281263589;
               case 6:
                  return 4293215717;
               case 7:
                  return 4289967027;
               default:
                  return 4294967295;
            }
         }
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
      
      public function get_minimap_coords(param1:String, param2:Number, param3:Boolean = false) : BitmapData
      {
         var _loc4_:BitmapData = null;
         var _loc5_:String = null;
         var _loc6_:* = undefined;
         var _loc7_:RegExp = null;
         var _loc8_:Array = null;
         var _loc9_:* = undefined;
         _loc4_ = new BitmapData(314,115,true,0);
         _loc5_ = param1 + param2;
         if(param1 == "missions")
         {
            _loc5_ = "mission" + param2;
         }
         if(param3)
         {
            _loc5_ = "just" + param2;
         }
         _loc6_ = this.FWP.TEAMS_DEF[_loc5_].map;
         _loc7_ = /(\d+)/;
         _loc8_ = _loc6_.split(_loc7_);
         _loc9_ = this.minimaps[_loc8_[0]];
         _loc4_.copyPixels(_loc9_,new Rectangle(0,(Number(_loc8_[1]) - 1) * 115,314,115),new Point(0,0),null,null,true);
         return _loc4_;
      }
      
      public function get_episode(param1:Number) : String
      {
         if(param1 <= 5)
         {
            return "Эпизод 1 : Вормвилль";
         }
         if(param1 <= 10)
         {
            return "Эпизод 2 : Заброшенная шахта";
         }
         if(param1 <= 16)
         {
            return "Эпизод 3 : Альпы";
         }
         if(param1 <= 21)
         {
            return "Эпизод 4 : Потерянный остров";
         }
         if(param1 <= 26)
         {
            return "Эпизод 5 : Верхний мир";
         }
         if(param1 <= 31)
         {
            return "Эпизод 6 : Отражение";
         }
         return "";
      }
      
      public function get_popup_height(param1:Number) : Number
      {
         return 61 + (param1 - 1) * 14;
      }
      
      public function get_sell_price(param1:String, param2:Number = 1, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         if(this.shop_type == "weapons")
         {
            _loc5_ = this.FWP.WEAPONS_DEF;
         }
         if(this.shop_type == "help")
         {
            _loc5_ = this.FWP.STIM_DEF;
         }
         if(this.shop_type == "flags")
         {
            _loc5_ = this.FWP.FLAGS_DEF;
         }
         if(this.shop_type == "rip")
         {
            _loc5_ = this.FWP.RIPS_DEF;
         }
         if(this.shop_type == "impl")
         {
            _loc5_ = this.FWP.IMPL_DEF;
         }
         if(this.shop_type == "objs")
         {
            _loc5_ = this.FWP.OBJ_DEF;
         }
         _loc6_ = 0;
         if(this.FWP.player.perks["bar"])
         {
            _loc6_ = this.FWP.get_perk_effect("bar",this.FWP.player.perks.bar,"");
         }
         if(param4)
         {
            _loc6_ -= 0.1;
         }
         if(this.shop_type == "impl")
         {
            return _loc5_[param1].gold;
         }
         if(param1 == "kenton_bazooka" || param1 == "kenton_grenade" || param1 == "void_melody")
         {
            return _loc5_[param1].gold;
         }
         _loc7_ = 1;
         if(this.shop_type == "weapons" && param2 > 1)
         {
            _loc7_ = this.FWP.get_range_upgrade(param2,"sell_price",1);
         }
         if(param3)
         {
            return 50;
         }
         if(_loc5_[param1].gold == 0)
         {
            return 3000;
         }
         return Math.floor(_loc7_ * _loc5_[param1].gold * (0.3 + _loc6_));
      }
      
      public function get_ending(param1:String, param2:Number) : String
      {
         if(param1 == "level")
         {
            if(param2 == 1)
            {
               return "ень";
            }
            if(param2 < 5)
            {
               return "ня";
            }
            return "ней";
         }
         return "";
      }
   }
}
