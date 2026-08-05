package
{
   import classes.*;
   import com.*;
   import com.adobe.crypto.*;
   import flash.display.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.net.*;
   import flash.system.*;
   import flash.ui.*;
   import flash.utils.*;
   import vk.*;
   
   public class FWP extends Sprite
   {
      
      public static const ASSET_FWP:Class = FWP_ASSET_FWP;
      
      public static const ASSET_INTERF:Class = FWP_ASSET_INTERF;
      
      public static const ASSET_OBJ:Class = FWP_ASSET_OBJ;
      
      public static const ASSET_PROC:Class = FWP_ASSET_PROC;
      
      public static const ASSET_SOUND:Class = FWP_ASSET_SOUND;
      
      public static const ASSET_WORLD:Class = FWP_ASSET_WORLD;
      
      public static const ASSET_MAP_ASSAULT_1:Class = FWP_ASSET_MAP_ASSAULT_1;
      
      public static const ASSET_MAP_ASSAULT_2:Class = FWP_ASSET_MAP_ASSAULT_2;
      
      public static const ASSET_MAP_ASSAULT_3:Class = FWP_ASSET_MAP_ASSAULT_3;
      
      public static const ASSET_MAP_ASSAULT_4:Class = FWP_ASSET_MAP_ASSAULT_4;
      
      public static const ASSET_MAP_ASSAULT_5:Class = FWP_ASSET_MAP_ASSAULT_5;
      
      public static const ASSET_MAP_ASSAULT_6:Class = FWP_ASSET_MAP_ASSAULT_6;
      
      public static const ASSET_MAP_ASSAULT_7:Class = FWP_ASSET_MAP_ASSAULT_7;
      
      public static const ASSET_MAP_ASSAULT_8:Class = FWP_ASSET_MAP_ASSAULT_8;
      
      public static const ASSET_MAP_ASSAULT_9:Class = FWP_ASSET_MAP_ASSAULT_9;
      
      public static const ASSET_MAP_ASSAULT_10:Class = FWP_ASSET_MAP_ASSAULT_10;
      
      public static const ASSET_MAP_ASSAULT_11:Class = FWP_ASSET_MAP_ASSAULT_11;
      
      public static const ASSET_MAP_ASSAULT_12:Class = FWP_ASSET_MAP_ASSAULT_12;
      
      public static const ASSET_MAP_ASSAULT_13:Class = FWP_ASSET_MAP_ASSAULT_13;
      
      public static const ASSET_MAP_ASSAULT_14:Class = FWP_ASSET_MAP_ASSAULT_14;
      
      public static const ASSET_MAP_ASSAULT_15:Class = FWP_ASSET_MAP_ASSAULT_15;
      
      public static const ASSET_MAP_ASSAULT_16:Class = FWP_ASSET_MAP_ASSAULT_16;
      
      public static const ASSET_MAP_ASSAULT_17:Class = FWP_ASSET_MAP_ASSAULT_17;
      
      public static const ASSET_MAP_BOSS_1:Class = FWP_ASSET_MAP_BOSS_1;
      
      public static const ASSET_MAP_BOSS_2:Class = FWP_ASSET_MAP_BOSS_2;
      
      public static const ASSET_MAP_BOSS_3:Class = FWP_ASSET_MAP_BOSS_3;
      
      public static const ASSET_MAP_BOSS_4:Class = FWP_ASSET_MAP_BOSS_4;
      
      public static const ASSET_MAP_BOSS_5:Class = FWP_ASSET_MAP_BOSS_5;
      
      public static const ASSET_MAP_BOSS_6:Class = FWP_ASSET_MAP_BOSS_6;
      
      public static const ASSET_MAP_BOSS_7:Class = FWP_ASSET_MAP_BOSS_7;
      
      public static const ASSET_MAP_BOSS_8:Class = FWP_ASSET_MAP_BOSS_8;
      
      public static const ASSET_MAP_BOSS_9:Class = FWP_ASSET_MAP_BOSS_9;
      
      public static const ASSET_MAP_BOSS_10:Class = FWP_ASSET_MAP_BOSS_10;
      
      public static const ASSET_MAP_BOSS_11:Class = FWP_ASSET_MAP_BOSS_11;
      
      public static const ASSET_MAP_BOSS_12:Class = FWP_ASSET_MAP_BOSS_12;
      
      public static const ASSET_MAP_BOSS_13:Class = FWP_ASSET_MAP_BOSS_13;
      
      public static const ASSET_MAP_FORBIDDEN_1:Class = FWP_ASSET_MAP_FORBIDDEN_1;
      
      public static const ASSET_MAP_FORBIDDEN_2:Class = FWP_ASSET_MAP_FORBIDDEN_2;
      
      public static const ASSET_MAP_FORBIDDEN_3:Class = FWP_ASSET_MAP_FORBIDDEN_3;
      
      public static const ASSET_MAP_FORBIDDEN_4:Class = FWP_ASSET_MAP_FORBIDDEN_4;
      
      public static const ASSET_MAP_FORBIDDEN_5:Class = FWP_ASSET_MAP_FORBIDDEN_5;
      
      public static const ASSET_MAP_FORBIDDEN_6:Class = FWP_ASSET_MAP_FORBIDDEN_6;
      
      public static const ASSET_MAP_FORBIDDEN_7:Class = FWP_ASSET_MAP_FORBIDDEN_7;
      
      public static const ASSET_MAP_FORBIDDEN_8:Class = FWP_ASSET_MAP_FORBIDDEN_8;
      
      public static const ASSET_MAP_FORBIDDEN_9:Class = FWP_ASSET_MAP_FORBIDDEN_9;
      
      public static const ASSET_MAP_FORBIDDEN_10:Class = FWP_ASSET_MAP_FORBIDDEN_10;
      
      public static const ASSET_MAP_MISSION_1:Class = FWP_ASSET_MAP_MISSION_1;
      
      public static const ASSET_MAP_MISSION_2:Class = FWP_ASSET_MAP_MISSION_2;
      
      public static const ASSET_MAP_MISSION_3:Class = FWP_ASSET_MAP_MISSION_3;
      
      public static const ASSET_MAP_MISSION_4:Class = FWP_ASSET_MAP_MISSION_4;
      
      public static const ASSET_MAP_MISSION_5:Class = FWP_ASSET_MAP_MISSION_5;
      
      public static const ASSET_MAP_MISSION_6:Class = FWP_ASSET_MAP_MISSION_6;
      
      public static const ASSET_MAP_MISSION_7:Class = FWP_ASSET_MAP_MISSION_7;
      
      public static const ASSET_MAP_MISSION_8:Class = FWP_ASSET_MAP_MISSION_8;
      
      public static const ASSET_MAP_MISSION_9:Class = FWP_ASSET_MAP_MISSION_9;
      
      public static const ASSET_MAP_MISSION_10:Class = FWP_ASSET_MAP_MISSION_10;
      
      public static const ASSET_MAP_MISSION_11:Class = FWP_ASSET_MAP_MISSION_11;
      
      public static const ASSET_MAP_MISSION_12:Class = FWP_ASSET_MAP_MISSION_12;
      
      public static const ASSET_MAP_MISSION_13:Class = FWP_ASSET_MAP_MISSION_13;
      
      public static const ASSET_MAP_MISSION_14:Class = FWP_ASSET_MAP_MISSION_14;
      
      public static const ASSET_MAP_MISSION_15:Class = FWP_ASSET_MAP_MISSION_15;
      
      public static const ASSET_MAP_MISSION_16:Class = FWP_ASSET_MAP_MISSION_16;
      
      public static const ASSET_MAP_MISSION_17:Class = FWP_ASSET_MAP_MISSION_17;
      
      public static const ASSET_MAP_MISSION_18:Class = FWP_ASSET_MAP_MISSION_18;
      
      public static const ASSET_MAP_MISSION_19:Class = FWP_ASSET_MAP_MISSION_19;
      
      public static const ASSET_MAP_MISSION_20:Class = FWP_ASSET_MAP_MISSION_20;
      
      public static const ASSET_MAP_MISSION_21:Class = FWP_ASSET_MAP_MISSION_21;
      
      public static const ASSET_MAP_MOLIVAND_1:Class = FWP_ASSET_MAP_MOLIVAND_1;
      
      public static const ASSET_MAP_MOLIVAND_2:Class = FWP_ASSET_MAP_MOLIVAND_2;
      
      public static const ASSET_MAP_MOLIVAND_3:Class = FWP_ASSET_MAP_MOLIVAND_3;
      
      public static const ASSET_MAP_MOLIVAND_4:Class = FWP_ASSET_MAP_MOLIVAND_4;
      
      public static const ASSET_MAP_MOLIVAND_5:Class = FWP_ASSET_MAP_MOLIVAND_5;
      
      public static const ASSET_MAP_ROLITRAD_1:Class = FWP_ASSET_MAP_ROLITRAD_1;
      
      public static const ASSET_MAP_ROLITRAD_2:Class = FWP_ASSET_MAP_ROLITRAD_2;
      
      public static const ASSET_MAP_ROLITRAD_3:Class = FWP_ASSET_MAP_ROLITRAD_3;
      
      public static const ASSET_MAP_ROLITRAD_4:Class = FWP_ASSET_MAP_ROLITRAD_4;
      
      public static const ASSET_MAP_ROLITRAD_5:Class = FWP_ASSET_MAP_ROLITRAD_5;
      
      public static const ASSET_MAP_SHEOVAR_1:Class = FWP_ASSET_MAP_SHEOVAR_1;
      
      public static const ASSET_MAP_SHEOVAR_2:Class = FWP_ASSET_MAP_SHEOVAR_2;
      
      public static const ASSET_MAP_SHEOVAR_3:Class = FWP_ASSET_MAP_SHEOVAR_3;
      
      public static const ASSET_MAP_SHEOVAR_4:Class = FWP_ASSET_MAP_SHEOVAR_4;
      
      public static const ASSET_MAP_SHEOVAR_5:Class = FWP_ASSET_MAP_SHEOVAR_5;
      
      public static const ASSET_MAP_TRAVER_1:Class = FWP_ASSET_MAP_TRAVER_1;
      
      public static const ASSET_MAP_TRAVER_2:Class = FWP_ASSET_MAP_TRAVER_2;
      
      public static const ASSET_MAP_TRAVER_3:Class = FWP_ASSET_MAP_TRAVER_3;
      
      public static const ASSET_MAP_TRAVER_4:Class = FWP_ASSET_MAP_TRAVER_4;
      
      public static const ASSET_MAP_TRAVER_5:Class = FWP_ASSET_MAP_TRAVER_5;
      
      public static const ASSET_MAP_WORMVILLE_1:Class = FWP_ASSET_MAP_WORMVILLE_1;
      
      public static const ASSET_MAP_WORMVILLE_2:Class = FWP_ASSET_MAP_WORMVILLE_2;
      
      public static const ASSET_MAP_WORMVILLE_3:Class = FWP_ASSET_MAP_WORMVILLE_3;
      
      public static const ASSET_MAP_WORMVILLE_4:Class = FWP_ASSET_MAP_WORMVILLE_4;
      
      public static const ASSET_MAP_WORMVILLE_5:Class = FWP_ASSET_MAP_WORMVILLE_5;
      
      public static const ASSET_ID_FWP:uint = 0;
      
      public static const ASSET_ID_INTERF:uint = 1;
      
      public static const ASSET_ID_OBJ:uint = 2;
      
      public static const ASSET_ID_PROC:uint = 3;
      
      public static const ASSET_ID_SOUND:uint = 4;
      
      public static const ASSET_ID_WORLD:uint = 5;
       
      
      public var LOCAL_TEST = false;
      
      public var LAST_CONTEST_STATE = 6;
      
      public var MAIN_APPL = true;
      
      public var cur_random = 500;
      
      public var RANDOM_NUMBERS;
      
      public var WINDOW_WIDTH:Number = 807;
      
      public var WINDOW_HEIGHT:Number = 600;
      
      public var TIRED_THRESHOLD = 1000;
      
      public var loading_screen;
      
      public var debug_text = "";
      
      public var _play_mode = "";
      
      public var _play_id = 0;
      
      public var _play_zone_stage = 0;
      
      public var TOP_BY_LEVEL;
      
      public var TOP_BY_RATING;
      
      public var TOP_BY_ASSAULT;
      
      public var top_uids = "";
      
      public var top_names;
      
      public var INC;
      
      public var inc_uids = "";
      
      public var inc_names;
      
      public var FRIENDS;
      
      public var friends_uids = "";
      
      public var friends_names;
      
      public var clans_uids = "";
      
      public var clans_names;
      
      public var user_clan = 0;
      
      public var ASSAULT;
      
      public var assault_uids = "";
      
      public var assault_names;
      
      public var assault_cur_time = 0;
      
      public var PAPA_HERE = false;
      
      public var end_game;
      
      public var display_front_world;
      
      public var display_obj;
      
      public var display_back_world;
      
      public var display_interf;
      
      public var display_banner;
      
      public var display_system;
      
      public var display_big_inv;
      
      public var splash_error;
      
      public var splash_wait;
      
      public var splash_debug;
      
      public var debug_window;
      
      public var splash_big_error;
      
      public var main_mode = "";
      
      public var main_timeout = 0;
      
      public var main_execute = "";
      
      public var wait_for_complete = false;
      
      public var wait_for_avatars = false;
      
      public var avatar_to_download = 0;
      
      public var files_preloaded = 0;
      
      public var FILES_TO_PRELOAD = 5;
      
      public var FPS = 20;
      
      public var flashVars:Object;
      
      public var VK:EIApiConnection;
      
      public var _world;
      
      public var _obj;
      
      public var max_object = 0;
      
      public var _proc;
      
      public var _interf;
      
      public var _sound;
      
      public var TIRED_EFFECTS;
      
      public var STIM_DEF;
      
      public var PEACHFUL_BONUS;
      
      public var LEVEL_THRESHOLD;
      
      public var PERKS_DEF;
      
      public var WEAPONS_DEF;
      
      public var TEAMS_DEF;
      
      public var GUM_DEF;
      
      public var MISSION_WEAP_DEF;
      
      public var MISSION_DESC;
      
      public var ROUL_VER;
      
      public var SPEC_DEF;
      
      public var TASK_DEF;
      
      public var CLANS_DEF;
      
      public var CLANS_PEOPLE_DEF;
      
      public var ACHIEV_DEF;
      
      public var ACHIEV_PRISE_DEF;
      
      public var ACHIEV_RATING_BONUS;
      
      public var CRAFT_DEF;
      
      public var WORLD_DEF;
      
      public var FLAGS_DEF;
      
      public var RIPS_DEF;
      
      public var IMPL_DEF;
      
      public var OBJ_DEF;
      
      public var BOOKS_DEF;
      
      public var WEAPON_ICONS;
      
      public var WP_PLACES_SORT;
      
      public var LEAGUE_THRESHOLD;
      
      public var COREAN_RANDOM;
      
      public var PAPA_HOURS;
      
      public var PAPA_WEAPONS;
      
      public var PAPA_OBJECTS;
      
      public var C_RED = 1;
      
      public var C_BLUE = 2;
      
      public var C_GREEN = 3;
      
      public var C_YELLOW = 4;
      
      public var C_CYAN = 5;
      
      public var C_PURPLE = 6;
      
      public var C_WHITE = 7;
      
      public var WORM_WALK_MOMENT = 5;
      
      public var FIRING_START = 12;
      
      public var TIRED_INC = 10;
      
      public var user;
      
      public var map_info;
      
      public var player;
      
      public var temp_player;
      
      public var saved_stims;
      
      public var get_info;
      
      public var get_info_uid = 0;
      
      public var get_info_string = "";
      
      public var get_roul = 0;
      
      public var roul_weapon = "";
      
      public var grave_found = "";
      
      public var grave_found_type = "";
      
      public var get_present = 0;
      
      public var string_to_save = "";
      
      public var string_to_save255 = "";
      
      public var world_to_save = "";
      
      public var execute_after = "";
      
      public var user_info_mode = "";
      
      public var image_loaders;
      
      public var images;
      
      public var avdatas;
      
      public var animation = false;
      
      public var animation_y = 0;
      
      public var animation_mode = "show";
      
      public var execute_after_animation = "";
      
      public var main_map_dl = false;
      
      public var main_map_dl_id = "";
      
      public var main_execute_after_map_dl = "";
      
      public var grave_process = 0;
      
      public var grave_searching = false;
      
      public var GSEARCHTIME = 500;
      
      public var interf_mainframe = false;
      
      public var clans_rating;
      
      public var clan_people_assaults;
      
      public var auc_weapons;
      
      public var win_auc_weapons;
      
      public var auc_info;
      
      public var auc_names;
      
      public var KEY_PRESSED:String = "";
      
      public var SPACE_PRESSED:Boolean = false;
      
      public var QUICK_WEAPON_PRESSED:String = "";
      
      public var KEYS_ARRAY:Array;
      
      public var MUSIC:Boolean = true;
      
      public var SOUND:Boolean = true;
      
      public var INIT_STAGES = 10;
      
      public var ADMIN_FRIEND = false;
      
      public var USER_NOTES;
      
      public var new_weapon = "";
      
      public var STORAGE_TRYES = 0;
      
      public var STORAGE_MAX_TRYES = 5;
      
      public var CURRENT_SID = "";
      
      public var OOPS_BANNED = false;
      
      public var BAN_DESC;
      
      public var ADVICES;
      
      public var fwproject_time = 0;
      
      public var banner_clicked:int = 0;
      
      public var read_params_end:Boolean = false;
      
      public var localData:SharedObject;
      
      public var _assets:Array;
      
      private var _filesToLoad:Array;
      
      private var _filesToLoadAmount:int;
      
      private var _filesToLoadPointer:int;
      
      private var _loader:Loader;
      
      public var mapLoader;
      
      public var mapRequest;
      
      public var LoadedBitmap:BitmapData;
      
      public var bug_report = "";
      
      public var REPLAY = false;
      
      public var REPLAY_STRING = "";
      
      public var REPLAY_STRING_PARAMS = "";
      
      public var REPLAY_STRING_MOVES = "";
      
      public var REPLAY_STRING_CUR_MOVE = "";
      
      public var REPLAY_CUR_MOVE;
      
      public var replay_play_mode = "";
      
      public var replay_play_id = 0;
      
      public var replay_cur_random = 0;
      
      public var player_perks_saved;
      
      public var player_skill_saved = 0;
      
      public var player_tired_saved = 0;
      
      public var player_impl_saved = 0;
      
      public var test_params = "ABG0GAAAAAAexLKBAoBBALBAAAzBddylqBikxlqBJBAAAAAAAAAAAAAAAAAAAAAEAAAAAAAApByRAyUADNAAAAAAAAoDKDBADAAAAAAAAAAAASADuADZAKhADmADIADGADCBDbADAAAyVWNFBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAtAAAAAAAAAAAAAAAAAAAAGAAAAAAAAAAADEDCAAAAAAAACAEAAFAAABCKAAAAJAKKKAAFACAAKEKDDKFFAAABAAAABAAAABEDAAFBABHKAKBCBAEKADDAFBHEBFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5NAkDAGWArBASdA7bAGCAkCAfRAQKAGJAAAAVLA3hAMAABKAbUAIBAhAARFHIGFGGFJKIAILDLMEBRo4BDMPPIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAVBAAAABAAAAAAAAAAABABAAAAAAAAAAAAAAAAAAAAAAAAAAAAASAAASBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABikxlqBAAA31CAAA15plqBOAyAAAAAAAAAAAAAAAAAAAAAAAAAeRISLSKSGSBSAAAAAAAAAAAAAAAAAAlRES5RDSTSBSAAAAAAAAAAAAAAAAAAlRASDSUSFSTSBSAAAAAAAAAAAAAAAApRASKSISTSBSAAAAAAAAAAAAAAAAAAnRESFSTSBSAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHRAulqBBAAAQYAUyyFJDKKEoUkAAGMTCBBAABBBBBCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAAAAAAAAAAAAAAAAAA7n6kqBAAAAaaAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
      
      public function FWP()
      {
         this.RANDOM_NUMBERS = new Array();
         this.TOP_BY_LEVEL = new Array();
         this.TOP_BY_RATING = new Array();
         this.TOP_BY_ASSAULT = new Array();
         this.top_names = {};
         this.INC = new Array();
         this.inc_names = {};
         this.FRIENDS = new Array(0,{});
         this.friends_names = {};
         this.clans_names = {};
         this.ASSAULT = new Array();
         this.assault_names = {};
         this.end_game = {};
         this.display_front_world = new MovieClip();
         this.display_obj = new MovieClip();
         this.display_back_world = new MovieClip();
         this.display_interf = new MovieClip();
         this.display_banner = new MovieClip();
         this.display_system = new MovieClip();
         this.display_big_inv = new MovieClip();
         this._obj = {};
         this.CLANS_PEOPLE_DEF = [];
         this.user = {
            "user_id":0,
            "name":"",
            "params":"",
            "custom_params":"",
            "unix_time":0
         };
         this.map_info = new Array();
         this.player = {
            "level":1,
            "perks":{},
            "stim_behave":{},
            "stim_to_fight":{},
            "weapons":{},
            "settings":{},
            "achiev":{},
            "last_achiev":{},
            "progress":{},
            "quick_weapons":{},
            "flags":{},
            "rip":{},
            "impl":{},
            "objs":{},
            "recipes":[]
         };
         this.temp_player = {
            "level":1,
            "perks":{},
            "stim_behave":{},
            "stim_to_fight":{},
            "weapons":{},
            "settings":{},
            "achiev":{},
            "last_achiev":{},
            "progress":{},
            "quick_weapons":{},
            "flags":{},
            "rip":{},
            "impl":{},
            "objs":{},
            "recipes":[]
         };
         this.saved_stims = {};
         this.get_info = {
            "level":1,
            "perks":{},
            "stim_behave":{},
            "stim_to_fight":{},
            "weapons":{},
            "settings":{},
            "achiev":{},
            "last_achiev":{},
            "progress":{},
            "quick_weapons":{},
            "flags":{},
            "rip":{},
            "impl":{},
            "objs":{},
            "recipes":[]
         };
         this.image_loaders = {};
         this.images = {};
         this.avdatas = {};
         this.clans_rating = [];
         this.clan_people_assaults = [0,[]];
         this.auc_weapons = {"annihilator":0};
         this.win_auc_weapons = {"annihilator":0};
         this.auc_info = {
            "user_id":0,
            "price":0,
            "last_buy":0,
            "winners":"",
            "cur_time":0
         };
         this.auc_names = {};
         this.KEYS_ARRAY = new Array();
         this.USER_NOTES = new Array(0,{});
         this.BAN_DESC = new Array();
         this.ADVICES = [9,"Огонь не наносит вашим червям никакого урона при защите больше 120 или при Пороге урона больше 0.","При навыке Защита больше 210 яд не отравляет ваших червяков.","При навыке Защита больше 270 ваших червей невозможно парализовать.","При усталости 80% и выше ваши параметры Атаки, Защиты\nи Здоровья ухудшаются.","Если вас поймали при краже оружия, можно запудрить продавцу мозги или пожаловаться на высокие цены.","Чем выше уровень сложности, тем больше опыта и золота\nвы получаете при победе.","Чтобы понизить уровень усталости, отдохните некоторое время или используйте стимулятор.","Чтобы цены в магазине были меньше, можно взять способность \"Торговец\".","Рейтинг в игре зависит от количества побед, одержанных сегодня, и от количества вчерашних побед."];
         this.REPLAY_CUR_MOVE = new Array();
         this.player_perks_saved = {};
         super();
         this.localData = SharedObject.getLocal("local_data");
         Security.allowDomain("*");
         this._assets = [];
         this._filesToLoad = [];
         this._filesToLoad.push([ASSET_ID_FWP,ASSET_FWP]);
         this._filesToLoad.push([ASSET_ID_INTERF,ASSET_INTERF]);
         this._filesToLoad.push([ASSET_ID_OBJ,ASSET_OBJ]);
         this._filesToLoad.push([ASSET_ID_PROC,ASSET_PROC]);
         this._filesToLoad.push([ASSET_ID_SOUND,ASSET_SOUND]);
         this._filesToLoad.push([ASSET_ID_WORLD,ASSET_WORLD]);
         this._filesToLoadAmount = this._filesToLoad.length;
         this._filesToLoadPointer = 0;
         this.startAssetLoading();
      }
      
      public function getLocalStorage() : String
      {
         var _loc1_:* = this.localData.data.storage;
         if(!_loc1_)
         {
            return "";
         }
         return _loc1_;
      }
      
      public function setLocalStorage(param1:String) : void
      {
         this.localData.data.storage = param1;
         this.localData.flush();
      }
      
      private function startAssetLoading(param1:Event = null) : void
      {
         this._loader = new Loader();
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.assetLoaded,false,0,true);
         this._loader.loadBytes(new this._filesToLoad[this._filesToLoadPointer][1]() as ByteArray);
      }
      
      private function assetLoaded(param1:Event) : void
      {
         this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.assetLoaded);
         this._assets[this._filesToLoad[this._filesToLoadPointer][0]] = (param1.target as LoaderInfo).content;
         ++this._filesToLoadPointer;
         if(this._filesToLoadPointer == this._filesToLoadAmount)
         {
            this.allAssetsLoaded();
         }
         else
         {
            this.startAssetLoading();
         }
      }
      
      public function get container_world() : *
      {
         return this._assets[ASSET_ID_WORLD];
      }
      
      public function get container_obj() : *
      {
         return this._assets[ASSET_ID_OBJ];
      }
      
      public function get container_proc() : *
      {
         return this._assets[ASSET_ID_PROC];
      }
      
      public function get container_interf() : *
      {
         return this._assets[ASSET_ID_INTERF];
      }
      
      public function get container_sound() : *
      {
         return this._assets[ASSET_ID_SOUND];
      }
      
      public function allAssetsLoaded() : *
      {
         this.splash_error = this._assets[ASSET_ID_FWP].get("_splash_error");
         this.splash_wait = this._assets[ASSET_ID_FWP].get("_splash_waiting");
         this.splash_debug = this._assets[ASSET_ID_FWP].get("_splash_debug");
         this.debug_window = this._assets[ASSET_ID_FWP].get("_debug_window");
         this.splash_big_error = this._assets[ASSET_ID_FWP].get("_splash_big_error");
         this.init_data_arrays();
         this.init_random_numbers();
         this.flashVars = stage.loaderInfo.parameters as Object;
         if(!this.flashVars.api_id)
         {
            this.flashVars["api_id"] = 4329578;
            this.flashVars["viewer_id"] = 77226401;
            this.flashVars["sid"] = "c94e25b2db57c9defa18f8f778a68b4482a4742183c67e5809ac159bf360f4";
            this.flashVars["secret"] = "69b8c823fe";
         }
         this.VK = new EIApiConnection();
         this.init_context_menu();
         this.user.name = String(this.flashVars.api_result).split("\"")[7];
         if(this.user.name == undefined)
         {
            this.user.name = "Игрок";
         }
         this.debug_text += "user_name: " + this.user.name + "\n";
         if(!this.LOCAL_TEST)
         {
            if(this.flashVars.api_id != 4329578 && this.flashVars.api_id != 2442943 && this.flashVars.api_id != 2454140)
            {
               return;
            }
            if(this.flashVars.api_id != 4329578)
            {
               this.MAIN_APPL = false;
            }
         }
         else
         {
            if(this.test_params == "")
            {
               this.create_new_params("local");
            }
            else
            {
               this.read_storage(this.test_params,"my");
            }
            this.user.user_id = 77226401;
         }
         addChild(this.display_back_world);
         addChild(this.display_obj);
         addChild(this.display_front_world);
         addChild(this.display_interf);
         addChild(this.display_banner);
         addChild(this.display_system);
         addChild(this.display_big_inv);
         this.display_big_inv.addChild(this._assets[ASSET_ID_FWP].get("empty_button"));
         this.display_big_inv.visible = false;
         this.display_big_inv.getChildAt(0).useHandCursor = false;
         this.splash_debug.close_debug.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
         {
            display_system.removeChild(splash_debug);
         });
         addEventListener(Event.ENTER_FRAME,this._main);
         this.loading_screen = this._assets[ASSET_ID_FWP].get("splash_loading");
         this.display_system.addChild(this.loading_screen);
         this.loading_screen.loading.text = "0%";
         this.loading_screen.stat_text.text = "Загрузка...";
         this.loading_screen.bar.mask.width = 0;
         this.loading_screen.advice.advice_text.text = this.ADVICES[this.true_random(1,this.ADVICES[0])];
         this.loading_screen.stat_text.text = "Инициализация...";
         this.loading_screen.loading.text = "0 / " + this.INIT_STAGES;
         this.net_get_tops();
         stage.tabChildren = false;
      }
      
      public function _main(param1:Event) : *
      {
         var _loc2_:* = undefined;
         if(this.wait_for_avatars || this.main_map_dl)
         {
            return;
         }
         if(this.animation)
         {
            this.animation_y += 50;
            this._interf.cur_screen[this._interf.cur_screen[0]].link.y = this.animation_y;
            if(this.animation_y >= 0 && this.animation_mode == "show")
            {
               this.animation = false;
               this.set_invisible_button(false);
            }
            if(this.animation_y >= 600 && this.animation_mode == "hide")
            {
               this.animation = false;
               this.set_invisible_button(false);
               this._interf.remove_instant();
               if(this.execute_after_animation == "new level")
               {
                  this._interf.init_new_level();
               }
               if(this.execute_after_animation == "surprise")
               {
                  this._interf.init("surprise");
               }
               this.execute_after_animation = "";
            }
         }
         if(this.grave_searching)
         {
            ++this.grave_process;
            this._interf.render_grave_search();
            _loc2_ = 1;
            if(this.player.perks["gsearch"])
            {
               _loc2_ = this.get_perk_effect("gsearch",this.player.perks.gsearch,"");
            }
            if(this.grave_process >= this.GSEARCHTIME * _loc2_)
            {
               this.grave_process = 0;
               this.grave_searching = false;
               this._interf.finish_grave_search();
               this.set_invisible_button(false);
            }
         }
         if(this.main_mode == "PRELOADING")
         {
            return;
         }
         if(this.main_mode == "NET_INIT" && !this.wait_for_complete)
         {
            if(this.main_timeout != 0)
            {
               this.main_timeout -= this.FPS;
               if(this.main_timeout <= 0)
               {
                  this.net_command();
               }
            }
            return;
         }
         if(this.main_mode == "IDLE")
         {
            if(this.interf_mainframe)
            {
               this._interf.mainframe_animation();
            }
            return;
         }
         if(this.main_mode == "LOCAL_GAME")
         {
            this._proc.ongoing();
         }
      }
      
      public function init_data_arrays() : *
      {
         var _loc2_:* = undefined;
         var _loc1_:* = Number.POSITIVE_INFINITY;
         this.WORLD_DEF = {
            "wormville":{
               "pos":1,
               "tasks":new Array(15,"mission1","mission2","mission3","mission4","mission5","career1","career2","career3","career4","career5","career6","career7","career8","career9","career10"),
               "name":"Вормвилль",
               "coord_x":5,
               "coord_y":4,
               "shop":false
            },
            "papa_john":{
               "pos":2,
               "tasks":new Array(1,"john"),
               "name":"Магазин Папы Джона",
               "coord_x":13,
               "coord_y":2,
               "shop":true
            }
         };
         this.TIRED_EFFECTS = new Array({
            "threshold":80,
            "attack":-2,
            "protect":-2,
            "health":0.9
         },{
            "threshold":90,
            "attack":-5,
            "protect":-5,
            "health":0.8
         },{
            "threshold":100,
            "attack":-10,
            "protect":-10,
            "health":0.75
         },{
            "threshold":120,
            "attack":-20,
            "protect":-20,
            "health":0.5
         },{
            "threshold":150,
            "attack":-50,
            "protect":-50,
            "health":0.3
         },{
            "threshold":200,
            "attack":-200,
            "protect":-200,
            "health":0.2
         },{
            "threshold":250,
            "attack":-300,
            "protect":-300,
            "health":0.1
         });
         this.STIM_DEF = {
            "stimpack":{
               "id":1,
               "tired":-9,
               "attack":0,
               "protect":0,
               "health":30,
               "level":1,
               "gold":150,
               "diam":1,
               "limit":50,
               "name":"Стимпакет"
            },
            "jet":{
               "id":2,
               "tired":-11,
               "attack":10,
               "protect":-2,
               "health":0,
               "level":1,
               "gold":300,
               "diam":1,
               "limit":50,
               "name":"Винт"
            },
            "buffout":{
               "id":3,
               "tired":-11,
               "attack":-2,
               "protect":10,
               "health":0,
               "level":1,
               "gold":300,
               "diam":1,
               "limit":50,
               "name":"Стероиды"
            },
            "superstimpack":{
               "id":4,
               "tired":-30,
               "attack":0,
               "protect":0,
               "health":100,
               "level":1,
               "gold":3000,
               "diam":3,
               "limit":50,
               "name":"Суперстимпакет"
            },
            "psycho":{
               "id":5,
               "tired":-100,
               "attack":25,
               "protect":25,
               "health":150,
               "level":1,
               "gold":8000,
               "diam":8,
               "limit":50,
               "name":"Психо"
            },
            "fruit":{
               "id":6,
               "tired":-1000,
               "attack":50,
               "protect":50,
               "health":400,
               "level":1,
               "gold":35000,
               "diam":35,
               "limit":50,
               "name":"Мутафрукт"
            }
         };
         this.FLAGS_DEF = {
            "flag_russia":{
               "limit":1,
               "level":1,
               "id":1,
               "gold":100,
               "diam":1,
               "req":"none",
               "req_amnt":0,
               "name":"Флаг России"
            },
            "flag_usa":{
               "limit":1,
               "level":1,
               "id":2,
               "gold":150,
               "diam":1,
               "req":"none",
               "req_amnt":0,
               "name":"Флаг США"
            },
            "flag_ukraine":{
               "limit":1,
               "level":1,
               "id":3,
               "gold":250,
               "diam":1,
               "req":"none",
               "req_amnt":0,
               "name":"Флаг Украины"
            },
            "flag_japan":{
               "limit":1,
               "level":1,
               "id":4,
               "gold":300,
               "diam":1,
               "req":"none",
               "req_amnt":0,
               "name":"Флаг Японии"
            },
            "flag_china":{
               "limit":1,
               "level":1,
               "id":5,
               "gold":300,
               "diam":1,
               "req":"none",
               "req_amnt":0,
               "name":"Флаг Китая"
            },
            "flag_germany":{
               "limit":1,
               "level":1,
               "id":6,
               "gold":300,
               "diam":1,
               "req":"none",
               "req_amnt":0,
               "name":"Флаг Германии"
            },
            "flag_uk":{
               "limit":1,
               "level":1,
               "id":7,
               "gold":300,
               "diam":1,
               "req":"none",
               "req_amnt":0,
               "name":"Флаг Великобритании"
            },
            "flag_costa":{
               "limit":1,
               "level":1,
               "id":8,
               "gold":500,
               "diam":1,
               "req":"level",
               "req_amnt":5,
               "name":"Флаг Коста-Рика"
            },
            "flag_lt":{
               "limit":1,
               "level":1,
               "id":9,
               "gold":800,
               "diam":1,
               "req":"level",
               "req_amnt":10,
               "name":"Флаг Латвии"
            },
            "flag_corea":{
               "limit":1,
               "level":1,
               "id":10,
               "gold":1000,
               "diam":1,
               "req":"level",
               "req_amnt":15,
               "name":"Флаг Кореи"
            },
            "flag_gabon":{
               "limit":1,
               "level":1,
               "id":11,
               "gold":1000,
               "diam":1,
               "req":"level",
               "req_amnt":20,
               "name":"Флаг Габона"
            },
            "flag_dw":{
               "limit":1,
               "level":1,
               "id":12,
               "gold":1000,
               "diam":1,
               "req":"level",
               "req_amnt":25,
               "name":"Флаг Швейцарии"
            },
            "flag_af":{
               "limit":1,
               "level":1,
               "id":13,
               "gold":1000,
               "diam":1,
               "req":"level",
               "req_amnt":30,
               "name":"Флаг Афганистана"
            },
            "flag_kenia":{
               "limit":1,
               "level":1,
               "id":14,
               "gold":1000,
               "diam":1,
               "req":"level",
               "req_amnt":35,
               "name":"Флаг Кении"
            },
            "flag_viet":{
               "limit":1,
               "level":1,
               "id":15,
               "gold":1000,
               "diam":1,
               "req":"level",
               "req_amnt":40,
               "name":"Флаг Вьетнама"
            },
            "flag_canada":{
               "limit":1,
               "level":1,
               "id":16,
               "gold":1000,
               "diam":1,
               "req":"level",
               "req_amnt":45,
               "name":"Флаг Канады"
            },
            "flag_mac":{
               "limit":1,
               "level":1,
               "id":17,
               "gold":1000,
               "diam":1,
               "req":"level",
               "req_amnt":50,
               "name":"Флаг Македонии"
            },
            "flag_sheep":{
               "limit":1,
               "level":1,
               "id":18,
               "gold":500,
               "diam":1,
               "req":"achiev",
               "req_amnt":2,
               "name":"Флаг \"Овца\""
            },
            "flag_3worms":{
               "limit":1,
               "level":1,
               "id":19,
               "gold":1000,
               "diam":1,
               "req":"achiev",
               "req_amnt":4,
               "name":"Флаг \"Червяки\""
            },
            "flag_banana":{
               "limit":1,
               "level":1,
               "id":20,
               "gold":1200,
               "diam":2,
               "req":"achiev",
               "req_amnt":6,
               "name":"Флаг \"Бананы\""
            },
            "flag_rad":{
               "limit":1,
               "level":1,
               "id":21,
               "gold":2000,
               "diam":2,
               "req":"achiev",
               "req_amnt":8,
               "name":"Флаг \"Радиация\""
            },
            "flag_holy":{
               "limit":1,
               "level":1,
               "id":22,
               "gold":3000,
               "diam":3,
               "req":"achiev",
               "req_amnt":10,
               "name":"Флаг \"Святой удар\""
            },
            "flag_ussr":{
               "limit":1,
               "level":1,
               "id":23,
               "gold":400,
               "diam":1,
               "req":"career",
               "req_amnt":10,
               "name":"Флаг СССР"
            },
            "flag_rabbit":{
               "limit":1,
               "level":1,
               "id":24,
               "gold":600,
               "diam":1,
               "req":"career",
               "req_amnt":20,
               "name":"Флаг \"Кролик\""
            },
            "flag_ruby":{
               "limit":1,
               "level":1,
               "id":25,
               "gold":900,
               "diam":1,
               "req":"career",
               "req_amnt":30,
               "name":"Флаг \"Рубин\""
            },
            "flag_zombie":{
               "limit":1,
               "level":1,
               "id":26,
               "gold":1100,
               "diam":2,
               "req":"career",
               "req_amnt":40,
               "name":"Флаг \"Зомби\""
            },
            "flag_asassin":{
               "limit":1,
               "level":1,
               "id":27,
               "gold":3000,
               "diam":2,
               "req":"career",
               "req_amnt":55,
               "name":"Флаг \"Ассасин\""
            },
            "flag_oon":{
               "limit":1,
               "level":1,
               "id":28,
               "gold":400,
               "diam":1,
               "req":"mission",
               "req_amnt":5,
               "name":"Флаг ООН"
            },
            "flag_rabbit2":{
               "limit":1,
               "level":1,
               "id":29,
               "gold":600,
               "diam":1,
               "req":"mission",
               "req_amnt":8,
               "name":"Флаг \"Кролик II\""
            },
            "flag_devil":{
               "limit":1,
               "level":1,
               "id":30,
               "gold":900,
               "diam":1,
               "req":"mission",
               "req_amnt":13,
               "name":"Флаг \"Дьявол\""
            },
            "flag_bos":{
               "limit":1,
               "level":1,
               "id":31,
               "gold":1100,
               "diam":2,
               "req":"mission",
               "req_amnt":17,
               "name":"Флаг Братства Стали"
            },
            "flag_spec":{
               "limit":1,
               "level":1,
               "id":32,
               "gold":4000,
               "diam":4,
               "req":"mission",
               "req_amnt":20,
               "name":"Флаг Спецназа"
            }
         };
         this.RIPS_DEF = {
            "rip_1":{
               "limit":1,
               "level":1,
               "id":1,
               "gold":100,
               "diam":1,
               "req":"none",
               "req_amnt":0,
               "name":"Гроб №1"
            },
            "rip_2":{
               "limit":1,
               "level":1,
               "id":2,
               "gold":200,
               "diam":1,
               "req":"level",
               "req_amnt":2,
               "name":"Гроб №2"
            },
            "rip_3":{
               "limit":1,
               "level":1,
               "id":3,
               "gold":400,
               "diam":1,
               "req":"level",
               "req_amnt":4,
               "name":"Гроб №3"
            },
            "rip_4":{
               "limit":1,
               "level":1,
               "id":4,
               "gold":500,
               "diam":1,
               "req":"level",
               "req_amnt":6,
               "name":"Гроб №4"
            },
            "rip_5":{
               "limit":1,
               "level":1,
               "id":5,
               "gold":750,
               "diam":1,
               "req":"level",
               "req_amnt":8,
               "name":"Гроб №5"
            },
            "rip_6":{
               "limit":1,
               "level":1,
               "id":6,
               "gold":1000,
               "diam":1,
               "req":"level",
               "req_amnt":10,
               "name":"Гроб №6"
            },
            "rip_7":{
               "limit":1,
               "level":1,
               "id":7,
               "gold":1250,
               "diam":2,
               "req":"level",
               "req_amnt":13,
               "name":"Гроб №7"
            },
            "rip_8":{
               "limit":1,
               "level":1,
               "id":8,
               "gold":1500,
               "diam":2,
               "req":"level",
               "req_amnt":16,
               "name":"Гроб №8"
            },
            "rip_9":{
               "limit":1,
               "level":1,
               "id":9,
               "gold":1800,
               "diam":2,
               "req":"level",
               "req_amnt":19,
               "name":"Гроб №9"
            },
            "rip_10":{
               "limit":1,
               "level":1,
               "id":10,
               "gold":2500,
               "diam":3,
               "req":"level",
               "req_amnt":22,
               "name":"Гроб №10"
            },
            "rip_11":{
               "limit":1,
               "level":1,
               "id":11,
               "gold":2800,
               "diam":3,
               "req":"level",
               "req_amnt":25,
               "name":"Гроб №11"
            },
            "rip_12":{
               "limit":1,
               "level":1,
               "id":12,
               "gold":3100,
               "diam":4,
               "req":"level",
               "req_amnt":30,
               "name":"Гроб №12"
            },
            "rip_13":{
               "limit":1,
               "level":1,
               "id":13,
               "gold":3500,
               "diam":4,
               "req":"level",
               "req_amnt":35,
               "name":"Гроб №13"
            },
            "rip_14":{
               "limit":1,
               "level":1,
               "id":14,
               "gold":4100,
               "diam":5,
               "req":"level",
               "req_amnt":40,
               "name":"Гроб №14"
            },
            "rip_15":{
               "limit":1,
               "level":1,
               "id":15,
               "gold":4400,
               "diam":5,
               "req":"level",
               "req_amnt":45,
               "name":"Гроб №15"
            },
            "rip_16":{
               "limit":1,
               "level":1,
               "id":16,
               "gold":4900,
               "diam":5,
               "req":"level",
               "req_amnt":50,
               "name":"Гроб №16"
            },
            "rip_17":{
               "limit":1,
               "level":1,
               "id":17,
               "gold":5500,
               "diam":6,
               "req":"level",
               "req_amnt":55,
               "name":"Гроб №17"
            },
            "rip_18":{
               "limit":1,
               "level":1,
               "id":18,
               "gold":6300,
               "diam":7,
               "req":"level",
               "req_amnt":60,
               "name":"Гроб №18"
            },
            "rip_19":{
               "limit":1,
               "level":1,
               "id":19,
               "gold":7900,
               "diam":8,
               "req":"level",
               "req_amnt":65,
               "name":"Гроб №19"
            },
            "rip_20":{
               "limit":1,
               "level":1,
               "id":20,
               "gold":15000,
               "diam":15,
               "req":"level",
               "req_amnt":70,
               "name":"Гроб №20"
            }
         };
         this.IMPL_DEF = {
            "std_attack":{
               "id":1,
               "attack":70,
               "protect":0,
               "health":0,
               "level":1,
               "gold":390000,
               "diam":390,
               "limit":1,
               "name":"Чип Атаки",
               "special":{}
            },
            "std_protect":{
               "id":2,
               "attack":0,
               "protect":70,
               "health":0,
               "level":1,
               "gold":320000,
               "diam":320,
               "limit":1,
               "name":"Чип Защиты",
               "special":{}
            },
            "std_health":{
               "id":3,
               "attack":0,
               "protect":0,
               "health":500,
               "level":1,
               "gold":430000,
               "diam":430,
               "limit":1,
               "name":"Чип Здоровья",
               "special":{}
            },
            "phoenix":{
               "id":4,
               "attack":100,
               "protect":100,
               "health":600,
               "level":1,
               "gold":680000,
               "diam":680,
               "limit":1,
               "name":"Универсальный чип Феникс",
               "special":{}
            },
            "phoenix2":{
               "id":5,
               "attack":125,
               "protect":125,
               "health":1000,
               "level":1,
               "gold":750000,
               "diam":750,
               "limit":1,
               "name":"Феникс Mk 2",
               "special":{}
            },
            "dragon":{
               "id":6,
               "attack":150,
               "protect":150,
               "health":1200,
               "level":1,
               "gold":890000,
               "diam":890,
               "limit":1,
               "name":"Универсальный чип Дракон",
               "special":{"fire_res":true}
            },
            "dragon2":{
               "id":7,
               "attack":180,
               "protect":180,
               "health":1350,
               "level":1,
               "gold":1120000,
               "diam":1120,
               "limit":1,
               "name":"Дракон Mk 2",
               "special":{
                  "fire_res":true,
                  "poison_res":true,
                  "para_res":true
               }
            }
         };
         this.OBJ_DEF = {
            "obj_barrel":{
               "id":1,
               "gold":100,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":true,
               "gsearch_prob":"yes",
               "usable":false,
               "name":"Удлиненный ствол"
            },
            "obj_middle_clip":{
               "id":2,
               "gold":250,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":true,
               "gsearch_prob":"yes",
               "usable":false,
               "name":"Средняя обойма"
            },
            "obj_big_clip":{
               "id":3,
               "gold":1000,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"rare",
               "usable":false,
               "name":"Большая обойма"
            },
            "obj_small_cell":{
               "id":4,
               "gold":3000,
               "diam":3,
               "limit":50,
               "level":1,
               "show_shop":true,
               "gsearch_prob":"yes",
               "usable":false,
               "name":"Малый элемент питания"
            },
            "obj_big_cell":{
               "id":5,
               "gold":6000,
               "diam":6,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"rare",
               "usable":false,
               "name":"Большой элемент питания"
            },
            "obj_rad_lock":{
               "id":6,
               "gold":10000,
               "diam":10,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Радиевый затвор"
            },
            "obj_hard_jacket":{
               "id":7,
               "gold":11000,
               "diam":11,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"rare",
               "usable":false,
               "name":"Усиленная оболочка"
            },
            "obj_napalm_cont":{
               "id":8,
               "gold":4000,
               "diam":4,
               "limit":50,
               "level":1,
               "show_shop":true,
               "gsearch_prob":"yes",
               "usable":false,
               "name":"Контейнер с напалмом"
            },
            "obj_poison_cont":{
               "id":9,
               "gold":6000,
               "diam":6,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"rare",
               "usable":false,
               "name":"Контейнер с ядом"
            },
            "obj_rad_cont":{
               "id":10,
               "gold":9000,
               "diam":9,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Контейнер с рад. газом"
            },
            "obj_laser_mod":{
               "id":11,
               "gold":4000,
               "diam":4,
               "limit":50,
               "level":1,
               "show_shop":true,
               "gsearch_prob":"yes",
               "usable":false,
               "name":"Лазерный модулятор"
            },
            "obj_plasma_mod":{
               "id":12,
               "gold":6000,
               "diam":6,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"yes",
               "usable":false,
               "name":"Плазменный модулятор"
            },
            "obj_coil":{
               "id":13,
               "gold":8000,
               "diam":8,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"rare",
               "usable":false,
               "name":"Катушка индуктивности"
            },
            "obj_pulse_mod":{
               "id":14,
               "gold":15000,
               "diam":15,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Импульсный модулятор"
            },
            "obj_ultra_mod":{
               "id":15,
               "gold":30000,
               "diam":30,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Ультраволновый преобр."
            },
            "obj_eg_generator":{
               "id":17,
               "gold":4000,
               "diam":4,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Генератор электрогравитации"
            },
            "obj_fuel":{
               "id":18,
               "gold":3000,
               "diam":3,
               "limit":50,
               "level":1,
               "show_shop":true,
               "gsearch_prob":"yes",
               "usable":false,
               "name":"Топливные баки"
            },
            "obj_small_expl":{
               "id":19,
               "gold":1500,
               "diam":2,
               "limit":50,
               "level":1,
               "show_shop":true,
               "gsearch_prob":"yes",
               "usable":false,
               "name":"Усиленная взрывчатка (мал.)"
            },
            "obj_radio":{
               "id":20,
               "gold":3000,
               "diam":3,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Радиопередатчик"
            },
            "obj_big_expl":{
               "id":21,
               "gold":8000,
               "diam":8,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Усиленная взрывчатка (бол.)"
            },
            "obj_red_book":{
               "id":22,
               "gold":100000,
               "diam":100,
               "limit":1,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":true,
               "name":"Красная книга рецептов"
            },
            "obj_orange_book":{
               "id":23,
               "gold":40000,
               "diam":40,
               "limit":1,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":true,
               "name":"Оранж. книга рецептов"
            },
            "obj_yellow_book":{
               "id":24,
               "gold":75000,
               "diam":75,
               "limit":1,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":true,
               "name":"Желтая книга рецептов"
            },
            "obj_green_book":{
               "id":25,
               "gold":80000,
               "diam":80,
               "limit":1,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":true,
               "name":"Зеленая книга рецептов"
            },
            "obj_skyblue_book":{
               "id":26,
               "gold":30000,
               "diam":30,
               "limit":1,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":true,
               "name":"Голубая книга рецептов"
            },
            "obj_blue_book":{
               "id":27,
               "gold":120000,
               "diam":120,
               "limit":1,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":true,
               "name":"Синяя книга рецептов"
            },
            "obj_violet_book":{
               "id":28,
               "gold":200000,
               "diam":200,
               "limit":1,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":true,
               "name":"Фиолет. книга рецептов"
            },
            "obj_white_book":{
               "id":29,
               "gold":350000,
               "diam":350,
               "limit":1,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":true,
               "name":"Белая книга рецептов"
            },
            "obj_black_book":{
               "id":30,
               "gold":1200000,
               "diam":1200,
               "limit":1,
               "level":70,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":true,
               "name":"Черная книга рецептов"
            },
            "obj_junk1":{
               "id":31,
               "gold":625,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Сломанные детали"
            },
            "obj_junk2":{
               "id":32,
               "gold":625,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Сломанные детали"
            },
            "obj_junk3":{
               "id":33,
               "gold":625,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Сломанные детали"
            },
            "obj_junk4":{
               "id":34,
               "gold":625,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Сломанные детали"
            },
            "obj_junk5":{
               "id":35,
               "gold":900,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Сломанные детали"
            },
            "obj_junk6":{
               "id":36,
               "gold":900,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Сломанные детали"
            },
            "obj_junk7":{
               "id":37,
               "gold":900,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Сломанные детали"
            },
            "obj_junk8":{
               "id":38,
               "gold":900,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Сломанные детали"
            },
            "obj_junk9":{
               "id":39,
               "gold":1500,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Сломанные детали"
            },
            "obj_junk10":{
               "id":40,
               "gold":1500,
               "diam":1,
               "limit":50,
               "level":1,
               "show_shop":false,
               "gsearch_prob":"no",
               "usable":false,
               "name":"Сломанные детали"
            }
         };
         this.BOOKS_DEF = {
            "obj_red_book":{
               "mode":"craft",
               "param":[4,17,19,20,21]
            },
            "obj_orange_book":{
               "mode":"craft",
               "param":[4,29,30,31,33]
            },
            "obj_yellow_book":{
               "mode":"craft",
               "param":[4,1,2,4,6]
            },
            "obj_green_book":{
               "mode":"craft",
               "param":[4,10,14,15,16]
            },
            "obj_skyblue_book":{
               "mode":"craft",
               "param":[4,36,37,38,40]
            },
            "obj_blue_book":{
               "mode":"craft",
               "param":[4,53,55,76,74]
            },
            "obj_violet_book":{
               "mode":"craft",
               "param":[4,59,67,69,71]
            },
            "obj_white_book":{
               "mode":"craft",
               "param":[3,79,80,84]
            },
            "obj_black_book":{
               "mode":"craft",
               "param":[3,86,87,88]
            }
         };
         this.SPEC_DEF = [4,["fast_walk","sprotsman"],["heavy_guy","thinker"],["crates","less_tired"],["crafting","more_exp"]];
         this.PEACHFUL_BONUS = {
            "p":0.25,
            "e":0.35,
            "a":0.4,
            "c":0.5,
            "h":0.15,
            "f":0.3,
            "u":0,
            "l":0.4
         };
         this.LEVEL_THRESHOLD = new Array(0,0,1000,2100,3300,4600,6000,8000,10100,12300,14600,17000,20000,23200,26600,30200,34000,39000,44300,49900,55800,62000,70000,78400,87200,96400,106000,116000,126400,137200,148400,160000,172000,197000,210000,223500,237500,252000,278000,294000,311000,330000,350000,380000,420000,470000,520000,580000,650000,720000,800000,1000000,1200000,1400000,1650000,1900000,2200000,2500000,2800000,3200000,3500000,3800000,4100000,4400000,4700000,5000000,5500000,6000000,6500000,7100000,7600000,8200000,8700000,9300000,10000000,11000000,12000000,13000000,14000000,15000000,16000000,18000000,20000000,23000000,26000000,29000000,33000000,37000000,40000000,45000000,50000000,55000000,60000000,65000000,70000000,75000000,80000000,85000000,90000000,95000000,100000000,105000000,110000000,115000000,120000000,125000000,130000000,135000000,140000000,145000000,150000000,155000000,160000000,165000000,170000000,175000000,180000000,185000000,190000000,195000000,200000000,205000000,210000000,215000000,220000000,225000000,230000000,235000000,240000000,245000000,250000000,255000000,260000000,265000000,270000000,275000000,280000000,285000000,290000000,295000000,300000000,305000000,310000000,315000000,320000000,325000000,330000000,335000000,340000000,350000000,355000000,360000000,365000000,370000000,375000000,380000000,385000000,390000000,395000000,400000000,700000000);
         this.LEAGUE_THRESHOLD = new Array(0,0,1000,2000,_loc1_);
         this.PERKS_DEF = {
            "damage_c":{
               "mode":"wptype",
               "id":1,
               "level":1,
               "max_lim":20,
               "upg":new Array(7,7,7,7,7,7,7,10,10,10,10,10,10,10,15,15,15,15,15,15),
               "name":"Урон ближнего боя"
            },
            "damage_l":{
               "mode":"wptype",
               "id":17,
               "level":1,
               "max_lim":20,
               "upg":new Array(15,15,15,15,15,15,15,20,20,20,20,20,20,20,30,30,30,30,30,30),
               "name":"Урон живых бомб"
            },
            "damage_e":{
               "mode":"wptype",
               "id":9,
               "level":1,
               "max_lim":20,
               "upg":new Array(20,20,20,20,20,20,20,30,30,30,30,30,30,30,40,40,40,40,40,40),
               "name":"Урон взрывчатки"
            },
            "damage_a":{
               "mode":"wptype",
               "id":21,
               "level":1,
               "max_lim":20,
               "upg":new Array(25,25,25,25,25,25,25,36,36,36,36,36,36,36,50,50,50,50,50,50),
               "name":"Урон авиаударов"
            },
            "damage_p":{
               "mode":"wptype",
               "id":13,
               "level":1,
               "max_lim":20,
               "upg":new Array(40,40,40,40,40,40,40,60,60,60,60,60,60,60,80,80,80,80,80,80),
               "name":"Урон снарядов"
            },
            "damage_f":{
               "mode":"wptype",
               "id":5,
               "level":1,
               "max_lim":20,
               "upg":new Array(60,60,60,60,60,60,60,90,90,90,90,90,90,90,120,120,120,120,120,120),
               "name":"Урон огнестр. оружия"
            },
            "damage_h":{
               "mode":"wptype",
               "id":29,
               "level":1,
               "max_lim":20,
               "upg":new Array(90,90,90,90,90,90,90,135,135,135,135,135,135,135,180,180,180,180,180,180),
               "name":"Урон энерг. оружия"
            },
            "god_of_war":{
               "mode":"wptype",
               "id":48,
               "level":1,
               "max_lim":20,
               "upg":new Array(300,300,300,300,300,300,300,450,450,450,450,450,450,450,600,600,600,600,600,600),
               "name":"Бог войны"
            },
            "angel":{
               "mode":"wpmode",
               "id":23,
               "level":1,
               "max_lim":3,
               "upg":new Array(30,30,30),
               "name":"Праведник"
            },
            "electrician":{
               "mode":"wpmode",
               "id":15,
               "level":1,
               "max_lim":3,
               "upg":new Array(40,40,40),
               "name":"Электрик"
            },
            "up_pistols":{
               "mode":"wpmode",
               "id":49,
               "level":1,
               "max_lim":3,
               "upg":new Array(50,50,50),
               "name":"Дуэлянт"
            },
            "up_rifles":{
               "mode":"wpmode",
               "id":50,
               "level":1,
               "max_lim":3,
               "upg":new Array(100,100,100),
               "name":"Охотник"
            },
            "up_miniguns":{
               "mode":"wpmode",
               "id":51,
               "level":1,
               "max_lim":3,
               "upg":new Array(150,150,150),
               "name":"Пулеметчик"
            },
            "big_guns":{
               "mode":"wpmode",
               "id":57,
               "level":1,
               "max_lim":3,
               "upg":new Array(180,180,180),
               "name":"Крутые пушки"
            },
            "dragonball":{
               "mode":"dother",
               "id":2,
               "level":1,
               "max_lim":3,
               "upg":new Array(5,5,5),
               "name":"Шар дракона"
            },
            "fire_punch":{
               "mode":"dother",
               "id":10,
               "level":1,
               "max_lim":3,
               "upg":new Array(7,7,7),
               "name":"Огненный удар"
            },
            "light_clips":{
               "mode":"dother",
               "id":3,
               "level":1,
               "max_lim":10,
               "upg":new Array(25,25,25,25,25,25,25,25,25,25),
               "name":"Магазин легких оружий"
            },
            "medium_clips":{
               "mode":"dother",
               "id":63,
               "level":1,
               "max_lim":10,
               "upg":new Array(45,45,45,45,45,45,45,45,45,45),
               "name":"Магазин средних оружий"
            },
            "heavy_clips":{
               "mode":"dother",
               "id":25,
               "level":1,
               "max_lim":10,
               "upg":new Array(65,65,65,65,65,65,65,65,65,65),
               "name":"Магазин тяжелых оружий"
            },
            "poison_res":{
               "mode":"dres",
               "id":28,
               "level":1,
               "max_lim":3,
               "upg":new Array(20,20,20),
               "name":"Сопротивление яду/радиации"
            },
            "fire_res":{
               "mode":"dres",
               "id":24,
               "level":1,
               "max_lim":3,
               "upg":new Array(50,50,50),
               "name":"Сопротивление огню"
            },
            "para_res":{
               "mode":"dres",
               "id":20,
               "level":1,
               "max_lim":3,
               "upg":new Array(90,90,90),
               "name":"Сопротивление парализации"
            },
            "dmg_thr":{
               "mode":"dres",
               "id":56,
               "level":1,
               "max_lim":10,
               "upg":new Array(100,100,100,100,100,150,150,150,200,200),
               "name":"Порог урона"
            },
            "absorb":{
               "mode":"dres",
               "id":60,
               "level":1,
               "max_lim":3,
               "upg":new Array(240,240,240),
               "name":"Поглощение урона броней"
            },
            "luck":{
               "mode":"crit",
               "id":22,
               "level":1,
               "max_lim":3,
               "upg":new Array(60,60,60),
               "name":"Удача"
            },
            "luck2":{
               "mode":"crit",
               "id":45,
               "level":1,
               "max_lim":3,
               "upg":new Array(140,140,140),
               "name":"Удача II"
            },
            "best_crit":{
               "mode":"crit",
               "id":34,
               "level":1,
               "max_lim":3,
               "upg":new Array(160,160,160),
               "name":"Лучшие критические"
            },
            "more_fail":{
               "mode":"fail",
               "id":53,
               "level":1,
               "max_lim":3,
               "upg":new Array(20,20,20),
               "name":"Больше осечек!"
            },
            "less_fail":{
               "mode":"fail",
               "id":52,
               "level":1,
               "max_lim":3,
               "upg":new Array(50,50,50),
               "name":"Обращение с оружием"
            },
            "laser_sights":{
               "mode":"char",
               "id":6,
               "level":1,
               "max_lim":3,
               "upg":new Array(5,5,5),
               "name":"Лазерные прицелы"
            },
            "builder":{
               "mode":"char",
               "id":4,
               "level":1,
               "max_lim":3,
               "upg":new Array(10,10,10),
               "name":"Строитель"
            },
            "engineer":{
               "mode":"char",
               "id":11,
               "level":1,
               "max_lim":3,
               "upg":new Array(10,10,10),
               "name":"Инженер"
            },
            "medic":{
               "mode":"char",
               "id":19,
               "level":1,
               "max_lim":3,
               "upg":new Array(15,15,15),
               "name":"Медик"
            },
            "comandeer":{
               "mode":"char",
               "id":27,
               "level":1,
               "max_lim":3,
               "upg":new Array(20,20,20),
               "name":"Командир"
            },
            "heavy_guy":{
               "mode":"char",
               "id":32,
               "level":1,
               "max_lim":3,
               "upg":new Array(25,25,25),
               "name":"Тяжеловес"
            },
            "thinker":{
               "mode":"char",
               "id":38,
               "level":1,
               "max_lim":3,
               "upg":new Array(30,30,30),
               "name":"Вдумчивость"
            },
            "miner":{
               "mode":"char",
               "id":12,
               "level":1,
               "max_lim":3,
               "upg":new Array(40,40,40),
               "name":"Минер"
            },
            "sprotsman":{
               "mode":"char",
               "id":31,
               "level":1,
               "max_lim":3,
               "upg":new Array(55,55,55),
               "name":"Спортсмен"
            },
            "flyer":{
               "mode":"char",
               "id":30,
               "level":1,
               "max_lim":3,
               "upg":new Array(70,70,70),
               "name":"Летчик"
            },
            "fast_walk":{
               "mode":"char",
               "id":37,
               "level":1,
               "max_lim":3,
               "upg":new Array(80,80,80),
               "name":"Быстрая ходьба"
            },
            "vampire":{
               "mode":"char",
               "id":41,
               "level":1,
               "max_lim":3,
               "upg":new Array(100,100,100),
               "name":"Вампир"
            },
            "fast_temp":{
               "mode":"char",
               "id":36,
               "level":1,
               "max_lim":3,
               "upg":new Array(110,110,110),
               "name":"Быстрый темп"
            },
            "accuracy":{
               "mode":"char",
               "id":33,
               "level":1,
               "max_lim":3,
               "upg":new Array(120,120,120),
               "name":"Точность"
            },
            "pe":{
               "mode":"char",
               "id":43,
               "level":1,
               "max_lim":3,
               "upg":new Array(130,130,130),
               "name":"Восприятие"
            },
            "ninja":{
               "mode":"char",
               "id":59,
               "level":1,
               "max_lim":3,
               "upg":new Array(135,135,135),
               "name":"Ниндзя"
            },
            "crates":{
               "mode":"char",
               "id":58,
               "level":1,
               "max_lim":3,
               "upg":new Array(140,140,140),
               "name":"Посылки"
            },
            "light_step":{
               "mode":"char",
               "id":44,
               "level":1,
               "max_lim":3,
               "upg":new Array(150,150,150),
               "name":"Легкий шаг"
            },
            "morale":{
               "mode":"char",
               "id":42,
               "level":1,
               "max_lim":3,
               "upg":new Array(160,160,160),
               "name":"Командный дух"
            },
            "soft_land":{
               "mode":"char",
               "id":39,
               "level":1,
               "max_lim":3,
               "upg":new Array(170,170,170),
               "name":"Мягкая посадка"
            },
            "regeneration":{
               "mode":"char",
               "id":40,
               "level":1,
               "max_lim":3,
               "upg":new Array(200,200,200),
               "name":"Регенерация"
            },
            "ap_shots":{
               "mode":"char",
               "id":61,
               "level":1,
               "max_lim":3,
               "upg":new Array(250,250,250),
               "name":"Пробивные выстрелы"
            },
            "champion":{
               "mode":"int",
               "id":7,
               "level":1,
               "max_lim":3,
               "upg":new Array(30,30,30),
               "name":"Чемпион"
            },
            "education":{
               "mode":"int",
               "id":8,
               "level":1,
               "max_lim":3,
               "upg":new Array(35,35,35),
               "name":"Образованность"
            },
            "legioner":{
               "mode":"int",
               "id":26,
               "level":1,
               "max_lim":3,
               "upg":new Array(60,60,60),
               "name":"Легионер"
            },
            "more_exp":{
               "mode":"int",
               "id":47,
               "level":1,
               "max_lim":3,
               "upg":new Array(120,150,200),
               "name":"Мастер боев"
            },
            "steal":{
               "mode":"other",
               "id":55,
               "level":1,
               "max_lim":10,
               "upg":new Array(20,40,60,80,100,120,140,160,180,200),
               "name":"Воровство"
            },
            "stims":{
               "mode":"other",
               "id":35,
               "level":1,
               "max_lim":3,
               "upg":new Array(30,30,30),
               "name":"Стимуляторы"
            },
            "gsearch":{
               "mode":"other",
               "id":62,
               "level":1,
               "max_lim":3,
               "upg":new Array(25,25,25),
               "name":"Расхититель гробниц"
            },
            "crafting":{
               "mode":"other",
               "id":14,
               "level":1,
               "max_lim":3,
               "upg":new Array(60,80,100),
               "name":"Крафтинг"
            },
            "surprise":{
               "mode":"other",
               "id":16,
               "level":1,
               "max_lim":3,
               "upg":new Array(50,50,50),
               "name":"Сюрприз"
            },
            "bar":{
               "mode":"other",
               "id":46,
               "level":1,
               "max_lim":3,
               "upg":new Array(55,55,55),
               "name":"Барыга"
            },
            "merchant":{
               "mode":"other",
               "id":18,
               "level":1,
               "max_lim":3,
               "upg":new Array(90,90,90),
               "name":"Торговец"
            },
            "less_tired":{
               "mode":"other",
               "id":54,
               "level":1,
               "max_lim":3,
               "upg":new Array(100,150,200),
               "name":"Неутомимый"
            }
         };
         this.WEAPONS_DEF = {
            "bazooka":{
               "id":1,
               "level":1,
               "spec_mod":"",
               "delay":0,
               "gold":1000,
               "diam":1,
               "wptype":"p",
               "damage":50,
               "limit":10,
               "ai_type":"wind",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Базука"
            },
            "unfail_bazooka":{
               "id":2,
               "level":2,
               "spec_mod":"",
               "delay":0,
               "gold":4000,
               "diam":4,
               "wptype":"p",
               "damage":50,
               "limit":10,
               "ai_type":"wind",
               "unfail":100,
               "ap_mod":0,
               "crit":50,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Безотказная базука"
            },
            "fire_bazooka":{
               "id":3,
               "level":8,
               "spec_mod":"",
               "delay":0,
               "gold":12000,
               "diam":10,
               "wptype":"p",
               "damage":50,
               "limit":10,
               "ai_type":"wind",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Зажигательная базука"
            },
            "poison_bazooka":{
               "id":4,
               "level":11,
               "spec_mod":"",
               "delay":0,
               "gold":15000,
               "diam":12,
               "wptype":"p",
               "damage":50,
               "limit":10,
               "ai_type":"wind",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Отравленная базука"
            },
            "ap_bazooka":{
               "id":5,
               "level":28,
               "spec_mod":"",
               "delay":0,
               "gold":30000,
               "diam":30,
               "wptype":"p",
               "damage":50,
               "limit":10,
               "ai_type":"wind",
               "unfail":0,
               "ap_mod":20,
               "crit":0,
               "add_damage":{
                  "mode":"ap",
                  "amount":3
               },
               "shown":true,
               "allow_upg":true,
               "name":"Бронебойная базука"
            },
            "howitzer":{
               "id":102,
               "level":39,
               "spec_mod":"",
               "delay":0,
               "gold":156000,
               "diam":124,
               "wptype":"p",
               "damage":3360,
               "limit":3,
               "ai_type":"wind",
               "unfail":0,
               "ap_mod":85,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Кумулятивный снаряд 203мм"
            },
            "grenade":{
               "id":6,
               "level":1,
               "spec_mod":"",
               "delay":0,
               "gold":1000,
               "diam":1,
               "wptype":"p",
               "damage":50,
               "limit":10,
               "ai_type":"gravity",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Граната"
            },
            "unfail_grenade":{
               "id":7,
               "level":3,
               "spec_mod":"",
               "delay":0,
               "gold":4000,
               "diam":4,
               "wptype":"p",
               "damage":50,
               "limit":10,
               "ai_type":"gravity",
               "unfail":100,
               "ap_mod":0,
               "crit":50,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Безотказная граната"
            },
            "plasma_grenade":{
               "id":8,
               "level":14,
               "spec_mod":"",
               "delay":0,
               "gold":24000,
               "diam":21,
               "wptype":"p",
               "damage":110,
               "limit":10,
               "ai_type":"gravity",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Плазменная граната"
            },
            "pulse_grenade":{
               "id":9,
               "level":19,
               "spec_mod":"elec",
               "delay":0,
               "gold":29000,
               "diam":27,
               "wptype":"p",
               "damage":110,
               "limit":10,
               "ai_type":"gravity",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Импульсная граната"
            },
            "holy_hand_grenade":{
               "id":10,
               "level":8,
               "spec_mod":"holy",
               "delay":0,
               "gold":40000,
               "diam":37,
               "wptype":"p",
               "damage":160,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Святая граната"
            },
            "cluster_bomb":{
               "id":11,
               "level":2,
               "spec_mod":"",
               "delay":0,
               "gold":1500,
               "diam":2,
               "wptype":"p",
               "damage":15,
               "limit":10,
               "ai_type":"gravity",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"cluster",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Осколочная граната"
            },
            "unfail_cluster_bomb":{
               "id":12,
               "level":6,
               "spec_mod":"",
               "delay":0,
               "gold":5500,
               "diam":5,
               "wptype":"p",
               "damage":15,
               "limit":10,
               "ai_type":"gravity",
               "unfail":100,
               "ap_mod":0,
               "crit":50,
               "add_damage":{
                  "mode":"cluster",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Безотк. осколочная граната"
            },
            "molotov":{
               "id":13,
               "level":6,
               "spec_mod":"",
               "delay":0,
               "gold":2500,
               "diam":3,
               "wptype":"p",
               "damage":45,
               "limit":10,
               "ai_type":"gravity",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Коктейль Молотова"
            },
            "mortar":{
               "id":14,
               "level":7,
               "spec_mod":"",
               "delay":0,
               "gold":2000,
               "diam":3,
               "wptype":"p",
               "damage":15,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"cluster",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Мортира"
            },
            "upg_mortar":{
               "id":15,
               "level":10,
               "spec_mod":"",
               "delay":0,
               "gold":5000,
               "diam":4,
               "wptype":"p",
               "damage":25,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":20,
               "add_damage":{
                  "mode":"cluster",
                  "amount":6
               },
               "shown":true,
               "allow_upg":true,
               "name":"Улучшенная мортира"
            },
            "putty_grenade":{
               "id":98,
               "level":10,
               "spec_mod":"",
               "delay":0,
               "gold":59000,
               "diam":57,
               "wptype":"p",
               "damage":100,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":10,
               "add_damage":{
                  "mode":"cluster",
                  "amount":8
               },
               "shown":true,
               "allow_upg":true,
               "name":"Граната-липучка"
            },
            "banana_bomb":{
               "id":16,
               "level":15,
               "spec_mod":"",
               "delay":0,
               "gold":35000,
               "diam":35,
               "wptype":"p",
               "damage":75,
               "limit":3,
               "ai_type":"gravity",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"cluster",
                  "amount":3
               },
               "shown":true,
               "allow_upg":true,
               "name":"Банано-бомба"
            },
            "unfail_banana_bomb":{
               "id":17,
               "level":20,
               "spec_mod":"",
               "delay":0,
               "gold":42000,
               "diam":41,
               "wptype":"p",
               "damage":75,
               "limit":3,
               "ai_type":"gravity",
               "unfail":100,
               "ap_mod":0,
               "crit":50,
               "add_damage":{
                  "mode":"cluster",
                  "amount":3
               },
               "shown":true,
               "allow_upg":true,
               "name":"Безотказная банано-бомба"
            },
            "super_banana_bomb":{
               "id":18,
               "level":22,
               "spec_mod":"",
               "delay":0,
               "gold":84000,
               "diam":81,
               "wptype":"p",
               "damage":75,
               "limit":5,
               "ai_type":"gravity",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"cluster",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Супер банано-бомба"
            },
            "nuclear_bomb":{
               "id":19,
               "level":25,
               "spec_mod":"",
               "delay":0,
               "gold":53000,
               "diam":53,
               "wptype":"p",
               "damage":600,
               "limit":3,
               "ai_type":"wind",
               "unfail":0,
               "ap_mod":10,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"ICBM"
            },
            "multi_bazooka":{
               "id":20,
               "level":26,
               "spec_mod":"",
               "delay":0,
               "gold":46000,
               "diam":43,
               "wptype":"p",
               "damage":50,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"multi_shots",
                  "amount":4
               },
               "shown":true,
               "allow_upg":true,
               "name":"Многозарядный ракетомет"
            },
            "dl19":{
               "id":50,
               "level":31,
               "spec_mod":"",
               "delay":0,
               "gold":89000,
               "diam":82,
               "wptype":"p",
               "damage":200,
               "limit":5,
               "ai_type":"gravity",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"cluster",
                  "amount":4,
                  "a_dmg":100
               },
               "shown":true,
               "allow_upg":true,
               "name":"Граната DL19"
            },
            "rj46":{
               "id":55,
               "level":33,
               "spec_mod":"",
               "delay":0,
               "gold":96000,
               "diam":93,
               "wptype":"p",
               "damage":200,
               "limit":5,
               "ai_type":"wind",
               "unfail":0,
               "ap_mod":0,
               "crit":10,
               "add_damage":{
                  "mode":"cluster",
                  "amount":5,
                  "a_dmg":100
               },
               "shown":true,
               "allow_upg":true,
               "name":"Зажигательная базука Mk 2"
            },
            "ap_bazooka2":{
               "id":109,
               "level":46,
               "spec_mod":"",
               "delay":0,
               "gold":100000,
               "diam":98,
               "wptype":"p",
               "damage":140,
               "limit":10,
               "ai_type":"wind",
               "unfail":0,
               "ap_mod":25,
               "crit":0,
               "add_damage":{
                  "mode":"ap",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Бронебойная базука Mk 2"
            },
            "mega_banana_bomb":{
               "id":110,
               "level":56,
               "spec_mod":"",
               "delay":0,
               "gold":160000,
               "diam":147,
               "wptype":"p",
               "damage":150,
               "limit":3,
               "ai_type":"gravity",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"banana",
                  "amount":4,
                  "a_dmg":75
               },
               "shown":true,
               "allow_upg":true,
               "name":"Мега банано-бомба"
            },
            "pistol":{
               "id":21,
               "level":1,
               "spec_mod":"pistol",
               "delay":0,
               "gold":300,
               "diam":1,
               "wptype":"f",
               "damage":6,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Пистолет 10мм"
            },
            "uzi":{
               "id":22,
               "level":4,
               "spec_mod":"pistol",
               "delay":0,
               "gold":2000,
               "diam":2,
               "wptype":"f",
               "damage":5,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":10
               },
               "shown":true,
               "allow_upg":true,
               "name":"Узи 9мм"
            },
            "unfail_uzi":{
               "id":23,
               "level":9,
               "spec_mod":"pistol",
               "delay":0,
               "gold":6000,
               "diam":5,
               "wptype":"f",
               "damage":5,
               "limit":10,
               "ai_type":"",
               "unfail":100,
               "ap_mod":0,
               "crit":50,
               "add_damage":{
                  "mode":"shots",
                  "amount":10
               },
               "shown":true,
               "allow_upg":true,
               "name":"Безотказный Узи 9мм"
            },
            "hunting_rifle":{
               "id":24,
               "level":10,
               "spec_mod":"rifle",
               "delay":0,
               "gold":6000,
               "diam":6,
               "wptype":"f",
               "damage":32,
               "limit":10,
               "ai_type":"linear",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"multi_shots",
                  "amount":2
               },
               "shown":true,
               "allow_upg":true,
               "name":"Дробовик .410"
            },
            "sniper_rifle":{
               "id":25,
               "level":17,
               "spec_mod":"rifle",
               "delay":0,
               "gold":16000,
               "diam":11,
               "wptype":"f",
               "damage":250,
               "limit":10,
               "ai_type":"linear",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":1
               },
               "shown":true,
               "allow_upg":true,
               "name":"Снайперская винтовка 7.62мм"
            },
            "peacemaker":{
               "id":101,
               "level":28,
               "spec_mod":"pistol",
               "delay":0,
               "gold":56000,
               "diam":49,
               "wptype":"f",
               "damage":250,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":15,
               "crit":25,
               "add_damage":{
                  "mode":"shots",
                  "amount":2
               },
               "shown":true,
               "allow_upg":true,
               "name":"Миротворец .577"
            },
            "shotgun":{
               "id":26,
               "level":3,
               "spec_mod":"rifle",
               "delay":0,
               "gold":1500,
               "diam":2,
               "wptype":"f",
               "damage":25,
               "limit":10,
               "ai_type":"linear",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"multi_shots",
                  "amount":2
               },
               "shown":true,
               "allow_upg":true,
               "name":"Двустволка .45"
            },
            "minigun":{
               "id":27,
               "level":11,
               "spec_mod":"minigun",
               "delay":0,
               "gold":6500,
               "diam":7,
               "wptype":"f",
               "damage":4,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":20
               },
               "shown":true,
               "allow_upg":true,
               "name":"Пулемет 5.56мм"
            },
            "unfail_minigun":{
               "id":28,
               "level":15,
               "spec_mod":"minigun",
               "delay":0,
               "gold":14000,
               "diam":13,
               "wptype":"f",
               "damage":4,
               "limit":10,
               "ai_type":"",
               "unfail":100,
               "ap_mod":0,
               "crit":50,
               "add_damage":{
                  "mode":"shots",
                  "amount":20
               },
               "shown":true,
               "allow_upg":true,
               "name":"Безотказный пулемет 5.56мм"
            },
            "air_minigun":{
               "id":29,
               "level":24,
               "spec_mod":"minigun",
               "delay":0,
               "gold":31000,
               "diam":25,
               "wptype":"f",
               "damage":12,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":30
               },
               "shown":true,
               "allow_upg":true,
               "name":"Авиационный пулемет 13мм"
            },
            "bozar":{
               "id":30,
               "level":32,
               "spec_mod":"riflegun",
               "delay":0,
               "gold":49000,
               "diam":36,
               "wptype":"f",
               "damage":26,
               "limit":10,
               "ai_type":"",
               "unfail":150,
               "ap_mod":15,
               "crit":20,
               "add_damage":{
                  "mode":"shots",
                  "amount":20
               },
               "shown":true,
               "allow_upg":true,
               "name":"Бозар G9 12.5мм"
            },
            "rad_rifle":{
               "id":103,
               "level":34,
               "spec_mod":"rifle",
               "delay":0,
               "gold":83000,
               "diam":81,
               "wptype":"f",
               "damage":900,
               "limit":10,
               "ai_type":"linear",
               "unfail":0,
               "ap_mod":20,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":1
               },
               "shown":true,
               "allow_upg":true,
               "name":"Радиевая винтовка"
            },
            "avenger":{
               "id":100,
               "level":36,
               "spec_mod":"minigun",
               "delay":0,
               "gold":109000,
               "diam":98,
               "wptype":"f",
               "damage":40,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":30
               },
               "shown":true,
               "allow_upg":true,
               "name":"Пулемет Авенджер 20мм"
            },
            "air_strike":{
               "id":31,
               "level":6,
               "spec_mod":"",
               "delay":2,
               "gold":5200,
               "diam":5,
               "wptype":"a",
               "damage":25,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"airstrike",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Воздушный удар"
            },
            "napalm_strike":{
               "id":32,
               "level":9,
               "spec_mod":"",
               "delay":4,
               "gold":6000,
               "diam":6,
               "wptype":"a",
               "damage":0,
               "limit":6,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Удар напалмом"
            },
            "mine_strike":{
               "id":33,
               "level":11,
               "spec_mod":"",
               "delay":3,
               "gold":16000,
               "diam":15,
               "wptype":"a",
               "damage":50,
               "limit":6,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"airstrike",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Минный удар"
            },
            "banana_strike":{
               "id":34,
               "level":27,
               "spec_mod":"",
               "delay":0,
               "gold":88000,
               "diam":80,
               "wptype":"a",
               "damage":75,
               "limit":4,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"airstrike",
                  "amount":3
               },
               "shown":true,
               "allow_upg":true,
               "name":"Банановый удар"
            },
            "holy_strike":{
               "id":35,
               "level":31,
               "spec_mod":"holy",
               "delay":0,
               "gold":94000,
               "diam":86,
               "wptype":"a",
               "damage":160,
               "limit":3,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"airstrike",
                  "amount":3
               },
               "shown":true,
               "allow_upg":true,
               "name":"Святой удар"
            },
            "mine":{
               "id":36,
               "level":1,
               "spec_mod":"",
               "delay":0,
               "gold":800,
               "diam":1,
               "wptype":"e",
               "damage":50,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Мина"
            },
            "unfail_mine":{
               "id":37,
               "level":4,
               "spec_mod":"",
               "delay":0,
               "gold":2500,
               "diam":3,
               "wptype":"e",
               "damage":50,
               "limit":10,
               "ai_type":"",
               "unfail":100,
               "ap_mod":0,
               "crit":50,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Безотказная мина"
            },
            "fire_mine":{
               "id":38,
               "level":8,
               "spec_mod":"",
               "delay":0,
               "gold":12000,
               "diam":10,
               "wptype":"e",
               "damage":50,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Зажигательная мина"
            },
            "plasma_mine":{
               "id":39,
               "level":13,
               "spec_mod":"",
               "delay":0,
               "gold":19000,
               "diam":17,
               "wptype":"e",
               "damage":110,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Плазменная мина"
            },
            "pulse_mine":{
               "id":40,
               "level":18,
               "spec_mod":"elec",
               "delay":0,
               "gold":27000,
               "diam":25,
               "wptype":"e",
               "damage":110,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Импульсная мина"
            },
            "nuclear_mine":{
               "id":104,
               "level":22,
               "spec_mod":"",
               "delay":0,
               "gold":41000,
               "diam":40,
               "wptype":"e",
               "damage":450,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Урановая мина UN14"
            },
            "dynamite":{
               "id":41,
               "level":4,
               "spec_mod":"",
               "delay":0,
               "gold":3000,
               "diam":3,
               "wptype":"e",
               "damage":75,
               "limit":6,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Динамит"
            },
            "unfail_dynamite":{
               "id":42,
               "level":7,
               "spec_mod":"",
               "delay":0,
               "gold":5000,
               "diam":5,
               "wptype":"e",
               "damage":75,
               "limit":6,
               "ai_type":"",
               "unfail":100,
               "ap_mod":0,
               "crit":50,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Безотказный динамит"
            },
            "dynamite_bunch":{
               "id":45,
               "level":14,
               "spec_mod":"",
               "delay":0,
               "gold":29000,
               "diam":28,
               "wptype":"e",
               "damage":75,
               "limit":6,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"cluster",
                  "amount":3
               },
               "shown":true,
               "allow_upg":true,
               "name":"Связка динамита"
            },
            "old_woman":{
               "id":46,
               "level":5,
               "spec_mod":"",
               "delay":0,
               "gold":3000,
               "diam":3,
               "wptype":"l",
               "damage":75,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Старушка"
            },
            "unfail_old_woman":{
               "id":47,
               "level":7,
               "spec_mod":"",
               "delay":0,
               "gold":5000,
               "diam":4,
               "wptype":"l",
               "damage":75,
               "limit":10,
               "ai_type":"",
               "unfail":100,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Безотказная старушка"
            },
            "sheep":{
               "id":43,
               "level":7,
               "spec_mod":"",
               "delay":0,
               "gold":3200,
               "diam":3,
               "wptype":"l",
               "damage":75,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Овца"
            },
            "unfail_sheep":{
               "id":44,
               "level":10,
               "spec_mod":"",
               "delay":0,
               "gold":6000,
               "diam":5,
               "wptype":"l",
               "damage":75,
               "limit":10,
               "ai_type":"",
               "unfail":100,
               "ap_mod":0,
               "crit":50,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Безотказная овца"
            },
            "fire_sheep":{
               "id":48,
               "level":9,
               "spec_mod":"",
               "delay":0,
               "gold":14000,
               "diam":12,
               "wptype":"l",
               "damage":75,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Зажигательная овца"
            },
            "poison_sheep":{
               "id":49,
               "level":12,
               "spec_mod":"",
               "delay":0,
               "gold":18000,
               "diam":14,
               "wptype":"l",
               "damage":75,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Отравленная овца"
            },
            "mine_sheep":{
               "id":105,
               "level":19,
               "spec_mod":"",
               "delay":0,
               "gold":33000,
               "diam":32,
               "wptype":"l",
               "damage":75,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"mines",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Миновца"
            },
            "mine_sheep2":{
               "id":106,
               "level":27,
               "spec_mod":"",
               "delay":0,
               "gold":46000,
               "diam":44,
               "wptype":"l",
               "damage":75,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"pmines",
                  "amount":7
               },
               "shown":true,
               "allow_upg":true,
               "name":"Миновца Mk 2"
            },
            "prod":{
               "id":51,
               "level":1,
               "spec_mod":"",
               "delay":0,
               "gold":250,
               "diam":1,
               "wptype":"c",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Тычок"
            },
            "firepunch":{
               "id":52,
               "level":1,
               "spec_mod":"",
               "delay":0,
               "gold":400,
               "diam":1,
               "wptype":"c",
               "damage":30,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Огненный удар"
            },
            "fireball":{
               "id":53,
               "level":1,
               "spec_mod":"",
               "delay":0,
               "gold":350,
               "diam":1,
               "wptype":"c",
               "damage":30,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Шар дракона"
            },
            "kamikaze":{
               "id":54,
               "level":33,
               "spec_mod":"",
               "delay":0,
               "gold":36000,
               "diam":34,
               "wptype":"c",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Камикадзе"
            },
            "baseball_bat":{
               "id":56,
               "level":5,
               "spec_mod":"",
               "delay":0,
               "gold":4800,
               "diam":5,
               "wptype":"c",
               "damage":30,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Бейсбольная бита"
            },
            "shocker":{
               "id":57,
               "level":6,
               "spec_mod":"",
               "delay":0,
               "gold":5500,
               "diam":6,
               "wptype":"c",
               "damage":30,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Электрошокер"
            },
            "battle_axe":{
               "id":58,
               "level":8,
               "spec_mod":"",
               "delay":0,
               "gold":5100,
               "diam":5,
               "wptype":"c",
               "damage":-2,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Боевой топор"
            },
            "power_axe":{
               "id":59,
               "level":20,
               "spec_mod":"",
               "delay":0,
               "gold":12000,
               "diam":10,
               "wptype":"c",
               "damage":-3,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Силовой топор"
            },
            "power_bat":{
               "id":60,
               "level":21,
               "spec_mod":"",
               "delay":0,
               "gold":21000,
               "diam":18,
               "wptype":"c",
               "damage":60,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Силовая бейсбольная бита"
            },
            "skip_go":{
               "id":61,
               "level":1,
               "spec_mod":"",
               "delay":0,
               "gold":0,
               "diam":0,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Пропуск хода"
            },
            "laser_sight":{
               "id":62,
               "level":2,
               "spec_mod":"",
               "delay":0,
               "gold":1200,
               "diam":1,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Лазерный прицел"
            },
            "low_gravity":{
               "id":63,
               "level":3,
               "spec_mod":"",
               "delay":0,
               "gold":2000,
               "diam":2,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Низкая гравитация"
            },
            "fast_walk":{
               "id":64,
               "level":5,
               "spec_mod":"",
               "delay":0,
               "gold":4000,
               "diam":4,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Быстрая ходьба"
            },
            "ultra_scaner":{
               "id":65,
               "level":10,
               "spec_mod":"",
               "delay":_loc1_,
               "gold":5000,
               "diam":5,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Ультраволновой сканер"
            },
            "blow_torch":{
               "id":66,
               "level":2,
               "spec_mod":"",
               "delay":0,
               "gold":1800,
               "diam":2,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Паяльная лампа"
            },
            "pneumatic_drill":{
               "id":67,
               "level":2,
               "spec_mod":"",
               "delay":0,
               "gold":1500,
               "diam":2,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Отбойный молоток"
            },
            "parachute":{
               "id":68,
               "level":3,
               "spec_mod":"",
               "delay":0,
               "gold":2000,
               "diam":2,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Парашют"
            },
            "girder":{
               "id":69,
               "level":4,
               "spec_mod":"",
               "delay":0,
               "gold":4235,
               "diam":4,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Балка"
            },
            "girder_pack":{
               "id":70,
               "level":19,
               "spec_mod":"",
               "delay":0,
               "gold":36000,
               "diam":31,
               "wptype":"u",
               "damage":0,
               "limit":2,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Набор балок"
            },
            "jet_pack":{
               "id":71,
               "level":16,
               "spec_mod":"",
               "delay":0,
               "gold":20000,
               "diam":20,
               "wptype":"u",
               "damage":0,
               "limit":4,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Реактивный ранец"
            },
            "teleport":{
               "id":72,
               "level":8,
               "spec_mod":"",
               "delay":0,
               "gold":6000,
               "diam":6,
               "wptype":"u",
               "damage":0,
               "limit":6,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Телепорт"
            },
            "upg_teleport":{
               "id":73,
               "level":21,
               "spec_mod":"",
               "delay":0,
               "gold":51000,
               "diam":51,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Улучшенный телепорт"
            },
            "upg_jet_pack":{
               "id":74,
               "level":26,
               "spec_mod":"",
               "delay":0,
               "gold":28000,
               "diam":25,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Улучш. реактивный ранец"
            },
            "ag_pack":{
               "id":75,
               "level":29,
               "spec_mod":"",
               "delay":0,
               "gold":33000,
               "diam":31,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Антигравитационный ранец"
            },
            "add_time":{
               "id":76,
               "level":9,
               "spec_mod":"",
               "delay":0,
               "gold":4600,
               "diam":5,
               "wptype":"u",
               "damage":0,
               "limit":3,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Дополнительное время"
            },
            "choose_worm":{
               "id":77,
               "level":10,
               "spec_mod":"",
               "delay":0,
               "gold":10000,
               "diam":10,
               "wptype":"u",
               "damage":0,
               "limit":3,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Выбор червя"
            },
            "upg_teleport2":{
               "id":78,
               "level":35,
               "spec_mod":"",
               "delay":0,
               "gold":88000,
               "diam":79,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Улучшенный телепорт Mk 2"
            },
            "medikit":{
               "id":79,
               "level":19,
               "spec_mod":"",
               "delay":0,
               "gold":23000,
               "diam":21,
               "wptype":"u",
               "damage":0,
               "limit":5,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Походная аптечка"
            },
            "emg_teleport":{
               "id":80,
               "level":41,
               "spec_mod":"",
               "delay":_loc1_,
               "gold":113000,
               "diam":110,
               "wptype":"u",
               "damage":0,
               "limit":5,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Аварийный телепорт"
            },
            "super_medikit":{
               "id":99,
               "level":38,
               "spec_mod":"",
               "delay":0,
               "gold":47000,
               "diam":46,
               "wptype":"u",
               "damage":0,
               "limit":5,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Супер-аптечка"
            },
            "gravity_grenade":{
               "id":111,
               "level":26,
               "spec_mod":"",
               "delay":0,
               "gold":51000,
               "diam":49,
               "wptype":"u",
               "damage":0,
               "limit":4,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Гравитационная граната G1500"
            },
            "invisibility":{
               "id":112,
               "level":28,
               "spec_mod":"",
               "delay":0,
               "gold":67000,
               "diam":64,
               "wptype":"u",
               "damage":0,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":false,
               "name":"Частичная невидимость"
            },
            "laser_pistol":{
               "id":81,
               "level":12,
               "spec_mod":"pistol",
               "delay":0,
               "gold":12000,
               "diam":12,
               "wptype":"h",
               "damage":24,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Лазерный пистолет"
            },
            "laser_rifle":{
               "id":82,
               "level":18,
               "spec_mod":"rifle",
               "delay":0,
               "gold":23000,
               "diam":21,
               "wptype":"h",
               "damage":24,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":10
               },
               "shown":true,
               "allow_upg":true,
               "name":"Лазерная винтовка"
            },
            "unfail_laser_rifle":{
               "id":83,
               "level":25,
               "spec_mod":"rifle",
               "delay":0,
               "gold":35000,
               "diam":33,
               "wptype":"h",
               "damage":24,
               "limit":10,
               "ai_type":"",
               "unfail":100,
               "ap_mod":0,
               "crit":50,
               "add_damage":{
                  "mode":"shots",
                  "amount":10
               },
               "shown":true,
               "allow_upg":true,
               "name":"Безотк. лазерная винтовка"
            },
            "laser_minigun":{
               "id":84,
               "level":37,
               "spec_mod":"minigun",
               "delay":0,
               "gold":53000,
               "diam":50,
               "wptype":"h",
               "damage":32,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":20
               },
               "shown":true,
               "allow_upg":true,
               "name":"Лазерный пулемет"
            },
            "pulse_pistol":{
               "id":85,
               "level":40,
               "spec_mod":"elec",
               "delay":0,
               "gold":164000,
               "diam":110,
               "wptype":"h",
               "damage":900,
               "limit":10,
               "ai_type":"linear",
               "unfail":150,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Стэндиш 900"
            },
            "plasma_pistol":{
               "id":86,
               "level":14,
               "spec_mod":"pistol",
               "delay":0,
               "gold":15000,
               "diam":15,
               "wptype":"h",
               "damage":35,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Плазменный пистолет"
            },
            "plasma_rifle":{
               "id":87,
               "level":22,
               "spec_mod":"rifle",
               "delay":0,
               "gold":34000,
               "diam":31,
               "wptype":"h",
               "damage":35,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":10
               },
               "shown":true,
               "allow_upg":true,
               "name":"Плазменная винтовка"
            },
            "unfail_plasma_rifle":{
               "id":88,
               "level":27,
               "spec_mod":"rifle",
               "delay":0,
               "gold":43000,
               "diam":36,
               "wptype":"h",
               "damage":35,
               "limit":10,
               "ai_type":"",
               "unfail":100,
               "ap_mod":0,
               "crit":50,
               "add_damage":{
                  "mode":"shots",
                  "amount":10
               },
               "shown":true,
               "allow_upg":true,
               "name":"Безотк. плазменная винтовка"
            },
            "plasma_minigun":{
               "id":89,
               "level":41,
               "spec_mod":"minigun",
               "delay":0,
               "gold":106000,
               "diam":99,
               "wptype":"h",
               "damage":60,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":20
               },
               "shown":true,
               "allow_upg":true,
               "name":"Плазменный пулемет"
            },
            "luiston":{
               "id":90,
               "level":44,
               "spec_mod":"elec",
               "delay":0,
               "gold":190000,
               "diam":130,
               "wptype":"h",
               "damage":1300,
               "limit":10,
               "ai_type":"linear",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Льюистон Mk 17"
            },
            "gauss_pistol":{
               "id":91,
               "level":23,
               "spec_mod":"pistol",
               "delay":0,
               "gold":28000,
               "diam":24,
               "wptype":"h",
               "damage":350,
               "limit":10,
               "ai_type":"linear",
               "unfail":150,
               "ap_mod":30,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":1
               },
               "shown":true,
               "allow_upg":true,
               "name":"Пистолет Гаусса PPK12"
            },
            "gauss_rifle":{
               "id":92,
               "level":30,
               "spec_mod":"rifle",
               "delay":0,
               "gold":43000,
               "diam":40,
               "wptype":"h",
               "damage":600,
               "limit":10,
               "ai_type":"linear",
               "unfail":0,
               "ap_mod":30,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":1
               },
               "shown":true,
               "allow_upg":true,
               "name":"Винтовка Гаусса M72"
            },
            "unfail_gauss_rifle":{
               "id":93,
               "level":37,
               "spec_mod":"rifle",
               "delay":0,
               "gold":56000,
               "diam":51,
               "wptype":"h",
               "damage":600,
               "limit":10,
               "ai_type":"",
               "unfail":100,
               "ap_mod":30,
               "crit":50,
               "add_damage":{
                  "mode":"shots",
                  "amount":1
               },
               "shown":true,
               "allow_upg":true,
               "name":"Безотказная винтовка Гаусса M72"
            },
            "gauss_minigun":{
               "id":94,
               "level":47,
               "spec_mod":"minigun",
               "delay":0,
               "gold":185000,
               "diam":160,
               "wptype":"h",
               "damage":375,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":30,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":10
               },
               "shown":true,
               "allow_upg":true,
               "name":"Гаусс-пулемет"
            },
            "de_lameter":{
               "id":95,
               "level":50,
               "spec_mod":"elec",
               "delay":0,
               "gold":340000,
               "diam":269,
               "wptype":"h",
               "damage":1850,
               "limit":10,
               "ai_type":"linear",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"ap",
                  "amount":3
               },
               "shown":true,
               "allow_upg":true,
               "name":"Излучатель Де Ляметра"
            },
            "turbo_rifle":{
               "id":107,
               "level":64,
               "spec_mod":"elec",
               "delay":0,
               "gold":420000,
               "diam":345,
               "wptype":"h",
               "damage":1400,
               "limit":10,
               "ai_type":"",
               "unfail":150,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Турбовинтовка Де Ляметра"
            },
            "orbit_strike":{
               "id":96,
               "level":58,
               "spec_mod":"",
               "delay":0,
               "gold":330000,
               "diam":204,
               "wptype":"a",
               "damage":1300,
               "limit":3,
               "ai_type":"",
               "unfail":0,
               "ap_mod":0,
               "crit":0,
               "add_damage":{
                  "mode":"airstrike",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Удар с орбиты"
            },
            "ultra_rifle":{
               "id":97,
               "level":62,
               "spec_mod":"rifle",
               "delay":0,
               "gold":260000,
               "diam":215,
               "wptype":"h",
               "damage":2000,
               "limit":10,
               "ai_type":"linear",
               "unfail":0,
               "ap_mod":5,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":true,
               "allow_upg":true,
               "name":"Ультраволновая винтовка"
            },
            "vindicator":{
               "id":108,
               "level":69,
               "spec_mod":"rifle",
               "delay":0,
               "gold":510000,
               "diam":455,
               "wptype":"h",
               "damage":2000,
               "limit":10,
               "ai_type":"",
               "unfail":150,
               "ap_mod":5,
               "crit":0,
               "add_damage":{
                  "mode":"shots",
                  "amount":5
               },
               "shown":true,
               "allow_upg":true,
               "name":"Виндикатор M143"
            },
            "laser_pistol2":{
               "id":113,
               "level":15,
               "spec_mod":"pistol",
               "delay":0,
               "gold":21000,
               "diam":18,
               "wptype":"h",
               "damage":30,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":15,
               "crit":20,
               "add_damage":{
                  "mode":"shots",
                  "amount":7
               },
               "shown":false,
               "allow_upg":true,
               "name":"Лазерный пистолет Mk 2"
            },
            "nuclear_bomb2":{
               "id":114,
               "level":35,
               "spec_mod":"",
               "delay":0,
               "gold":78000,
               "diam":76,
               "wptype":"p",
               "damage":900,
               "limit":3,
               "ai_type":"wind",
               "unfail":0,
               "ap_mod":15,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":true,
               "name":"ICBM Rad-14"
            },
            "super_hhg":{
               "id":115,
               "level":29,
               "spec_mod":"holy",
               "delay":0,
               "gold":54000,
               "diam":51,
               "wptype":"p",
               "damage":250,
               "limit":6,
               "ai_type":"",
               "unfail":0,
               "ap_mod":100,
               "crit":20,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":true,
               "name":"Супер святая граната"
            },
            "gauss_pistol2":{
               "id":116,
               "level":31,
               "spec_mod":"pistol",
               "delay":0,
               "gold":47000,
               "diam":46,
               "wptype":"h",
               "damage":375,
               "limit":10,
               "ai_type":"",
               "unfail":150,
               "ap_mod":30,
               "crit":0,
               "add_damage":{
                  "mode":"multi_shots",
                  "amount":2
               },
               "shown":false,
               "allow_upg":true,
               "name":"Пистолет Гаусса PPK19"
            },
            "hearts_ace":{
               "id":117,
               "level":47,
               "spec_mod":"pistol",
               "delay":0,
               "gold":113000,
               "diam":110,
               "wptype":"f",
               "damage":300,
               "limit":10,
               "ai_type":"",
               "unfail":0,
               "ap_mod":20,
               "crit":25,
               "add_damage":{
                  "mode":"shots",
                  "amount":2
               },
               "shown":false,
               "allow_upg":true,
               "name":"Туз Червей .577"
            },
            "bozar16":{
               "id":118,
               "level":49,
               "spec_mod":"riflegun",
               "delay":0,
               "gold":167000,
               "diam":164,
               "wptype":"f",
               "damage":100,
               "limit":10,
               "ai_type":"",
               "unfail":150,
               "ap_mod":20,
               "crit":20,
               "add_damage":{
                  "mode":"shots",
                  "amount":20
               },
               "shown":false,
               "allow_upg":true,
               "name":"Бозар G16 RAD"
            },
            "bozar24s":{
               "id":119,
               "level":61,
               "spec_mod":"riflegun",
               "delay":0,
               "gold":205000,
               "diam":204,
               "wptype":"f",
               "damage":125,
               "limit":10,
               "ai_type":"",
               "unfail":150,
               "ap_mod":100,
               "crit":20,
               "add_damage":{
                  "mode":"shots",
                  "amount":20
               },
               "shown":false,
               "allow_upg":true,
               "name":"Бозар G24s RAD"
            },
            "kenton_bazooka":{
               "id":120,
               "level":0,
               "spec_mod":"",
               "delay":0,
               "gold":400000,
               "diam":0,
               "wptype":"p",
               "damage":1200,
               "limit":10,
               "ai_type":"wind",
               "unfail":150,
               "ap_mod":100,
               "crit":25,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Кентонская базука"
            },
            "kenton_grenade":{
               "id":121,
               "level":0,
               "spec_mod":"",
               "delay":0,
               "gold":400000,
               "diam":0,
               "wptype":"p",
               "damage":1200,
               "limit":10,
               "ai_type":"gravity",
               "unfail":150,
               "ap_mod":100,
               "crit":25,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Кентонская граната"
            },
            "void_melody":{
               "id":122,
               "level":0,
               "spec_mod":"",
               "delay":0,
               "gold":1200000,
               "diam":0,
               "wptype":"h",
               "damage":15000,
               "limit":10,
               "ai_type":"linear",
               "unfail":150,
               "ap_mod":100,
               "crit":25,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Мелодия пустоты"
            },
            "annihilator":{
               "id":123,
               "level":80,
               "spec_mod":"",
               "delay":0,
               "gold":1500000,
               "diam":986,
               "wptype":"h",
               "damage":12000,
               "limit":10,
               "ai_type":"linear",
               "unfail":150,
               "ap_mod":100,
               "crit":0,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Анигиллятор A3000"
            },
            "rez124":{
               "id":124,
               "level":-1
            },
            "rez125":{
               "id":125,
               "level":-1
            },
            "rez126":{
               "id":126,
               "level":-1
            },
            "rez127":{
               "id":127,
               "level":-1
            },
            "rez128":{
               "id":128,
               "level":-1
            },
            "rez129":{
               "id":129,
               "level":-1
            },
            "rez130":{
               "id":130,
               "level":-1
            },
            "rez131":{
               "id":131,
               "level":-1
            },
            "rez132":{
               "id":132,
               "level":-1
            },
            "rez133":{
               "id":133,
               "level":-1
            },
            "rez134":{
               "id":134,
               "level":-1
            },
            "rez135":{
               "id":135,
               "level":-1
            },
            "rez136":{
               "id":136,
               "level":-1
            },
            "rez137":{
               "id":137,
               "level":-1
            },
            "rez138":{
               "id":138,
               "level":-1
            },
            "rez139":{
               "id":139,
               "level":-1
            },
            "rez140":{
               "id":140,
               "level":-1
            },
            "rez141":{
               "id":141,
               "level":-1
            },
            "rez142":{
               "id":142,
               "level":-1
            },
            "rez143":{
               "id":143,
               "level":-1
            },
            "rez144":{
               "id":144,
               "level":-1
            },
            "beretta":{
               "id":201,
               "level":0,
               "spec_mod":"",
               "delay":0,
               "gold":0,
               "diam":0,
               "wptype":"f",
               "damage":75,
               "limit":10,
               "ai_type":"linear",
               "unfail":100,
               "ap_mod":50,
               "crit":70,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Беретта M-92F"
            },
            "laser_at_rifle":{
               "id":202,
               "level":24,
               "spec_mod":"",
               "delay":0,
               "gold":0,
               "diam":0,
               "wptype":"h",
               "damage":250,
               "limit":10,
               "ai_type":"linear",
               "unfail":100,
               "ap_mod":20,
               "crit":30,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Лазерная противотанковая винтовка"
            },
            "plasma_at_rifle":{
               "id":203,
               "level":25,
               "spec_mod":"",
               "delay":0,
               "gold":0,
               "diam":0,
               "wptype":"h",
               "damage":450,
               "limit":10,
               "ai_type":"linear",
               "unfail":100,
               "ap_mod":20,
               "crit":30,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Плазменная противотанковая винтовка"
            },
            "multip14":{
               "id":204,
               "level":40,
               "spec_mod":"",
               "delay":0,
               "gold":0,
               "diam":0,
               "wptype":"p",
               "damage":400,
               "limit":10,
               "ai_type":"wind",
               "unfail":100,
               "ap_mod":10,
               "crit":10,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Базука MULTI P-14"
            },
            "multip17":{
               "id":205,
               "level":45,
               "spec_mod":"",
               "delay":0,
               "gold":0,
               "diam":0,
               "wptype":"p",
               "damage":500,
               "limit":10,
               "ai_type":"wind",
               "unfail":100,
               "ap_mod":20,
               "crit":15,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Базука MULTI P-17 AP"
            },
            "rainbow_burst":{
               "id":206,
               "level":40,
               "spec_mod":"",
               "delay":0,
               "gold":0,
               "diam":0,
               "wptype":"p",
               "damage":400,
               "limit":10,
               "ai_type":"gravity",
               "unfail":100,
               "ap_mod":10,
               "crit":10,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Граната Rainbow Burst"
            },
            "infinity_rainbow":{
               "id":207,
               "level":45,
               "spec_mod":"",
               "delay":0,
               "gold":0,
               "diam":0,
               "wptype":"p",
               "damage":500,
               "limit":10,
               "ai_type":"gravity",
               "unfail":100,
               "ap_mod":20,
               "crit":15,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Граната Infinity Rainbow"
            },
            "ec_caws":{
               "id":208,
               "level":45,
               "spec_mod":"",
               "delay":0,
               "gold":0,
               "diam":0,
               "wptype":"h",
               "damage":2000,
               "limit":10,
               "ai_type":"linear",
               "unfail":100,
               "ap_mod":40,
               "crit":20,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"EC CAWS"
            },
            "ec_panhammer":{
               "id":209,
               "level":46,
               "spec_mod":"",
               "delay":0,
               "gold":0,
               "diam":0,
               "wptype":"h",
               "damage":2500,
               "limit":10,
               "ai_type":"linear",
               "unfail":100,
               "ap_mod":40,
               "crit":25,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"EC Panhammer"
            },
            "multip83":{
               "id":210,
               "level":45,
               "spec_mod":"",
               "delay":0,
               "gold":0,
               "diam":0,
               "wptype":"p",
               "damage":800,
               "limit":10,
               "ai_type":"wind",
               "unfail":100,
               "ap_mod":20,
               "crit":15,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Базука MULTI P-83 AP+"
            },
            "skyfire":{
               "id":211,
               "level":45,
               "spec_mod":"",
               "delay":0,
               "gold":0,
               "diam":0,
               "wptype":"p",
               "damage":800,
               "limit":10,
               "ai_type":"gravity",
               "unfail":100,
               "ap_mod":20,
               "crit":15,
               "add_damage":{"mode":"none"},
               "shown":false,
               "allow_upg":false,
               "name":"Граната Skyfire"
            }
         };
         for(_loc2_ in this.WEAPONS_DEF)
         {
            if(this.WEAPONS_DEF[_loc2_].level == 0)
            {
               this.WEAPONS_DEF[_loc2_]["wpclass"] = 0;
            }
            else if(this.WEAPONS_DEF[_loc2_].level == 1)
            {
               this.WEAPONS_DEF[_loc2_]["wpclass"] = 1;
            }
            else if(this.WEAPONS_DEF[_loc2_].level <= 8)
            {
               this.WEAPONS_DEF[_loc2_]["wpclass"] = 2;
            }
            else if(this.WEAPONS_DEF[_loc2_].level <= 15)
            {
               this.WEAPONS_DEF[_loc2_]["wpclass"] = 3;
            }
            else if(this.WEAPONS_DEF[_loc2_].level <= 20)
            {
               this.WEAPONS_DEF[_loc2_]["wpclass"] = 4;
            }
            else if(this.WEAPONS_DEF[_loc2_].level <= 29)
            {
               this.WEAPONS_DEF[_loc2_]["wpclass"] = 5;
            }
            else if(this.WEAPONS_DEF[_loc2_].level <= 40)
            {
               this.WEAPONS_DEF[_loc2_]["wpclass"] = 6;
            }
            else
            {
               this.WEAPONS_DEF[_loc2_]["wpclass"] = 7;
            }
            if(_loc2_ == "kenton_bazooka" || _loc2_ == "kenton_grenade" || _loc2_ == "void_melody")
            {
               this.WEAPONS_DEF[_loc2_]["wpclass"] = 8;
            }
            if(!this.WEAPONS_DEF[_loc2_].shown && this.WEAPONS_DEF[_loc2_].level != 0)
            {
               this.WEAPONS_DEF[_loc2_].gold = Math.ceil(this.WEAPONS_DEF[_loc2_].gold / 0.6);
               this.WEAPONS_DEF[_loc2_].diam = Math.ceil(this.WEAPONS_DEF[_loc2_].diam / 0.6);
            }
         }
         this.WEAPONS_DEF.holy_hand_grenade.wpclass = 4;
         this.WEAPONS_DEF.unfail_minigun.wpclass = 4;
         this.WEAPONS_DEF.mine_strike.wpclass = 4;
         this.GUM_DEF = {
            "bazooka":100,
            "grenade":100,
            "cluster_bomb":1,
            "mortar":1,
            "pistol":3,
            "prod":100,
            "fireball":100,
            "jet_pack":1,
            "skip_go":100,
            "mine":1,
            "teleport":1
         };
         this.MISSION_WEAP_DEF = {
            "mission1":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "pistol":3,
               "jet_pack":1,
               "skip_go":100
            },
            "mission2":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "uzi":1,
               "skip_go":100
            },
            "mission3":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "shotgun":1,
               "skip_go":100
            },
            "mission4":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "cluster_bomb":3,
               "skip_go":100
            },
            "mission5":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "minigun":1,
               "skip_go":100
            },
            "mission6":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "mine":1,
               "skip_go":100
            },
            "mission7":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "mortar":1,
               "skip_go":100
            },
            "mission8":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "mine":1,
               "skip_go":100
            },
            "mission9":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "dynamite":1,
               "skip_go":100
            },
            "mission10":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "sheep":1,
               "skip_go":100
            },
            "mission11":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "uzi":1,
               "skip_go":100
            },
            "mission12":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "laser_pistol":1,
               "skip_go":100
            },
            "mission13":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "old_woman":1,
               "skip_go":100
            },
            "mission14":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "skip_go":100
            },
            "mission15":{
               "bazooka":100,
               "grenade":100,
               "prod":100,
               "fireball":2,
               "laser_rifle":1,
               "skip_go":100
            },
            "mission16":{
               "teleport":1,
               "girder":9,
               "pistol":9,
               "uzi":4,
               "minigun":1,
               "banana_bomb":1,
               "holy_hand_grenade":1,
               "firepunch":2,
               "baseball_bat":1,
               "low_gravity":1,
               "jet_pack":1,
               "bazooka":6,
               "grenade":6,
               "laser_rifle":1,
               "plasma_pistol":1,
               "gauss_pistol":2,
               "ultra_scaner":1,
               "skip_go":100
            }
         };
         this.TEAMS_DEF = {
            "career_max":100,
            "missions_max":17,
            "survival_max":20,
            "boss_max":19,
            "just1":{
               "teams":1,
               "level":1,
               "gold":0,
               "exp":0,
               "worm_limit":8,
               "map":"wormville1",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":""
            },
            "just2":{
               "teams":1,
               "level":1,
               "gold":0,
               "exp":0,
               "worm_limit":8,
               "map":"molivand1",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":""
            },
            "just3":{
               "teams":1,
               "level":1,
               "gold":0,
               "exp":0,
               "worm_limit":8,
               "map":"rolitrad1",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":""
            },
            "just4":{
               "teams":1,
               "level":1,
               "gold":0,
               "exp":0,
               "worm_limit":8,
               "map":"traver1",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":""
            },
            "just5":{
               "teams":1,
               "level":1,
               "gold":0,
               "exp":0,
               "worm_limit":8,
               "map":"sheovar1",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":""
            },
            "career1":{
               "teams":1,
               "level":1,
               "gold":300,
               "exp":600,
               "worm_limit":5,
               "map":"wormville1",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 1 : Новобранец",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":1,
                  "color":this.C_RED
               })
            },
            "career2":{
               "teams":1,
               "level":1,
               "gold":320,
               "exp":650,
               "worm_limit":5,
               "map":"wormville1",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 2 : Рядовой",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":2,
                  "color":this.C_RED
               })
            },
            "career3":{
               "teams":1,
               "level":1,
               "gold":350,
               "exp":700,
               "worm_limit":5,
               "map":"wormville2",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 3 : Ефрейтор",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":3,
                  "color":this.C_RED
               })
            },
            "career4":{
               "teams":1,
               "level":1,
               "gold":400,
               "exp":750,
               "worm_limit":5,
               "map":"wormville2",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 4 : Младший сержант",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":4,
                  "color":this.C_RED
               })
            },
            "career5":{
               "teams":1,
               "level":1,
               "gold":400,
               "exp":900,
               "worm_limit":5,
               "map":"wormville3",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 5 : Сержант",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":6,
                  "color":this.C_RED
               })
            },
            "career6":{
               "teams":2,
               "level":1,
               "gold":450,
               "exp":950,
               "worm_limit":5,
               "map":"wormville3",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 6 : Старший сержант",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":2,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":2,
                  "color":this.C_RED
               })
            },
            "career7":{
               "teams":2,
               "level":1,
               "gold":500,
               "exp":1000,
               "worm_limit":5,
               "map":"wormville4",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 7 : Старшина",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":2,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":3,
                  "color":this.C_RED
               })
            },
            "career8":{
               "teams":2,
               "level":1,
               "gold":600,
               "exp":1100,
               "worm_limit":5,
               "map":"wormville4",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 8 : Младший лейтенант",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":2,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":4,
                  "color":this.C_RED
               })
            },
            "career9":{
               "teams":2,
               "level":1,
               "gold":700,
               "exp":1150,
               "worm_limit":5,
               "map":"wormville5",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 9 : Лейтенант",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":2,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":5,
                  "color":this.C_RED
               })
            },
            "career10":{
               "teams":2,
               "level":1,
               "gold":800,
               "exp":1300,
               "worm_limit":5,
               "map":"wormville5",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 10 : Старший лейтенант",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":2,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":6,
                  "color":this.C_RED
               })
            },
            "career11":{
               "teams":2,
               "level":1,
               "gold":900,
               "exp":1350,
               "worm_limit":5,
               "map":"wormville2",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 11 : Капитан",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":3,
                  "color":this.C_GREEN
               }),
               "team3":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":2,
                  "color":this.C_GREEN
               })
            },
            "career12":{
               "teams":2,
               "level":1,
               "gold":1000,
               "exp":1450,
               "worm_limit":5,
               "map":"wormville3",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 12 : Майор",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":2,
                  "color":this.C_GREEN
               }),
               "team3":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":3,
                  "color":this.C_GREEN
               })
            },
            "career13":{
               "teams":2,
               "level":1,
               "gold":1100,
               "exp":1500,
               "worm_limit":5,
               "map":"wormville4",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 13 : Подполковник",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":2,
                  "color":this.C_GREEN
               }),
               "team3":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":5,
                  "color":this.C_GREEN
               })
            },
            "career14":{
               "teams":2,
               "level":1,
               "gold":1200,
               "exp":1550,
               "worm_limit":5,
               "map":"molivand1",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Ранг 14 : Полковник",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":2,
                  "color":this.C_GREEN
               }),
               "team3":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":6,
                  "color":this.C_GREEN
               })
            },
            "career15":{
               "teams":2,
               "level":1,
               "gold":1300,
               "exp":1700,
               "worm_limit":5,
               "map":"molivand1",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Ранг 15 : Генерал-майор",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":3,
                  "color":this.C_GREEN
               }),
               "team3":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":6,
                  "color":this.C_GREEN
               })
            },
            "career16":{
               "teams":2,
               "level":1,
               "gold":1400,
               "exp":1750,
               "worm_limit":5,
               "map":"molivand2",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Ранг 16 : Генерал-лейтенант",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":3,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":2,
                  "color":this.C_YELLOW
               })
            },
            "career17":{
               "teams":2,
               "level":1,
               "gold":1500,
               "exp":1800,
               "worm_limit":5,
               "map":"molivand2",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Ранг 17 : Генерал-полковник",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":3,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":3,
                  "color":this.C_YELLOW
               })
            },
            "career18":{
               "teams":2,
               "level":1,
               "gold":1550,
               "exp":1850,
               "worm_limit":5,
               "map":"molivand3",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Ранг 18 : Генерал Армии",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":3,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               })
            },
            "career19":{
               "teams":2,
               "level":1,
               "gold":1600,
               "exp":1900,
               "worm_limit":5,
               "map":"molivand3",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Ранг 19 : Маршал",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":3,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               })
            },
            "career20":{
               "teams":2,
               "level":1,
               "gold":1700,
               "exp":1950,
               "worm_limit":5,
               "map":"molivand4",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Ранг 20 : Генералиссимус",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":3,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               })
            },
            "career21":{
               "teams":3,
               "level":1,
               "gold":1800,
               "exp":2000,
               "worm_limit":5,
               "map":"molivand4",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Ранг 21 : Новобранец FWP Forces",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":2,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":2,
                  "color":this.C_YELLOW
               }),
               "team4":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":2,
                  "color":this.C_YELLOW
               })
            },
            "career22":{
               "teams":3,
               "level":1,
               "gold":1850,
               "exp":2100,
               "worm_limit":5,
               "map":"molivand5",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Ранг 22 : Рядовой FWP Forces",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":3,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":2,
                  "color":this.C_YELLOW
               }),
               "team4":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":2,
                  "color":this.C_YELLOW
               })
            },
            "career23":{
               "teams":3,
               "level":1,
               "gold":1900,
               "exp":2150,
               "worm_limit":5,
               "map":"molivand5",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Ранг 23 : Ефрейтор FWP Forces",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":2,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":2,
                  "color":this.C_YELLOW
               }),
               "team4":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":3,
                  "color":this.C_YELLOW
               })
            },
            "career24":{
               "teams":3,
               "level":1,
               "gold":2000,
               "exp":2200,
               "worm_limit":5,
               "map":"molivand2",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Ранг 24 : Младший сержант FWP Forces",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":3,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":3,
                  "color":this.C_YELLOW
               }),
               "team4":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":3,
                  "color":this.C_YELLOW
               })
            },
            "career25":{
               "teams":3,
               "level":1,
               "gold":2050,
               "exp":2350,
               "worm_limit":5,
               "map":"molivand3",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Ранг 25 : Сержант FWP Forces",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":4,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":3,
                  "color":this.C_YELLOW
               }),
               "team4":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":3,
                  "color":this.C_YELLOW
               })
            },
            "career26":{
               "teams":2,
               "level":1,
               "gold":2100,
               "exp":2400,
               "worm_limit":5,
               "map":"rolitrad1",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 26 : Старший сержант FWP Forces",
               "team2":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":2,
                  "color":this.C_YELLOW
               })
            },
            "career27":{
               "teams":2,
               "level":1,
               "gold":2100,
               "exp":2400,
               "worm_limit":5,
               "map":"rolitrad1",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 27 : Старшина FWP Forces",
               "team2":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":3,
                  "color":this.C_YELLOW
               })
            },
            "career28":{
               "teams":2,
               "level":1,
               "gold":2200,
               "exp":2500,
               "worm_limit":5,
               "map":"rolitrad2",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 28 : Младший лейтенант FWP Forces",
               "team2":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               })
            },
            "career29":{
               "teams":2,
               "level":1,
               "gold":2250,
               "exp":2550,
               "worm_limit":5,
               "map":"rolitrad2",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 29 : Лейтенант FWP Forces",
               "team2":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               })
            },
            "career30":{
               "teams":2,
               "level":1,
               "gold":2300,
               "exp":2600,
               "worm_limit":5,
               "map":"rolitrad3",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 30 : Старший лейтенант FWP Forces",
               "team2":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":6,
                  "color":this.C_YELLOW
               })
            },
            "career31":{
               "teams":2,
               "level":1,
               "gold":2350,
               "exp":2650,
               "worm_limit":5,
               "map":"rolitrad3",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 31 : Капитан FWP Forces",
               "team2":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":3,
                  "color":this.C_YELLOW
               })
            },
            "career32":{
               "teams":2,
               "level":1,
               "gold":2400,
               "exp":2700,
               "worm_limit":5,
               "map":"rolitrad4",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 32 : Майор FWP Forces",
               "team2":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               })
            },
            "career33":{
               "teams":2,
               "level":1,
               "gold":2500,
               "exp":2750,
               "worm_limit":5,
               "map":"rolitrad4",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 33 : Подполковник FWP Forces",
               "team2":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               })
            },
            "career34":{
               "teams":2,
               "level":1,
               "gold":2550,
               "exp":2800,
               "worm_limit":5,
               "map":"rolitrad5",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 34 : Полковник FWP Forces",
               "team2":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               })
            },
            "career35":{
               "teams":2,
               "level":1,
               "gold":2600,
               "exp":3000,
               "worm_limit":5,
               "map":"rolitrad5",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 35 : Генерал-майор FWP Forces",
               "team2":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":6,
                  "color":this.C_YELLOW
               })
            },
            "career36":{
               "teams":2,
               "level":1,
               "gold":2700,
               "exp":3100,
               "worm_limit":5,
               "map":"rolitrad2",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 36 : Генерал-лейтенант FWP Forces",
               "team2":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Последователи Грома",
                  "cpu_level":5,
                  "worms":3,
                  "color":this.C_RED
               })
            },
            "career37":{
               "teams":2,
               "level":1,
               "gold":2750,
               "exp":3150,
               "worm_limit":5,
               "map":"rolitrad3",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 37 : Генерал-полковник FWP Forces",
               "team2":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Последователи Грома",
                  "cpu_level":5,
                  "worms":4,
                  "color":this.C_RED
               })
            },
            "career38":{
               "teams":2,
               "level":1,
               "gold":2800,
               "exp":3200,
               "worm_limit":5,
               "map":"rolitrad4",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 38 : Генерал Армии FWP Forces",
               "team2":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Последователи Грома",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_RED
               })
            },
            "career39":{
               "teams":2,
               "level":1,
               "gold":2850,
               "exp":3250,
               "worm_limit":5,
               "map":"traver1",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":"Ранг 39 : Маршал FWP Forces",
               "team2":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Последователи Грома",
                  "cpu_level":5,
                  "worms":6,
                  "color":this.C_RED
               })
            },
            "career40":{
               "teams":2,
               "level":1,
               "gold":3000,
               "exp":3500,
               "worm_limit":5,
               "map":"traver1",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":"Ранг 40 : Генералиссимус FWP Forces",
               "team2":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Последователи Грома",
                  "cpu_level":5,
                  "worms":6,
                  "color":this.C_RED
               })
            },
            "career41":{
               "teams":2,
               "level":1,
               "gold":3150,
               "exp":3550,
               "worm_limit":5,
               "map":"traver2",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":"Ранг 41 : Новобранец Отражения",
               "team2":this.get_team({
                  "id":"Последователи Грома",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Адепты Грома",
                  "cpu_level":5,
                  "worms":2,
                  "color":this.C_RED
               })
            },
            "career42":{
               "teams":2,
               "level":1,
               "gold":3250,
               "exp":3650,
               "worm_limit":5,
               "map":"traver2",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":"Ранг 42 : Рядовой Отражения",
               "team2":this.get_team({
                  "id":"Последователи Грома",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Адепты Грома",
                  "cpu_level":5,
                  "worms":3,
                  "color":this.C_RED
               })
            },
            "career43":{
               "teams":2,
               "level":1,
               "gold":3350,
               "exp":3750,
               "worm_limit":5,
               "map":"traver3",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":"Ранг 43 : Ефрейтор Отражения",
               "team2":this.get_team({
                  "id":"Последователи Грома",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Адепты Грома",
                  "cpu_level":5,
                  "worms":4,
                  "color":this.C_RED
               })
            },
            "career44":{
               "teams":2,
               "level":1,
               "gold":3450,
               "exp":3850,
               "worm_limit":5,
               "map":"traver3",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":"Ранг 44 : Младший сержант Отражения",
               "team2":this.get_team({
                  "id":"Последователи Грома",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Адепты Грома",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_RED
               })
            },
            "career45":{
               "teams":2,
               "level":1,
               "gold":3500,
               "exp":4000,
               "worm_limit":5,
               "map":"traver4",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":"Ранг 45 : Сержант Отражения",
               "team2":this.get_team({
                  "id":"Последователи Грома",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Адепты Грома",
                  "cpu_level":5,
                  "worms":6,
                  "color":this.C_RED
               })
            },
            "career46":{
               "teams":2,
               "level":1,
               "gold":3550,
               "exp":4100,
               "worm_limit":5,
               "map":"traver4",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":"Ранг 46 : Старший сержант Отражения",
               "team2":this.get_team({
                  "id":"Адепты Грома",
                  "cpu_level":5,
                  "worms":4,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":3,
                  "color":this.C_RED
               })
            },
            "career47":{
               "teams":2,
               "level":1,
               "gold":3600,
               "exp":4150,
               "worm_limit":5,
               "map":"traver5",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":"Ранг 47 : Старшина Отражения",
               "team2":this.get_team({
                  "id":"Адепты Грома",
                  "cpu_level":5,
                  "worms":4,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":4,
                  "color":this.C_RED
               })
            },
            "career48":{
               "teams":2,
               "level":1,
               "gold":3700,
               "exp":4200,
               "worm_limit":5,
               "map":"traver5",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":"Ранг 48 : Младший лейтенант Отражения",
               "team2":this.get_team({
                  "id":"Адепты Грома",
                  "cpu_level":5,
                  "worms":3,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_RED
               })
            },
            "career49":{
               "teams":2,
               "level":1,
               "gold":3800,
               "exp":4250,
               "worm_limit":5,
               "map":"traver3",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":"Ранг 49 : Лейтенант Отражения",
               "team2":this.get_team({
                  "id":"Адепты Грома",
                  "cpu_level":5,
                  "worms":3,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":6,
                  "color":this.C_RED
               })
            },
            "career50":{
               "teams":2,
               "level":1,
               "gold":3850,
               "exp":4300,
               "worm_limit":5,
               "map":"traver4",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "name":"Ранг 50 : Старш. лейтенант Отражения",
               "team2":this.get_team({
                  "id":"Адепты Грома",
                  "cpu_level":5,
                  "worms":4,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":6,
                  "color":this.C_RED
               })
            },
            "career51":{
               "teams":2,
               "level":1,
               "gold":4000,
               "exp":4500,
               "worm_limit":5,
               "map":"sheovar1",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 51 : Капитан Отражения",
               "team2":this.get_team({
                  "id":"Элита Отражения",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career52":{
               "teams":2,
               "level":1,
               "gold":4100,
               "exp":4600,
               "worm_limit":5,
               "map":"sheovar1",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 52 : Майор Отражения",
               "team2":this.get_team({
                  "id":"Элита Отражения",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career53":{
               "teams":2,
               "level":1,
               "gold":4200,
               "exp":4750,
               "worm_limit":5,
               "map":"sheovar2",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 53 : Подполковник Отражения",
               "team2":this.get_team({
                  "id":"Элита Отражения",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":4,
                  "color":this.C_PURPLE
               })
            },
            "career54":{
               "teams":2,
               "level":1,
               "gold":4300,
               "exp":4800,
               "worm_limit":5,
               "map":"sheovar2",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 54 : Полковник Отражения",
               "team2":this.get_team({
                  "id":"Элита Отражения",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career55":{
               "teams":2,
               "level":1,
               "gold":4500,
               "exp":5000,
               "worm_limit":5,
               "map":"sheovar3",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 55 : Генерал-майор Отражения",
               "team2":this.get_team({
                  "id":"Элита Отражения",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career56":{
               "teams":2,
               "level":1,
               "gold":4600,
               "exp":5100,
               "worm_limit":5,
               "map":"sheovar3",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 56 : Генерал-лейтенант Отражения",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career57":{
               "teams":2,
               "level":1,
               "gold":4750,
               "exp":5250,
               "worm_limit":5,
               "map":"sheovar4",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 57 : Генерал-полковник Отражения",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career58":{
               "teams":2,
               "level":1,
               "gold":4800,
               "exp":5400,
               "worm_limit":5,
               "map":"sheovar4",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 58 : Маршал Отражения",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":4,
                  "color":this.C_PURPLE
               })
            },
            "career59":{
               "teams":2,
               "level":1,
               "gold":4850,
               "exp":5500,
               "worm_limit":5,
               "map":"sheovar5",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 59 : Генералиссимус Отражения",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career60":{
               "teams":2,
               "level":1,
               "gold":5000,
               "exp":5700,
               "worm_limit":5,
               "map":"sheovar5",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 60 : Новобранец Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               })
            },
            "career61":{
               "teams":2,
               "level":1,
               "gold":5500,
               "exp":6000,
               "worm_limit":5,
               "map":"sheovar1",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 61 : Рядовой Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               })
            },
            "career62":{
               "teams":2,
               "level":1,
               "gold":6000,
               "exp":6500,
               "worm_limit":5,
               "map":"sheovar2",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 62 : Ефрейтор Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               })
            },
            "career63":{
               "teams":2,
               "level":1,
               "gold":6300,
               "exp":7000,
               "worm_limit":5,
               "map":"sheovar3",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 63 : Мл. сержант Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career64":{
               "teams":2,
               "level":1,
               "gold":6800,
               "exp":7600,
               "worm_limit":5,
               "map":"sheovar4",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 64 : Сержант Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career65":{
               "teams":2,
               "level":1,
               "gold":7100,
               "exp":8200,
               "worm_limit":5,
               "map":"sheovar5",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Ранг 65 : Ст. сержант Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career66":{
               "teams":2,
               "level":1,
               "gold":7500,
               "exp":8500,
               "worm_limit":5,
               "map":"wormville1",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 66 : Старшина Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career67":{
               "teams":2,
               "level":1,
               "gold":7800,
               "exp":9000,
               "worm_limit":5,
               "map":"wormville2",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 67 : Мл. лейтенант Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career68":{
               "teams":2,
               "level":1,
               "gold":8100,
               "exp":9300,
               "worm_limit":5,
               "map":"wormville3",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 68 : Лейтенант Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра 2",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career69":{
               "teams":2,
               "level":1,
               "gold":8400,
               "exp":9500,
               "worm_limit":5,
               "map":"wormville4",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 69 : Ст. лейтенант Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра 2",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career70":{
               "teams":2,
               "level":1,
               "gold":8700,
               "exp":10000,
               "worm_limit":5,
               "map":"wormville5",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Ранг 70 : Капитан Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career71":{
               "teams":2,
               "level":1,
               "gold":9000,
               "exp":10200,
               "worm_limit":5,
               "map":"rolitrad1",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 71 : Майор Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career72":{
               "teams":2,
               "level":1,
               "gold":9300,
               "exp":10500,
               "worm_limit":5,
               "map":"rolitrad2",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 72 : Подполковник Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career73":{
               "teams":2,
               "level":1,
               "gold":9500,
               "exp":10800,
               "worm_limit":5,
               "map":"rolitrad3",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 73 : Полковник Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career74":{
               "teams":2,
               "level":1,
               "gold":9800,
               "exp":11100,
               "worm_limit":5,
               "map":"rolitrad4",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 74 : Генерал-майор Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":7,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career75":{
               "teams":2,
               "level":1,
               "gold":10000,
               "exp":11600,
               "worm_limit":5,
               "map":"rolitrad5",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Ранг 75 : Генерал-лейтенант Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":7,
                  "color":this.C_PURPLE
               })
            },
            "career76":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden1",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 76 : Генерал-полковник Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":2,
                  "color":this.C_PURPLE
               })
            },
            "career77":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden1",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 77 : Маршал Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":3,
                  "color":this.C_PURPLE
               })
            },
            "career78":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden2",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 78 : Генералиссимус Армии Де Ляметра",
               "team2":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               })
            },
            "career79":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden2",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 79 : Странник Кентона",
               "team2":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career80":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden3",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 80 : Странник Кентона",
               "team2":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career81":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden3",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 81 : Странник Кентона",
               "team2":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career82":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden4",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 82 : Странник Кентона",
               "team2":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":7,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career83":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden4",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 83 : Странник Кентона",
               "team2":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":3,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":3,
                  "color":this.C_PURPLE
               })
            },
            "career84":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden5",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 84 : Странник Кентона",
               "team2":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":3,
                  "color":this.C_PURPLE
               })
            },
            "career85":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden5",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 85 : Странник Кентона",
               "team2":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               })
            },
            "career86":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden2",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 86 : Странник Кентона",
               "team2":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               })
            },
            "career87":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden3",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 87 : Странник Кентона",
               "team2":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career88":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden4",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 88 : Странник Кентона",
               "team2":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career89":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden5",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Ранг 89 : Странник Кентона",
               "team2":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career90":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden6",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Ранг 90 : Охотник Кентона",
               "team2":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":3,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Принцы Кентона",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "career91":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden6",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Ранг 91 : Охотник Кентона",
               "team2":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Принцы Кентона",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "career92":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden6",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Ранг 92 : Охотник Кентона",
               "team2":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Принцы Кентона",
                  "cpu_level":6,
                  "worms":2,
                  "color":this.C_PURPLE
               })
            },
            "career93":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden7",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Ранг 93 : Охотник Кентона",
               "team2":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Принцы Кентона",
                  "cpu_level":6,
                  "worms":2,
                  "color":this.C_PURPLE
               })
            },
            "career94":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden7",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Ранг 94 : Охотник Кентона",
               "team2":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Принцы Кентона",
                  "cpu_level":6,
                  "worms":2,
                  "color":this.C_PURPLE
               })
            },
            "career95":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden7",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Ранг 95 : Охотник Кентона",
               "team2":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Принцы Кентона",
                  "cpu_level":6,
                  "worms":3,
                  "color":this.C_PURPLE
               })
            },
            "career96":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden8",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Ранг 96 : Охотник Кентона",
               "team2":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Принцы Кентона",
                  "cpu_level":6,
                  "worms":4,
                  "color":this.C_PURPLE
               })
            },
            "career97":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden8",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Ранг 97 : Охотник Кентона",
               "team2":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Принцы Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career98":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden9",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Ранг 98 : Охотник Кентона",
               "team2":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Принцы Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "career99":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden9",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Ранг 99 : Охотник Кентона",
               "team2":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Принцы Кентона",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               })
            },
            "career100":{
               "teams":2,
               "level":1,
               "gold":11000,
               "exp":12000,
               "worm_limit":5,
               "map":"forbidden10",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Ранг 100 : Охотник Кентона",
               "team2":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":6,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Принцы Кентона",
                  "cpu_level":6,
                  "worms":7,
                  "color":this.C_PURPLE
               })
            },
            "survival1":{
               "teams":1,
               "level":1,
               "gold":500,
               "exp":1000,
               "kills":5,
               "worm_limit":5,
               "map":"wormville1",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Этап 1 : Рыцари Смерти (5)",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":2,
                  "color":this.C_RED
               })
            },
            "survival2":{
               "teams":1,
               "level":1,
               "gold":600,
               "exp":1200,
               "kills":10,
               "worm_limit":5,
               "map":"wormville1",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Этап 2 : Рыцари Смерти (10)",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":3,
                  "color":this.C_RED
               })
            },
            "survival3":{
               "teams":1,
               "level":1,
               "gold":700,
               "exp":1500,
               "kills":15,
               "worm_limit":5,
               "map":"wormville2",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Этап 3 : Рыцари Смерти (15)",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":4,
                  "color":this.C_RED
               })
            },
            "survival4":{
               "teams":1,
               "level":1,
               "gold":900,
               "exp":2000,
               "kills":25,
               "worm_limit":5,
               "map":"wormville2",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Этап 4 : Рыцари Смерти (25)",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":5,
                  "color":this.C_RED
               })
            },
            "survival5":{
               "teams":1,
               "level":1,
               "gold":1000,
               "exp":2500,
               "kills":40,
               "worm_limit":5,
               "map":"wormville3",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Этап 5 : Рыцари Смерти (40)",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":6,
                  "color":this.C_RED
               })
            },
            "survival6":{
               "teams":1,
               "level":1,
               "gold":700,
               "exp":1500,
               "kills":10,
               "worm_limit":5,
               "map":"wormville3",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Этап 6 : Стальной Коготь (10)",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":2,
                  "color":this.C_RED
               })
            },
            "survival7":{
               "teams":1,
               "level":1,
               "gold":800,
               "exp":1700,
               "kills":15,
               "worm_limit":5,
               "map":"wormville4",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Этап 7 : Стальной Коготь (15)",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":3,
                  "color":this.C_RED
               })
            },
            "survival8":{
               "teams":1,
               "level":1,
               "gold":1000,
               "exp":2000,
               "kills":25,
               "worm_limit":5,
               "map":"wormville4",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Этап 8 : Стальной Коготь (25)",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":4,
                  "color":this.C_RED
               })
            },
            "survival9":{
               "teams":1,
               "level":1,
               "gold":1200,
               "exp":2200,
               "kills":40,
               "worm_limit":5,
               "map":"wormville5",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Этап 9 : Стальной Коготь (40)",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":5,
                  "color":this.C_RED
               })
            },
            "survival10":{
               "teams":1,
               "level":1,
               "gold":1500,
               "exp":2500,
               "kills":60,
               "worm_limit":5,
               "map":"wormville5",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Этап 10 : Стальной Коготь (60)",
               "team2":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":6,
                  "color":this.C_RED
               })
            },
            "survival11":{
               "teams":1,
               "level":1,
               "gold":1200,
               "exp":2200,
               "kills":15,
               "worm_limit":5,
               "map":"molivand1",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Этап 11 : Агенты Отражения (15)",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":2,
                  "color":this.C_GREEN
               })
            },
            "survival12":{
               "teams":1,
               "level":1,
               "gold":1500,
               "exp":2500,
               "kills":20,
               "worm_limit":5,
               "map":"molivand1",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Этап 12 : Агенты Отражения (20)",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":3,
                  "color":this.C_GREEN
               })
            },
            "survival13":{
               "teams":1,
               "level":1,
               "gold":1700,
               "exp":2700,
               "kills":30,
               "worm_limit":5,
               "map":"molivand2",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Этап 13 : Агенты Отражения (30)",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":4,
                  "color":this.C_GREEN
               })
            },
            "survival14":{
               "teams":1,
               "level":1,
               "gold":2000,
               "exp":3000,
               "kills":40,
               "worm_limit":5,
               "map":"molivand2",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Этап 14 : Агенты Отражения (40)",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":5,
                  "color":this.C_GREEN
               })
            },
            "survival15":{
               "teams":1,
               "level":1,
               "gold":2500,
               "exp":3800,
               "kills":60,
               "worm_limit":5,
               "map":"molivand3",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Этап 15 : Агенты Отражения (60)",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":6,
                  "color":this.C_GREEN
               })
            },
            "survival16":{
               "teams":1,
               "level":1,
               "gold":3000,
               "exp":4000,
               "kills":20,
               "worm_limit":5,
               "map":"molivand3",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Этап 16 : Дети Тьмы (20)",
               "team2":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":2,
                  "color":this.C_YELLOW
               })
            },
            "survival17":{
               "teams":1,
               "level":1,
               "gold":3300,
               "exp":4500,
               "kills":25,
               "worm_limit":5,
               "map":"molivand4",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Этап 17 : Дети Тьмы (25)",
               "team2":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":3,
                  "color":this.C_YELLOW
               })
            },
            "survival18":{
               "teams":1,
               "level":1,
               "gold":3600,
               "exp":4900,
               "kills":30,
               "worm_limit":5,
               "map":"molivand4",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Этап 18 : Дети Тьмы (30)",
               "team2":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               })
            },
            "survival19":{
               "teams":1,
               "level":1,
               "gold":4000,
               "exp":5500,
               "kills":40,
               "worm_limit":5,
               "map":"molivand5",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Этап 19 : Дети Тьмы (40)",
               "team2":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               })
            },
            "survival20":{
               "teams":1,
               "level":1,
               "gold":4500,
               "exp":6000,
               "kills":60,
               "worm_limit":5,
               "map":"molivand5",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "name":"Этап 20 : Дети Тьмы (60)",
               "team2":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":6,
                  "color":this.C_YELLOW
               })
            },
            "mission1":{
               "teams":1,
               "level":3,
               "gold":700,
               "exp":1000,
               "worm_limit":5,
               "map":"mission1",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Миссия 1 : Высадка",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":2,
                  "color":this.C_RED
               })
            },
            "mission2":{
               "teams":2,
               "level":1,
               "gold":950,
               "exp":1200,
               "worm_limit":5,
               "map":"mission2",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Миссия 2 : Подступы",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":2,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":1,
                  "color":this.C_RED
               })
            },
            "mission3":{
               "teams":2,
               "level":1,
               "gold":1000,
               "exp":1350,
               "worm_limit":5,
               "map":"mission3",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Миссия 3 : Проблемы в коровнике",
               "team2":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":3,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":2,
                  "color":this.C_RED
               })
            },
            "mission4":{
               "teams":3,
               "level":1,
               "gold":1050,
               "exp":1400,
               "worm_limit":4,
               "map":"mission4",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Миссия 4 : Вторжение",
               "team2":this.get_team({
                  "id":"Ополчение",
                  "cpu_level":1,
                  "worms":2,
                  "color":this.C_BLUE
               }),
               "team3":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":3,
                  "color":this.C_RED
               }),
               "team4":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":3,
                  "color":this.C_RED
               })
            },
            "mission5":{
               "teams":2,
               "level":1,
               "gold":1150,
               "exp":1450,
               "worm_limit":4,
               "map":"mission5",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Миссия 5 : Главарь",
               "team2":this.get_team({
                  "id":"Главарь Когтя",
                  "cpu_level":2,
                  "worms":1,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":7,
                  "color":this.C_RED
               })
            },
            "mission6":{
               "teams":1,
               "level":9,
               "gold":1200,
               "exp":1500,
               "worm_limit":5,
               "map":"mission6",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Миссия 6 : Вход в шахты",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":2,
                  "color":this.C_GREEN
               })
            },
            "mission7":{
               "teams":1,
               "level":1,
               "gold":1300,
               "exp":1650,
               "worm_limit":5,
               "map":"mission7",
               "bg_type":"caves",
               "bg_mode":"background_cave_mission",
               "water":"normal",
               "name":"Миссия 7 : Продвижение",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":5,
                  "color":this.C_GREEN
               })
            },
            "mission8":{
               "teams":2,
               "level":1,
               "gold":1350,
               "exp":1700,
               "worm_limit":5,
               "map":"mission8",
               "bg_type":"caves",
               "bg_mode":"background_cave_mission",
               "water":"normal",
               "name":"Миссия 8 : Столкновение",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":3,
                  "color":this.C_GREEN
               }),
               "team3":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":3,
                  "color":this.C_YELLOW
               })
            },
            "mission9":{
               "teams":1,
               "level":1,
               "gold":1600,
               "exp":1900,
               "worm_limit":5,
               "map":"mission9",
               "bg_type":"caves",
               "bg_mode":"background_cave_mission",
               "water":"normal",
               "name":"Миссия 9 : Проникновение",
               "team2":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               })
            },
            "mission10":{
               "teams":2,
               "level":1,
               "gold":2000,
               "exp":2200,
               "worm_limit":5,
               "map":"mission10",
               "bg_type":"caves",
               "bg_mode":"background_cave_mission",
               "water":"normal",
               "name":"Миссия 10 : Контакт",
               "team2":this.get_team({
                  "id":"Главарь Детей",
                  "cpu_level":4,
                  "worms":1,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               })
            },
            "mission11":{
               "teams":1,
               "level":15,
               "gold":2100,
               "exp":2500,
               "worm_limit":5,
               "map":"mission11",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Миссия 11 : Подступы",
               "team2":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":6,
                  "color":this.C_GREEN
               })
            },
            "mission12":{
               "teams":2,
               "level":1,
               "gold":2200,
               "exp":2600,
               "worm_limit":5,
               "map":"mission12",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Миссия 12 : Взрывники",
               "team2":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":3,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":3,
                  "color":this.C_YELLOW
               })
            },
            "mission13":{
               "teams":2,
               "level":1,
               "gold":2300,
               "exp":2800,
               "worm_limit":5,
               "map":"mission13",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Миссия 13 : Топливо",
               "team2":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":4,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":3,
                  "color":this.C_YELLOW
               })
            },
            "mission14":{
               "teams":2,
               "level":1,
               "gold":2350,
               "exp":2850,
               "worm_limit":1,
               "map":"mission14",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Миссия 14 : Кордон",
               "team2":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":2,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":6,
                  "color":this.C_YELLOW
               })
            },
            "mission15":{
               "teams":2,
               "level":1,
               "gold":2500,
               "exp":3000,
               "worm_limit":3,
               "map":"mission15",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Миссия 15 : Лавина",
               "team2":this.get_team({
                  "id":"Главарь Взрывников",
                  "cpu_level":4,
                  "worms":1,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":6,
                  "color":this.C_YELLOW
               })
            },
            "mission16":{
               "teams":2,
               "level":1,
               "gold":2500,
               "exp":4500,
               "worm_limit":2,
               "map":"mission16",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Миссия 16 : Полковник",
               "team2":this.get_team({
                  "id":"Полковник Сэммс",
                  "cpu_level":5,
                  "worms":1,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_RED
               })
            },
            "mission17":{
               "teams":1,
               "level":1,
               "gold":2600,
               "exp":3100,
               "worm_limit":3,
               "map":"mission17",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Миссия 17 : Высадка",
               "team2":this.get_team({
                  "id":"Последователи Грома",
                  "cpu_level":5,
                  "worms":1,
                  "color":this.C_RED
               })
            },
            "boss1":{
               "teams":1,
               "level":8,
               "gold":10000,
               "exp":15000,
               "worm_limit":5,
               "map":"boss1",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Босс 1 : Повар",
               "team2":this.get_team({
                  "id":"Повар",
                  "cpu_level":5,
                  "worms":1,
                  "color":this.C_RED
               })
            },
            "boss2":{
               "teams":1,
               "level":1,
               "gold":18000,
               "exp":30000,
               "worm_limit":5,
               "map":"boss2",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Босс 2 : Менигуэн",
               "team2":this.get_team({
                  "id":"Менигуэн",
                  "cpu_level":5,
                  "worms":1,
                  "color":this.C_RED
               })
            },
            "boss3":{
               "teams":1,
               "level":1,
               "gold":30000,
               "exp":60000,
               "worm_limit":5,
               "map":"boss3",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "name":"Босс 3 : Сайгус",
               "team2":this.get_team({
                  "id":"Сайгус",
                  "cpu_level":5,
                  "worms":1,
                  "color":this.C_RED
               })
            },
            "boss4":{
               "teams":1,
               "level":1,
               "gold":50000,
               "exp":100000,
               "worm_limit":5,
               "map":"boss4",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Босс 4 : Клод",
               "team2":this.get_team({
                  "id":"Клод",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss5":{
               "teams":1,
               "level":1,
               "gold":75000,
               "exp":150000,
               "worm_limit":5,
               "map":"boss5",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Босс 5 : Де Ляметр",
               "team2":this.get_team({
                  "id":"Де Ляметр",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss6":{
               "teams":1,
               "level":1,
               "gold":100000,
               "exp":200000,
               "worm_limit":5,
               "map":"boss6",
               "bg_type":"snow",
               "bg_mode":"background_rolitrad",
               "water":"normal",
               "name":"Босс 6 : Мастер-16",
               "team2":this.get_team({
                  "id":"Мастер-16",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss7":{
               "teams":1,
               "level":1,
               "gold":150000,
               "exp":250000,
               "worm_limit":5,
               "map":"boss7",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Босс 7 : Мститель",
               "team2":this.get_team({
                  "id":"Мститель",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss8":{
               "teams":1,
               "level":1,
               "gold":200000,
               "exp":300000,
               "worm_limit":5,
               "map":"boss8",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Босс 8 : Пилинипси Первый",
               "team2":this.get_team({
                  "id":"Пилинипси Первый",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_YELLOW
               })
            },
            "boss9":{
               "teams":1,
               "level":1,
               "gold":250000,
               "exp":350000,
               "worm_limit":5,
               "map":"boss9",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "name":"Босс 9 : Чистильщик",
               "team2":this.get_team({
                  "id":"Чистильщик",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_GREEN
               })
            },
            "boss10":{
               "teams":1,
               "level":1,
               "gold":300000,
               "exp":400000,
               "worm_limit":5,
               "map":"boss10",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Босс 10 : Патриарх",
               "team2":this.get_team({
                  "id":"Патриарх",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss11":{
               "teams":1,
               "level":1,
               "gold":300000,
               "exp":400000,
               "worm_limit":5,
               "map":"boss11",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "name":"Босс 11 : Папа Джеймс",
               "team2":this.get_team({
                  "id":"Папа Джеймс",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss12":{
               "teams":1,
               "level":1,
               "gold":300000,
               "exp":400000,
               "worm_limit":5,
               "map":"boss12",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Босс 12 : Принц Дамаскин",
               "team2":this.get_team({
                  "id":"Принц Дамаскин",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss13":{
               "teams":1,
               "level":1,
               "gold":350000,
               "exp":450000,
               "worm_limit":5,
               "map":"boss13",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Босс 13 : Принц Анаксимандр",
               "team2":this.get_team({
                  "id":"Принц Анаксимандр",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss14":{
               "teams":1,
               "level":1,
               "gold":350000,
               "exp":450000,
               "worm_limit":5,
               "map":"boss12",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Босс 14 : Принц Алкидамант",
               "team2":this.get_team({
                  "id":"Принц Алкидамант",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss15":{
               "teams":1,
               "level":1,
               "gold":400000,
               "exp":500000,
               "worm_limit":5,
               "map":"boss13",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Босс 15 : Принц Энесидем",
               "team2":this.get_team({
                  "id":"Принц Энесидем",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss16":{
               "teams":1,
               "level":1,
               "gold":400000,
               "exp":500000,
               "worm_limit":5,
               "map":"boss12",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Босс 16 : Принц Аркесилай",
               "team2":this.get_team({
                  "id":"Принц Аркесилай",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss17":{
               "teams":1,
               "level":1,
               "gold":600000,
               "exp":600000,
               "worm_limit":5,
               "map":"boss13",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Босс 17 : Принц Маллансон",
               "team2":this.get_team({
                  "id":"Принц Маллансон",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss18":{
               "teams":1,
               "level":1,
               "gold":800000,
               "exp":800000,
               "worm_limit":5,
               "map":"boss12",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Босс 18 : Принц Деливрон",
               "team2":this.get_team({
                  "id":"Принц Деливрон",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "boss19":{
               "teams":1,
               "level":1,
               "gold":1000000,
               "exp":1000000,
               "worm_limit":5,
               "map":"boss13",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "name":"Босс 19 : Принц Арагон",
               "team2":this.get_team({
                  "id":"Принц Арагон",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               })
            },
            "assault1":{
               "teams":2,
               "level":1,
               "gold":500,
               "exp":250,
               "worm_limit":5,
               "map":"assault1",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "payments":500,
               "assault_limit":1000,
               "name":"Рыцари Смерти",
               "team2":this.get_team({
                  "id":"Наместник 1",
                  "cpu_level":1,
                  "worms":1,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Рыцари Смерти",
                  "cpu_level":1,
                  "worms":5,
                  "color":this.C_RED
               })
            },
            "assault2":{
               "teams":2,
               "level":1,
               "gold":700,
               "exp":350,
               "worm_limit":5,
               "map":"assault2",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "payments":800,
               "assault_limit":900,
               "name":"Стальной Коготь",
               "team2":this.get_team({
                  "id":"Наместник 2",
                  "cpu_level":2,
                  "worms":1,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Стальной Коготь",
                  "cpu_level":2,
                  "worms":5,
                  "color":this.C_RED
               })
            },
            "assault3":{
               "teams":2,
               "level":1,
               "gold":800,
               "exp":400,
               "worm_limit":5,
               "map":"assault3",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "payments":1000,
               "assault_limit":800,
               "name":"Агенты Отражения",
               "team2":this.get_team({
                  "id":"Наместник 3",
                  "cpu_level":3,
                  "worms":1,
                  "color":this.C_GREEN
               }),
               "team3":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":5,
                  "color":this.C_GREEN
               })
            },
            "assault4":{
               "teams":2,
               "level":1,
               "gold":900,
               "exp":450,
               "worm_limit":5,
               "map":"assault4",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "payments":2000,
               "assault_limit":700,
               "name":"Агенты Отражения",
               "team2":this.get_team({
                  "id":"Наместник 4",
                  "cpu_level":3,
                  "worms":1,
                  "color":this.C_GREEN
               }),
               "team3":this.get_team({
                  "id":"Агенты Отражения",
                  "cpu_level":3,
                  "worms":5,
                  "color":this.C_GREEN
               })
            },
            "assault5":{
               "teams":2,
               "level":1,
               "gold":1000,
               "exp":500,
               "worm_limit":5,
               "map":"assault5",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "payments":5000,
               "assault_limit":650,
               "name":"Дети Тьмы",
               "team2":this.get_team({
                  "id":"Наместник 5",
                  "cpu_level":4,
                  "worms":1,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Дети Тьмы",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               })
            },
            "assault6":{
               "teams":2,
               "level":1,
               "gold":1200,
               "exp":600,
               "worm_limit":5,
               "map":"assault6",
               "bg_type":"snow",
               "bg_mode":"background_wormville",
               "water":"normal",
               "payments":8000,
               "assault_limit":500,
               "name":"Мастера",
               "team2":this.get_team({
                  "id":"Наместник 6",
                  "cpu_level":4,
                  "worms":1,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Мастера",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               })
            },
            "assault7":{
               "teams":2,
               "level":1,
               "gold":1400,
               "exp":700,
               "worm_limit":5,
               "map":"assault7",
               "bg_type":"snow",
               "bg_mode":"background_wormville",
               "water":"normal",
               "payments":10000,
               "assault_limit":450,
               "name":"Взрывники",
               "team2":this.get_team({
                  "id":"Наместник 7",
                  "cpu_level":4,
                  "worms":1,
                  "color":this.C_YELLOW
               }),
               "team3":this.get_team({
                  "id":"Взрывники",
                  "cpu_level":4,
                  "worms":5,
                  "color":this.C_YELLOW
               })
            },
            "assault8":{
               "teams":2,
               "level":1,
               "gold":1600,
               "exp":800,
               "worm_limit":5,
               "map":"assault8",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "payments":11000,
               "assault_limit":400,
               "name":"Последователи Грома",
               "team2":this.get_team({
                  "id":"Наместник 8",
                  "cpu_level":5,
                  "worms":1,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Последователи Грома",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_RED
               })
            },
            "assault9":{
               "teams":2,
               "level":1,
               "gold":1800,
               "exp":900,
               "worm_limit":5,
               "map":"assault9",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "payments":12000,
               "assault_limit":350,
               "name":"Адепты Грома",
               "team2":this.get_team({
                  "id":"Наместник 9",
                  "cpu_level":5,
                  "worms":1,
                  "color":this.C_RED
               }),
               "team3":this.get_team({
                  "id":"Адепты Грома",
                  "cpu_level":5,
                  "worms":5,
                  "color":this.C_RED
               })
            },
            "assault10":{
               "teams":2,
               "level":1,
               "gold":2000,
               "exp":1000,
               "worm_limit":5,
               "map":"assault10",
               "bg_type":"gulf",
               "bg_mode":"background_traver",
               "water":"normal",
               "payments":14000,
               "assault_limit":300,
               "name":"Офицеры Отражения",
               "team2":this.get_team({
                  "id":"Наместник 10",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "assault11":{
               "teams":2,
               "level":1,
               "gold":2400,
               "exp":1200,
               "worm_limit":5,
               "map":"assault11",
               "bg_type":"grass",
               "bg_mode":"background_wormville",
               "water":"normal",
               "payments":15000,
               "assault_limit":250,
               "name":"Офицеры Отражения",
               "team2":this.get_team({
                  "id":"Наместник 11",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Офицеры Отражения",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "assault12":{
               "teams":2,
               "level":1,
               "gold":2800,
               "exp":1400,
               "worm_limit":5,
               "map":"assault12",
               "bg_type":"caves",
               "bg_mode":"background_molivand",
               "water":"normal",
               "payments":20000,
               "assault_limit":200,
               "name":"Элита Отражения",
               "team2":this.get_team({
                  "id":"Наместник 12",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Элита Отражения",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "assault13":{
               "teams":2,
               "level":1,
               "gold":3000,
               "exp":1600,
               "worm_limit":5,
               "map":"assault13",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "payments":25000,
               "assault_limit":160,
               "name":"Элита Отражения",
               "team2":this.get_team({
                  "id":"Наместник 13",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Элита Отражения 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "assault14":{
               "teams":2,
               "level":1,
               "gold":3500,
               "exp":1800,
               "worm_limit":5,
               "map":"assault14",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "payments":30000,
               "assault_limit":120,
               "name":"Армия Де Ляметра",
               "team2":this.get_team({
                  "id":"Наместник 14",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра 2",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "assault15":{
               "teams":2,
               "level":1,
               "gold":4000,
               "exp":2000,
               "worm_limit":5,
               "map":"assault15",
               "bg_type":"desert",
               "bg_mode":"background_sheovar",
               "water":"normal",
               "payments":35000,
               "assault_limit":100,
               "name":"Армия Де Ляметра",
               "team2":this.get_team({
                  "id":"Наместник 15",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Армия Де Ляметра 3",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "assault16":{
               "teams":2,
               "level":1,
               "gold":4500,
               "exp":2200,
               "worm_limit":5,
               "map":"assault16",
               "bg_type":"dungeon",
               "bg_mode":"background_forbidden1",
               "water":"normal",
               "payments":40000,
               "assault_limit":75,
               "name":"Легионеры Кентона",
               "team2":this.get_team({
                  "id":"Наместник 16",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Легионеры Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            },
            "assault17":{
               "teams":2,
               "level":1,
               "gold":6000,
               "exp":3000,
               "worm_limit":5,
               "map":"assault17",
               "bg_type":"kenton",
               "bg_mode":"background_forbidden2",
               "water":"red",
               "payments":45000,
               "assault_limit":50,
               "name":"Гладиаторы Кентона",
               "team2":this.get_team({
                  "id":"Наместник 17",
                  "cpu_level":6,
                  "worms":1,
                  "color":this.C_PURPLE
               }),
               "team3":this.get_team({
                  "id":"Гладиаторы Кентона",
                  "cpu_level":6,
                  "worms":5,
                  "color":this.C_PURPLE
               })
            }
         };
         this.MISSION_DESC = new Array(0,"До вас дошли слухи, что на вашу родную деревню Вормвилль напала банда враждебно настроенных червяков. Чтобы препятствовать вторжению, вы высаживаеетсь на берег недалеко от Вормвилля и сразу же сталкиваетесь с представителями группировки Рыцари Смерти. На предложение мирно обсудить проблемы они отреагировали выстрелами. Ваша задача - высадиться на берег и нейтрализовать противников.","После уничтожения двух Рыцарей Смерти вы пошли дальше вглубь острова. Там вам встретились червяки из банды Стальной Коготь. После разговора с ними стало ясно, что они куда более цивилизованные, чем Рыцари, однако ни за что не прекратят вторжение в вашу деревню. Выяснилось также, что Рыцари Смерти подчиняются Стальному Когтю практически во всем; Рыцари для них как пушечное мясо. Коготь понимает только грубую силу, а значит, раз договориться с ними не удалось - необходимо сравнять их с землей.","Местные жители слезно просили вас вести боевые действия подальше от их построек, но несколько бандитов спряталось около коровника. Вам необходимо нейтрализовать их, но так, чтобы в живых осталась хотя бы одна корова. Если же все они будут убиты, вы провалите миссию; молоко - один из важнейших продуктов на экспорт в Вормвилле.","Вы добрались до деревни. Основная проблема в том, что мирные жители ополчились против банд и вступили с ними в открытый конфликт. У ополчения почти нет вооружения, и навыки обращения с оружием оставляют желать лучшего. Вам необходимо сохранить в живых хотя бы одного ополченца и, при этом, разбить врагов.","После успешной обороны деревни вы лицом к лицу столкнулись с главарем банды Стальной Коготь. Ваша задача - уничтожить главаря и его помощников. Они сильнее, чем остальная банда; советуем докупить необходимое вооружение, и , конечно, желаем удачи!","Старейшина деревни попросил вас разобраться с заброшенными шахтами, где пропадают червяки из деревни и происходят странные вещи. Там же вы столкнулись лицом к лицу с агентами Отражения, у которых была та же задача. Будьте осторожны.","Вы вошли в шахты. Поддержки с воздуха больше не будет, авиаудары здесь бесполезны. Полагайтесь только на себя. После разгрома часовых агенты сильно разозлились.","Агенты вступили в открытую стычку с Детьми Тьмы. Пользуясь этим, вы украли у них записи с их следующими заданиями. Однако, сначала надо разобраться с шахтами. Перебейте всех врагов, или подождите, пока они сами сделают это друг с другом.","Вы обнаружили интересное свойство Детей - они научились получать энергию из родников, разбросанных по шахтам. Это делает их очень опасными врагами. Агенты здесь больше не встретятся - вы уничтожили их всех, кроме одного. Этот последний агент сумел сбежать и отправить отчет о вас своему командиру. Теперь у вас будут проблемы еще и с могущественной организацией - Отражением.","Вы нашли главаря Детей. Оказалось, что именно он похищал мирных жителей из окрестных деревень для совершения жертвоприношений. Скорее нейтрализуйте босса Детей, пока сюда не нагрянуло Отражение в полном составе!","После разгрома Детей Тьмы вы решили разобраться с заданиями, украденными у агентов. Первое их задание - помочь неким Взрывникам устроить лавину на вершине горы и разрушить все близлежащие деревни. Вы направляетесь к горе и встречаете там группу агентов.","Планы агентов вы сорвали. Поднимаясь вверх по горе, вы нарываетесь на две банды червяков, желающих устроить лавину. Первая - пресловутые Взрывники, а вот вторая - команда, называющая себя Мастера. Эта группировка сумела получить невиданные доселе виды вооружения - например, такие, как Зажигательная базука. Будьте осторожны.","Вверх по склону дальше идти невозможно, он слишком крутой. Однако, вы обнаружили несколько снегоходов, наполовину зарытых в земле. Осмотрев их, становится ясно, что они поломаны, да к тому же и без топлива. Вместо того, чтобы обойти неприятельских червей, теперь придется напасть на них. Будьте внимательны - необходимо, чтобы по крайней мере две бочки с топливом остались целы, иначе миссия будет провалена.","Что ж, топливо теперь у вас есть. Осталась проблема - починка снегоходов. Взрывники вызвали подкрепление, когда узнали, что вы собираетесь сорвать их планы. Ваша задача - в одиночку отбить нападение, остальные черви в вашей команде занимаются починкой, так как медлить больше нельзя.","Вы добрались до вершины горы. Кто-то из Мастеров забыл тут свою Лазерную винтовку - вам пригодится. Взрывники уже установили бомбу, ваша задача - как можно быстрее разгромить их всех; особенное внимание следует уделить главарю взрывников, который сидит в укрытии. У вас есть 10 ходов.","Глава отделения агентов, полковник Сэммс, взял с собой элитный отряд офицеров и собирается ликвидировать вашу группу за срывы их планов. Собираясь в спешке, вы растеряли почти весь свой арсенал; сбросить помощь на самолете мы не можем из-за сильной бури. Не волнуйтесь, мы пришлем его вам к следующей миссии. Пока же вам придется довольствоваться остатками вооружения Взрывников. Будьте внимательны - сам полковник сидит в пуленепробиваемом бункере, правда, энергии генераторов его защитного поля хватит примерно на 15 ходов.","");
         this.ROUL_VER = {
            "gold_500":new Array(65,25,10,0,0,0,0,0),
            "gold_3000":new Array(60,10,20,10,0,0,0,0),
            "gold_10000":new Array(60,5,12,18,5,0,0,0),
            "diam_5":new Array(0,0,45,35,15,5,0,0),
            "diam_25":new Array(0,0,25,40,25,10,0,0),
            "diam_50":new Array(0,0,0,5,45,45,5,0),
            "surprise_1":new Array(0,80,20,0,0,0,0,0),
            "surprise_2":new Array(0,40,50,10,0,0,0,0),
            "surprise_3":new Array(0,20,39,40,1,0,0,0),
            "crates_1":new Array(0,80,18,2,0,0,0,0),
            "crates_2":new Array(0,60,35,4,1,0,0,0),
            "crates_3":new Array(0,50,40,6,3,1,0,0),
            "crates_4":new Array(0,0,80,10,6,3,1,0),
            "crates_5":new Array(0,0,60,20,10,5,3,2),
            "crates_6":new Array(0,0,20,40,20,10,5,5)
         };
         this.CLANS_DEF = new Array(14,"Peachful Team","Орден тамплиеров","Корд","Ассасины","Братство Стали","Спецназ","Северные Воители","Захватчики Кентона","Пехота Де Ляметра","Мастера","Миротворцы","CCCP","Клеймо","Удар с юга");
         this.ACHIEV_DEF = new Array(24,{
            "id":"career",
            "levels":new Array(0,6,12,18,24,30,36,42,48,54,60,66,72,80,90,100),
            "name":"Пройдено карьер"
         },{
            "id":"missions",
            "levels":new Array(0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30),
            "name":"Пройдено миссий"
         },{
            "id":"survival",
            "levels":new Array(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75),
            "name":"Пройдено выживаний"
         },{
            "id":"boss",
            "levels":new Array(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15),
            "name":"Пройдено боссов"
         },{
            "id":"assault",
            "levels":new Array(0,3,10,25,40,100,250,600,1000,2500,5000,10000,15000,20000,25000,30000),
            "name":"Успешных захватов территорий"
         },{
            "id":"no_death",
            "levels":new Array(0,10,25,50,100,150,200,400,700,1000,2000,3000,5000,10000,20000,30000),
            "name":"Побед без потери червей"
         },{
            "id":"no_injure",
            "levels":new Array(0,5,10,15,30,50,75,100,200,300,500,1000,2000,5000,10000,15000),
            "name":"Побед без ранения червей"
         },{
            "id":"kill_p",
            "levels":new Array(0,20,50,100,200,500,1000,2000,3000,4000,5000,10000,20000,30000,40000,60000),
            "name":"Убито червей снарядами"
         },{
            "id":"kill_e",
            "levels":new Array(0,5,10,25,50,100,150,200,500,1000,2000,3000,4000,7000,10000,15000),
            "name":"Убито червей взрывчаткой"
         },{
            "id":"kill_a",
            "levels":new Array(0,10,20,40,80,150,300,500,1000,1500,3000,6000,9000,12000,15000,20000),
            "name":"Убито червей авиаударами"
         },{
            "id":"kill_c",
            "levels":new Array(0,5,10,15,30,50,80,150,300,500,800,1500,3000,4500,6000,10000),
            "name":"Убито червей в ближнем бою"
         },{
            "id":"kill_h",
            "levels":new Array(0,30,60,100,400,800,2000,4000,10000,15000,20000,25000,40000,65000,80000,100000),
            "name":"Убито червей энергооружием"
         },{
            "id":"kill_f",
            "levels":new Array(0,25,50,100,300,600,1000,2500,5000,10000,15000,20000,25000,30000,50000,75000),
            "name":"Убито червей огнест. оружием"
         },{
            "id":"kill_l",
            "levels":new Array(0,5,10,20,40,70,100,200,400,800,1500,3000,4500,6000,8000,12000),
            "name":"Убито червей живыми бомбами"
         },{
            "id":"para",
            "levels":new Array(0,5,10,20,50,100,200,300,500,750,1500,3000,5000,10000,20000,30000),
            "name":"Врагов парализовано"
         },{
            "id":"annih",
            "levels":new Array(0,2,5,10,20,30,50,100,200,350,600,1000,2000,3000,5000,10000),
            "name":"Врагов испарено"
         },{
            "id":"recipes",
            "levels":new Array(0,5,10,15,20,25,30,35,40,45,50,55,60,70,80,88),
            "name":"Открыто рецептов"
         },{
            "id":"stims",
            "levels":new Array(0,3,6,10,20,50,100,250,500,1000,2000,4000,8000,15000,30000,50000),
            "name":"Использовано стимуляторов"
         },{
            "id":"buys",
            "levels":new Array(0,5,10,20,40,100,200,400,700,1000,1500,2000,3000,4000,5000,8000),
            "name":"Куплено оружия"
         },{
            "id":"steal",
            "levels":new Array(0,2,5,10,15,30,50,75,100,200,400,1000,1500,2000,2500,4000),
            "name":"Оружия украдено"
         },{
            "id":"crafted",
            "levels":new Array(0,3,6,10,15,20,40,70,100,200,300,500,800,1500,3000,5000),
            "name":"Скрафтено оружия"
         },{
            "id":"upgraded",
            "levels":new Array(0,3,5,10,20,30,50,100,150,300,500,750,1000,2000,4000,8000),
            "name":"Улучшено оружия"
         },{
            "id":"wins",
            "levels":new Array(0,5,10,25,40,75,100,135,200,300,400,600,1000,2000,3000,5000),
            "name":"Выигрышей в дартс"
         },{
            "id":"days",
            "levels":new Array(0,30,60,90,120,180,240,360,450,540,630,720,810,900,990,1080),
            "name":"Дней в игре"
         });
         this.ACHIEV_PRISE_DEF = {
            "career":{
               "prise":"gold",
               "amount":[0,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,8000,10000]
            },
            "missions":{
               "prise":"gold",
               "amount":[0,1500,2000,3000,4000,5000,6000,7000,8000,9000,10000,11000,12000,13000,15000,20000]
            },
            "survival":{
               "prise":"gold",
               "amount":[0,2000,3000,4000,5000,7000,10000,12000,14000,16000,20000,24000,28000,32000,36000,40000]
            },
            "boss":{
               "prise":"diam",
               "amount":[0,1,1,1,1,2,2,2,2,3,3,3,4,4,4,5]
            },
            "assault":{
               "prise":"gold",
               "amount":[0,3000,6000,10000,20000,30000,50000,100000,200000,300000,500000,1000000,2000000,4000000,8000000]
            },
            "no_death":{
               "prise":"gold",
               "amount":[0,1000,2000,4000,8000,15000,30000,50000,70000,100000,150000,200000,300000,500000,1000000,2000000]
            },
            "no_injure":{
               "prise":"gold",
               "amount":[0,1500,3000,6000,10000,20000,40000,100000,200000,500000,1000000,1500000,2000000,2500000,3000000,4000000]
            },
            "kill_p":{
               "prise":"gold",
               "amount":[0,1000,2000,4000,10000,20000,50000,100000,150000,200000,300000,500000,1000000,2000000,3000000,4000000]
            },
            "kill_e":{
               "prise":"gold",
               "amount":[0,1000,2000,4000,10000,20000,50000,100000,150000,200000,300000,500000,1000000,2000000,3000000,4000000]
            },
            "kill_a":{
               "prise":"gold",
               "amount":[0,1000,2000,4000,10000,20000,50000,100000,150000,200000,300000,500000,1000000,2000000,3000000,4000000]
            },
            "kill_c":{
               "prise":"gold",
               "amount":[0,1000,2000,4000,10000,20000,50000,100000,150000,200000,300000,500000,1000000,2000000,3000000,4000000]
            },
            "kill_h":{
               "prise":"gold",
               "amount":[0,1000,2000,4000,10000,20000,50000,100000,150000,200000,300000,500000,1000000,2000000,3000000,4000000]
            },
            "kill_f":{
               "prise":"gold",
               "amount":[0,1000,2000,4000,10000,20000,50000,100000,150000,200000,300000,500000,1000000,2000000,3000000,4000000]
            },
            "kill_l":{
               "prise":"gold",
               "amount":[0,1000,2000,4000,10000,20000,50000,100000,150000,200000,300000,500000,1000000,2000000,3000000,4000000]
            },
            "para":{
               "prise":"gold",
               "amount":[0,2000,3000,5000,10000,15000,20000,40000,80000,150000,250000,400000,700000,1000000,2000000,3000000]
            },
            "annih":{
               "prise":"diam",
               "amount":[0,1,2,4,6,8,10,12,14,16,18,20,23,26,29,35]
            },
            "recipes":{
               "prise":"exp",
               "amount":[0,2,5,8,10,12,15,18,20,30,40,50,75,100,125,150]
            },
            "stims":{
               "prise":"exp",
               "amount":[0,5,8,10,12,15,18,20,22,25,30,35,40,45,50,75]
            },
            "buys":{
               "prise":"exp",
               "amount":[0,1,3,5,8,10,12,15,20,25,30,35,40,45,50,100]
            },
            "steal":{
               "prise":"exp",
               "amount":[0,5,10,15,20,25,30,35,40,45,50,100,150,200,250,300]
            },
            "crafted":{
               "prise":"exp",
               "amount":[0,3,6,9,15,20,25,30,35,40,45,50,75,100,125,150]
            },
            "upgraded":{
               "prise":"exp",
               "amount":[0,2,4,6,8,10,20,30,40,50,75,100,125,150,175,200]
            },
            "wins":{
               "prise":"exp",
               "amount":[0,5,8,10,12,15,25,35,50,75,100,125,150,200,250,300]
            },
            "days":{
               "prise":"diam",
               "amount":[0,20,40,60,80,100,150,200,250,300,400,500,600,700,800,1000]
            }
         };
         this.ACHIEV_RATING_BONUS = [0,200,400,600,800,1000,1200,1400,1600,1800,2000,2500,3000,3500,4000,5000,6000,7000,8000,9000,10000,12000,14000,16000,18000,20000,24000,28000,32000,36000,40000,50000,60000,70000,80000,100000,120000];
         this.CRAFT_DEF = new Array(88,{
            "req":0,
            "result":"unfail_bazooka",
            "ingr":[2,"bazooka","obj_small_expl"]
         },{
            "req":1,
            "result":"fire_bazooka",
            "ingr":[2,"bazooka","obj_napalm_cont"]
         },{
            "req":3,
            "result":"rj46",
            "ingr":[3,"fire_bazooka","upg_mortar","obj_hard_jacket"]
         },{
            "req":0,
            "result":"poison_bazooka",
            "ingr":[2,"bazooka","obj_poison_cont"]
         },{
            "req":2,
            "result":"ap_bazooka",
            "ingr":[2,"unfail_bazooka","obj_hard_jacket"]
         },{
            "req":3,
            "result":"ap_bazooka2",
            "ingr":[5,"ap_bazooka","ap_bazooka","obj_hard_jacket","obj_hard_jacket","obj_big_expl"]
         },{
            "req":3,
            "result":"howitzer",
            "ingr":[2,"ap_bazooka2","obj_plasma_mod"]
         },{
            "req":2,
            "result":"multi_bazooka",
            "ingr":[6,"unfail_bazooka","unfail_bazooka","unfail_bazooka","unfail_bazooka","obj_small_cell","obj_fuel"]
         },{
            "req":2,
            "result":"gravity_grenade",
            "ingr":[6,"grenade","obj_eg_generator","obj_eg_generator","obj_eg_generator","obj_eg_generator","obj_eg_generator"]
         },{
            "req":0,
            "result":"unfail_grenade",
            "ingr":[2,"grenade","obj_small_expl"]
         },{
            "req":2,
            "result":"holy_hand_grenade",
            "ingr":[3,"unfail_grenade","obj_big_expl","obj_laser_mod"]
         },{
            "req":3,
            "result":"super_hhg",
            "ingr":[2,"holy_hand_grenade","obj_pulse_mod"]
         },{
            "req":3,
            "result":"holy_strike",
            "ingr":[4,"holy_hand_grenade","holy_hand_grenade","holy_hand_grenade","obj_radio"]
         },{
            "req":1,
            "result":"plasma_grenade",
            "ingr":[2,"grenade","obj_plasma_mod"]
         },{
            "req":2,
            "result":"pulse_grenade",
            "ingr":[2,"plasma_grenade","obj_pulse_mod"]
         },{
            "req":3,
            "result":"dl19",
            "ingr":[4,"plasma_grenade","unfail_cluster_bomb","obj_napalm_cont","obj_napalm_cont"]
         },{
            "req":0,
            "result":"unfail_cluster_bomb",
            "ingr":[2,"cluster_bomb","obj_small_expl"]
         },{
            "req":1,
            "result":"air_strike",
            "ingr":[2,"cluster_bomb","obj_radio"]
         },{
            "req":2,
            "result":"putty_grenade",
            "ingr":[3,"cluster_bomb","obj_big_expl","obj_laser_mod"]
         },{
            "req":1,
            "result":"banana_bomb",
            "ingr":[2,"cluster_bomb","obj_laser_mod"]
         },{
            "req":3,
            "result":"banana_strike",
            "ingr":[4,"banana_bomb","banana_bomb","banana_bomb","obj_radio"]
         },{
            "req":2,
            "result":"unfail_banana_bomb",
            "ingr":[2,"banana_bomb","obj_small_expl"]
         },{
            "req":3,
            "result":"super_banana_bomb",
            "ingr":[4,"unfail_banana_bomb","obj_laser_mod","obj_small_expl","obj_big_expl"]
         },{
            "req":3,
            "result":"mega_banana_bomb",
            "ingr":[4,"super_banana_bomb","obj_plasma_mod","obj_big_expl","obj_big_expl"]
         },{
            "req":0,
            "result":"upg_mortar",
            "ingr":[2,"mortar","obj_small_expl"]
         },{
            "req":2,
            "result":"nuclear_bomb",
            "ingr":[4,"upg_mortar","obj_poison_cont","obj_hard_jacket","obj_big_expl"]
         },{
            "req":3,
            "result":"nuclear_bomb2",
            "ingr":[3,"nuclear_bomb","obj_rad_cont","obj_rad_cont"]
         },{
            "req":0,
            "result":"unfail_mine",
            "ingr":[2,"mine","obj_small_expl"]
         },{
            "req":2,
            "result":"mine_strike",
            "ingr":[6,"mine","mine","mine","mine","mine","obj_radio"]
         },{
            "req":0,
            "result":"fire_mine",
            "ingr":[2,"mine","obj_napalm_cont"]
         },{
            "req":1,
            "result":"plasma_mine",
            "ingr":[2,"mine","obj_plasma_mod"]
         },{
            "req":2,
            "result":"pulse_mine",
            "ingr":[2,"plasma_mine","obj_pulse_mod"]
         },{
            "req":3,
            "result":"nuclear_mine",
            "ingr":[3,"unfail_mine","pulse_mine","obj_rad_cont"]
         },{
            "req":1,
            "result":"unfail_dynamite",
            "ingr":[2,"dynamite","obj_small_expl"]
         },{
            "req":2,
            "result":"dynamite_bunch",
            "ingr":[4,"unfail_dynamite","unfail_dynamite","unfail_dynamite","obj_small_expl"]
         },{
            "req":0,
            "result":"unfail_sheep",
            "ingr":[2,"sheep","obj_small_expl"]
         },{
            "req":0,
            "result":"fire_sheep",
            "ingr":[2,"sheep","obj_napalm_cont"]
         },{
            "req":0,
            "result":"poison_sheep",
            "ingr":[2,"sheep","obj_poison_cont"]
         },{
            "req":2,
            "result":"mine_sheep",
            "ingr":[6,"unfail_sheep","mine","mine","mine","mine","obj_hard_jacket"]
         },{
            "req":3,
            "result":"mine_sheep2",
            "ingr":[4,"mine_sheep","plasma_mine","obj_small_expl","obj_hard_jacket"]
         },{
            "req":0,
            "result":"unfail_old_woman",
            "ingr":[2,"old_woman","obj_small_expl"]
         },{
            "req":1,
            "result":"girder_pack",
            "ingr":[6,"girder","girder","girder","girder","girder","girder"]
         },{
            "req":1,
            "result":"upg_teleport",
            "ingr":[2,"teleport","obj_laser_mod"]
         },{
            "req":2,
            "result":"upg_teleport2",
            "ingr":[2,"upg_teleport","obj_plasma_mod"]
         },{
            "req":2,
            "result":"emg_teleport",
            "ingr":[2,"upg_teleport","obj_coil"]
         },{
            "req":2,
            "result":"upg_jet_pack",
            "ingr":[2,"jet_pack","obj_fuel"]
         },{
            "req":3,
            "result":"ag_pack",
            "ingr":[2,"upg_jet_pack","obj_eg_generator"]
         },{
            "req":1,
            "result":"power_axe",
            "ingr":[3,"battle_axe","shocker","obj_laser_mod"]
         },{
            "req":1,
            "result":"power_bat",
            "ingr":[3,"baseball_bat","shocker","obj_plasma_mod"]
         },{
            "req":1,
            "result":"hunting_rifle",
            "ingr":[2,"shotgun","obj_middle_clip"]
         },{
            "req":2,
            "result":"napalm_strike",
            "ingr":[4,"molotov","molotov","molotov","obj_radio"]
         },{
            "req":2,
            "result":"super_medikit",
            "ingr":[2,"medikit","obj_small_cell"]
         },{
            "req":0,
            "result":"uzi",
            "ingr":[3,"pistol","obj_barrel","obj_middle_clip"]
         },{
            "req":1,
            "result":"unfail_uzi",
            "ingr":[2,"uzi","obj_small_expl"]
         },{
            "req":1,
            "result":"minigun",
            "ingr":[3,"unfail_uzi","obj_barrel","obj_big_clip"]
         },{
            "req":2,
            "result":"unfail_minigun",
            "ingr":[2,"minigun","obj_small_expl"]
         },{
            "req":2,
            "result":"air_minigun",
            "ingr":[3,"unfail_minigun","obj_barrel","obj_big_clip"]
         },{
            "req":3,
            "result":"avenger",
            "ingr":[3,"air_minigun","obj_barrel","obj_big_clip"]
         },{
            "req":3,
            "result":"laser_minigun",
            "ingr":[4,"air_minigun","unfail_laser_rifle","obj_big_cell","obj_laser_mod"]
         },{
            "req":3,
            "result":"plasma_minigun",
            "ingr":[4,"air_minigun","unfail_plasma_rifle","obj_big_cell","obj_plasma_mod"]
         },{
            "req":3,
            "result":"gauss_minigun",
            "ingr":[5,"air_minigun","unfail_gauss_rifle","obj_big_cell","obj_coil","obj_coil"]
         },{
            "req":1,
            "result":"laser_pistol",
            "ingr":[4,"pistol","obj_small_cell","obj_laser_mod","obj_laser_mod"]
         },{
            "req":2,
            "result":"laser_pistol2",
            "ingr":[3,"laser_pistol","obj_middle_clip","obj_laser_mod"]
         },{
            "req":1,
            "result":"laser_rifle",
            "ingr":[4,"laser_pistol","minigun","obj_small_cell","obj_laser_mod"]
         },{
            "req":2,
            "result":"unfail_laser_rifle",
            "ingr":[2,"laser_rifle","obj_big_cell"]
         },{
            "req":1,
            "result":"plasma_pistol",
            "ingr":[4,"pistol","obj_small_cell","obj_plasma_mod","obj_plasma_mod"]
         },{
            "req":1,
            "result":"plasma_rifle",
            "ingr":[4,"plasma_pistol","minigun","obj_small_cell","obj_plasma_mod"]
         },{
            "req":2,
            "result":"unfail_plasma_rifle",
            "ingr":[2,"plasma_rifle","obj_big_cell"]
         },{
            "req":1,
            "result":"gauss_pistol",
            "ingr":[4,"pistol","obj_small_cell","obj_coil","obj_coil"]
         },{
            "req":2,
            "result":"gauss_pistol2",
            "ingr":[3,"gauss_pistol","obj_middle_clip","obj_coil"]
         },{
            "req":2,
            "result":"gauss_rifle",
            "ingr":[5,"gauss_pistol","sniper_rifle","obj_barrel","obj_small_cell","obj_coil"]
         },{
            "req":2,
            "result":"unfail_gauss_rifle",
            "ingr":[2,"gauss_rifle","obj_big_cell"]
         },{
            "req":2,
            "result":"peacemaker",
            "ingr":[3,"sniper_rifle","obj_middle_clip","obj_small_expl"]
         },{
            "req":3,
            "result":"hearts_ace",
            "ingr":[2,"peacemaker","obj_big_clip"]
         },{
            "req":2,
            "result":"rad_rifle",
            "ingr":[3,"sniper_rifle","obj_barrel","obj_rad_lock"]
         },{
            "req":2,
            "result":"bozar",
            "ingr":[4,"minigun","sniper_rifle","obj_barrel","obj_middle_clip"]
         },{
            "req":2,
            "result":"bozar16",
            "ingr":[4,"bozar","rad_rifle","obj_middle_clip","obj_rad_lock"]
         },{
            "req":3,
            "result":"bozar24s",
            "ingr":[3,"bozar16","obj_barrel","obj_big_clip"]
         },{
            "req":3,
            "result":"pulse_pistol",
            "ingr":[6,"laser_pistol","plasma_pistol","gauss_pistol","obj_laser_mod","obj_plasma_mod","obj_coil"]
         },{
            "req":3,
            "result":"luiston",
            "ingr":[3,"pulse_pistol","obj_big_cell","obj_pulse_mod"]
         },{
            "req":3,
            "result":"de_lameter",
            "ingr":[4,"luiston","obj_big_cell","obj_pulse_mod","obj_pulse_mod"]
         },{
            "req":3,
            "result":"turbo_rifle",
            "ingr":[4,"de_lameter","unfail_laser_rifle","unfail_plasma_rifle","unfail_gauss_rifle"]
         },{
            "req":3,
            "result":"orbit_strike",
            "ingr":[4,"luiston","luiston","luiston","obj_radio"]
         },{
            "req":3,
            "result":"ultra_rifle",
            "ingr":[3,"pulse_pistol","obj_barrel","obj_ultra_mod"]
         },{
            "req":3,
            "result":"vindicator",
            "ingr":[4,"ultra_rifle","obj_barrel","obj_big_clip","obj_ultra_mod"]
         },{
            "req":3,
            "result":"kenton_bazooka",
            "ingr":[4,"ap_bazooka2","ap_bazooka2","nuclear_bomb","obj_ultra_mod"]
         },{
            "req":3,
            "result":"kenton_grenade",
            "ingr":[4,"dl19","dl19","super_hhg","obj_ultra_mod"]
         },{
            "req":3,
            "result":"void_melody",
            "ingr":[5,"turbo_rifle","laser_minigun","plasma_minigun","gauss_minigun","obj_ultra_mod"]
         });
         this.TASK_DEF = [31,{
            "bonus_type":"gold",
            "bonus":500,
            "name":"Пройти одну карьеру"
         },{
            "bonus_type":"exp",
            "bonus":300,
            "name":"Купить стимулятор"
         },{
            "bonus_type":"gold",
            "bonus":1000,
            "name":"Получить новый уровень"
         },{
            "bonus_type":"exp",
            "bonus":500,
            "name":"Купить оружие 2 класса"
         },{
            "bonus_type":"gold",
            "bonus":2000,
            "name":"Пройти одно выживание"
         },{
            "bonus_type":"exp",
            "bonus":400,
            "name":"Использовать 2 стимулятора"
         },{
            "bonus_type":"exp",
            "bonus":600,
            "name":"Купить флаг"
         },{
            "bonus_type":"gold",
            "bonus":2500,
            "name":"Пройти одну миссию"
         },{
            "bonus_type":"diam",
            "bonus":3,
            "name":"Получить новый уровень"
         },{
            "bonus_type":"exp",
            "bonus":750,
            "name":"Купить оружие 3 класса"
         },{
            "bonus_type":"gold",
            "bonus":800,
            "name":"Сыграть в дартс"
         },{
            "bonus_type":"gold",
            "bonus":3000,
            "name":"Пройти одно выживание"
         },{
            "bonus_type":"exp",
            "bonus":650,
            "name":"Выбрать новую способность"
         },{
            "bonus_type":"gold",
            "bonus":3000,
            "name":"Пройти одну миссию"
         },{
            "bonus_type":"exp",
            "bonus":700,
            "name":"Разобрать одно оружие"
         },{
            "bonus_type":"exp",
            "bonus":1000,
            "name":"Купить оружие 4 класса"
         },{
            "bonus_type":"exp",
            "bonus":1100,
            "name":"Улучшить одно оружие"
         },{
            "bonus_type":"diam",
            "bonus":5,
            "name":"Победить одного босса"
         },{
            "bonus_type":"exp",
            "bonus":3000,
            "name":"Добавить червяка или увеличить здоровье"
         },{
            "bonus_type":"exp",
            "bonus":1300,
            "name":"Собрать одно оружие"
         },{
            "bonus_type":"exp",
            "bonus":1500,
            "name":"Купить одно энергооружие"
         },{
            "bonus_type":"gold",
            "bonus":3000,
            "name":"Выбрать новую способность"
         },{
            "bonus_type":"gold",
            "bonus":3000,
            "name":"Пройти одну карьеру на Кошмаре"
         },{
            "bonus_type":"exp",
            "bonus":1400,
            "name":"Украсть оружие"
         },{
            "bonus_type":"diam",
            "bonus":2,
            "name":"Собрать оружие 3 класса"
         },{
            "bonus_type":"diam",
            "bonus":10,
            "name":"Победить одного босса"
         },{
            "bonus_type":"diam",
            "bonus":6,
            "name":"Собрать оружие 4 класса"
         },{
            "bonus_type":"exp",
            "bonus":5000,
            "name":"Захватить территорию"
         },{
            "bonus_type":"exp",
            "bonus":7000,
            "name":"Купить имплантант"
         },{
            "bonus_type":"exp",
            "bonus":8000,
            "name":"Собрать оружие 5 класса"
         },{
            "bonus_type":"",
            "bonus":0,
            "name":"Поздравляем!"
         }];
         this.COREAN_RANDOM = [0,{
            "angle_diap":15,
            "angle_mult":570,
            "force_diap":10,
            "force_mult":0.1
         },{
            "angle_diap":8,
            "angle_mult":570,
            "force_diap":5,
            "force_mult":0.1
         },{
            "angle_diap":6,
            "angle_mult":570,
            "force_diap":5,
            "force_mult":0.09
         },{
            "angle_diap":0,
            "angle_mult":0,
            "force_diap":3,
            "force_mult":0.06
         },{
            "angle_diap":0,
            "angle_mult":0,
            "force_diap":1,
            "force_mult":0.06
         },{
            "angle_diap":0,
            "angle_mult":0,
            "force_diap":0,
            "force_mult":0
         }];
         this.PAPA_HOURS = [9,16,14,20,11,17,10,13,15,21,12,19,20,18,14,20,16,9,11,13,10,17,21,12,15,18,19,17,10,14,20,16,15,13,11,21,18,12,19,10];
         this.PAPA_WEAPONS = [[7,"low_gravity","holy_hand_grenade","baseball_bat","teleport","medikit","gauss_rifle","nuclear_bomb2"],[7,"uzi","fast_walk","molotov","jet_pack","ultra_scaner","upg_teleport","hearts_ace"],[7,"laser_pistol","uzi","shocker","shotgun","mortar","plasma_rifle","gauss_pistol2"],[7,"pistol","add_time","air_strike","hunting_rifle","plasma_rifle","pulse_mine","bozar16"],[7,"gauss_pistol","laser_sight","parachute","blow_torch","power_bat","dl19","super_hhg"],[7,"dynamite","unfail_bazooka","plasma_pistol","grenade","pulse_pistol","mine_sheep","gauss_pistol2"],[7,"mine","girder","sheep","laser_rifle","mine_strike","girder_pack","bozar24s"],[7,"old_woman","battle_axe","plasma_grenade","dynamite_bunch","minigun","sniper_rifle","laser_pistol2"]];
         this.PAPA_OBJECTS = [[4,"obj_pulse_mod","obj_rad_cont","obj_coil","obj_orange_book"],[4,"obj_big_cell","obj_rad_lock","obj_rad_cont","obj_violet_book"],[3,"obj_coil","obj_radio","obj_red_book"],[4,"obj_pulse_mod","obj_eg_generator","obj_rad_cont","obj_green_book"],[4,"obj_rad_lock","obj_coil","obj_skyblue_book","obj_black_book"],[4,"obj_ultra_mod","obj_rad_cont","obj_radio","obj_blue_book"],[3,"obj_rad_lock","obj_eg_generator","obj_yellow_book"],[3,"obj_big_cell","obj_rad_cont","obj_white_book"]];
         this.WEAPON_ICONS = {
            "bazooka":"267157036",
            "unfail_bazooka":"267157037",
            "fire_bazooka":"267157038",
            "poison_bazooka":"267157039",
            "ap_bazooka":"267157040",
            "howitzer":"268707186",
            "ap_bazooka2":"270703942",
            "rj46":"270703958",
            "grenade":"267157041",
            "unfail_grenade":"267157042",
            "plasma_grenade":"267157043",
            "pulse_grenade":"267157044",
            "holy_hand_grenade":"267157045",
            "dl19":"270703960",
            "cluster_bomb":"267157046",
            "unfail_cluster_bomb":"267157047",
            "putty_grenade":"269335960",
            "molotov":"267157048",
            "mortar":"267157049",
            "upg_mortar":"267157050",
            "banana_bomb":"267157051",
            "unfail_banana_bomb":"267157052",
            "super_banana_bomb":"267157053",
            "nuclear_bomb":"267157054",
            "multi_bazooka":"267157055",
            "mega_banana_bomb":"270703935",
            "pistol":"267157056",
            "uzi":"267157057",
            "unfail_uzi":"267157058",
            "hunting_rifle":"267157059",
            "sniper_rifle":"267157060",
            "rad_rifle":"269296388",
            "peacemaker":"268699521",
            "shotgun":"267157061",
            "minigun":"267157062",
            "unfail_minigun":"267157063",
            "air_minigun":"267157064",
            "bozar":"267157065",
            "avenger":"269827766",
            "air_strike":"267157066",
            "napalm_strike":"267157067",
            "mine_strike":"267157068",
            "banana_strike":"267157069",
            "holy_strike":"267157070",
            "mine":"267157071",
            "unfail_mine":"267157072",
            "fire_mine":"267157073",
            "plasma_mine":"267157074",
            "pulse_mine":"267157075",
            "nuclear_mine":"269296389",
            "dynamite":"267157076",
            "unfail_dynamite":"267157077",
            "dynamite_bunch":"269116675",
            "old_woman":"267157080",
            "unfail_old_woman":"267157081",
            "sheep":"267157078",
            "unfail_sheep":"267157079",
            "fire_sheep":"267157082",
            "poison_sheep":"267157083",
            "mine_sheep":"269296390",
            "mine_sheep2":"269296391",
            "prod":"267157084",
            "firepunch":"267157112",
            "fireball":"267157113",
            "kamikaze":"267356278",
            "baseball_bat":"267157114",
            "shocker":"267157115",
            "battle_axe":"267157116",
            "power_axe":"267157117",
            "power_bat":"267157118",
            "skip_go":"267157119",
            "laser_sight":"267157120",
            "low_gravity":"267157121",
            "fast_walk":"267157122",
            "ultra_scaner":"268401725",
            "gravity_grenade":"270704152",
            "invisibility":"271641568",
            "blow_torch":"267157123",
            "pneumatic_drill":"267157124",
            "parachute":"267157125",
            "girder":"267157126",
            "girder_pack":"267157127",
            "jet_pack":"267157128",
            "teleport":"267157129",
            "upg_teleport":"267157130",
            "upg_jet_pack":"267157131",
            "ag_pack":"267157132",
            "add_time":"267157133",
            "choose_worm":"267157134",
            "upg_teleport2":"267304796",
            "emg_teleport":"269335962",
            "medikit":"269335961",
            "super_medikit":"269827767",
            "laser_pistol":"267157135",
            "laser_rifle":"267157136",
            "unfail_laser_rifle":"267157137",
            "laser_minigun":"267157138",
            "pulse_pistol":"267157147",
            "plasma_pistol":"267157139",
            "plasma_rifle":"267157140",
            "unfail_plasma_rifle":"267157141",
            "plasma_minigun":"267157142",
            "luiston":"267157148",
            "gauss_pistol":"267157143",
            "gauss_rifle":"267157144",
            "unfail_gauss_rifle":"267157145",
            "gauss_minigun":"267157146",
            "de_lameter":"267157149",
            "turbo_rifle":"269827763",
            "orbit_strike":"267157150",
            "ultra_rifle":"267157151",
            "vindicator":"269827761"
         };
         this.BAN_DESC[101] = "Cheating";
         this.BAN_DESC[102] = "Bad Software Distribution";
         this.BAN_DESC[103] = "Using Bugs";
         this.BAN_DESC[201] = "Spam";
         this.BAN_DESC[202] = "Multiapp Using Attempt";
         this.WP_PLACES_SORT = ["bazooka","unfail_bazooka","fire_bazooka","poison_bazooka","ap_bazooka","ap_bazooka2","rj46","howitzer","kenton_bazooka","grenade","unfail_grenade","plasma_grenade","pulse_grenade","holy_hand_grenade","super_hhg","cluster_bomb","unfail_cluster_bomb","putty_grenade","dl19","kenton_grenade","molotov","mortar","upg_mortar","banana_bomb","unfail_banana_bomb","super_banana_bomb","mega_banana_bomb","nuclear_bomb","nuclear_bomb2","multi_bazooka","pistol","shotgun","uzi","unfail_uzi","hunting_rifle","minigun","unfail_minigun","air_minigun","sniper_rifle","bozar","peacemaker","hearts_ace","avenger","rad_rifle","bozar16","bozar24s","air_strike","napalm_strike","mine_strike","banana_strike","holy_strike","orbit_strike","mine","unfail_mine","fire_mine","plasma_mine","pulse_mine","nuclear_mine","dynamite","unfail_dynamite","dynamite_bunch","old_woman","unfail_old_woman","sheep","unfail_sheep","fire_sheep","poison_sheep","mine_sheep","mine_sheep2","prod","firepunch","fireball","kamikaze","shocker","baseball_bat","power_bat","battle_axe","power_axe","skip_go","laser_sight","low_gravity","fast_walk","ultra_scaner","blow_torch","pneumatic_drill","parachute","girder","girder_pack","jet_pack","upg_jet_pack","ag_pack","add_time","choose_worm","teleport","upg_teleport","upg_teleport2","emg_teleport","medikit","super_medikit","gravity_grenade","invisibility","laser_pistol","laser_pistol2","laser_rifle","unfail_laser_rifle","laser_minigun","plasma_pistol","plasma_rifle","unfail_plasma_rifle","plasma_minigun","gauss_pistol","gauss_pistol2","gauss_rifle","unfail_gauss_rifle","gauss_minigun","pulse_pistol","luiston","de_lameter","turbo_rifle","ultra_rifle","vindicator","void_melody","annihilator"];
      }
      
      public function gfr(param1:Number) : Array
      {
         return [0,param1,0,0,0,0,0,0,0,0,0];
      }
      
      public function get_team(param1:Object) : Object
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
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         var _loc2_:* = {};
         _loc2_.worms = param1.worms;
         _loc2_.cpu_level = param1.cpu_level;
         _loc2_.color = param1.color;
         _loc2_.name = param1.id;
         _loc2_.weapons = {};
         if(param1.id == "Рыцари Смерти")
         {
            _loc2_.weapons = {
               "bazooka":this.gfr(100),
               "grenade":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":0,
               "protect":0,
               "health":80,
               "spec":0,
               "perks":{},
               "name":"Толстый Буч"
            };
            _loc2_.worm2 = {
               "attack":0,
               "protect":0,
               "health":80,
               "spec":0,
               "perks":{},
               "name":"Чайник"
            };
            _loc2_.worm3 = {
               "attack":0,
               "protect":0,
               "health":80,
               "spec":0,
               "perks":{},
               "name":"Гиена"
            };
            _loc2_.worm4 = {
               "attack":0,
               "protect":0,
               "health":80,
               "spec":0,
               "perks":{},
               "name":"Громила"
            };
            _loc2_.worm5 = {
               "attack":0,
               "protect":0,
               "health":80,
               "spec":0,
               "perks":{},
               "name":"Сапожник"
            };
            _loc2_.worm6 = {
               "attack":0,
               "protect":0,
               "health":80,
               "spec":0,
               "perks":{},
               "name":"Джексон"
            };
         }
         if(param1.id == "Стальной Коготь")
         {
            _loc2_.weapons = {
               "bazooka":this.gfr(100),
               "grenade":this.gfr(100),
               "cluster_bomb":this.gfr(5)
            };
            _loc2_.worm1 = {
               "attack":15,
               "protect":15,
               "health":120,
               "spec":0,
               "perks":{},
               "name":"Папа Джон"
            };
            _loc2_.worm2 = {
               "attack":15,
               "protect":15,
               "health":120,
               "spec":0,
               "perks":{},
               "name":"Титаник"
            };
            _loc2_.worm3 = {
               "attack":15,
               "protect":15,
               "health":120,
               "spec":0,
               "perks":{},
               "name":"Мутный"
            };
            _loc2_.worm4 = {
               "attack":15,
               "protect":15,
               "health":120,
               "spec":0,
               "perks":{},
               "name":"Дерзкий"
            };
            _loc2_.worm5 = {
               "attack":15,
               "protect":15,
               "health":120,
               "spec":0,
               "perks":{},
               "name":"Четкий"
            };
            _loc2_.worm6 = {
               "attack":15,
               "protect":15,
               "health":120,
               "spec":0,
               "perks":{},
               "name":"Лезвие"
            };
            _loc2_.worm7 = {
               "attack":15,
               "protect":15,
               "health":120,
               "spec":0,
               "perks":{},
               "name":"Громила"
            };
         }
         if(param1.id == "Агенты Отражения")
         {
            _loc2_.weapons = {
               "unfail_bazooka":this.gfr(100),
               "unfail_grenade":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":30,
               "protect":30,
               "health":180,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3
               },
               "name":"Мистер Смит"
            };
            _loc2_.worm2 = {
               "attack":30,
               "protect":30,
               "health":180,
               "spec":0,
               "perks":{"luck":3},
               "name":"Мистер Локк"
            };
            _loc2_.worm3 = {
               "attack":30,
               "protect":30,
               "health":180,
               "spec":0,
               "perks":{"luck":3},
               "name":"Мистер Ли"
            };
            _loc2_.worm4 = {
               "attack":30,
               "protect":30,
               "health":180,
               "spec":0,
               "perks":{"luck":3},
               "name":"Мистер Форд"
            };
            _loc2_.worm5 = {
               "attack":30,
               "protect":30,
               "health":180,
               "spec":0,
               "perks":{"luck":3},
               "name":"Мистер Браун"
            };
            _loc2_.worm6 = {
               "attack":30,
               "protect":30,
               "health":180,
               "spec":0,
               "perks":{"luck":3},
               "name":"Мистер Бин"
            };
         }
         if(param1.id == "Дети Тьмы")
         {
            _loc2_.weapons = {
               "poison_bazooka":this.gfr(100),
               "plasma_grenade":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":45,
               "protect":30,
               "health":220,
               "spec":0,
               "perks":{"poison_res":3},
               "name":"Палейн"
            };
            _loc2_.worm2 = {
               "attack":45,
               "protect":30,
               "health":220,
               "spec":0,
               "perks":{"poison_res":3},
               "name":"Пилинипси 14"
            };
            _loc2_.worm3 = {
               "attack":45,
               "protect":30,
               "health":220,
               "spec":0,
               "perks":{"poison_res":3},
               "name":"Ворсел"
            };
            _loc2_.worm4 = {
               "attack":45,
               "protect":30,
               "health":220,
               "spec":0,
               "perks":{"poison_res":3},
               "name":"Киннисон"
            };
            _loc2_.worm5 = {
               "attack":45,
               "protect":30,
               "health":220,
               "spec":0,
               "perks":{"poison_res":3},
               "name":"Роджер"
            };
         }
         if(param1.id == "Мастера")
         {
            _loc2_.weapons = {
               "unfail_bazooka":this.gfr(100),
               "unfail_grenade":this.gfr(100),
               "fire_bazooka":this.gfr(5),
               "plasma_grenade":this.gfr(3),
               "pulse_grenade":this.gfr(2)
            };
            _loc2_.worm1 = {
               "attack":75,
               "protect":75,
               "health":500,
               "spec":0,
               "perks":{
                  "crafting":3,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3
               },
               "name":"Костиган"
            };
            _loc2_.worm2 = {
               "attack":75,
               "protect":75,
               "health":410,
               "spec":0,
               "perks":{"crafting":3},
               "name":"Томас"
            };
            _loc2_.worm3 = {
               "attack":75,
               "protect":75,
               "health":410,
               "spec":0,
               "perks":{"crafting":3},
               "name":"Питт"
            };
            _loc2_.worm4 = {
               "attack":75,
               "protect":75,
               "health":410,
               "spec":0,
               "perks":{"crafting":3},
               "name":"Эдиссон"
            };
            _loc2_.worm5 = {
               "attack":75,
               "protect":75,
               "health":410,
               "spec":0,
               "perks":{"crafting":3},
               "name":"Кьюти"
            };
            _loc2_.worm6 = {
               "attack":75,
               "protect":75,
               "health":410,
               "spec":0,
               "perks":{"crafting":3},
               "name":"Флэш"
            };
         }
         if(param1.id == "Взрывники")
         {
            _loc2_.weapons = {
               "unfail_bazooka":this.gfr(100),
               "unfail_cluster_bomb":this.gfr(100),
               "banana_bomb":this.gfr(3)
            };
            _loc2_.worm1 = {
               "attack":80,
               "protect":95,
               "health":540,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":3,
                  "fire_res":3
               },
               "name":"Тарс Таркас"
            };
            _loc2_.worm2 = {
               "attack":80,
               "protect":95,
               "health":450,
               "spec":0,
               "perks":{
                  "damage_p":3,
                  "fire_res":3
               },
               "name":"Би-ес"
            };
            _loc2_.worm3 = {
               "attack":80,
               "protect":95,
               "health":450,
               "spec":0,
               "perks":{
                  "damage_p":3,
                  "fire_res":3
               },
               "name":"Динамит"
            };
            _loc2_.worm4 = {
               "attack":80,
               "protect":95,
               "health":450,
               "spec":0,
               "perks":{
                  "damage_p":3,
                  "fire_res":3
               },
               "name":"Эми"
            };
            _loc2_.worm5 = {
               "attack":80,
               "protect":95,
               "health":450,
               "spec":0,
               "perks":{
                  "damage_p":3,
                  "fire_res":3
               },
               "name":"Спиди"
            };
            _loc2_.worm6 = {
               "attack":80,
               "protect":95,
               "health":450,
               "spec":0,
               "perks":{
                  "damage_p":3,
                  "fire_res":3
               },
               "name":"Дирк"
            };
         }
         if(param1.id == "Последователи Грома")
         {
            _loc2_.weapons = {
               "unfail_bazooka":this.gfr(100),
               "ap_bazooka":this.gfr(5),
               "unfail_grenade":this.gfr(100),
               "pulse_grenade":this.gfr(5),
               "super_banana_bomb":this.gfr(1),
               "gauss_pistol":this.gfr(2)
            };
            _loc2_.worm1 = {
               "attack":120,
               "protect":120,
               "health":650,
               "spec":0,
               "perks":{
                  "best_crit":3,
                  "damage_h":3
               },
               "name":"Надрек"
            };
            _loc2_.worm2 = {
               "attack":100,
               "protect":100,
               "health":530,
               "spec":0,
               "perks":{"damage_h":3},
               "name":"Ганнель"
            };
            _loc2_.worm3 = {
               "attack":100,
               "protect":100,
               "health":530,
               "spec":0,
               "perks":{"damage_h":3},
               "name":"Хейнес"
            };
            _loc2_.worm4 = {
               "attack":100,
               "protect":100,
               "health":530,
               "spec":0,
               "perks":{"damage_h":3},
               "name":"Харклерой"
            };
            _loc2_.worm5 = {
               "attack":100,
               "protect":100,
               "health":530,
               "spec":0,
               "perks":{"damage_h":3},
               "name":"Алкон"
            };
            _loc2_.worm6 = {
               "attack":100,
               "protect":100,
               "health":530,
               "spec":0,
               "perks":{"damage_h":3},
               "name":"Кандрон"
            };
         }
         if(param1.id == "Адепты Грома")
         {
            _loc2_.weapons = {
               "unfail_bazooka":this.gfr(100),
               "ap_bazooka":this.gfr(5),
               "unfail_grenade":this.gfr(100),
               "pulse_grenade":this.gfr(5),
               "super_banana_bomb":this.gfr(1),
               "gauss_rifle":this.gfr(2)
            };
            _loc2_.worm1 = {
               "attack":130,
               "protect":125,
               "health":800,
               "spec":0,
               "perks":{
                  "heavy_guy":3,
                  "best_crit":3,
                  "damage_h":3
               },
               "name":"Кливленд"
            };
            _loc2_.worm2 = {
               "attack":130,
               "protect":125,
               "health":680,
               "spec":0,
               "perks":{
                  "heavy_guy":3,
                  "best_crit":3,
                  "damage_h":3
               },
               "name":"Олмстед"
            };
            _loc2_.worm3 = {
               "attack":130,
               "protect":125,
               "health":680,
               "spec":0,
               "perks":{
                  "heavy_guy":3,
                  "best_crit":3,
                  "damage_h":3
               },
               "name":"Аллердайс"
            };
            _loc2_.worm4 = {
               "attack":130,
               "protect":125,
               "health":680,
               "spec":0,
               "perks":{
                  "heavy_guy":3,
                  "best_crit":3,
                  "damage_h":3
               },
               "name":"Уленгут"
            };
            _loc2_.worm5 = {
               "attack":130,
               "protect":125,
               "health":680,
               "spec":0,
               "perks":{
                  "heavy_guy":3,
                  "best_crit":3,
                  "damage_h":3
               },
               "name":"Бакстер"
            };
            _loc2_.worm6 = {
               "attack":130,
               "protect":125,
               "health":680,
               "spec":0,
               "perks":{
                  "heavy_guy":3,
                  "best_crit":3,
                  "damage_h":3
               },
               "name":"Виллоуби"
            };
         }
         if(param1.id == "Офицеры Отражения")
         {
            _loc2_.weapons = {
               "ap_bazooka":this.gfr(100),
               "pulse_grenade":this.gfr(100),
               "laser_at_rifle":this.gfr(6),
               "plasma_at_rifle":this.gfr(5),
               "gauss_pistol":this.gfr(3)
            };
            _loc2_.worm1 = {
               "attack":160,
               "protect":160,
               "health":1000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":2,
                  "damage_h":2,
                  "para_res":3
               },
               "name":"Бергенхольм"
            };
            _loc2_.worm2 = {
               "attack":160,
               "protect":160,
               "health":900,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":2,
                  "damage_h":2,
                  "para_res":3
               },
               "name":"Родебуш"
            };
            _loc2_.worm3 = {
               "attack":160,
               "protect":160,
               "health":900,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":2,
                  "damage_h":2,
                  "para_res":3
               },
               "name":"Нортроп"
            };
            _loc2_.worm4 = {
               "attack":100,
               "protect":100,
               "health":530,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":2,
                  "damage_h":2,
                  "para_res":3
               },
               "name":"Айзексон"
            };
            _loc2_.worm5 = {
               "attack":160,
               "protect":160,
               "health":900,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":2,
                  "damage_h":2,
                  "para_res":3
               },
               "name":"Морган"
            };
            _loc2_.worm6 = {
               "attack":160,
               "protect":160,
               "health":900,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":2,
                  "damage_h":2,
                  "para_res":3
               },
               "name":"Баскирк"
            };
         }
         if(param1.id == "Элита Отражения" || param1.id == "Элита Отражения 2")
         {
            _loc3_ = 200;
            _loc4_ = 200;
            _loc5_ = 1400;
            _loc6_ = 1200;
            _loc7_ = 1100;
            _loc8_ = 250;
            _loc9_ = 250;
            _loc10_ = 1500;
            _loc11_ = 1300;
            _loc12_ = 1200;
            _loc13_ = param1.id == "Элита Отражения" ? _loc3_ : _loc8_;
            _loc14_ = param1.id == "Элита Отражения" ? _loc4_ : _loc9_;
            _loc15_ = param1.id == "Элита Отражения" ? _loc5_ : _loc10_;
            _loc16_ = param1.id == "Элита Отражения" ? _loc6_ : _loc11_;
            _loc17_ = param1.id == "Элита Отражения" ? _loc7_ : _loc12_;
            _loc2_.name = "Элита Отражения";
            _loc2_.weapons = {
               "fire_bazooka":this.gfr(100),
               "pulse_grenade":this.gfr(100),
               "gauss_rifle":this.gfr(100),
               "nuclear_bomb":this.gfr(3),
               "super_banana_bomb":this.gfr(3)
            };
            _loc2_.worm1 = {
               "attack":_loc13_,
               "protect":_loc14_,
               "health":_loc15_,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "damage_p":3,
                  "damage_h":3,
                  "para_res":3,
                  "fire_res":3,
                  "poison_res":3
               },
               "name":"Бальтазар"
            };
            _loc2_.worm2 = {
               "attack":_loc13_,
               "protect":_loc14_,
               "health":_loc16_,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":3,
                  "damage_h":3,
                  "para_res":3
               },
               "name":"Скор"
            };
            _loc2_.worm3 = {
               "attack":_loc13_,
               "protect":_loc14_,
               "health":_loc17_,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":3,
                  "damage_h":3,
                  "para_res":3
               },
               "name":"Джапал"
            };
            _loc2_.worm4 = {
               "attack":_loc13_,
               "protect":_loc14_,
               "health":_loc17_,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":3,
                  "damage_h":3,
                  "para_res":3
               },
               "name":"Минтеп"
            };
            _loc2_.worm5 = {
               "attack":_loc13_,
               "protect":_loc14_,
               "health":_loc17_,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":3,
                  "damage_h":3,
                  "para_res":3
               },
               "name":"Кормор"
            };
            _loc2_.worm6 = {
               "attack":_loc13_,
               "protect":_loc14_,
               "health":_loc17_,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":3,
                  "damage_h":3,
                  "para_res":3
               },
               "name":"Анотар"
            };
            _loc2_.worm7 = {
               "attack":_loc13_,
               "protect":_loc14_,
               "health":_loc17_,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":3,
                  "damage_h":3,
                  "para_res":3
               },
               "name":"Пан"
            };
         }
         if(param1.id == "Армия Де Ляметра")
         {
            _loc2_.weapons = {
               "rj46":this.gfr(100),
               "dl19":this.gfr(100),
               "rad_rifle":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":300,
               "protect":300,
               "health":2000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "para_res":3,
                  "fire_res":3,
                  "poison_res":3,
                  "dmg_thr":10,
                  "god_of_war":8
               },
               "name":"Заместитель"
            };
            _loc2_.worm2 = {
               "attack":300,
               "protect":250,
               "health":1600,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":5
               },
               "name":"Офицер RD"
            };
            _loc2_.worm3 = {
               "attack":300,
               "protect":250,
               "health":1500,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":5
               },
               "name":"Офицер TS"
            };
            _loc2_.worm4 = {
               "attack":300,
               "protect":250,
               "health":1400,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":5
               },
               "name":"Офицер RT"
            };
            _loc2_.worm5 = {
               "attack":300,
               "protect":250,
               "health":1400,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":5
               },
               "name":"Офицер FS"
            };
            _loc2_.worm6 = {
               "attack":300,
               "protect":250,
               "health":1400,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":5
               },
               "name":"Офицер AJ"
            };
         }
         if(param1.id == "Армия Де Ляметра 2")
         {
            _loc2_.name = "Армия Де Ляметра";
            _loc2_.weapons = {
               "multip14":this.gfr(100),
               "rainbow_burst":this.gfr(100),
               "ec_caws":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":300,
               "protect":300,
               "health":2200,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "para_res":3,
                  "fire_res":3,
                  "poison_res":3,
                  "dmg_thr":10,
                  "god_of_war":10
               },
               "name":"Заместитель"
            };
            _loc2_.worm2 = {
               "attack":300,
               "protect":300,
               "health":1800,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":6
               },
               "name":"Офицер RD"
            };
            _loc2_.worm3 = {
               "attack":300,
               "protect":300,
               "health":1600,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":5
               },
               "name":"Офицер TS"
            };
            _loc2_.worm4 = {
               "attack":300,
               "protect":300,
               "health":1600,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":5
               },
               "name":"Офицер RT"
            };
            _loc2_.worm5 = {
               "attack":300,
               "protect":300,
               "health":1600,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":5
               },
               "name":"Офицер FS"
            };
            _loc2_.worm6 = {
               "attack":300,
               "protect":300,
               "health":1600,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":5
               },
               "name":"Офицер AJ"
            };
         }
         if(param1.id == "Армия Де Ляметра 3")
         {
            _loc2_.name = "Армия Де Ляметра";
            _loc2_.weapons = {
               "multip17":this.gfr(100),
               "infinity_rainbow":this.gfr(100),
               "ec_panhammer":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":350,
               "protect":350,
               "health":2500,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "para_res":3,
                  "fire_res":3,
                  "poison_res":3,
                  "dmg_thr":10,
                  "god_of_war":10
               },
               "name":"Заместитель"
            };
            _loc2_.worm2 = {
               "attack":350,
               "protect":350,
               "health":1800,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":8
               },
               "name":"Офицер RD"
            };
            _loc2_.worm3 = {
               "attack":350,
               "protect":350,
               "health":1600,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":7
               },
               "name":"Офицер TS"
            };
            _loc2_.worm4 = {
               "attack":350,
               "protect":350,
               "health":1600,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":7
               },
               "name":"Офицер RT"
            };
            _loc2_.worm5 = {
               "attack":350,
               "protect":350,
               "health":1600,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":7
               },
               "name":"Офицер FS"
            };
            _loc2_.worm6 = {
               "attack":350,
               "protect":350,
               "health":1600,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":7
               },
               "name":"Офицер AJ"
            };
            _loc2_.worm7 = {
               "attack":350,
               "protect":350,
               "health":1600,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "fire_res":3,
                  "poison_res":3,
                  "god_of_war":7
               },
               "name":"Офицер PP"
            };
         }
         if(param1.id == "Легионеры Кентона")
         {
            _loc2_.weapons = {
               "multip83":this.gfr(100),
               "skyfire":this.gfr(100),
               "ec_panhammer":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":450,
               "protect":450,
               "health":4000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "god_of_war":10,
                  "ap_shots":3
               },
               "name":"Центурион Милеск"
            };
            _loc2_.worm2 = {
               "attack":400,
               "protect":400,
               "health":2000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":8
               },
               "name":"Гораций Агнеобарб"
            };
            _loc2_.worm3 = {
               "attack":400,
               "protect":400,
               "health":2000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7
               },
               "name":"Квинтилий Метелл"
            };
            _loc2_.worm4 = {
               "attack":400,
               "protect":400,
               "health":2000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7
               },
               "name":"Лукреций Сулла"
            };
            _loc2_.worm5 = {
               "attack":400,
               "protect":400,
               "health":2000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7
               },
               "name":"Сестий Катул"
            };
            _loc2_.worm6 = {
               "attack":400,
               "protect":400,
               "health":2000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7
               },
               "name":"Эмилий Пизон"
            };
         }
         if(param1.id == "Гладиаторы Кентона")
         {
            _loc2_.weapons = {
               "kenton_bazooka":this.gfr(100),
               "kenton_grenade":this.gfr(100),
               "void_melody":this.gfr(100),
               "emg_teleport":this.gfr(5)
            };
            _loc2_.worm1 = {
               "attack":500,
               "protect":500,
               "health":5000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "god_of_war":10,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Парменид"
            };
            _loc2_.worm2 = {
               "attack":450,
               "protect":450,
               "health":2500,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":8,
                  "ap_shots":3
               },
               "name":"Пинарий Сципион"
            };
            _loc2_.worm3 = {
               "attack":450,
               "protect":450,
               "health":2500,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7,
                  "ap_shots":3
               },
               "name":"Геганий Марк"
            };
            _loc2_.worm4 = {
               "attack":450,
               "protect":450,
               "health":2500,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7,
                  "ap_shots":3
               },
               "name":"Муций Лентул"
            };
            _loc2_.worm5 = {
               "attack":450,
               "protect":450,
               "health":2500,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7,
                  "ap_shots":3
               },
               "name":"Ругилий Тавр"
            };
            _loc2_.worm6 = {
               "attack":450,
               "protect":450,
               "health":2500,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7,
                  "ap_shots":3
               },
               "name":"Аквилий Лепид"
            };
         }
         if(param1.id == "Принцы Кентона")
         {
            _loc2_.weapons = {
               "kenton_bazooka":this.gfr(100),
               "kenton_grenade":this.gfr(100),
               "void_melody":this.gfr(100),
               "emg_teleport":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":500,
               "protect":500,
               "health":5000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "god_of_war":10,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Перикл"
            };
            _loc2_.worm2 = {
               "attack":500,
               "protect":500,
               "health":4000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":8,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Анаксимен"
            };
            _loc2_.worm3 = {
               "attack":500,
               "protect":500,
               "health":4000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Протагор"
            };
            _loc2_.worm4 = {
               "attack":500,
               "protect":500,
               "health":4000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Маковельский"
            };
            _loc2_.worm5 = {
               "attack":500,
               "protect":500,
               "health":4000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Левкипп"
            };
            _loc2_.worm6 = {
               "attack":500,
               "protect":500,
               "health":4000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Зенон"
            };
            _loc2_.worm7 = {
               "attack":500,
               "protect":500,
               "health":4000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "god_of_war":7,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Агилион"
            };
         }
         if(param1.id == "Наместник 1")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "bazooka":this.gfr(100),
               "grenade":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":50,
               "protect":50,
               "health":200,
               "spec":0,
               "perks":{},
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 2")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "bazooka":this.gfr(100),
               "grenade":this.gfr(100),
               "cluster_bomb":this.gfr(5)
            };
            _loc2_.worm1 = {
               "attack":75,
               "protect":75,
               "health":250,
               "spec":0,
               "perks":{},
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 3")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "unfail_bazooka":this.gfr(100),
               "unfail_grenade":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":80,
               "protect":80,
               "health":300,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 4")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "unfail_bazooka":this.gfr(100),
               "unfail_grenade":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":80,
               "protect":80,
               "health":400,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 5")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "poison_bazooka":this.gfr(100),
               "plasma_grenade":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":100,
               "protect":100,
               "health":500,
               "spec":0,
               "perks":{"poison_res":3},
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 6")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "unfail_bazooka":this.gfr(100),
               "unfail_grenade":this.gfr(100),
               "fire_bazooka":this.gfr(5),
               "plasma_grenade":this.gfr(3),
               "pulse_grenade":this.gfr(2)
            };
            _loc2_.worm1 = {
               "attack":125,
               "protect":125,
               "health":800,
               "spec":0,
               "perks":{
                  "crafting":3,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 7")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "unfail_bazooka":this.gfr(100),
               "unfail_cluster_bomb":this.gfr(100),
               "banana_bomb":this.gfr(3)
            };
            _loc2_.worm1 = {
               "attack":150,
               "protect":150,
               "health":1000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":3,
                  "fire_res":3
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 8")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "unfail_bazooka":this.gfr(100),
               "ap_bazooka":this.gfr(5),
               "unfail_grenade":this.gfr(100),
               "pulse_grenade":this.gfr(5),
               "super_banana_bomb":this.gfr(1),
               "gauss_pistol":this.gfr(2)
            };
            _loc2_.worm1 = {
               "attack":150,
               "protect":150,
               "health":1200,
               "spec":0,
               "perks":{
                  "best_crit":3,
                  "damage_h":3
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 9")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "unfail_bazooka":this.gfr(100),
               "ap_bazooka":this.gfr(5),
               "unfail_grenade":this.gfr(100),
               "pulse_grenade":this.gfr(5),
               "super_banana_bomb":this.gfr(1),
               "gauss_rifle":this.gfr(2)
            };
            _loc2_.worm1 = {
               "attack":160,
               "protect":160,
               "health":1500,
               "spec":0,
               "perks":{
                  "heavy_guy":3,
                  "best_crit":3,
                  "damage_h":3
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 10")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "ap_bazooka":this.gfr(100),
               "pulse_grenade":this.gfr(100),
               "laser_at_rifle":this.gfr(6),
               "plasma_at_rifle":this.gfr(5),
               "gauss_pistol":this.gfr(3)
            };
            _loc2_.worm1 = {
               "attack":200,
               "protect":200,
               "health":2000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":2,
                  "damage_h":2,
                  "para_res":3
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 11")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "ap_bazooka":this.gfr(100),
               "pulse_grenade":this.gfr(100),
               "laser_at_rifle":this.gfr(6),
               "plasma_at_rifle":this.gfr(5),
               "gauss_pistol":this.gfr(3)
            };
            _loc2_.worm1 = {
               "attack":200,
               "protect":200,
               "health":2200,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":2,
                  "damage_h":2,
                  "para_res":3
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 12")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "fire_bazooka":this.gfr(100),
               "pulse_grenade":this.gfr(100),
               "gauss_rifle":this.gfr(100),
               "nuclear_bomb":this.gfr(3),
               "super_banana_bomb":this.gfr(3)
            };
            _loc2_.worm1 = {
               "attack":250,
               "protect":250,
               "health":3000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "damage_p":3,
                  "damage_h":3,
                  "para_res":3,
                  "fire_res":3,
                  "poison_res":3
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 13")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "fire_bazooka":this.gfr(100),
               "pulse_grenade":this.gfr(100),
               "gauss_rifle":this.gfr(100),
               "nuclear_bomb":this.gfr(3),
               "super_banana_bomb":this.gfr(3)
            };
            _loc2_.worm1 = {
               "attack":250,
               "protect":250,
               "health":3200,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "damage_p":3,
                  "damage_h":3,
                  "para_res":3,
                  "fire_res":3,
                  "poison_res":3
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 14")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "multip14":this.gfr(100),
               "rainbow_burst":this.gfr(100),
               "ec_caws":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":300,
               "protect":300,
               "health":3500,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "para_res":3,
                  "fire_res":3,
                  "poison_res":3,
                  "dmg_thr":10,
                  "god_of_war":10
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 15")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "multip17":this.gfr(100),
               "infinity_rainbow":this.gfr(100),
               "ec_panhammer":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":400,
               "protect":400,
               "health":5000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "para_res":3,
                  "fire_res":3,
                  "poison_res":3,
                  "dmg_thr":10,
                  "god_of_war":10
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 16")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "multip83":this.gfr(100),
               "skyfire":this.gfr(100),
               "ec_panhammer":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":450,
               "protect":450,
               "health":6000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "god_of_war":10,
                  "ap_shots":3
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Наместник 17")
         {
            _loc2_.name = "Наместник";
            _loc2_.weapons = {
               "kenton_bazooka":this.gfr(100),
               "kenton_grenade":this.gfr(100),
               "void_melody":this.gfr(100),
               "emg_teleport":this.gfr(5)
            };
            _loc2_.worm1 = {
               "attack":500,
               "protect":500,
               "health":7000,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "god_of_war":10,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Наместник"
            };
         }
         if(param1.id == "Ополчение")
         {
            _loc2_.weapons = {
               "bazooka":this.gfr(5),
               "grenade":this.gfr(5)
            };
            _loc2_.worm1 = {
               "attack":0,
               "protect":0,
               "health":60,
               "spec":0,
               "perks":{},
               "name":"Дядя Боб"
            };
            _loc2_.worm2 = {
               "attack":0,
               "protect":0,
               "health":60,
               "spec":0,
               "perks":{},
               "name":"Валенок"
            };
         }
         if(param1.id == "Главарь Когтя")
         {
            _loc2_.weapons = {
               "bazooka":this.gfr(100),
               "grenade":this.gfr(100),
               "plasma_grenade":this.gfr(2),
               "sniper_rifle":this.gfr(3)
            };
            _loc2_.worm1 = {
               "attack":55,
               "protect":55,
               "health":300,
               "spec":0,
               "perks":{"damage_f":3},
               "name":"Большой Джек"
            };
         }
         if(param1.id == "Главарь Детей")
         {
            _loc2_.weapons = {
               "poison_bazooka":this.gfr(100),
               "pulse_grenade":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":80,
               "protect":80,
               "health":1500,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "poison_res":3
               },
               "name":"Нерадо"
            };
         }
         if(param1.id == "Главарь Взрывников")
         {
            _loc2_.weapons = {"beretta":this.gfr(100)};
            _loc2_.worm1 = {
               "attack":0,
               "protect":150,
               "health":1800,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "damage_p":3,
                  "damage_f":3,
                  "fire_res":3
               },
               "name":"Лаб Ланед"
            };
         }
         if(param1.id == "Полковник Сэммс")
         {
            _loc2_.weapons = {"gauss_pistol":this.gfr(100)};
            _loc2_.worm1 = {
               "attack":0,
               "protect":165,
               "health":2500,
               "spec":0,
               "perks":{
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "damage_h":3
               },
               "name":"Вирджил Сэммс"
            };
         }
         if(param1.id == "Повар")
         {
            _loc2_.weapons = {
               "fire_bazooka":this.gfr(100),
               "unfail_cluster_bomb":this.gfr(100),
               "gauss_pistol":this.gfr(3)
            };
            _loc2_.worm1 = {
               "attack":50,
               "protect":50,
               "health":1500,
               "spec":0,
               "perks":{
                  "damage_p":3,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3
               },
               "name":"Повар"
            };
         }
         if(param1.id == "Менигуэн")
         {
            _loc2_.weapons = {
               "ap_bazooka":this.gfr(100),
               "plasma_grenade":this.gfr(100),
               "banana_bomb":this.gfr(2),
               "sniper_rifle":this.gfr(100),
               "gauss_rifle":this.gfr(2)
            };
            _loc2_.worm1 = {
               "attack":80,
               "protect":80,
               "health":3000,
               "spec":0,
               "perks":{
                  "damage_f":5,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3
               },
               "name":"Менигуэн"
            };
         }
         if(param1.id == "Сайгус")
         {
            _loc2_.weapons = {
               "ap_bazooka":this.gfr(100),
               "nuclear_bomb":this.gfr(2),
               "pulse_grenade":this.gfr(100),
               "gauss_rifle":this.gfr(3),
               "rad_rifle":this.gfr(1)
            };
            _loc2_.worm1 = {
               "attack":100,
               "protect":100,
               "health":6000,
               "spec":0,
               "perks":{
                  "damage_p":3,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "poison_res":3
               },
               "name":"Сайгус"
            };
         }
         if(param1.id == "Клод")
         {
            _loc2_.weapons = {
               "ap_bazooka":this.gfr(100),
               "nuclear_bomb":this.gfr(3),
               "pulse_grenade":this.gfr(100),
               "gauss_rifle":this.gfr(100),
               "pulse_pistol":this.gfr(1)
            };
            _loc2_.worm1 = {
               "attack":150,
               "protect":125,
               "health":10000,
               "spec":0,
               "perks":{
                  "damage_p":3,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":2,
                  "poison_res":3
               },
               "name":"Клод"
            };
         }
         if(param1.id == "Де Ляметр")
         {
            _loc2_.weapons = {
               "ap_bazooka":this.gfr(100),
               "nuclear_bomb":this.gfr(3),
               "pulse_grenade":this.gfr(100),
               "gauss_rifle":this.gfr(100),
               "de_lameter":this.gfr(2)
            };
            _loc2_.worm1 = {
               "attack":250,
               "protect":150,
               "health":15000,
               "spec":0,
               "perks":{
                  "damage_p":3,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "regeneration":2,
                  "poison_res":3
               },
               "name":"Де Ляметр"
            };
         }
         if(param1.id == "Мастер-16")
         {
            _loc2_.weapons = {
               "ap_bazooka":this.gfr(100),
               "nuclear_bomb":this.gfr(3),
               "pulse_grenade":this.gfr(100),
               "rad_rifle":this.gfr(100),
               "luiston":this.gfr(3)
            };
            _loc2_.worm1 = {
               "attack":300,
               "protect":200,
               "health":20000,
               "spec":0,
               "perks":{
                  "damage_f":3,
                  "damage_p":3,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":5,
                  "regeneration":2,
                  "poison_res":3
               },
               "name":"Мастер-16"
            };
         }
         if(param1.id == "Мститель")
         {
            _loc2_.weapons = {
               "ap_bazooka2":this.gfr(100),
               "dl19":this.gfr(100),
               "rad_rifle":this.gfr(100),
               "de_lameter":this.gfr(1)
            };
            _loc2_.worm1 = {
               "attack":350,
               "protect":275,
               "health":27000,
               "spec":0,
               "perks":{
                  "damage_f":3,
                  "damage_p":3,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "poison_res":3
               },
               "name":"Мститель"
            };
         }
         if(param1.id == "Пилинипси Первый")
         {
            _loc2_.weapons = {
               "multip14":this.gfr(100),
               "rainbow_burst":this.gfr(100),
               "ec_caws":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":400,
               "protect":300,
               "health":35000,
               "spec":0,
               "perks":{
                  "damage_f":3,
                  "damage_p":3,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "poison_res":3
               },
               "name":"Пилинипси I"
            };
         }
         if(param1.id == "Чистильщик")
         {
            _loc2_.weapons = {
               "multip17":this.gfr(100),
               "infinity_rainbow":this.gfr(100),
               "ec_panhammer":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":450,
               "protect":350,
               "health":42000,
               "spec":0,
               "perks":{
                  "damage_f":3,
                  "damage_p":3,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "poison_res":3
               },
               "name":"Чистильщик"
            };
         }
         if(param1.id == "Патриарх")
         {
            _loc2_.weapons = {
               "multip17":this.gfr(100),
               "infinity_rainbow":this.gfr(100),
               "ec_panhammer":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":450,
               "protect":400,
               "health":48000,
               "spec":0,
               "perks":{
                  "god_of_war":6,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "ap_shots":3
               },
               "name":"Патриарх"
            };
         }
         if(param1.id == "Папа Джеймс")
         {
            _loc2_.weapons = {
               "multip83":this.gfr(100),
               "skyfire":this.gfr(100),
               "ec_panhammer":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":500,
               "protect":500,
               "health":54000,
               "spec":0,
               "perks":{
                  "god_of_war":8,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Папа Джеймс"
            };
         }
         if(param1.id == "Принц Дамаскин")
         {
            _loc2_.weapons = {
               "kenton_bazooka":this.gfr(100),
               "kenton_grenade":this.gfr(100),
               "void_melody":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":550,
               "protect":550,
               "health":60000,
               "spec":0,
               "perks":{
                  "god_of_war":10,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Дамаскин"
            };
         }
         if(param1.id == "Принц Анаксимандр")
         {
            _loc2_.weapons = {
               "kenton_bazooka":this.gfr(100),
               "kenton_grenade":this.gfr(100),
               "void_melody":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":600,
               "protect":600,
               "health":65000,
               "spec":0,
               "perks":{
                  "god_of_war":10,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Анаксимандр"
            };
         }
         if(param1.id == "Принц Алкидамант")
         {
            _loc2_.weapons = {
               "kenton_bazooka":this.gfr(100),
               "kenton_grenade":this.gfr(100),
               "void_melody":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":630,
               "protect":630,
               "health":72000,
               "spec":0,
               "perks":{
                  "god_of_war":10,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Алкидамант"
            };
         }
         if(param1.id == "Принц Энесидем")
         {
            _loc2_.weapons = {
               "kenton_bazooka":this.gfr(100),
               "kenton_grenade":this.gfr(100),
               "void_melody":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":650,
               "protect":650,
               "health":80000,
               "spec":0,
               "perks":{
                  "god_of_war":10,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Энесидем"
            };
         }
         if(param1.id == "Принц Аркесилай")
         {
            _loc2_.weapons = {
               "kenton_bazooka":this.gfr(100),
               "kenton_grenade":this.gfr(100),
               "void_melody":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":675,
               "protect":675,
               "health":88000,
               "spec":0,
               "perks":{
                  "god_of_war":10,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Аркесилай"
            };
         }
         if(param1.id == "Принц Маллансон")
         {
            _loc2_.weapons = {
               "kenton_bazooka":this.gfr(100),
               "kenton_grenade":this.gfr(100),
               "void_melody":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":800,
               "protect":800,
               "health":130000,
               "spec":0,
               "perks":{
                  "god_of_war":10,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Маллансон"
            };
         }
         if(param1.id == "Принц Деливрон")
         {
            _loc2_.weapons = {
               "kenton_bazooka":this.gfr(100),
               "kenton_grenade":this.gfr(100),
               "void_melody":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":850,
               "protect":859,
               "health":200000,
               "spec":0,
               "perks":{
                  "god_of_war":10,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Деливрон"
            };
         }
         if(param1.id == "Принц Арагон")
         {
            _loc2_.weapons = {
               "kenton_bazooka":this.gfr(100),
               "kenton_grenade":this.gfr(100),
               "void_melody":this.gfr(100)
            };
            _loc2_.worm1 = {
               "attack":900,
               "protect":900,
               "health":290000,
               "spec":0,
               "perks":{
                  "god_of_war":10,
                  "luck":3,
                  "luck2":3,
                  "best_crit":3,
                  "dmg_thr":10,
                  "regeneration":3,
                  "ap_shots":3,
                  "absorb":3
               },
               "name":"Принц Арагон"
            };
         }
         _loc2_.weapons["skip_go"] = this.gfr(100);
         return _loc2_;
      }
      
      public function get_weapon_flags(param1:String, param2:Number) : Object
      {
         var _loc3_:* = undefined;
         var _loc4_:* = false;
         if(param2 == 1)
         {
            _loc4_ = true;
         }
         var _loc5_:*;
         (_loc5_ = {
            "wid":"",
            "wptype":"",
            "crit":0,
            "ALLOWLUCK":true,
            "w_bounce":0.4,
            "w_seconds":3000,
            "defaultvx":0,
            "defaultvy":0,
            "FRAME":24,
            "SPECIALFRAME":0,
            "SOUND":"",
            "FORCE":false,
            "FULLVECTOR":false,
            "HALFVECTOR":false,
            "PARTVECTOR":false,
            "ROPEVECTOR":false,
            "ALLOWCROSSHAIR":false,
            "ALLOWLASERSIGHT":false,
            "TAKEMOVE":false,
            "NOESCAPE":false,
            "FROMJETPACK":false,
            "FROMJUMP":false,
            "NOWAITFORREADY":false,
            "THROWING":false,
            "ALLOWSETTIME":false,
            "ALLOWSETBOUNCE":false,
            "MAKEPROJECTILE":false,
            "MULTIPLESHOT":false,
            "SHOTSAMOUNT":1,
            "ONFALLINGONLY":false,
            "AUTOONFALLING":false,
            "IMPACT":false,
            "MOUSECONTROL":false,
            "HMISSILE_TYPE":false,
            "TELEPORT_TYPE":false,
            "SPECIAL":"",
            "NOHIDINGWEAPON":false,
            "INSTANTTHINK":false,
            "BULLETAMOUNT":0,
            "BULLETINTERVAL":0,
            "IDLEANIMATE":false,
            "AUTOLASER":0,
            "STRIKEAMOUNT":5
         }).wid = param1;
         _loc5_.wptype = this.WEAPONS_DEF[param1].wptype;
         _loc5_.wpclass = this.WEAPONS_DEF[param1].wpclass;
         _loc5_.crit = this.WEAPONS_DEF[param1].crit;
         _loc5_.unfail = this.WEAPONS_DEF[param1].unfail;
         _loc5_.spec_mod = this.WEAPONS_DEF[param1].spec_mod;
         _loc5_.ap_mod = this.WEAPONS_DEF[param1].ap_mod;
         if(param1 == "bazooka" || param1 == "unfail_bazooka" || param1 == "fire_bazooka" || param1 == "poison_bazooka" || param1 == "ap_bazooka" || param1 == "howitzer" || param1 == "upg_mortar" || param1 == "nuclear_bomb" || param1 == "nuclear_bomb2" || param1 == "ap_bazooka2" || param1 == "rj46" || param1 == "multip14" || param1 == "multip17" || param1 == "multip83" || param1 == "kenton_bazooka")
         {
            _loc5_.FORCE = true;
            _loc5_.FULLVECTOR = true;
            _loc5_.ALLOWCROSSHAIR = true;
            _loc5_.TAKEMOVE = true;
            _loc5_.MAKEPROJECTILE = true;
            _loc5_.SOUND = "fire";
         }
         if(param1 == "grenade" || param1 == "unfail_grenade" || param1 == "plasma_grenade" || param1 == "pulse_grenade" || param1 == "holy_hand_grenade" || param1 == "super_hhg" || param1 == "cluster_bomb" || param1 == "unfail_cluster_bomb" || param1 == "putty_grenade" || param1 == "molotov" || param1 == "banana_bomb" || param1 == "unfail_banana_bomb" || param1 == "super_banana_bomb" || param1 == "mega_banana_bomb" || param1 == "dl19" || param1 == "gravity_grenade" || param1 == "rainbow_burst" || param1 == "infinity_rainbow" || param1 == "skyfire" || param1 == "kenton_grenade")
         {
            _loc5_.FORCE = true;
            _loc5_.FULLVECTOR = true;
            _loc5_.ALLOWCROSSHAIR = true;
            _loc5_.TAKEMOVE = true;
            _loc5_.MAKEPROJECTILE = true;
            _loc5_.THROWING = true;
            if(param1 != "molotov" && param1 != "gravity_grenade" && param1 != "holy_hand_grenade" && param1 != "putty_grenade")
            {
               _loc5_.ALLOWSETTIME = true;
               _loc5_.ALLOWSETBOUNCE = true;
            }
            _loc5_.SOUND = "throwing";
         }
         if(param1 == "mortar")
         {
            _loc5_.defaultvx = 16;
            _loc5_.defaultvy = 16;
            _loc5_.FULLVECTOR = true;
            _loc5_.ALLOWCROSSHAIR = true;
            _loc5_.TAKEMOVE = true;
            _loc5_.MAKEPROJECTILE = true;
            _loc5_.SOUND = "fire";
         }
         if(param1 == "multi_bazooka")
         {
            _loc5_.defaultvx = 16;
            _loc5_.defaultvy = 16;
            _loc5_.FULLVECTOR = true;
            _loc5_.ALLOWCROSSHAIR = true;
            _loc5_.TAKEMOVE = true;
            _loc5_.MAKEPROJECTILE = true;
            _loc5_.MULTIPLESHOT = true;
            _loc5_.SHOTSAMOUNT = 4;
            _loc5_.SOUND = "fire";
         }
         if(param1 == "mine" || param1 == "unfail_mine" || param1 == "fire_mine" || param1 == "plasma_mine" || param1 == "pulse_mine" || param1 == "nuclear_mine" || param1 == "dynamite" || param1 == "unfail_dynamite" || param1 == "dynamite_bunch" || param1 == "sheep" || param1 == "unfail_sheep" || param1 == "mine_sheep" || param1 == "mine_sheep2" || param1 == "old_woman" || param1 == "unfail_old_woman" || param1 == "fire_sheep" || param1 == "poison_sheep")
         {
            _loc5_.defaultvx = -1;
            _loc5_.defaultvy = -1;
            _loc5_.TAKEMOVE = true;
            _loc5_.MAKEPROJECTILE = true;
            _loc5_.THROWING = true;
            _loc5_.SOUND = "throwing";
         }
         if(param1 == "prod" || param1 == "shocker")
         {
            _loc5_.TAKEMOVE = true;
            _loc5_.SPECIAL = "prod";
         }
         if(param1 == "firepunch")
         {
            _loc5_.FRAME = 28;
            _loc5_.FROMJUMP = true;
            _loc5_.TAKEMOVE = true;
            _loc5_.SPECIAL = "firepunch";
         }
         if(param1 == "fireball")
         {
            _loc5_.FRAME = 28;
            _loc5_.defaultvx = -3;
            _loc5_.defaultvy = 0;
            _loc5_.FROMJUMP = true;
            _loc5_.TAKEMOVE = true;
            _loc5_.MAKEPROJECTILE = true;
            _loc5_.SPECIAL = "fireball";
         }
         if(param1 == "kamikaze")
         {
            _loc5_.FRAME = 28;
            _loc5_.TAKEMOVE = true;
            _loc5_.NOESCAPE = true;
            _loc5_.SPECIAL = "kamikaze";
         }
         if(param1 == "baseball_bat" || param1 == "power_bat")
         {
            _loc5_.FULLVECTOR = true;
            _loc5_.ALLOWCROSSHAIR = true;
            _loc5_.TAKEMOVE = true;
            _loc5_.SPECIAL = "bat";
            _loc5_.SOUND = "baseball_bat";
         }
         if(param1 == "battle_axe" || param1 == "power_axe")
         {
            _loc5_.FRAME = 31;
            _loc5_.TAKEMOVE = true;
            _loc5_.SPECIAL = "axe";
         }
         if(param1 == "blow_torch")
         {
            _loc5_.FRAME = 33;
            _loc5_.PARTVECTOR = true;
            _loc5_.ALLOWCROSSHAIR = true;
            _loc5_.TAKEMOVE = true;
            _loc5_.SPECIAL = "blow_torch";
            _loc5_.SOUND = "blow_torch";
         }
         if(param1 == "pneumatic_drill")
         {
            _loc5_.FRAME = 34;
            _loc5_.TAKEMOVE = true;
            _loc5_.SPECIAL = "pneumatic_drill";
            _loc5_.SOUND = "drill";
         }
         if(param1 == "parachute")
         {
            _loc5_.FRAME = 25;
            _loc5_.FROMJUMP = true;
            _loc5_.ONFALLINGONLY = true;
            _loc5_.AUTOONFALLING = true;
            _loc5_.SPECIAL = "parachute";
         }
         if(param1 == "pistol" || param1 == "uzi" || param1 == "unfail_uzi" || param1 == "peacemaker" || param1 == "hearts_ace" || param1 == "minigun" || param1 == "unfail_minigun" || param1 == "air_minigun" || param1 == "bozar" || param1 == "bozar16" || param1 == "bozar24s" || param1 == "avenger" || param1 == "sniper_rifle" || param1 == "rad_rifle")
         {
            _loc5_.defaultvx = 40;
            _loc5_.defaultvy = 40;
            _loc5_.FULLVECTOR = true;
            _loc5_.ALLOWCROSSHAIR = true;
            _loc5_.ALLOWLASERSIGHT = true;
            if(param1 == "bozar" || param1 == "bozar16" || param1 == "bozar24s")
            {
               _loc5_.AUTOLASER = 5;
            }
            if(param1 == "sniper_rifle" || param1 == "rad_rifle")
            {
               _loc5_.AUTOLASER = 5;
            }
            _loc5_.TAKEMOVE = true;
            _loc5_.SPECIAL = "bullets";
            if(param1 == "pistol")
            {
               _loc5_.BULLETINTERVAL = 640;
               _loc5_.BULLETAMOUNT = 5;
            }
            else if(param1 == "uzi" || param1 == "unfail_uzi")
            {
               _loc5_.BULLETINTERVAL = 300;
               _loc5_.BULLETAMOUNT = 10;
            }
            else if(param1 == "minigun" || param1 == "unfail_minigun")
            {
               _loc5_.BULLETINTERVAL = 160;
               _loc5_.BULLETAMOUNT = 20;
            }
            else if(param1 == "air_minigun")
            {
               _loc5_.BULLETINTERVAL = 100;
               _loc5_.BULLETAMOUNT = 30;
            }
            else if(param1 == "bozar" || param1 == "bozar16" || param1 == "bozar24s")
            {
               _loc5_.BULLETINTERVAL = 100;
               _loc5_.BULLETAMOUNT = 20;
            }
            else if(param1 == "peacemaker")
            {
               _loc5_.BULLETINTERVAL = 640;
               _loc5_.BULLETAMOUNT = 2;
            }
            else if(param1 == "hearts_ace")
            {
               _loc5_.BULLETINTERVAL = 640;
               _loc5_.BULLETAMOUNT = 2;
            }
            else if(param1 == "avenger")
            {
               _loc5_.BULLETINTERVAL = 100;
               _loc5_.BULLETAMOUNT = 30;
            }
            else if(param1 == "sniper_rifle")
            {
               _loc5_.BULLETINTERVAL = 640;
               _loc5_.BULLETAMOUNT = 1;
            }
            else if(param1 == "rad_rifle")
            {
               _loc5_.BULLETINTERVAL = 640;
               _loc5_.BULLETAMOUNT = 1;
            }
            if(_loc4_)
            {
               _loc5_.BULLETAMOUNT += this.get_bullet_amount(param1);
            }
         }
         if(param1 == "beretta" || param1 == "pulse_pistol" || param1 == "luiston" || param1 == "de_lameter" || param1 == "laser_at_rifle" || param1 == "plasma_at_rifle" || param1 == "ultra_rifle" || param1 == "ec_caws" || param1 == "ec_panhammer" || param1 == "void_melody" || param1 == "annihilator")
         {
            _loc5_.defaultvx = 40;
            _loc5_.defaultvy = 40;
            if(param1 == "laser_at_rifle" || param1 == "plasma_at_rifle")
            {
               _loc5_.AUTOLASER = 5;
            }
            if(param1 == "ultra_rifle" || param1 == "annihilator")
            {
               _loc5_.AUTOLASER = 6;
            }
            _loc5_.FULLVECTOR = true;
            _loc5_.ALLOWCROSSHAIR = true;
            _loc5_.ALLOWLASERSIGHT = true;
            _loc5_.TAKEMOVE = true;
            _loc5_.MAKEPROJECTILE = true;
            if(param1 == "sniper_rifle")
            {
               _loc5_.SOUND = "sniper";
            }
            if(param1 == "rad_rifle")
            {
               _loc5_.SOUND = "sniper";
            }
            if(param1 == "beretta")
            {
               _loc5_.SOUND = "pistol";
            }
            if(param1 == "gauss_pistol")
            {
               _loc5_.SOUND = "gauss_pistol";
            }
            if(param1 == "gauss_rifle")
            {
               _loc5_.SOUND = "gauss_rifle";
            }
            if(param1 == "unfail_gauss_rifle")
            {
               _loc5_.SOUND = "gauss_rifle";
            }
            if(param1 == "pulse_pistol")
            {
               _loc5_.SOUND = "pulse_pistol";
            }
            if(param1 == "luiston")
            {
               _loc5_.SOUND = "luiston";
            }
            if(param1 == "de_lameter")
            {
               _loc5_.SOUND = "de_lameter";
            }
            if(param1 == "laser_at_rifle")
            {
               _loc5_.SOUND = "laser_at_rifle";
            }
            if(param1 == "plasma_at_rifle")
            {
               _loc5_.SOUND = "plasma_at_rifle";
            }
            if(param1 == "ultra_rifle")
            {
               _loc5_.SOUND = "ultra_rifle";
            }
            if(param1 == "ec_caws" || param1 == "ec_panhammer" || param1 == "void_melody" || param1 == "annihilator")
            {
               _loc5_.SOUND = "ec";
            }
         }
         if(param1 == "shotgun" || param1 == "hunting_rifle")
         {
            _loc5_.defaultvx = 40;
            _loc5_.defaultvy = 40;
            _loc5_.FULLVECTOR = true;
            _loc5_.ALLOWCROSSHAIR = true;
            _loc5_.ALLOWLASERSIGHT = true;
            _loc5_.TAKEMOVE = true;
            _loc5_.MAKEPROJECTILE = true;
            _loc5_.MULTIPLESHOT = true;
            _loc5_.SHOTSAMOUNT = 2;
            _loc5_.SOUND = "shotgun_3x";
            if(_loc4_)
            {
               _loc5_.SHOTSAMOUNT += this.get_bullet_amount(param1);
            }
         }
         if(param1 == "air_strike" || param1 == "napalm_strike" || param1 == "mine_strike" || param1 == "banana_strike" || param1 == "holy_strike" || param1 == "orbit_strike")
         {
            _loc5_.SPECIAL = "air_strike";
            _loc5_.MOUSECONTROL = true;
            _loc5_.TAKEMOVE = true;
            if(param1 == "banana_strike" || param1 == "holy_strike")
            {
               _loc5_.STRIKEAMOUNT = 3;
            }
            if(param1 != "orbit_strike")
            {
               _loc5_.SOUND = "air_strike";
            }
            else
            {
               _loc5_.SOUND = "orbit";
            }
         }
         if(param1 == "skip_go")
         {
            _loc5_.FRAME = 29;
            _loc5_.TAKEMOVE = true;
            _loc5_.IDLEANIMATE = true;
            _loc5_.NOESCAPE = true;
         }
         if(param1 == "laser_sight" || param1 == "low_gravity" || param1 == "fast_walk" || param1 == "add_time")
         {
            _loc5_.FRAME = 25;
            _loc5_.INSTANTTHINK = true;
         }
         if(param1 == "girder" || param1 == "girder_pack")
         {
            _loc5_.FRAME = 25;
            _loc5_.SPECIAL = "girder";
            _loc5_.MOUSECONTROL = true;
            _loc5_.TAKEMOVE = true;
            if(param1 == "girder_pack")
            {
               _loc5_.MULTIPLESHOT = true;
               _loc5_.SHOTSAMOUNT = 5;
            }
            _loc5_.SOUND = "girder";
         }
         if(param1 == "jet_pack" || param1 == "upg_jet_pack" || param1 == "ag_pack")
         {
            _loc5_.FRAME = 25;
            _loc5_.SPECIAL = "jet_pack";
            _loc5_.NOHIDINGWEAPON = true;
         }
         if(param1 == "teleport" || param1 == "upg_teleport" || param1 == "upg_teleport2")
         {
            _loc5_.SPECIAL = "teleport";
            _loc5_.NOHIDINGWEAPON = true;
            _loc5_.MOUSECONTROL = true;
            _loc5_.TAKEMOVE = param1 == "teleport";
            _loc5_.SOUND = "teleport";
         }
         if(param1 == "choose_worm")
         {
            _loc5_.FRAME = 25;
            _loc5_.SPECIAL = "choose_worm";
         }
         if(param1 == "medikit")
         {
            _loc5_.FRAME = 25;
            _loc5_.INSTANTTHINK = true;
         }
         if(param1 == "super_medikit")
         {
            _loc5_.FRAME = 25;
            _loc5_.INSTANTTHINK = true;
         }
         if(param1 == "invisibility")
         {
            _loc5_.FRAME = 25;
            _loc5_.INSTANTTHINK = true;
         }
         if(param1 == "gauss_pistol2")
         {
            _loc5_.defaultvx = 40;
            _loc5_.defaultvy = 40;
            _loc5_.FULLVECTOR = true;
            _loc5_.ALLOWCROSSHAIR = true;
            _loc5_.ALLOWLASERSIGHT = true;
            _loc5_.TAKEMOVE = true;
            _loc5_.MAKEPROJECTILE = true;
            _loc5_.MULTIPLESHOT = true;
            _loc5_.SHOTSAMOUNT = 2;
            _loc5_.SOUND = "gauss_pistol2";
            if(_loc4_)
            {
               _loc5_.SHOTSAMOUNT += this.get_bullet_amount(param1);
            }
         }
         if(param1 == "laser_pistol" || param1 == "laser_pistol2" || param1 == "laser_rifle" || param1 == "unfail_laser_rifle" || param1 == "laser_minigun" || param1 == "plasma_pistol" || param1 == "plasma_rifle" || param1 == "unfail_plasma_rifle" || param1 == "plasma_minigun" || param1 == "gauss_pistol" || param1 == "gauss_rifle" || param1 == "unfail_gauss_rifle" || param1 == "gauss_minigun" || param1 == "turbo_rifle" || param1 == "vindicator")
         {
            _loc5_.defaultvx = 40;
            _loc5_.defaultvy = 40;
            _loc5_.FULLVECTOR = true;
            _loc5_.ALLOWCROSSHAIR = true;
            _loc5_.ALLOWLASERSIGHT = true;
            _loc5_.TAKEMOVE = true;
            _loc5_.SPECIAL = "bullets";
            if(param1 == "vindicator")
            {
               _loc5_.AUTOLASER = 6;
            }
            if(param1 == "gauss_rifle" || param1 == "unfail_gauss_rifle")
            {
               _loc5_.AUTOLASER = 6;
            }
            if(param1 == "laser_pistol" || param1 == "plasma_pistol")
            {
               _loc5_.BULLETINTERVAL = 640;
               _loc5_.BULLETAMOUNT = 5;
            }
            else if(param1 == "laser_pistol2")
            {
               _loc5_.BULLETINTERVAL = 640;
               _loc5_.BULLETAMOUNT = 7;
            }
            else if(param1 == "laser_rifle" || param1 == "unfail_laser_rifle" || param1 == "plasma_rifle" || param1 == "unfail_plasma_rifle")
            {
               _loc5_.BULLETINTERVAL = 300;
               _loc5_.BULLETAMOUNT = 10;
            }
            else if(param1 == "laser_minigun" || param1 == "plasma_minigun")
            {
               _loc5_.BULLETINTERVAL = 160;
               _loc5_.BULLETAMOUNT = 20;
            }
            else if(param1 == "gauss_pistol")
            {
               _loc5_.BULLETINTERVAL = 640;
               _loc5_.BULLETAMOUNT = 1;
            }
            else if(param1 == "gauss_rifle")
            {
               _loc5_.BULLETINTERVAL = 640;
               _loc5_.BULLETAMOUNT = 1;
            }
            else if(param1 == "unfail_gauss_rifle")
            {
               _loc5_.BULLETINTERVAL = 640;
               _loc5_.BULLETAMOUNT = 1;
            }
            else if(param1 == "gauss_minigun")
            {
               _loc5_.BULLETINTERVAL = 160;
               _loc5_.BULLETAMOUNT = 10;
            }
            else if(param1 == "turbo_rifle" || param1 == "vindicator")
            {
               _loc5_.BULLETINTERVAL = 300;
               _loc5_.BULLETAMOUNT = 5;
            }
            if(_loc4_)
            {
               _loc5_.BULLETAMOUNT += this.get_bullet_amount(param1);
            }
         }
         return _loc5_;
      }
      
      public function get_object_flags(param1:String) : Object
      {
         var _loc2_:* = undefined;
         _loc2_ = {
            "W":6,
            "H":6,
            "ADV_W":-1,
            "ADV_H":-1,
            "FLAT":false,
            "ULTRA":false,
            "GRAVITY":false,
            "WIND":false,
            "DIAMETER":0,
            "DAMAGE":0,
            "EXPLODEDISPLACE":0,
            "REFLECT":false,
            "ADVANCEDCALC":false,
            "GRAVITYMULTIPLY":1,
            "WINDMULTIPLY":1,
            "IMPACTMULTIPLY":1,
            "INITEXPLODE":false,
            "INSTANTEXPLODE":false,
            "TIMINGEXPLODE":false,
            "RESTINGEXPLODE":false,
            "FUSETIMEOUT":0,
            "TIMEOUT":0,
            "MULTIPLEXPLOSIONS":0,
            "VROTATING":false,
            "SROTATING":false,
            "DIRECTROTATING":false,
            "BOUNCE_X":0.7,
            "BOUNCE_Y":0.2,
            "SPEEDVX":0,
            "SPEEDVY":0,
            "CONSTANTSPEED":false,
            "LESSSPEEDDECREASE":false,
            "FLATPROJECTILE":false,
            "MOMENTAL":false,
            "SHOW_TIMER":false,
            "EXHAUST":false,
            "DOUBLEEXHAUST":false,
            "EXHAUSTONHIT":false,
            "EXHAUSTTYPE":"",
            "EXHAUSTTIME":1,
            "SPECIAL":"",
            "BASESPEED":0,
            "BREAKING":false,
            "BREAKINGTYPE":"",
            "BREAKINGAMOUNT":0,
            "POISONONEXPLODE":false,
            "POISONONEXPLODERAD":false,
            "POISONAMOUNT":10,
            "FIREONEXPLODE":false,
            "FIREGENRANDOMSPEED":false,
            "FIREAMOUNT":0,
            "NAPALMONEXPLODE":false,
            "MOVING":false,
            "MOVINGJUMP":false,
            "JUMPHEIGHT":-6,
            "NOEXPLODESOUND":false,
            "NOEXPLODEANIMATION":false,
            "NOLANDSCAPEMODIFY":false,
            "WAVEEXPLODE":false,
            "DAMAGEWAVE":false,
            "KENTONWAVE":false,
            "DAMAGEWAVEDMG":0,
            "PARALYZING":false,
            "PARATIME":0,
            "PUTTY":false,
            "ANNIHILATOR":false
         };
         if(param1 == "worm")
         {
            _loc2_.W = 6;
            _loc2_.H = 16;
            _loc2_.GRAVITY = true;
         }
         if(param1 == "fire" || param1 == "napalm_fire")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.NOEXPLODESOUND = true;
            _loc2_.NOEXPLODEANIMATION = true;
            _loc2_.NOLANDSCAPEMODIFY = true;
         }
         if(param1 == "bazooka" || param1 == "unfail_bazooka" || param1 == "fire_bazooka" || param1 == "poison_bazooka" || param1 == "ap_bazooka" || param1 == "howitzer" || param1 == "multi_bazooka" || param1 == "nuclear_bomb" || param1 == "nuclear_bomb2" || param1 == "ap_bazooka2" || param1 == "rj46" || param1 == "multip14" || param1 == "multip17" || param1 == "multip83" || param1 == "kenton_bazooka")
         {
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 50;
            _loc2_.GRAVITY = true;
            _loc2_.WIND = true;
            _loc2_.EXHAUST = true;
            _loc2_.EXHAUSTTYPE = "standard_exhaust";
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.VROTATING = true;
            if(param1 == "fire_bazooka")
            {
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
            }
            if(param1 == "poison_bazooka")
            {
               _loc2_.POISONONEXPLODE = true;
            }
            if(param1 == "ap_bazooka")
            {
               _loc2_.MULTIPLEXPLOSIONS = 3;
            }
            if(param1 == "ap_bazooka2")
            {
               _loc2_.MULTIPLEXPLOSIONS = 5;
               _loc2_.DAMAGE = 140;
            }
            if(param1 == "nuclear_bomb")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 600;
               _loc2_.POISONONEXPLODE = true;
            }
            if(param1 == "nuclear_bomb2")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 900;
               _loc2_.POISONONEXPLODERAD = true;
            }
            if(param1 == "howitzer")
            {
               _loc2_.DIAMETER = 100;
               _loc2_.DAMAGE = 3360;
            }
            if(param1 == "rj46")
            {
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.DIAMETER = 150;
               _loc2_.DAMAGE = 200;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 4;
            }
            if(param1 == "multip14")
            {
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.DIAMETER = 150;
               _loc2_.DAMAGE = 250;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 4;
               _loc2_.POISONONEXPLODERAD = true;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
            }
            if(param1 == "multip17")
            {
               _loc2_.NAPALMONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.DIAMETER = 150;
               _loc2_.DAMAGE = 300;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 4;
               _loc2_.POISONONEXPLODERAD = true;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
               _loc2_.MULTIPLEXPLOSIONS = 3;
               _loc2_.DAMAGEWAVE = true;
               _loc2_.DAMAGEWAVEDMG = 60;
            }
            if(param1 == "multip83")
            {
               _loc2_.NAPALMONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.DIAMETER = 150;
               _loc2_.DAMAGE = 600;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 6;
               _loc2_.POISONONEXPLODERAD = true;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 3;
               _loc2_.MULTIPLEXPLOSIONS = 4;
               _loc2_.DAMAGEWAVE = true;
               _loc2_.DAMAGEWAVEDMG = 70;
            }
            if(param1 == "kenton_bazooka")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 1200;
               _loc2_.KENTONWAVE = true;
               _loc2_.DAMAGEWAVEDMG = 50;
            }
            _loc2_.ADVANCEDCALC = true;
         }
         if(param1 == "grenade" || param1 == "unfail_grenade" || param1 == "plasma_grenade" || param1 == "pulse_grenade" || param1 == "cluster_bomb" || param1 == "unfail_cluster_bomb" || param1 == "putty_grenade" || param1 == "banana_bomb" || param1 == "unfail_banana_bomb" || param1 == "super_banana_bomb" || param1 == "mega_banana_bomb" || param1 == "dl19" || param1 == "rainbow_burst" || param1 == "infinity_rainbow" || param1 == "skyfire" || param1 == "kenton_grenade")
         {
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 50;
            if(param1 == "cluster_bomb" || param1 == "unfail_cluster_bomb")
            {
               _loc2_.DAMAGE = 15;
            }
            if(param1 == "banana_bomb" || param1 == "unfail_banana_bomb" || param1 == "super_banana_bomb" || param1 == "mega_banana_bomb")
            {
               _loc2_.DAMAGE = 75;
               _loc2_.DIAMETER = 150;
            }
            _loc2_.GRAVITY = true;
            _loc2_.REFLECT = true;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.SHOW_TIMER = true;
            if(param1 == "plasma_grenade")
            {
               _loc2_.DAMAGE = 110;
            }
            if(param1 == "pulse_grenade")
            {
               _loc2_.DAMAGE = 110;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
            }
            if(param1 == "dl19")
            {
               _loc2_.DAMAGE = 200;
               _loc2_.DIAMETER = 150;
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 4;
            }
            if(param1 == "rainbow_burst")
            {
               _loc2_.DAMAGE = 250;
               _loc2_.DIAMETER = 150;
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 4;
               _loc2_.POISONONEXPLODERAD = true;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
            }
            if(param1 == "infinity_rainbow")
            {
               _loc2_.DAMAGE = 300;
               _loc2_.DIAMETER = 150;
               _loc2_.NAPALMONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 4;
               _loc2_.POISONONEXPLODERAD = true;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
               _loc2_.DAMAGEWAVE = true;
               _loc2_.DAMAGEWAVEDMG = 50;
            }
            if(param1 == "skyfire")
            {
               _loc2_.DAMAGE = 800;
               _loc2_.DIAMETER = 150;
               _loc2_.NAPALMONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "rj_bomblet";
               _loc2_.BREAKINGAMOUNT = 6;
               _loc2_.POISONONEXPLODERAD = true;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 3;
               _loc2_.DAMAGEWAVE = true;
               _loc2_.DAMAGEWAVEDMG = 80;
            }
            if(param1 == "kenton_grenade")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 1200;
               _loc2_.KENTONWAVE = true;
               _loc2_.DAMAGEWAVEDMG = 50;
            }
            if(param1 == "cluster_bomb" || param1 == "unfail_cluster_bomb")
            {
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "bomblet";
               _loc2_.BREAKINGAMOUNT = 5;
            }
            if(param1 == "banana_bomb" || param1 == "unfail_banana_bomb" || param1 == "super_banana_bomb")
            {
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "banana";
               _loc2_.BREAKINGAMOUNT = 5;
               if(param1 == "banana_bomb" || param1 == "unfail_banana_bomb")
               {
                  _loc2_.BREAKINGAMOUNT = 3;
               }
            }
            if(param1 == "mega_banana_bomb")
            {
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "breaking_banana";
               _loc2_.BREAKINGAMOUNT = 4;
            }
            if(param1 == "putty_grenade")
            {
               _loc2_.DAMAGE = 100;
               _loc2_.PUTTY = true;
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "putty_bomblet";
               _loc2_.BREAKINGAMOUNT = 8;
               _loc2_.TIMEOUT = 8000;
            }
         }
         if(param1 == "molotov")
         {
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 45;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.FIREONEXPLODE = true;
            _loc2_.FIREAMOUNT = 30;
         }
         if(param1 == "gravity_grenade")
         {
            _loc2_.DIAMETER = 600;
            _loc2_.DAMAGE = 1;
            _loc2_.GRAVITY = true;
            _loc2_.REFLECT = true;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.SHOW_TIMER = true;
            _loc2_.NOLANDSCAPEMODIFY = true;
            _loc2_.EXPLODEDISPLACE = 50;
            _loc2_.IMPACTMULTIPLY = 0.65;
            _loc2_.WAVEEXPLODE = true;
         }
         if(param1 == "holy_hand_grenade" || param1 == "super_hhg" || param1 == "holy_strike")
         {
            _loc2_.DIAMETER = 200;
            _loc2_.DAMAGE = 160;
            _loc2_.GRAVITY = true;
            _loc2_.SROTATING = true;
            if(param1 == "holy_strike")
            {
               _loc2_.INSTANTEXPLODE = true;
               _loc2_.ADVANCEDCALC = true;
            }
            else
            {
               _loc2_.REFLECT = true;
               _loc2_.RESTINGEXPLODE = true;
            }
            if(param1 == "super_hhg")
            {
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
            }
         }
         if(param1 == "mortar" || param1 == "upg_mortar")
         {
            _loc2_.DIAMETER = 50;
            _loc2_.DAMAGE = 15;
            if(param1 == "upg_mortar")
            {
               _loc2_.DAMAGE = 25;
            }
            _loc2_.GRAVITY = true;
            _loc2_.EXHAUST = true;
            _loc2_.EXHAUSTTYPE = "standard_exhaust";
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.VROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.BREAKING = true;
            _loc2_.BREAKINGTYPE = "bomblet";
            _loc2_.BREAKINGAMOUNT = 5;
         }
         if(param1 == "pistol" || param1 == "uzi" || param1 == "unfail_uzi" || param1 == "hunting_rifle" || param1 == "sniper_rifle" || param1 == "rad_rifle" || param1 == "peacemaker" || param1 == "shotgun" || param1 == "minigun" || param1 == "unfail_minigun" || param1 == "air_minigun" || param1 == "bozar" || param1 == "avenger" || param1 == "beretta" || param1 == "hearts_ace" || param1 == "bozar16" || param1 == "bozar24s")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            if(param1 == "pistol")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 6;
            }
            else if(param1 == "uzi" || param1 == "unfail_uzi")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 5;
            }
            else if(param1 == "sniper_rifle" || param1 == "peacemaker")
            {
               _loc2_.DIAMETER = 50;
               _loc2_.DAMAGE = 250;
            }
            else if(param1 == "hearts_ace")
            {
               _loc2_.DIAMETER = 50;
               _loc2_.DAMAGE = 300;
            }
            else if(param1 == "rad_rifle")
            {
               _loc2_.DIAMETER = 50;
               _loc2_.DAMAGE = 900;
            }
            else if(param1 == "shotgun")
            {
               _loc2_.DIAMETER = 50;
               _loc2_.DAMAGE = 25;
            }
            else if(param1 == "hunting_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 8;
            }
            else if(param1 == "minigun" || param1 == "unfail_minigun")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 4;
            }
            else if(param1 == "air_minigun")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 12;
            }
            else if(param1 == "bozar")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 26;
            }
            else if(param1 == "bozar16")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 100;
            }
            else if(param1 == "bozar24s")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 125;
            }
            else if(param1 == "avenger")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 40;
            }
            else if(param1 == "beretta")
            {
               _loc2_.DIAMETER = 50;
               _loc2_.DAMAGE = 75;
            }
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.VROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
            if(param1 == "hunting_rifle")
            {
               _loc2_.IMPACTMULTIPLY = 0.25;
            }
         }
         if(param1 == "air_strike")
         {
            _loc2_.DIAMETER = 50;
            _loc2_.DAMAGE = 25;
            _loc2_.GRAVITY = true;
            _loc2_.EXHAUST = true;
            _loc2_.EXHAUSTTYPE = "standard_exhaust";
            _loc2_.EXHAUSTTIME = 4;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.VROTATING = true;
            _loc2_.ADVANCEDCALC = true;
         }
         if(param1 == "mine_strike")
         {
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 50;
            _loc2_.GRAVITY = true;
            _loc2_.REFLECT = true;
            _loc2_.SROTATING = true;
            _loc2_.TIMEOUT = 3000;
            if(this.player.perks["miner"])
            {
               _loc2_.TIMEOUT = 1000 * this.get_perk_effect("miner",this.player.perks.miner,"") + 1;
            }
         }
         if(param1 == "banana_strike")
         {
            _loc2_.DAMAGE = 75;
            _loc2_.DIAMETER = 150;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.SHOW_TIMER = true;
            _loc2_.BREAKING = true;
            _loc2_.BREAKINGTYPE = "banana";
            _loc2_.BREAKINGAMOUNT = 3;
            _loc2_.ADVANCEDCALC = true;
         }
         if(param1 == "mine" || param1 == "unfail_mine" || param1 == "fire_mine" || param1 == "plasma_mine" || param1 == "pulse_mine" || param1 == "nuclear_mine")
         {
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 50;
            _loc2_.GRAVITY = true;
            _loc2_.REFLECT = true;
            _loc2_.TIMEOUT = 3000;
            if(this.player.perks["miner"])
            {
               _loc2_.TIMEOUT = 1000 * this.get_perk_effect("miner",this.player.perks.miner,"") + 1;
            }
            _loc2_.SROTATING = true;
            if(param1 == "fire_mine")
            {
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
            }
            if(param1 == "plasma_mine")
            {
               _loc2_.DAMAGE = 110;
            }
            if(param1 == "pulse_mine")
            {
               _loc2_.DAMAGE = 110;
               _loc2_.PARALYZING = true;
               _loc2_.PARATIME = 2;
            }
            if(param1 == "nuclear_mine")
            {
               _loc2_.DIAMETER = 150;
               _loc2_.DAMAGE = 450;
               _loc2_.POISONONEXPLODE = true;
            }
         }
         if(param1 == "dynamite" || param1 == "unfail_dynamite" || param1 == "dynamite_bunch")
         {
            _loc2_.DIAMETER = 150;
            _loc2_.DAMAGE = 75;
            _loc2_.EXPLODEDISPLACE = 18;
            _loc2_.BOUNCE_X = 0;
            _loc2_.BOUNCE_Y = 0.4;
            _loc2_.GRAVITY = true;
            _loc2_.REFLECT = true;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.TIMEOUT = 5000;
            if(param1 == "dynamite_bunch")
            {
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "dynamite_bomblet";
               _loc2_.BREAKINGAMOUNT = 3;
            }
         }
         if(param1 == "sheep" || param1 == "unfail_sheep" || param1 == "fire_sheep" || param1 == "poison_sheep" || param1 == "mine_sheep" || param1 == "mine_sheep2")
         {
            _loc2_.W = 6;
            _loc2_.H = 16;
            _loc2_.DIAMETER = 150;
            _loc2_.DAMAGE = 75;
            _loc2_.EXPLODEDISPLACE = 18;
            _loc2_.GRAVITY = true;
            _loc2_.FUSETIMEOUT = 19000;
            _loc2_.TIMEOUT = 20000;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.CONTROLEXPLODE = true;
            _loc2_.MOVING = true;
            _loc2_.MOVINGJUMP = true;
            if(param1 == "fire_sheep")
            {
               _loc2_.FIREONEXPLODE = true;
               _loc2_.FIREAMOUNT = 30;
            }
            if(param1 == "poison_sheep")
            {
               _loc2_.POISONONEXPLODE = true;
            }
            if(param1 == "mine_sheep")
            {
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "mine";
               _loc2_.BREAKINGAMOUNT = 5;
            }
            if(param1 == "mine_sheep2")
            {
               _loc2_.BREAKING = true;
               _loc2_.BREAKINGTYPE = "plasma_mine";
               _loc2_.BREAKINGAMOUNT = 8;
            }
         }
         if(param1 == "old_woman" || param1 == "unfail_old_woman")
         {
            _loc2_.W = 6;
            _loc2_.H = 16;
            _loc2_.DIAMETER = 150;
            _loc2_.DAMAGE = 75;
            _loc2_.EXPLODEDISPLACE = 18;
            _loc2_.GRAVITY = true;
            _loc2_.FUSETIMEOUT = 19000;
            _loc2_.TIMEOUT = 20000;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.CONTROLEXPLODE = true;
            _loc2_.MOVING = true;
         }
         if(param1 == "fireball")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.ADV_W = 20;
            _loc2_.ADV_H = 20;
            _loc2_.DIAMETER = 15;
            _loc2_.NOLANDSCAPEMODIFY = true;
            _loc2_.DAMAGE = 30;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.DIRECTROTATING = true;
            _loc2_.TIMEOUT = 1152;
            if(this.player.perks["dragonball"])
            {
               _loc2_.TIMEOUT *= this.get_perk_effect("dragonball",this.player.perks.dragonball,"");
            }
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
            _loc2_.IMPACTMULTIPLY = 10;
         }
         if(param1 == "laser_pistol" || param1 == "laser_pistol2" || param1 == "laser_rifle" || param1 == "unfail_laser_rifle" || param1 == "laser_minigun" || param1 == "plasma_pistol" || param1 == "plasma_rifle" || param1 == "unfail_plasma_rifle" || param1 == "plasma_minigun" || param1 == "pulse_pistol" || param1 == "luiston" || param1 == "de_lameter" || param1 == "turbo_rifle" || param1 == "laser_at_rifle" || param1 == "plasma_at_rifle" || param1 == "orbit_strike" || param1 == "ultra_rifle" || param1 == "vindicator")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            if(param1 == "laser_pistol" || param1 == "laser_rifle" || param1 == "unfail_laser_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 24;
            }
            else if(param1 == "laser_pistol2")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 30;
            }
            else if(param1 == "laser_minigun")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 32;
            }
            else if(param1 == "laser_at_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 250;
            }
            else if(param1 == "plasma_pistol" || param1 == "plasma_rifle" || param1 == "unfail_plasma_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 35;
            }
            else if(param1 == "plasma_at_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 450;
            }
            else if(param1 == "plasma_minigun")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 60;
            }
            else if(param1 == "pulse_pistol")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 900;
            }
            else if(param1 == "luiston" || param1 == "orbit_strike")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 1300;
            }
            else if(param1 == "de_lameter")
            {
               _loc2_.DIAMETER = 200;
               _loc2_.DAMAGE = 1300;
               if(this._world.chosen_map != "mission7" && this._world.chosen_map != "mission8" && this._world.chosen_map != "mission9" && this._world.chosen_map != "mission10")
               {
                  _loc2_.MULTIPLEXPLOSIONS = 3;
                  _loc2_.DAMAGE = 1850;
               }
            }
            else if(param1 == "turbo_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 1400;
            }
            else if(param1 == "ultra_rifle" || param1 == "vindicator")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 2000;
               _loc2_.ULTRA = true;
            }
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.VROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
         }
         if(param1 == "gauss_pistol" || param1 == "gauss_pistol2" || param1 == "gauss_rifle" || param1 == "unfail_gauss_rifle" || param1 == "gauss_minigun")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            _loc2_.DIAMETER = 24;
            if(param1 == "gauss_pistol")
            {
               _loc2_.DAMAGE = 350;
            }
            else if(param1 == "gauss_pistol2")
            {
               _loc2_.DAMAGE = 375;
            }
            else if(param1 == "gauss_minigun")
            {
               _loc2_.DAMAGE = 375;
            }
            else if(param1 == "gauss_rifle" || param1 == "unfail_gauss_rifle")
            {
               _loc2_.DIAMETER = 24;
               _loc2_.DAMAGE = 600;
            }
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
         }
         if(param1 == "ec_caws" || param1 == "ec_panhammer")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 2000;
            if(param1 == "ec_panhammer")
            {
               _loc2_.DAMAGE = 2500;
            }
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
         }
         if(param1 == "void_melody")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 15000;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
            _loc2_.KENTONWAVE = true;
            _loc2_.DAMAGEWAVEDMG = 50;
         }
         if(param1 == "annihilator")
         {
            _loc2_.W = 2;
            _loc2_.H = 2;
            _loc2_.DIAMETER = 300;
            _loc2_.DAMAGE = 12000;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.VROTATING = true;
            _loc2_.ADVANCEDCALC = true;
            _loc2_.NOEXPLODESOUND = true;
            _loc2_.ANNIHILATOR = true;
         }
         if(param1 == "bomblet")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 50;
            _loc2_.DAMAGE = 15;
            _loc2_.GRAVITY = true;
            _loc2_.EXHAUST = true;
            _loc2_.EXHAUSTTYPE = "standard_exhaust";
            _loc2_.EXHAUSTTIME = 4;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
         }
         if(param1 == "rj_bomblet")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 85;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
         }
         if(param1 == "banana")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 75;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
         }
         if(param1 == "breaking_banana")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 75;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.BREAKING = true;
            _loc2_.BREAKINGTYPE = "mini_banana";
            _loc2_.BREAKINGAMOUNT = 3;
         }
         if(param1 == "mini_banana")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 50;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
         }
         if(param1 == "dynamite_bomblet")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 150;
            _loc2_.DAMAGE = 75;
            _loc2_.GRAVITY = true;
            _loc2_.INSTANTEXPLODE = true;
            _loc2_.SROTATING = true;
         }
         if(param1 == "putty_bomblet")
         {
            _loc2_.W = 4;
            _loc2_.H = 4;
            _loc2_.DIAMETER = 50;
            _loc2_.DAMAGE = 100;
            _loc2_.GRAVITY = true;
            _loc2_.TIMINGEXPLODE = true;
            _loc2_.SROTATING = true;
            _loc2_.REFLECT = true;
            _loc2_.PUTTY = true;
            _loc2_.TIMEOUT = 3000;
         }
         if(param1 == "worm_explode" || param1 == "worm_explode_100" || param1 == "worm_explode_150" || param1 == "worm_explode_200")
         {
            _loc2_.DIAMETER = 50;
            _loc2_.DAMAGE = 1;
            if(param1 == "worm_explode")
            {
               _loc2_.DAMAGE = 25;
            }
            if(param1 == "worm_explode_100")
            {
               _loc2_.DIAMETER = 100;
            }
            if(param1 == "worm_explode_150")
            {
               _loc2_.DIAMETER = 150;
            }
            if(param1 == "worm_explode_200")
            {
               _loc2_.DIAMETER = 200;
            }
            _loc2_.INITEXPLODE = true;
         }
         if(param1 == "howitzer_impact")
         {
            _loc2_.DIAMETER = 50;
            _loc2_.DAMAGE = 500;
            _loc2_.INITEXPLODE = true;
         }
         if(param1 == "turbo_rifle_fail")
         {
            _loc2_.DIAMETER = 24;
            _loc2_.DAMAGE = 7000;
            _loc2_.INITEXPLODE = true;
         }
         if(param1 == "vindicator_fail")
         {
            _loc2_.DIAMETER = 24;
            _loc2_.DAMAGE = 10000;
            _loc2_.INITEXPLODE = true;
         }
         if(param1 == "null_explode")
         {
            _loc2_.DIAMETER = 0;
            _loc2_.DAMAGE = 0;
            _loc2_.INITEXPLODE = true;
         }
         if(param1 == "drum")
         {
            _loc2_.DIAMETER = 25;
            _loc2_.DAMAGE = 50;
         }
         if(param1 == "crate")
         {
            _loc2_.DIAMETER = 100;
            _loc2_.DAMAGE = 50;
            _loc2_.GRAVITY = true;
            _loc2_.REFLECT = true;
            _loc2_.W = 10;
            _loc2_.H = 10;
         }
         return _loc2_;
      }
      
      public function init_context_menu() : *
      {
         var _loc1_:ContextMenu = null;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc1_ = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc2_ = new ContextMenuItem("(C) Peachful Team");
         _loc3_ = new ContextMenuItem("Официальная группа");
         _loc2_.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,this.openPeachful);
         _loc3_.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,this.openGroup);
         _loc1_.customItems.push(_loc3_,_loc2_);
         contextMenu = _loc1_;
      }
      
      public function openPeachful(param1:ContextMenuEvent) : void
      {
         navigateToURL(new URLRequest("http://vkontakte.ru/peachful"));
      }
      
      public function openGroup(param1:ContextMenuEvent) : void
      {
         navigateToURL(new URLRequest("http://vkontakte.ru/fwproject_group"));
      }
      
      public function set_invisible_button(param1:Boolean) : *
      {
         this.display_big_inv.visible = param1;
      }
      
      public function add_interf() : *
      {
         this._interf = new new_interf(this);
      }
      
      public function add_proc() : *
      {
         this._proc = new proc(this);
      }
      
      public function add_sound() : *
      {
         this._sound = new sound(this);
      }
      
      public function add_world(param1:String, param2:String, param3:String, param4:String) : *
      {
         this._world = new world(this,param1,param2,param3,param4);
      }
      
      public function add_obj(param1:String, param2:String, param3:String, param4:Object) : Number
      {
         ++this.max_object;
         this._obj["obj" + this.max_object] = this.display_obj.addChild(new obj(this,param1,param2,param3,param4));
         if(param1 == "P" || param1 == "M" || param1 == "W" || param1 == "C")
         {
            this._interf.add_distance_box(this.max_object,param1);
         }
         return this.max_object;
      }
      
      public function remove_obj(param1:MovieClip) : *
      {
         this.display_obj.removeChild(param1);
      }
      
      private function get_current_time() : Number
      {
         return Math.floor(new Date().time / 1000);
      }
      
      private function create_fake_profile_info(param1:*) : Array
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = [];
         _loc3_ = param1.split(",");
         for each(id in _loc3_)
         {
            _loc2_.push({
               "uid":id,
               "first_name":"ID " + id,
               "last_name":""
            });
         }
         return _loc2_;
      }
      
      public function net_command() : *
      {
         this.wait_for_complete = true;
         if(this.main_execute == "get user id")
         {
            this.net_success(404);
         }
         if(this.main_execute == "set sid")
         {
            this.net_success(1);
         }
         if(this.main_execute == "prove sid")
         {
            this.net_success("???");
         }
         if(this.main_execute == "get avatar")
         {
            this.net_success(this.create_fake_profile_info(this.user.user_id.toString()));
         }
         if(this.main_execute == "get time" || this.main_execute == "refresh time")
         {
            this.net_success(this.get_current_time());
         }
         if(this.main_execute == "get storage" || this.main_execute == "check storage")
         {
            this.net_success(this.getLocalStorage());
         }
         if(this.main_execute == "get storage external")
         {
            this.net_success("");
         }
         if(this.main_execute == "save storage")
         {
            this.setLocalStorage(this.string_to_save);
            this.net_success({});
         }
         if(this.main_execute == "get id profile")
         {
            this.net_success(this.create_fake_profile_info(this.get_info_uid.toString()));
         }
         if(this.main_execute == "get auc profile")
         {
            this.net_success(this.create_fake_profile_info(this.auc_info.user_id.toString()));
         }
         if(this.main_execute == "get profiles")
         {
            this.net_success(this.create_fake_profile_info(this.top_uids));
         }
         if(this.main_execute == "get inc profiles")
         {
            this.net_success(this.create_fake_profile_info(this.inc_uids));
         }
         if(this.main_execute == "get friends" || this.main_execute == "get admin")
         {
            this.net_success([]);
         }
         if(this.main_execute == "get friends profiles")
         {
            this.net_success(this.create_fake_profile_info(this.friends_uids));
         }
         if(this.main_execute == "get members profiles")
         {
            this.net_success(this.create_fake_profile_info(this.clans_uids));
         }
         if(this.main_execute == "get assault profiles")
         {
            this.net_success(this.create_fake_profile_info(this.assault_uids));
         }
      }
      
      public function successedStorageExternal(param1:Object) : void
      {
         var serverAnswer:URLVariables = null;
         var data:Object = param1;
         serverAnswer = new URLVariables();
         try
         {
            serverAnswer = new URLVariables((data as Event).target.data);
         }
         catch(e:Error)
         {
            failedStorageExternal(null);
            return;
         }
         this.net_success(serverAnswer.answer);
      }
      
      public function failedStorageExternal(param1:Object) : void
      {
      }
      
      public function net_fail(param1:Object) : *
      {
         this.wait_for_complete = false;
         if(this.main_execute == "get storage")
         {
            this.net_success("");
            return;
         }
         if(this.main_execute == "post new level" || this.main_execute == "post win game" || this.main_execute == "post new weapon")
         {
            this.main_mode = "IDLE";
            return;
         }
         if(this.main_execute == "get notes")
         {
            this.main_mode = "IDLE";
            this.display_system.removeChild(this.splash_wait);
            this.USER_NOTES = new Array(0,{});
            this._interf.render();
            return;
         }
         this.main_timeout = 400;
      }
      
      public function net_success(param1:Object) : *
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
         this.wait_for_complete = false;
         if(this.main_execute == "get user id")
         {
            this.user.user_id = Number(param1);
            _loc2_ = Number(this.auc_info.winners.split("x")[0]);
            this.win_auc_weapons.annihilator = 0;
            _loc3_ = 1;
            while(_loc3_ <= _loc2_)
            {
               if(Number(this.auc_info.winners.split("x")[_loc3_] == this.user.user_id))
               {
                  ++this.win_auc_weapons.annihilator;
               }
               _loc3_++;
            }
            if(this.auc_info.user_id == this.user.user_id)
            {
               this.auc_weapons.annihilator = 1;
            }
            else
            {
               this.auc_weapons.annihilator = 0;
            }
            this.loading_screen.loading.text = "4 / " + this.INIT_STAGES;
            this.main_mode = "NET_INIT";
            this.main_timeout = 400;
            this.main_execute = "get storage";
            return;
         }
         if(this.main_execute == "get avatar")
         {
            this.loading_screen.loading.text = "5 / " + this.INIT_STAGES;
            this.main_mode = "NET_INIT";
            this.main_timeout = 400;
            this.main_execute = "get storage";
            this.net_get_avatar(param1);
            return;
         }
         if(this.main_execute == "get storage" || this.main_execute == "get storage external")
         {
            this.loading_screen.loading.text = "6 / " + this.INIT_STAGES + " (" + this.STORAGE_TRYES + ")";
            if(String(param1).length == 0 || String(param1).length == 1)
            {
               ++this.STORAGE_TRYES;
               if(this.STORAGE_TRYES > this.STORAGE_MAX_TRYES)
               {
                  this.create_new_params("first time");
                  this.main_mode = "NET_INIT";
                  this.main_timeout = 400;
                  this.main_execute = "get admin";
                  return;
               }
               if(this.STORAGE_TRYES > this.STORAGE_MAX_TRYES - 2)
               {
                  this.main_mode = "NET_INIT";
                  this.main_timeout = 400;
                  this.main_execute = "get storage external";
                  return;
               }
               this.main_mode = "NET_INIT";
               this.main_timeout = 400;
               this.main_execute = "get storage";
               return;
            }
            this.user.params = String(param1);
            _loc4_ = this.read_storage(this.user.params,"my");
            if(_loc4_ == 0)
            {
               this.main_mode = "NET_INIT";
               this.main_timeout = 400;
               this.main_execute = "get admin";
            }
            return;
         }
         if(this.main_execute == "get params")
         {
            if(String(param1).length == 0)
            {
               this.create_new_params("first time");
               this.user.params = "";
            }
            else
            {
               this.read_params(String(param1),"my");
            }
            this.main_mode = "NET_INIT";
            this.main_timeout = 400;
            this.main_execute = "get admin";
            return;
         }
         if(this.main_execute == "get admin")
         {
            this.loading_screen.loading.text = "7 / " + this.INIT_STAGES;
            for(_loc5_ in param1)
            {
               if(Number(param1[_loc5_]) == 77226401)
               {
                  this.ADMIN_FRIEND = true;
               }
            }
            this.main_mode = "NET_INIT";
            this.main_timeout = 400;
            this.main_execute = "get time";
            return;
         }
         if(this.main_execute == "get time")
         {
            this.loading_screen.loading.text = "8 / " + this.INIT_STAGES;
            this.user.unix_time = Number(param1);
            this.CURRENT_SID = this.user.unix_time;
            this.modify_tired();
            this.modify_last_enter();
            this.modify_papa();
            this.modify_wins();
            this.main_mode = "NET_INIT";
            this.main_timeout = 400;
            this.main_execute = "set sid";
            return;
         }
         if(this.main_execute == "get ban")
         {
            this.loading_screen.loading.text = "9 / " + this.INIT_STAGES;
            this.main_mode = "NET_INIT";
            this.main_timeout = 400;
            this.main_execute = "set sid";
            this.check_ban(String(param1));
            return;
         }
         if(this.main_execute == "set sid")
         {
            this.main_mode = "NET_INIT";
            this.main_timeout = 400;
            this.main_execute = "prove sid";
            return;
         }
         if(this.main_execute == "prove sid")
         {
            if(String(param1).length > 0)
            {
               this.net_initialized();
               return;
            }
            this.main_mode = "NET_INIT";
            this.main_timeout = 400;
            this.main_execute = "prove sid";
            return;
         }
         if(this.main_execute == "refresh time")
         {
            this.user.unix_time = Number(param1);
            this.modify_tired();
            this.modify_papa();
            this.modify_wins();
            this.write_storage();
            if(this.string_to_save.length == 4000)
            {
               this.main_mode = "NET_INIT";
               this.main_timeout = 40;
               this.main_execute = "save storage";
            }
            else
            {
               this.main_mode = "IDLE";
            }
            return;
         }
         if(this.main_execute == "save params")
         {
            this.main_mode = "NET_INIT";
            this.main_timeout = 400;
            this.main_execute = "check params";
            return;
         }
         if(this.main_execute == "check params")
         {
            if(String(param1).length == 0)
            {
               this.main_mode = "NET_INIT";
               this.main_timeout = 400;
               this.main_execute = "save params";
               return;
            }
            if(this.string_to_save.length == 4000)
            {
               this.main_mode = "NET_INIT";
               this.main_timeout = 400;
               this.main_execute = "save storage";
            }
            else
            {
               this.main_mode = "IDLE";
            }
            return;
         }
         if(this.main_execute == "save storage")
         {
            this.main_mode = "NET_INIT";
            this.main_timeout = 400;
            this.main_execute = "check storage";
            return;
         }
         if(this.main_execute == "check storage")
         {
            if(String(param1).length == 0)
            {
               this.main_mode = "NET_INIT";
               this.main_timeout = 400;
               this.main_execute = "save storage";
               return;
            }
            this.main_mode = "IDLE";
            this.success_saved();
            return;
         }
         if(this.main_execute == "get balance")
         {
            this.display_system.removeChild(this.splash_wait);
            this._interf.USER_BALANCE = Number(param1);
            this._interf.render();
            this.main_mode = "IDLE";
            return;
         }
         if(this.main_execute == "get balance auc")
         {
            this._interf.USER_BALANCE = Number(param1);
            this.net_check_auc_mainframe();
            this.main_mode = "IDLE";
            return;
         }
         if(this.main_execute == "get auc profile")
         {
            this.main_mode = "IDLE";
            this.auc_names = {};
            this.auc_names = this.clone(param1);
            this.net_get_avatar(param1);
            this._interf.init("auc");
         }
         if(this.main_execute == "get profiles")
         {
            this.main_mode = "IDLE";
            this.top_names = {};
            this.top_names = this.clone(param1);
            this.net_get_avatar(param1);
            return;
         }
         if(this.main_execute == "get user info")
         {
            this.get_info_string = param1;
            if(this.user.user_id == 77226401)
            {
               this.display_system.addChild(this.splash_debug);
               this.splash_debug.alpha = 0.6;
               this.splash_debug.debug.text = this.get_info_string.length + ":: ";
               _loc6_ = 0;
               while(_loc6_ <= this.get_info_string.length - 1)
               {
                  this.splash_debug.debug.text += "s[" + _loc6_ + "] = " + this.get_info_string.charCodeAt(_loc6_) + ";";
                  _loc6_++;
               }
            }
            this.read_params(this.get_info_string,"other");
            if(this.user_info_mode == "")
            {
               this.display_system.removeChild(this.splash_wait);
               this._interf.render();
               this.main_mode = "IDLE";
            }
            else
            {
               this.main_mode = "NET_INIT";
               this.main_timeout = 400;
               this.main_execute = "get id profile";
            }
            return;
         }
         if(this.main_execute == "get id profile")
         {
            this.display_system.removeChild(this.splash_wait);
            this.net_get_avatar(param1);
            this.friends_names = {};
            this.friends_names = this.clone(param1);
            this._interf.render();
            this.main_mode = "IDLE";
            return;
         }
         if(this.main_execute == "get friends")
         {
            this.FRIENDS = new Array(0,{});
            this.friends_uids = "";
            _loc7_ = 100;
            for(_loc8_ in param1)
            {
               ++this.FRIENDS[0];
               this.FRIENDS[this.FRIENDS[0]] = {"uid":Number(param1[_loc8_])};
               if(this.FRIENDS[0] > 1)
               {
                  this.friends_uids += ",";
               }
               this.friends_uids += String(param1[_loc8_]);
               if(this.FRIENDS[0] > _loc7_)
               {
                  break;
               }
            }
            if(this.friends_uids != "")
            {
               this.main_mode = "NET_INIT";
               this.main_timeout = 400;
               this.main_execute = "get friends profiles";
            }
            else
            {
               this.display_system.removeChild(this.splash_wait);
               this._interf.render();
               this.main_mode = "IDLE";
            }
            return;
         }
         if(this.main_execute == "get friends profiles")
         {
            this.display_system.removeChild(this.splash_wait);
            this.net_get_avatar(param1);
            this.friends_names = {};
            this.friends_names = this.clone(param1);
            this._interf.render();
            this.main_mode = "IDLE";
            return;
         }
         if(this.main_execute == "get members profiles")
         {
            this.display_system.removeChild(this.splash_wait);
            this.net_get_avatar(param1);
            this.clans_names = {};
            this.clans_names = this.clone(param1);
            this._interf.init("clan_members");
            this.main_mode = "IDLE";
            return;
         }
         if(this.main_execute == "get assault profiles")
         {
            this.main_mode = "IDLE";
            this.assault_names = {};
            this.assault_names = this.clone(param1);
            this.net_get_avatar(param1);
            if(this._interf.cur_screen[this._interf.cur_screen[0]].name != "assault")
            {
               this.net_update_assault();
            }
            return;
         }
         if(this.main_execute == "get notes")
         {
            this.display_system.removeChild(this.splash_wait);
            this.USER_NOTES = new Array(0,{});
            _loc9_ = 1;
            while(_loc9_ <= Number(param1[0]))
            {
               if(param1[_loc9_].text.search("<div class=\"wikiText\">!D") != -1 && param1[_loc9_].title.search("FWP") != -1)
               {
                  ++this.USER_NOTES[0];
                  _loc10_ = param1[_loc9_].text.split("<div class=\"wikiText\">")[1].split("</div>")[0];
                  this.USER_NOTES[this.USER_NOTES[0]] = {
                     "title":param1[_loc9_].title,
                     "text":_loc10_
                  };
               }
               _loc9_++;
            }
            this._interf.render();
            this.main_mode = "IDLE";
            return;
         }
         if(this.main_execute == "post new level" || this.main_execute == "post win game")
         {
            this.main_mode = "IDLE";
            return;
         }
         if(this.main_execute == "save replay")
         {
            this.display_system.removeChild(this.splash_wait);
            this.main_mode = "IDLE";
            return;
         }
      }
      
      public function net_get_avatar(param1:Object) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:BitmapData = null;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         this.wait_for_avatars = true;
         this.avatar_to_download = 0;
         for(_loc2_ in param1)
         {
            _loc3_ = new BitmapData(50,50,true,4294901760);
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               _loc5_ = 0;
               while(_loc5_ < 5)
               {
                  _loc3_.fillRect(new Rectangle(_loc4_ * 10,_loc5_ * 10,10,10),_loc4_ % 2 == _loc5_ % 2 ? uint(4291611852) : uint(4281545523));
                  _loc5_++;
               }
               _loc4_++;
            }
            this.avdatas["id" + param1[_loc2_].uid] = _loc3_;
            ++this.avatar_to_download;
         }
         for(_loc2_ in param1)
         {
            this.avatar_loaded(null);
         }
      }
      
      public function avatar_loaded(param1:*) : *
      {
         if(param1)
         {
            this.avdatas[param1.target.loader.name].copyPixels(param1.target.loader.content.bitmapData,new Rectangle(0,0,50,50),new Point(0,0));
         }
         --this.avatar_to_download;
         if(this.avatar_to_download == 0)
         {
            this.wait_for_avatars = false;
            if(this._interf)
            {
               this._interf.render();
            }
            this.display_system.removeChild(this.splash_wait);
         }
      }
      
      public function do_nothing(param1:Object) : *
      {
         this.wait_for_complete = false;
      }
      
      public function net_save_to_db() : *
      {
      }
      
      public function put_votes_new(param1:Object) : *
      {
      }
      
      public function get_diamonds_price(param1:Number) : Number
      {
         if(param1 == 1)
         {
            return 4;
         }
         if(param1 == 3)
         {
            return 12;
         }
         if(param1 == 10)
         {
            return 50;
         }
         if(param1 == 25)
         {
            return 120;
         }
         if(param1 == 50)
         {
            return 250;
         }
         if(param1 == 100)
         {
            return 600;
         }
         return param1 * 4;
      }
      
      public function net_initialized() : *
      {
         this.display_system.removeChild(this.loading_screen);
         this.loading_screen = null;
         try
         {
            new LocalConnection().connect("foo");
            new LocalConnection().connect("foo");
         }
         catch(e:*)
         {
         }
         this.user_clan = this.return_clan(this.user.user_id,this.CLANS_PEOPLE_DEF);
         this.player.level.value = this.get_player_level(this.player.exp.value);
         this.refresh_temp_params();
         this.main_mode = "IDLE";
         this.add_interf();
         this.add_sound();
         this.display_interf.addChild(this._interf);
         this._sound.on_change("music");
      }
      
      public function net_get_balance() : *
      {
         this.display_system.addChild(this.splash_wait);
         this.main_mode = "NET_INIT";
         this.main_timeout = 40;
         this.main_execute = "get balance";
      }
      
      public function net_get_friends() : *
      {
         this.display_system.addChild(this.splash_wait);
         this.main_mode = "NET_INIT";
         this.main_timeout = 40;
         this.main_execute = "get friends";
      }
      
      public function net_get_assault() : *
      {
         this.display_system.addChild(this.splash_wait);
         this.net_proceed_assault({"target":{"data":"time=1537220316&zone1=1Q21207Q213089586Q1537163574&zone2=2Q20090Q213089586Q1537163939&zone3=3Q10868Q409815117Q1537126627&zone4=4Q12066Q409815117Q1537125859&zone5=5Q12712Q409815117Q1537126444&zone6=6Q25824Q409815117Q1537128617&zone7=7Q15692Q409815117Q1537126875&zone8=8Q12968Q409815117Q1537126173&zone9=9Q13510Q409815117Q1537126028&zone10=10Q13472Q409815117Q1537125703&zone11=11Q17224Q409815117Q1537125510&zone12=12Q16405Q409815117Q1537125246&zone13=13Q20983Q409815117Q1537201546&zone14=14Q23610Q409815117Q1537214022&zone15=15Q26024Q409815117Q1537212636&zone16=16Q78569Q409815117Q1537213603&zone17=17Q22020Q409815117Q1537213807"}});
      }
      
      public function net_proceed_assault(param1:*) : *
      {
         var _loc2_:URLVariables = null;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         this.ASSAULT = new Array();
         this.assault_uids = "";
         _loc2_ = new URLVariables(param1.target.data);
         _loc3_ = 0;
         for(_loc4_ in _loc2_)
         {
            if(_loc4_.search("zone") != -1)
            {
               _loc5_ = _loc4_.split("zone")[1];
               this.ASSAULT[_loc5_] = {
                  "zone_stage":_loc2_[_loc4_].split("Q")[1],
                  "user_id":_loc2_[_loc4_].split("Q")[2],
                  "last_assault":_loc2_[_loc4_].split("Q")[3]
               };
               if(this.ASSAULT[_loc5_].user_id != 0)
               {
                  if(_loc3_ > 0)
                  {
                     this.assault_uids += ",";
                  }
                  this.assault_uids += String(this.ASSAULT[_loc5_].user_id);
                  _loc3_++;
               }
            }
            else if(_loc4_.search("time") != -1)
            {
               this.assault_cur_time = Number(_loc2_[_loc4_]);
               this.fwproject_time = this.assault_cur_time;
            }
         }
         if(this._interf.cur_screen[this._interf.cur_screen[0]].name != "assault")
         {
            this._play_zone_stage = this.ASSAULT[this._play_id].zone_stage;
         }
         this.deep_trace(this.ASSAULT);
         if(!this.LOCAL_TEST)
         {
            this.main_mode = "NET_INIT";
            this.main_timeout = 1;
            this.main_execute = "get assault profiles";
         }
         else
         {
            this.assault_names = {};
            _loc6_ = 1;
            while(_loc6_ <= 17)
            {
               this.assault_names["key" + _loc6_] = {
                  "uid":this.ASSAULT[_loc6_].user_id,
                  "first_name":"FN" + _loc6_,
                  "last_name":"LN" + _loc6_,
                  "photo_rec":""
               };
               _loc6_++;
            }
            this.net_get_avatar(this.assault_names);
            if(this._interf.cur_screen[this._interf.cur_screen[0]].name != "assault")
            {
               this.net_update_assault();
            }
         }
      }
      
      public function net_update_assault() : *
      {
         this.display_system.addChild(this.splash_wait);
         this.net_assault_update_complete(null);
      }
      
      public function net_assault_update_complete(param1:Event) : *
      {
         this.display_system.removeChild(this.splash_wait);
         this.execute_after = "init win or lose";
         this.init_save_params();
      }
      
      public function net_post_new_level() : *
      {
         this.main_mode = "NET_INIT";
         this.main_timeout = 40;
         this.main_execute = "post new level";
      }
      
      public function net_post_win_game() : *
      {
         this.main_mode = "NET_INIT";
         this.main_timeout = 40;
         this.main_execute = "post win game";
      }
      
      public function net_get_notes() : *
      {
         this.display_system.addChild(this.splash_wait);
         this.main_mode = "NET_INIT";
         this.main_timeout = 40;
         this.main_execute = "get notes";
      }
      
      public function net_get_tops() : *
      {
         var _loc1_:* = undefined;
         _loc1_ = {"target":{"data":"clans=14&clan1=3z77226401x0z137899568x0z2870523x0z0&clan2=8z59226199x119z76620070x889z74064169x173z135232675x66z135469793x420z50203652x9254z87338987x575z56209700x531z12027&clan3=8z25196176x385z115790524x349z119312475x21z46339573x35z52772772x3z110139768x640z94339576x94z8821229x100z1627&clan4=8z103204217x91z141699297x2z81233614x108z143563548x3z107837709x7z112415706x4z115790524x349z145541369x154z718&clan5=8z60375763x955z97219098x226z37143892x1z31514116x127z8945548x413z90508739x67z112345525x5z116818027x959z2753&clan6=7z68271708x62z58823634x187z154861636x0z144887563x62z50880038x137z122446741x454z79366744x136z1038&clan7=6z112238654x14z141253375x0z12302196x0z136452064x217z46868354x843z76330285x0z1074&clan8=8z114727350x464z120699597x174z131943812x2790z115163055x660z10695232x146z14817448x2583z30634814x1092z35187993x833z8742&clan9=8z145328916x246z89623506x151z71638434x1748z101523401x29z132277148x426z119811609x0z137529411x287z133528321x6z2893&clan10=3z45166380x1z59131250x28z132060796x102z131&clan11=8z127458447x550z17034392x52z141878160x1026z138093811x314z151834183x172z6679880x214z74053548x386z140831086x156z2870&clan12=8z13826159x37z19063956x43z33760606x33z29307986x403z339020x3z5278044x49z58247031x47z31766570x33z648&clan13=8z120527911x45z117767513x4z143139688x0z139284644x2z144304681x0z147496344x0z160646961x0z150634435x0z51&clan14=8z153083720x55z115790524x349z145389550x58z144462298x11z9590785x1z133539883x157z17034392x52z134536101x7z690&id108759953t1=13603199z8693z1000z0&id15793348t1=17476948z11057z2500z56&id145541369t1=35775739z15650z6000z154&id93068097t1=29012182z10285z1800z0&id25060956t1=30294076z11762z3000z26&id2582379t1=59902730z15209z5000z77&id4605560t1=16282254z15119z6000z52&id135833047t1=165142895z20911z6000z1877&id120699597t1=91678377z15587z5000z174&id135469793t1=110468482z18084z6000z420&id82706153t1=27957838z9881z1400z6&id144695099t1=13261694z10490z1800z32&id70982221t1=29801544z10154z1600z15&id71275990t1=16853062z10069z2000z1&id86202523t1=15677066z9106z1200z11&id109471660t1=32740587z10651z2000z66&id94339576t1=30282246z10384z1800z94&id101557426t1=12572715z14888z6000z37&id123748643t1=13760620z9629z1600z0&id59904237t1=24138744z13486z3500z7&id70012383t1=39415905z11337z2500z9&id102909196t1=30085639z14076z5000z45&id84229396t1=96649929z14156z4000z77&id85889320t1=10580331z13048z4000z21&id139593110t1=14113795z11746z3500z15&id21712246t1=14432136z10003z1600z1&id144247418t1=72448140z19501z9000z69&id145328916t1=36889999z17588z7000z246&id85802832t1=48426157z21967z9000z66&id139392191t1=18746380z10797z2500z3&id31514116t1=214168209z52788z16000z127&id134536101t1=33430500z10738z2000z7&id102563233t1=69036012z18723z3000z4&id140831086t1=53592383z14748z5000z156&id18455953t1=45635466z14370z5000z52&id105012867t1=31669774z10015z1400z18&id133528321t1=36625287z10711z2000z6&id113688178t1=13226344z9225z1400z16&id126651512t1=26758875z19347z8000z45&id110644049t1=16251943z10820z2500z4&id50203652t1=126804064z37300z10000z9254&id145377770t1=15509051z14348z5000z131&id87809355t1=18152343z11452z3000z12&id138001253t1=66009570z14442z4000z35&id83885639t1=22503558z20606z7000z16&id144227238t1=23052678z15645z5000z41&id122446741t1=19755600z18007z6000z454&id145344591t1=23303420z9972z1600z7&id127744484t1=14107687z9514z1600z14&id49736932t1=52558956z16821z7000z97&id144304951t1=15987440z8426z600z0&id98464748t1=56902427z14387z5000z59&id104275547t1=29045394z8676z200z0&id18260114t1=27941731z10443z2000z7&id143509777t1=20255480z10069z1800z16&id394141t1=95923419z18371z7000z255&id141878160t1=25882898z34200z5000z1026&id2003136t1=34414398z11678z3000z15&id60014087t1=60959644z16147z6000z79&id34753413t1=62605479z12920z3500z3&id67348411t1=14299393z9094z1200z6&id97219098t1=94980807z14307z4000z226&id21013005t1=175925983z19325z7000z85&id124332412t1=57797329z16321z6000z159&id136643550t1=11690222z10367z2500z30&id132060796t1=38113375z12360z2500z102&id89199404t1=34203512z18448z8000z14&id116235535t1=31278089z12067z3000z45&id127458447t1=10051756z16586z6000z550&id144879086t1=13875870z8646z1000z0&id88724010t1=11589265z10332z2500z3&id141508259t1=29779014z10836z2000z8&id28670710t1=14056925z20095z8000z14&id607013t1=13241020z9642z1800z0&id103945553t1=26150265z10213z1800z4&id110753962t1=15447789z9545z1600z25&id101780101t1=14412297z9381z1600z1&id134241113t1=24740962z12830z4000z23&id56021814t1=27090126z18078z7000z71&id108149298t1=17826412z10430z2000z36&id2030303t1=61178369z18597z7000z187&id133117740t1=66430396z12529z3000z3&id137727610t1=16676444z9371z1400z6&id137771880t1=19658638z13662z5000z15&id100673518t1=73145426z21207z9000z86&id118329794t1=30032258z10544z2000z1&id20538988t1=16898483z14137z4000z26&id143073813t1=14468998z9980z2000z1&id60375763t1=131968466z19715z6000z955&id86229759t1=13531099z9919z2000z10&id4227359t1=50930225z10837z1800z3&id146958507t1=26643575z15267z5000z157&id132803299t1=11904632z14401z5000z45&id144647371t1=16367893z9535z1400z0&id89724410t1=46047403z13006z3500z5&id116818027t1=220262009z40713z9000z959&id58823634t1=37125962z17404z6000z187&id106944086t1=39959863z16224z6000z46&id84787760t1=49614504z14484z5000z28&id115163055t1=140064574z27749z10000z660&id112754805t1=46388992z14834z5000z23&id26391265t2=430476567z94710z70000z30000&id179317892t2=3179988z107818z2500z0&id122789314t2=226198214z31820z18000z74&id152637884t2=132613509z36690z14000z5009&id170877831t2=41992205z65317z1400z47&id50203652t2=126804064z37300z10000z9254&id141959259t2=19474038z24458z10000z250&id36865966t2=148305823z27646z12000z1467&id8945548t2=253413642z144666z32000z413&id36528504t2=17882266z36208z7000z1159&id151132471t2=163068654z32122z12000z1112&id29236346t2=162701770z23840z10000z179&id116324923t2=245849647z49023z36000z30000&id22586237t2=176607381z26005z18000z1664&id52526065t2=33840388z32493z5000z22&id9866389t2=16132852z22915z6000z23&id110139768t2=37698013z34462z7000z640&id181382663t2=9442339z83927z6000z1677&id42430752t2=1009679z24116z1600z180&id150414343t2=27430161z29980980z180z1&id71638434t2=112284026z25975z9000z1748&id136486528t2=113474342z29290z12000z1471&id117516847t2=23062129z23275z10000z639&id136244260t2=27748074z32464z24000z30000&id141878160t2=25882898z34200z5000z1026&id141690693t2=66564175z24778z12000z101&id124448503t2=8285382z100001225z600z0&id112120140t2=70803575z23839z7000z858&id16717455t2=167147519z36480z8000z45&id160286823t2=93501913z33024z14000z1377&id31514116t2=214168209z52788z16000z127&id133728177t2=250017570z27015z1200z5&id52905856t2=7085010z142743z136000z1&id163517233t2=65109960z26533z10000z1959&id154603663t2=174618047z25518z14000z18&id177398939t2=424049736z24020z1600z7&id168567336t2=53297893z23670z12000z804&id22618323t2=187470865z25520z10000z48&id173416888t2=188004972z25768z14000z8&id168004763t2=397832483z23032z1200z5&id186264031t2=145367870z46392z7000z1241&id143642752t2=131990621z24227z8000z1565&id45339419t2=331066858z76455z60000z30000&id115163055t2=140064574z27749z10000z660&id69138022t2=10260543z30010z9000z299&id86282351t2=159188951z40911z18000z4589&id86592859t2=28907039z36301z28000z30000&id137913207t2=262192763z34813z16000z0&id177306722t2=182075616z56739z20000z2512&id85491270t2=161021950z40644z16000z4302&id87338987t2=46457014z24580z10000z575&id139188399t2=7736934z23791z8000z104&id134805485t2=475272404z149474z2500z5&id167634131t2=80345923z38737z12000z3210&id71138870t2=36049483z24905z8000z1725&id29307986t2=153197082z28073z10000z403&id165198388t2=307367988z24206z10000z19&id179000295t2=130187212z30671z20000z30000&id136690808t2=113773125z10013632z3500z5&id173111805t2=120886151z25950z10000z605&id12714958t2=116565148z27946z12000z209&id118318454t2=49314332z22894z6000z366&id147151844t2=60088504z24162z6000z3&id181119351t2=43928860z25597z9000z1320&id157280843t2=4378z28380z28000z30000&id27502599t2=86133356z25951z10000z109&id116818027t2=220262009z40713z9000z959&id66756648t2=251780183z24132z9000z308&id102335241t2=29241066z25450z7000z30000&id30634814t2=27009825z23705z6000z1092&id9328674t2=9258223z23077z9000z194&id53188730t2=17182463z24154z5000z523&id97618713t2=42014295z24780z10000z701&id244390569t2=8621714z25380000z0z0&id164668860t2=240074196z77168z18000z17305&id32847054t2=28028043z24705z12000z201&id198794290t2=53259656z49063z40000z4&id148167136t2=1784604z1006909z1600z0&id45241990t2=321006102z46339z32000z30000&id17890477t2=175792847z29451z18000z30000&id147116239t2=174006792z42900z18000z2890&id146922155t2=182743657z25626z14000z30000&id44594802t2=80123193z35983z5000z252&id1951212t2=105375914z24206z10000z123&id10589170t2=96130236z29407z14000z1549&id155777528t2=154293416z26085z12000z303&id139845888t2=98509781z45579z12000z1510&id182929835t2=447841455z25353z1600z1&id67967286t2=321353499z30615z8000z30000&id144683466t2=87672775z23706z14000z30000&id14817448t2=67587501z49193z14000z2583&id159439630t2=427964545z51872z36000z30000&id78758194t2=104333988z28357z14000z30000&id32157538t2=113971580z23272z9000z856&id100213655t2=170699479z26493z8000z30&id161555028t2=113272647z34379z24000z1&id131943812t2=186245089z31619z12000z2790&id107070788t2=110331942z28210z18000z5&id70752719t2=152934346z29546z14000z618&id201216982t2=36187466z32780z24000z13&id32551229t2=460257776z148765z1800z0&id153929747t3=97635955z19560z7000z612&id186264031t3=145367870z46392z7000z1241&id118461836t3=34835920z15908z6000z656&id22586237t3=176607381z26005z18000z1664&id3009429t3=57910476z21946z8000z539&id15038267t3=83864620z20153z8000z893&id180356332t3=17114819z20038z3000z796&id116324923t3=245849647z49023z36000z30000&id10589170t3=96130236z29407z14000z1549&id126413212t3=24910531z17317z6000z679&id6352001t3=39140525z15070z5000z607&id135833047t3=165142895z20911z6000z1877&id188910387t3=125414308z18472z8000z30000&id162466347t3=225991640z14403z2000z1712&id3258238t3=17109300z20051z9000z651&id44272445t3=10004315z13585z4000z810&id139845888t3=98509781z45579z12000z1510&id67940984t3=117636789z19519z8000z553&id74569215t3=33261636z18070z7000z571&id70752719t3=152934346z29546z14000z618&id181119351t3=43928860z25597z9000z1320&id146922155t3=182743657z25626z14000z30000&id143247373t3=11321550z13710z4000z1008&id36528504t3=17882266z36208z7000z1159&id114165187t3=40316145z18351z6000z832&id167289037t3=23768243z20225z7000z1431&id159439630t3=427964545z51872z36000z30000&id112120140t3=70803575z23839z7000z858&id46868354t3=41072595z21226z9000z843&id137181086t3=106589869z22215z9000z1076&id71638434t3=112284026z25975z9000z1748&id152637884t3=132613509z36690z14000z5009&id32157538t3=113971580z23272z9000z856&id1701358t3=11674661z15403z5000z531&id60375763t3=131968466z19715z6000z955&id163517233t3=65109960z26533z10000z1959&id157280843t3=4378z28380z28000z30000&id131943812t3=186245089z31619z12000z2790&id67967286t3=321353499z30615z8000z30000&id172005437t3=32554005z10258z1800z30000&id50203652t3=126804064z37300z10000z9254&id52075108t3=3370109z10562z3000z687&id144683466t3=87672775z23706z14000z30000&id29549766t3=90445517z18929z7000z604&id127458447t3=10051756z16586z6000z550&id29293506t3=85124359z18931z6000z673&id80400109t3=67600117z18847z6000z969&id84416402t3=22413764z15223z4000z1140&id97618713t3=42014295z24780z10000z701&id168567336t3=53297893z23670z12000z804&id169794792t3=64856372z17506z7000z607&id78758194t3=104333988z28357z14000z30000&id146006919t3=38196415z20023z7000z1198&id36865966t3=148305823z27646z12000z1467&id45241990t3=321006102z46339z32000z30000&id67243733t3=58625626z14867z4000z541&id111253982t3=2622000z16648z10000z30000&id160286823t3=93501913z33024z14000z1377&id71138870t3=36049483z24905z8000z1725&id85491270t3=161021950z40644z16000z4302&id65176098t3=34620917z19750z9000z811&id173111805t3=120886151z25950z10000z605&id30634814t3=27009825z23705z6000z1092&id147116239t3=174006792z42900z18000z2890&id45339419t3=331066858z76455z60000z30000&id104433556t3=133994364z12296z1400z30000&id116818027t3=220262009z40713z9000z959&id14817448t3=67587501z49193z14000z2583&id151132471t3=163068654z32122z12000z1112&id86282351t3=159188951z40911z18000z4589&id143642752t3=131990621z24227z8000z1565&id59639267t3=60192879z22842z10000z1283&id152212792t3=101761395z15990z6000z30000&id102335241t3=29241066z25450z7000z30000&id179000295t3=130187212z30671z20000z30000&id136244260t3=27748074z32464z24000z30000&id47074444t3=52074870z14511z4000z865&id138379718t3=94521575z20991z8000z1329&id26391265t3=430476567z94710z70000z30000&id141738996t3=76248295z20297z8000z707&id17890477t3=175792847z29451z18000z30000&id59048802t3=100885304z20310z8000z816&id115163055t3=140064574z27749z10000z660&id165510482t3=16000759z9816z5000z1649&id177306722t3=182075616z56739z20000z2512&id77458474t3=13450651z17075z6000z779&id164668860t3=240074196z77168z18000z17305&id35187993t3=136975295z20567z8000z833&id87338987t3=46457014z24580z10000z575&id181382663t3=9442339z83927z6000z1677&id136486528t3=113474342z29290z12000z1471&id148656766t3=13659769z16653z6000z531&id86592859t3=28907039z36301z28000z30000&id132852185t3=66593513z14367z4000z552&id167634131t3=80345923z38737z12000z3210&id117516847t3=23062129z23275z10000z639&id141878160t3=25882898z34200z5000z1026&id110139768t3=37698013z34462z7000z640&id27857335t3=7022864z12916z6000z30000&id76620070t3=22431523z13918z4000z889&id25134883t3=9120052z13325z4000z600"}};
         this.net_proceed_tops(_loc1_);
      }
      
      public function net_proceed_tops(param1:*) : *
      {
         var _loc2_:URLVariables = null;
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
         _loc2_ = new URLVariables(param1.target.data);
         for(_loc3_ in _loc2_)
         {
            if(_loc3_ == "clans")
            {
               this.CLANS_PEOPLE_DEF[0] = Number(_loc2_[_loc3_]);
            }
         }
         this.clan_people_assaults = [0,[]];
         _loc4_ = 1;
         while(_loc4_ <= this.CLANS_PEOPLE_DEF[0])
         {
            _loc8_ = _loc2_["clan" + _loc4_].split("z");
            _loc9_ = Number(_loc8_[0]);
            this.CLANS_PEOPLE_DEF[_loc4_] = [_loc9_,0];
            _loc10_ = 1;
            while(_loc10_ <= _loc9_)
            {
               this.CLANS_PEOPLE_DEF[_loc4_][_loc10_] = Number(_loc8_[_loc10_].split("x")[0]);
               ++this.clan_people_assaults[0];
               this.clan_people_assaults[this.clan_people_assaults[0]] = [Number(_loc8_[_loc10_].split("x")[0]),Number(_loc8_[_loc10_].split("x")[1])];
               _loc10_++;
            }
            this.clans_rating[_loc4_] = Number(_loc8_[_loc9_ + 1]);
            _loc4_++;
         }
         this.deep_trace(this.clans_rating);
         this.TOP_BY_LEVEL = new Array();
         this.TOP_BY_RATING = new Array();
         this.TOP_BY_ASSAULT = new Array();
         _loc5_ = -1;
         _loc6_ = -1;
         _loc7_ = -1;
         for(_loc3_ in _loc2_)
         {
            if(_loc3_.search("id") != -1)
            {
               if(_loc3_.split("t")[1] == 1)
               {
                  _loc11_ = this.TOP_BY_LEVEL;
                  _loc12_ = ++_loc5_;
               }
               if(_loc3_.split("t")[1] == 2)
               {
                  _loc11_ = this.TOP_BY_RATING;
                  _loc12_ = ++_loc6_;
               }
               if(_loc3_.split("t")[1] == 3)
               {
                  _loc11_ = this.TOP_BY_ASSAULT;
                  _loc12_ = ++_loc7_;
               }
               _loc11_[_loc12_] = {
                  "uid":0,
                  "rating":0,
                  "exp":0,
                  "achiev_rank":0,
                  "assaults":0
               };
               _loc11_[_loc12_].uid = Number(_loc3_.split("id")[1].split("t")[0]);
               _loc11_[_loc12_].exp = Number(_loc2_[_loc3_].split("z")[0]);
               _loc11_[_loc12_].rating = Number(_loc2_[_loc3_].split("z")[1]);
               _loc13_ = Number(_loc2_[_loc3_].split("z")[2]);
               _loc11_[_loc12_].achiev_rank = _loc13_;
               _loc11_[_loc12_].assaults = Number(_loc2_[_loc3_].split("z")[3]);
            }
         }
         this.TOP_BY_LEVEL.sortOn("exp",Array.DESCENDING | Array.NUMERIC);
         this.TOP_BY_RATING.sortOn("rating",Array.DESCENDING | Array.NUMERIC);
         this.TOP_BY_ASSAULT.sortOn("assaults",Array.DESCENDING | Array.NUMERIC);
         this.loading_screen.stat_text.text = "Инициализация...";
         this.loading_screen.loading.text = "1 / " + this.INIT_STAGES;
         this.net_get_auc_first();
      }
      
      public function net_get_top_members() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         this.top_uids = "";
         this.display_system.addChild(this.splash_wait);
         if(this._interf.top_mode == 1)
         {
            _loc1_ = this.TOP_BY_LEVEL;
         }
         if(this._interf.top_mode == 2)
         {
            _loc1_ = this.TOP_BY_RATING;
         }
         if(this._interf.top_mode == 3)
         {
            _loc1_ = this.TOP_BY_ASSAULT;
         }
         this.deep_trace(_loc1_);
         if(this.LOCAL_TEST)
         {
            this.top_names = {};
         }
         _loc2_ = this._interf.top_page - 1;
         _loc3_ = 0 + _loc2_ * 10;
         while(_loc3_ <= 9 + _loc2_ * 10)
         {
            if(_loc3_ > 0)
            {
               this.top_uids += ",";
            }
            this.top_uids += _loc1_[_loc3_].uid;
            if(this.LOCAL_TEST)
            {
               this.top_names[_loc1_[_loc3_].uid] = {
                  "first_name":"FNAME",
                  "last_name":"LNAME"
               };
            }
            _loc3_++;
         }
         this.main_mode = "NET_INIT";
         this.main_timeout = 1;
         this.main_execute = "get profiles";
      }
      
      public function net_get_auc_first() : *
      {
         var _loc1_:* = undefined;
         _loc1_ = {"target":{"data":"time=1537135369&price=20&user_id=168567336&last_buy=1350149295&winners=4x77226401x983585x62723410x168567336"}};
         this.net_proceed_auc_first(_loc1_);
      }
      
      public function net_proceed_auc_first(param1:*) : *
      {
         var _loc2_:URLVariables = null;
         _loc2_ = new URLVariables(param1.target.data);
         this.auc_info.user_id = Number(_loc2_.user_id);
         this.auc_info.price = Number(_loc2_.price);
         this.auc_info.last_buy = Number(_loc2_.last_buy);
         this.auc_info.cur_time = Number(_loc2_.time);
         this.auc_info.winners = _loc2_.winners;
         if(this.LOCAL_TEST)
         {
            this.net_initialized();
            return;
         }
         this.loading_screen.stat_text.text = "Инициализация...";
         this.loading_screen.loading.text = "3 / " + this.INIT_STAGES;
         this.main_mode = "NET_INIT";
         this.main_timeout = 40;
         this.main_execute = "get user id";
      }
      
      public function net_check_auc() : *
      {
         this.net_proceed_auc({"target":{"data":"time=1537221461&price=20&user_id=168567336&last_buy=1350149295&winners=4x77226401x983585x62723410x168567336"}});
      }
      
      public function net_proceed_auc(param1:*) : *
      {
         var _loc2_:URLVariables = null;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc2_ = new URLVariables(param1.target.data);
         this.auc_info.user_id = Number(_loc2_.user_id);
         this.auc_info.price = Number(_loc2_.price);
         this.auc_info.last_buy = Number(_loc2_.last_buy);
         this.auc_info.cur_time = Number(_loc2_.time);
         this.auc_info.winners = _loc2_.winners;
         _loc3_ = Number(this.auc_info.winners.split("x")[0]);
         this.win_auc_weapons.annihilator = 0;
         _loc4_ = 1;
         while(_loc4_ <= _loc3_)
         {
            if(Number(this.auc_info.winners.split("x")[_loc4_] == this.user.user_id))
            {
               ++this.win_auc_weapons.annihilator;
            }
            _loc4_++;
         }
         if(this.auc_info.user_id == this.user.user_id)
         {
            this.auc_weapons.annihilator = 1;
         }
         else
         {
            this.auc_weapons.annihilator = 0;
         }
         this.write_storage();
         if(this.string_to_save.length == 4000)
         {
            this.main_mode = "NET_INIT";
            this.main_timeout = 40;
            this.main_execute = "refresh time";
         }
         else
         {
            this.main_mode = "IDLE";
         }
         this.execute_after = "init game";
      }
      
      public function net_init_check_auc_mf() : *
      {
         this.display_system.addChild(this.splash_wait);
         this.main_mode = "NET_INIT";
         this.main_timeout = 40;
         this.main_execute = "get balance auc";
      }
      
      public function net_check_auc_mainframe() : *
      {
         this.net_proceed_auc_mainframe({"target":{"data":"time=1537221461&price=20&user_id=168567336&last_buy=1350149295&winners=4x77226401x983585x62723410x168567336"}});
      }
      
      public function net_proceed_auc_mainframe(param1:*) : *
      {
         var _loc2_:URLVariables = null;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc2_ = new URLVariables(param1.target.data);
         this.auc_info.user_id = Number(_loc2_.user_id);
         this.auc_info.price = Number(_loc2_.price);
         this.auc_info.last_buy = Number(_loc2_.last_buy);
         this.auc_info.cur_time = Number(_loc2_.time);
         this.auc_info.winners = _loc2_.winners;
         _loc3_ = Number(this.auc_info.winners.split("x")[0]);
         this.win_auc_weapons.annihilator = 0;
         _loc4_ = 1;
         while(_loc4_ <= _loc3_)
         {
            if(Number(this.auc_info.winners.split("x")[_loc4_] == this.user.user_id))
            {
               ++this.win_auc_weapons.annihilator;
            }
            _loc4_++;
         }
         if(this.auc_info.user_id == this.user.user_id)
         {
            this.auc_weapons.annihilator = 1;
         }
         else
         {
            this.auc_weapons.annihilator = 0;
         }
         this.main_mode = "NET_INIT";
         this.main_timeout = 40;
         this.main_execute = "get auc profile";
      }
      
      public function net_withdraw_auc() : *
      {
         this.display_system.addChild(this.splash_wait);
      }
      
      public function net_complete_auc(param1:Event) : *
      {
         var _loc2_:URLVariables = null;
         this.display_system.removeChild(this.splash_wait);
         _loc2_ = new URLVariables(param1.target.data);
         if(_loc2_[" response"] == "ok")
         {
            this.auc_info.user_id = this.user.user_id;
            ++this.auc_info.price;
            this.auc_info.last_buy = this.auc_info.cur_time;
            this.auc_weapons.annihilator = 1;
            this._interf.init("error","auc_success");
         }
         else
         {
            this._interf.init("error","auc_fail");
         }
      }
      
      public function init_map_downloading() : *
      {
         this.mapLoader = new Loader();
         this.mapLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.map_downloaded,false,0,true);
         this.mapLoader.loadBytes(this.get_map_byte_array(this.main_map_dl_id));
      }
      
      public function map_downloaded(param1:Event) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = new Bitmap();
         _loc2_ = param1.currentTarget.content.map;
         this.LoadedBitmap = new BitmapData(_loc2_.width,Math.max(650,_loc2_.height),true,0);
         this.LoadedBitmap.copyPixels(_loc2_,new Rectangle(0,0,_loc2_.width,_loc2_.height),new Point(0,650 - _loc2_.height));
         _loc2_.dispose();
         _loc2_ = null;
         try
         {
            new LocalConnection().connect("foo");
            new LocalConnection().connect("foo");
         }
         catch(e:*)
         {
         }
         this.display_system.removeChild(this.splash_wait);
         if(this.main_execute_after_map_dl == "continue preparing game")
         {
            this.continue_preparing_game();
         }
         if(this.main_execute_after_map_dl == "continue preparing just play")
         {
            this.init_game({
               "mode":"just",
               "id":1
            });
         }
         if(this.main_execute_after_map_dl == "init replay")
         {
            this.init_replay();
         }
         this.main_map_dl = false;
      }
      
      public function get_map_byte_array(param1:String) : ByteArray
      {
         switch(param1)
         {
            case "assault1":
               return new ASSET_MAP_ASSAULT_1() as ByteArray;
            case "assault2":
               return new ASSET_MAP_ASSAULT_2() as ByteArray;
            case "assault3":
               return new ASSET_MAP_ASSAULT_3() as ByteArray;
            case "assault4":
               return new ASSET_MAP_ASSAULT_4() as ByteArray;
            case "assault5":
               return new ASSET_MAP_ASSAULT_5() as ByteArray;
            case "assault6":
               return new ASSET_MAP_ASSAULT_6() as ByteArray;
            case "assault7":
               return new ASSET_MAP_ASSAULT_7() as ByteArray;
            case "assault8":
               return new ASSET_MAP_ASSAULT_8() as ByteArray;
            case "assault9":
               return new ASSET_MAP_ASSAULT_9() as ByteArray;
            case "assault10":
               return new ASSET_MAP_ASSAULT_10() as ByteArray;
            case "assault11":
               return new ASSET_MAP_ASSAULT_11() as ByteArray;
            case "assault12":
               return new ASSET_MAP_ASSAULT_12() as ByteArray;
            case "assault13":
               return new ASSET_MAP_ASSAULT_13() as ByteArray;
            case "assault14":
               return new ASSET_MAP_ASSAULT_14() as ByteArray;
            case "assault15":
               return new ASSET_MAP_ASSAULT_15() as ByteArray;
            case "assault16":
               return new ASSET_MAP_ASSAULT_16() as ByteArray;
            case "assault17":
               return new ASSET_MAP_ASSAULT_17() as ByteArray;
            case "boss1":
               return new ASSET_MAP_BOSS_1() as ByteArray;
            case "boss2":
               return new ASSET_MAP_BOSS_2() as ByteArray;
            case "boss3":
               return new ASSET_MAP_BOSS_3() as ByteArray;
            case "boss4":
               return new ASSET_MAP_BOSS_4() as ByteArray;
            case "boss5":
               return new ASSET_MAP_BOSS_5() as ByteArray;
            case "boss6":
               return new ASSET_MAP_BOSS_6() as ByteArray;
            case "boss7":
               return new ASSET_MAP_BOSS_7() as ByteArray;
            case "boss8":
               return new ASSET_MAP_BOSS_8() as ByteArray;
            case "boss9":
               return new ASSET_MAP_BOSS_9() as ByteArray;
            case "boss10":
               return new ASSET_MAP_BOSS_10() as ByteArray;
            case "boss11":
               return new ASSET_MAP_BOSS_11() as ByteArray;
            case "boss12":
               return new ASSET_MAP_BOSS_12() as ByteArray;
            case "boss13":
               return new ASSET_MAP_BOSS_13() as ByteArray;
            case "forbidden1":
               return new ASSET_MAP_FORBIDDEN_1() as ByteArray;
            case "forbidden2":
               return new ASSET_MAP_FORBIDDEN_2() as ByteArray;
            case "forbidden3":
               return new ASSET_MAP_FORBIDDEN_3() as ByteArray;
            case "forbidden4":
               return new ASSET_MAP_FORBIDDEN_4() as ByteArray;
            case "forbidden5":
               return new ASSET_MAP_FORBIDDEN_5() as ByteArray;
            case "forbidden6":
               return new ASSET_MAP_FORBIDDEN_6() as ByteArray;
            case "forbidden7":
               return new ASSET_MAP_FORBIDDEN_7() as ByteArray;
            case "forbidden8":
               return new ASSET_MAP_FORBIDDEN_8() as ByteArray;
            case "forbidden9":
               return new ASSET_MAP_FORBIDDEN_9() as ByteArray;
            case "forbidden10":
               return new ASSET_MAP_FORBIDDEN_10() as ByteArray;
            case "mission1":
               return new ASSET_MAP_MISSION_1() as ByteArray;
            case "mission2":
               return new ASSET_MAP_MISSION_2() as ByteArray;
            case "mission3":
               return new ASSET_MAP_MISSION_3() as ByteArray;
            case "mission4":
               return new ASSET_MAP_MISSION_4() as ByteArray;
            case "mission5":
               return new ASSET_MAP_MISSION_5() as ByteArray;
            case "mission6":
               return new ASSET_MAP_MISSION_6() as ByteArray;
            case "mission7":
               return new ASSET_MAP_MISSION_7() as ByteArray;
            case "mission8":
               return new ASSET_MAP_MISSION_8() as ByteArray;
            case "mission9":
               return new ASSET_MAP_MISSION_9() as ByteArray;
            case "mission10":
               return new ASSET_MAP_MISSION_10() as ByteArray;
            case "mission11":
               return new ASSET_MAP_MISSION_11() as ByteArray;
            case "mission12":
               return new ASSET_MAP_MISSION_12() as ByteArray;
            case "mission13":
               return new ASSET_MAP_MISSION_13() as ByteArray;
            case "mission14":
               return new ASSET_MAP_MISSION_14() as ByteArray;
            case "mission15":
               return new ASSET_MAP_MISSION_15() as ByteArray;
            case "mission16":
               return new ASSET_MAP_MISSION_16() as ByteArray;
            case "mission17":
               return new ASSET_MAP_MISSION_17() as ByteArray;
            case "mission18":
               return new ASSET_MAP_MISSION_18() as ByteArray;
            case "mission19":
               return new ASSET_MAP_MISSION_19() as ByteArray;
            case "mission20":
               return new ASSET_MAP_MISSION_20() as ByteArray;
            case "mission21":
               return new ASSET_MAP_MISSION_21() as ByteArray;
            case "molivand1":
               return new ASSET_MAP_MOLIVAND_1() as ByteArray;
            case "molivand2":
               return new ASSET_MAP_MOLIVAND_2() as ByteArray;
            case "molivand3":
               return new ASSET_MAP_MOLIVAND_3() as ByteArray;
            case "molivand4":
               return new ASSET_MAP_MOLIVAND_4() as ByteArray;
            case "molivand5":
               return new ASSET_MAP_MOLIVAND_5() as ByteArray;
            case "rolitrad1":
               return new ASSET_MAP_ROLITRAD_1() as ByteArray;
            case "rolitrad2":
               return new ASSET_MAP_ROLITRAD_2() as ByteArray;
            case "rolitrad3":
               return new ASSET_MAP_ROLITRAD_3() as ByteArray;
            case "rolitrad4":
               return new ASSET_MAP_ROLITRAD_4() as ByteArray;
            case "rolitrad5":
               return new ASSET_MAP_ROLITRAD_5() as ByteArray;
            case "sheovar1":
               return new ASSET_MAP_SHEOVAR_1() as ByteArray;
            case "sheovar2":
               return new ASSET_MAP_SHEOVAR_2() as ByteArray;
            case "sheovar3":
               return new ASSET_MAP_SHEOVAR_3() as ByteArray;
            case "sheovar4":
               return new ASSET_MAP_SHEOVAR_4() as ByteArray;
            case "sheovar5":
               return new ASSET_MAP_SHEOVAR_5() as ByteArray;
            case "traver1":
               return new ASSET_MAP_TRAVER_1() as ByteArray;
            case "traver2":
               return new ASSET_MAP_TRAVER_2() as ByteArray;
            case "traver3":
               return new ASSET_MAP_TRAVER_3() as ByteArray;
            case "traver4":
               return new ASSET_MAP_TRAVER_4() as ByteArray;
            case "traver5":
               return new ASSET_MAP_TRAVER_5() as ByteArray;
            case "wormville1":
               return new ASSET_MAP_WORMVILLE_1() as ByteArray;
            case "wormville2":
               return new ASSET_MAP_WORMVILLE_2() as ByteArray;
            case "wormville3":
               return new ASSET_MAP_WORMVILLE_3() as ByteArray;
            case "wormville4":
               return new ASSET_MAP_WORMVILLE_4() as ByteArray;
            case "wormville5":
               return new ASSET_MAP_WORMVILLE_5() as ByteArray;
            default:
               return null;
         }
      }
      
      public function prepare_game(param1:Boolean = false) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         if(param1)
         {
            this._interf.play_type = "assault";
         }
         this._play_mode = this._interf.play_type;
         this._play_id = this._interf.cur_element;
         _loc2_ = 0;
         if(this.player.perks["less_tired"])
         {
            _loc2_ = this.get_perk_effect("less_tired",this.player.perks.less_tired,"");
         }
         if(this.player.spec == 3)
         {
            _loc2_ = this.get_perk_effect("less_tired",3,"");
         }
         this.player.tired += this.TIRED_INC - _loc2_;
         if(this._play_mode == "career")
         {
            ++this.player.career_attempt;
         }
         if(this._play_mode == "missions")
         {
            ++this.player.missions_attempt;
         }
         if(this._play_mode == "survival")
         {
            ++this.player.survival_attempt;
         }
         if(this._play_mode == "boss")
         {
            ++this.player.boss_attempt;
         }
         if(this.player.tired > 3599)
         {
            this.player.tired = 3599;
         }
         if(this.player.career_attempt > 50)
         {
            this.player.career_attempt = 50;
         }
         if(this.player.missions_attempt > 50)
         {
            this.player.missions_attempt = 50;
         }
         if(this.player.survival_attempt > 50)
         {
            this.player.survival_attempt = 50;
         }
         if(this.player.boss_attempt > 50)
         {
            this.player.boss_attempt = 50;
         }
         _loc3_ = 0;
         for(_loc4_ in this.player.stim_to_fight)
         {
            this.player.tired += this.STIM_DEF[_loc4_].tired * this.player.stim_to_fight[_loc4_];
            _loc3_ += this.player.stim_to_fight[_loc4_];
         }
         this.player.achiev["stims"] += _loc3_;
         if(_loc3_ > 1 && this.player.cur_task == 6)
         {
            this.player.cur_task = 7;
         }
         if(this.player.tired < 0)
         {
            this.player.tired = 0;
         }
         this.saved_stims = this.clone(this.player.stim_to_fight);
         this.player.stim_to_fight = {};
         if(this._play_mode == "career")
         {
            _loc5_ = this.TEAMS_DEF["career" + this._play_id];
         }
         if(this._play_mode == "missions")
         {
            _loc5_ = this.TEAMS_DEF["mission" + this._play_id];
         }
         if(this._play_mode == "survival")
         {
            _loc5_ = this.TEAMS_DEF["survival" + this._play_id];
         }
         if(this._play_mode == "boss")
         {
            _loc5_ = this.TEAMS_DEF["boss" + this._play_id];
         }
         if(this._play_mode == "assault")
         {
            _loc5_ = this.TEAMS_DEF["assault" + this._play_id];
         }
         this.display_system.addChild(this.splash_wait);
         this.main_map_dl = true;
         this.main_map_dl_id = _loc5_.map;
         this.main_execute_after_map_dl = "continue preparing game";
         this.init_map_downloading();
      }
      
      public function continue_preparing_game() : *
      {
         if(this.LOCAL_TEST || this.user.user_id == 77226401 && this.flashVars.api_id == 4329578)
         {
            this.init_game({
               "mode":this._play_mode,
               "id":this._play_id
            });
         }
         else
         {
            this.display_system.addChild(this.splash_wait);
            this.net_check_auc();
         }
      }
      
      public function init_just_play() : *
      {
         this._play_mode = "just";
         this.display_system.addChild(this.splash_wait);
         this.main_map_dl = true;
         this.main_map_dl_id = this._interf.barracks.map;
         this.main_execute_after_map_dl = "continue preparing just play";
         this.init_map_downloading();
      }
      
      public function init_game(param1:Object) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         this.REPLAY_STRING = "";
         if(param1.mode == "career")
         {
            _loc2_ = this.TEAMS_DEF["career" + param1.id];
         }
         if(param1.mode == "missions")
         {
            _loc2_ = this.TEAMS_DEF["mission" + param1.id];
         }
         if(param1.mode == "survival")
         {
            _loc2_ = this.TEAMS_DEF["survival" + param1.id];
         }
         if(param1.mode == "boss")
         {
            _loc2_ = this.TEAMS_DEF["boss" + param1.id];
         }
         if(param1.mode == "assault")
         {
            _loc2_ = this.TEAMS_DEF["assault" + param1.id];
         }
         if(param1.mode == "just")
         {
            _loc2_ = this._interf.barracks;
         }
         this._interf.remove_all();
         this._interf.init_game_menu();
         this.add_proc();
         this.add_world(_loc2_.map,_loc2_.water,_loc2_.bg_type,_loc2_.bg_mode);
         this.display_front_world.addChild(this._world.objects.water_front);
         this.display_back_world.addChild(this._world.objects.background);
         this.display_back_world.addChild(this._world.objects.bg_art);
         this.display_back_world.addChild(this._world.objects.water_back);
         this.display_back_world.addChild(this._world.objects.map);
         this.main_mode = "LOCAL_GAME";
         _loc3_ = {};
         _loc3_.weapons = {};
         _loc3_.worms = Math.min(2 + this.player.worms.value,_loc2_.worm_limit);
         _loc3_.color = this.C_BLUE;
         _loc3_.name = this.user.name;
         _loc3_.cpu_level = 0;
         _loc4_ = {
            "attack":this.player.attack.value,
            "protect":this.player.protect.value,
            "health":100 + 50 * this.player.health.value,
            "worms":2 + this.player.worms.value,
            "tired":this.player.tired,
            "stim_to_fight":this.saved_stims,
            "impl":this.player.cur_impl
         };
         _loc5_ = this.get_affected_skills(_loc4_);
         _loc6_ = 1;
         while(_loc6_ <= _loc3_.worms)
         {
            _loc3_["worm" + _loc6_] = {
               "attack":_loc5_.attack,
               "protect":_loc5_.protect,
               "health":_loc5_.health,
               "spec":this.player.spec,
               "perks":{},
               "name":"Worm " + _loc6_
            };
            for(_loc8_ in this.player.perks)
            {
               _loc3_["worm" + _loc6_].perks[_loc8_] = this.player.perks[_loc8_];
            }
            _loc6_++;
         }
         for(_loc7_ in this.player.weapons)
         {
            _loc3_.weapons[_loc7_] = [0,0,0,0,0,0,0,0,0,0,0];
            _loc9_ = 1;
            while(_loc9_ <= this.player.weapons[_loc7_][0])
            {
               ++_loc3_.weapons[_loc7_][this.player.weapons[_loc7_][_loc9_].range];
               _loc9_++;
            }
         }
         if(this.win_auc_weapons.annihilator != 0 || this.auc_weapons.annihilator != 0)
         {
            _loc3_.weapons["annihilator"] = [0,this.win_auc_weapons.annihilator + this.auc_weapons.annihilator,0,0,0,0,0,0,0,0,0];
         }
         this._proc.init_gameplay(_loc3_,_loc2_,param1.mode,param1.id);
         this.init_listeners();
      }
      
      public function prepare_replay() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         _loc1_ = this.REPLAY_STRING.split("!")[1];
         this.REPLAY_STRING_MOVES = this.REPLAY_STRING.split("!")[2];
         _loc2_ = "DD";
         if(this.REPLAY_STRING.search("!DD") != -1)
         {
            _loc2_ = "DD";
         }
         if(this.REPLAY_STRING.search("!DE") != -1)
         {
            _loc2_ = "DE";
         }
         _loc3_ = _loc1_.split(_loc2_)[1].charAt(0);
         if(_loc3_ == "c")
         {
            _loc3_ = "career";
         }
         if(_loc3_ == "m")
         {
            _loc3_ = "missions";
         }
         if(_loc3_ == "s")
         {
            _loc3_ = "survival";
         }
         if(_loc3_ == "b")
         {
            _loc3_ = "boss";
         }
         _loc4_ = this.decode_replay_number(_loc1_.split("I")[1].split("$")[0]);
         if(_loc3_ == "career")
         {
            _loc5_ = this.TEAMS_DEF["career" + _loc4_];
         }
         if(_loc3_ == "missions")
         {
            _loc5_ = this.TEAMS_DEF["mission" + _loc4_];
         }
         if(_loc3_ == "survival")
         {
            _loc5_ = this.TEAMS_DEF["survival" + _loc4_];
         }
         if(_loc3_ == "boss")
         {
            _loc5_ = this.TEAMS_DEF["boss" + _loc4_];
         }
         this.display_system.addChild(this.splash_wait);
         this.main_map_dl = true;
         this.main_map_dl_id = _loc5_.map;
         this.main_execute_after_map_dl = "init replay";
         this.init_map_downloading();
      }
      
      public function init_replay() : *
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
         this.REPLAY = true;
         _loc1_ = this.REPLAY_STRING.split("!")[1];
         this.REPLAY_STRING_MOVES = this.REPLAY_STRING.split("!")[2];
         _loc2_ = "DD";
         if(this.REPLAY_STRING.search("!DD") != -1)
         {
            _loc2_ = "DD";
         }
         if(this.REPLAY_STRING.search("!DE") != -1)
         {
            _loc2_ = "DE";
         }
         _loc3_ = _loc1_.split(_loc2_)[1].charAt(0);
         if(_loc3_ == "c")
         {
            _loc3_ = "career";
         }
         if(_loc3_ == "m")
         {
            _loc3_ = "missions";
         }
         if(_loc3_ == "s")
         {
            _loc3_ = "survival";
         }
         if(_loc3_ == "b")
         {
            _loc3_ = "boss";
         }
         _loc4_ = this.decode_replay_number(_loc1_.split("I")[1].split("$")[0]);
         _loc5_ = this.decode_replay_number(_loc1_.split("R")[1].split("$")[0]);
         _loc6_ = this.decode_replay_number(_loc1_.split("P")[1].split("$")[0]);
         _loc7_ = this.decode_replay_number(_loc1_.split("P")[1].split("$")[1]);
         _loc8_ = this.decode_replay_number(_loc1_.split("P")[1].split("$")[2]);
         _loc9_ = this.decode_replay_number(_loc1_.split("P")[1].split("$")[3]);
         _loc10_ = this.decode_replay_number(_loc1_.split("P")[1].split("$")[4]);
         _loc11_ = this.decode_replay_number(_loc1_.split("P")[1].split("$")[5]);
         _loc13_ = (_loc12_ = _loc1_.split("S")[1].split("Z")[0]).split("$");
         _loc14_ = {};
         _loc15_ = 0;
         while(_loc15_ < _loc13_.length - 1)
         {
            _loc21_ = this.decode_replay_number(_loc13_[_loc15_].split("%")[0]);
            _loc22_ = this.decode_replay_number(_loc13_[_loc15_].split("%")[1]);
            for(_loc23_ in this.PERKS_DEF)
            {
               if(this.PERKS_DEF[_loc23_].id == _loc21_)
               {
                  _loc14_[_loc23_] = _loc22_;
               }
            }
            _loc15_++;
         }
         _loc16_ = this.decode_replay_number(_loc1_.split("Z")[1].split("$")[0]);
         _loc17_ = 0;
         if(_loc2_ == "DE")
         {
            _loc17_ = this.decode_replay_number(_loc1_.split("X")[1].split("$")[0]);
         }
         this.player_perks_saved = {};
         this.player_perks_saved = this.clone(this.player.perks);
         this.player.perks = {};
         this.player.perks = this.clone(_loc14_);
         this.player_tired_saved = this.player.tired;
         this.player.tired = _loc11_;
         this.player.impl_saved = this.player.cur_impl;
         this.player.cur_impl = _loc17_;
         this.player_skill_saved = this.player.settings.skill;
         this.player.settings.skill = _loc16_;
         if(_loc3_ == "career")
         {
            _loc18_ = this.TEAMS_DEF["career" + _loc4_];
         }
         if(_loc3_ == "missions")
         {
            _loc18_ = this.TEAMS_DEF["mission" + _loc4_];
         }
         if(_loc3_ == "survival")
         {
            _loc18_ = this.TEAMS_DEF["survival" + _loc4_];
         }
         if(_loc3_ == "boss")
         {
            _loc18_ = this.TEAMS_DEF["boss" + _loc4_];
         }
         this._interf.remove_all();
         this._interf.init_game_menu();
         this.add_proc();
         this.add_world(_loc18_.map,_loc18_.water,_loc18_.bg_type,_loc18_.bg_mode);
         this.display_front_world.addChild(this._world.objects.water_front);
         this.display_back_world.addChild(this._world.objects.background);
         this.display_back_world.addChild(this._world.objects.bg_art);
         this.display_back_world.addChild(this._world.objects.water_back);
         this.display_back_world.addChild(this._world.objects.map);
         this.main_mode = "LOCAL_GAME";
         (_loc19_ = {}).weapons = {};
         _loc19_.worms = Math.min(_loc10_,_loc18_.worm_limit);
         _loc19_.color = this.C_BLUE;
         _loc19_.name = "Игрок";
         _loc19_.cpu_level = 0;
         _loc15_ = 1;
         while(_loc15_ <= _loc19_.worms)
         {
            _loc19_["worm" + _loc15_] = {
               "attack":_loc6_,
               "protect":_loc7_,
               "health":_loc8_,
               "spec":_loc9_,
               "perks":{},
               "name":"Worm " + _loc15_
            };
            for(_loc24_ in this.player.perks)
            {
               _loc19_["worm" + _loc15_].perks[_loc24_] = this.player.perks[_loc24_];
            }
            _loc15_++;
         }
         for(_loc20_ in this.WEAPONS_DEF)
         {
            _loc19_.weapons[_loc20_] = [0,100,100,100,100,100,100,100,100,100,100];
         }
         this.replay_cur_random = _loc5_;
         this._proc.init_gameplay(_loc19_,_loc18_,_loc3_,_loc4_);
         this.init_listeners();
      }
      
      public function end_game_fn(param1:Number) : *
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
         if(this.REPLAY)
         {
            this.end_replay();
            return;
         }
         this.REPLAY_STRING = "!" + this._proc.PARAMS_RECORD + "!" + this._proc.ROUNDS_RECORD;
         _loc3_ = 0;
         _loc2_ = 0;
         while(_loc2_ <= this.REPLAY_STRING.length - 1)
         {
            _loc3_ += this.REPLAY_STRING.charCodeAt(_loc2_);
            _loc2_++;
         }
         this.REPLAY_STRING += "!" + this.encode_replay_number(_loc3_).charAt(0) + "!";
         this.REPLAY_STRING = "";
         this.init_data_arrays();
         _loc4_ = this.clone(this._proc.ach_killed);
         _loc5_ = this._proc.ach_paralyzed;
         _loc6_ = this._proc.ach_annihilated;
         _loc7_ = this._proc.ach_injure;
         _loc8_ = this._proc.ach_kill;
         _loc9_ = [0,{}];
         _loc10_ = 1;
         while(_loc10_ <= this._proc.OBJ[0])
         {
            if(!this._proc.OBJ[_loc10_].free)
            {
               if(this._obj[this._proc.OBJ[_loc10_].fid].model == "G" && this._obj[this._proc.OBJ[_loc10_].fid].wteam != 1)
               {
                  ++_loc9_[0];
                  _loc9_[_loc9_[0]] = {
                     "name":this._obj[this._proc.OBJ[_loc10_].fid].wname,
                     "cpu_level":this._proc.teams[this._obj[this._proc.OBJ[_loc10_].fid].wteam].cpu_level
                  };
               }
               this._proc.remove_object(this._obj[this._proc.OBJ[_loc10_].fid],_loc10_,false);
            }
            _loc10_++;
         }
         if(this._play_mode == "boss" || this._play_mode == "assault")
         {
            this.display_obj.removeChild(this._proc.ag_animation);
            this._proc.ag_animation = null;
         }
         this._proc = null;
         this.display_front_world.removeChild(this._world.objects.water_front);
         this.display_back_world.removeChild(this._world.objects.background);
         this.display_back_world.removeChild(this._world.objects.bg_art);
         this.display_back_world.removeChild(this._world.objects.map);
         this.display_back_world.removeChild(this._world.objects.water_back);
         this._world.destructor();
         this._world = null;
         if(this._play_mode == "just" || this._play_mode == "assault")
         {
            this.REPLAY_STRING = "";
         }
         else
         {
            this.replay_play_mode = this._play_mode;
            this.replay_play_id = this._play_id;
         }
         this._interf.remove_all();
         this._interf.init_mainframe();
         this.refresh_temp_params();
         this.main_mode = "IDLE";
         this.end_game = {
            "win":(param1 == 1 ? true : false),
            "exp_bonus":0,
            "gold_bonus":0,
            "rating_bonus":0,
            "levels_upg":0,
            "diam_bonus":0,
            "skill_pts":0,
            "perk_pts":0,
            "surprise_weapons":[0,""],
            "game_stage":this._play_id,
            "game_mode":this._play_mode,
            "graves":_loc9_
         };
         if(param1 == 1 && this._play_mode != "just")
         {
            ++this.player.today_wins;
            this.end_game.rating_bonus = 1 + this.get_rating_inc(this.player.today_wins,this.player.yest_wins);
            this.player.rating += this.end_game.rating_bonus;
            this.player.achiev["kill_p"] += _loc4_["p"];
            this.player.achiev["kill_e"] += _loc4_["e"];
            this.player.achiev["kill_a"] += _loc4_["a"];
            this.player.achiev["kill_c"] += _loc4_["c"];
            this.player.achiev["kill_h"] += _loc4_["h"];
            this.player.achiev["kill_f"] += _loc4_["f"];
            this.player.achiev["kill_l"] += _loc4_["l"];
            this.player.achiev["no_death"] += !!_loc8_ ? 0 : 1;
            this.player.achiev["no_injure"] += _loc8_ || _loc7_ ? 0 : 1;
            this.player.achiev["para"] += _loc5_;
            this.player.achiev["annih"] += _loc6_;
            if(this._play_mode == "career" && this.player.cur_task == 1)
            {
               this.player.cur_task = 2;
            }
            if(this._play_mode == "career" && (this.player.settings.skill == 4 || this.player.settings.skill == 14) && this.player.cur_task == 23)
            {
               this.player.cur_task = 24;
            }
            if(this._play_mode == "survival" && this.player.cur_task == 5)
            {
               this.player.cur_task = 6;
            }
            if(this._play_mode == "survival" && this.player.cur_task == 12)
            {
               this.player.cur_task = 13;
            }
            if(this._play_mode == "missions" && this.player.cur_task == 8)
            {
               this.player.cur_task = 9;
            }
            if(this._play_mode == "missions" && this.player.cur_task == 14)
            {
               this.player.cur_task = 15;
            }
            if(this._play_mode == "boss" && this.player.cur_task == 18)
            {
               this.player.cur_task = 19;
            }
            if(this._play_mode == "boss" && this.player.cur_task == 26)
            {
               this.player.cur_task = 27;
            }
            if(this._play_mode == "assault" && this.player.cur_task == 28)
            {
               this.player.cur_task = 29;
            }
            if(this._play_mode == "career")
            {
               _loc12_ = this.TEAMS_DEF["career" + this._play_id];
            }
            if(this._play_mode == "missions")
            {
               _loc12_ = this.TEAMS_DEF["mission" + this._play_id];
            }
            if(this._play_mode == "survival")
            {
               _loc12_ = this.TEAMS_DEF["survival" + this._play_id];
            }
            if(this._play_mode == "boss")
            {
               _loc12_ = this.TEAMS_DEF["boss" + this._play_id];
            }
            if(this._play_mode == "assault")
            {
               _loc12_ = this.TEAMS_DEF["assault" + this._play_id];
            }
            _loc13_ = 100;
            _loc14_ = 1;
            if(this._play_mode == "career")
            {
               if(this.player.career_attempt == 1 && this._play_id == this.player.career_max)
               {
                  _loc14_ = 1.2;
               }
               if(this._play_id < this.player.career_max)
               {
                  _loc14_ = 0.15;
               }
               _loc13_ = this.player.career_max;
               if(this.player.career_max == this._play_id)
               {
                  ++this.player.career_max;
                  this.player.career_attempt = 0;
               }
            }
            else if(this._play_mode == "missions")
            {
               if(this.player.missions_attempt == 1 && this._play_id == this.player.missions_max)
               {
                  _loc14_ = 1.2;
               }
               if(this._play_id < this.player.missions_max)
               {
                  _loc14_ = 0.15;
               }
               _loc13_ = this.player.missions_max;
               if(this.player.missions_max == this._play_id)
               {
                  ++this.player.missions_max;
                  this.player.missions_attempt = 0;
               }
            }
            else if(this._play_mode == "survival")
            {
               if(this.player.survival_attempt == 1 && this._play_id == this.player.survival_max)
               {
                  _loc14_ = 1.2;
               }
               if(this._play_id < this.player.survival_max)
               {
                  _loc14_ = 0.15;
               }
               _loc13_ = this.player.survival_max;
               if(this.player.survival_max == this._play_id)
               {
                  ++this.player.survival_max;
                  this.player.survival_attempt = 0;
               }
            }
            else if(this._play_mode == "boss")
            {
               if(this.player.boss_attempt == 1 && this._play_id == this.player.boss_max)
               {
                  _loc14_ = 1.2;
               }
               if(this._play_id < this.player.boss_max)
               {
                  _loc14_ = 0.15;
               }
               _loc13_ = this.player.boss_max;
               if(this.player.boss_max == this._play_id)
               {
                  ++this.player.boss_max;
                  this.player.boss_attempt = 0;
               }
            }
            _loc15_ = 1;
            if(this.player.perks["champion"])
            {
               _loc15_ = this.get_perk_effect("champion",this.player.perks.champion,"");
            }
            _loc16_ = 1;
            if(this.player.perks["more_exp"])
            {
               _loc16_ = this.get_perk_effect("more_exp",this.player.perks.more_exp,"");
            }
            if(this.player.spec == 4)
            {
               _loc16_ = this.get_perk_effect("more_exp",3,"");
            }
            if(this._play_mode != "assault")
            {
               _loc17_ = Math.round(_loc12_.gold * _loc14_ * _loc15_ * this.get_skill_multi("gold") * this.get_hardcore_multi(this._play_id,_loc13_));
               _loc18_ = Math.round(_loc12_.exp * _loc14_ * _loc16_ * this.get_skill_multi("exp") * this.get_hardcore_multi(this._play_id,_loc13_));
            }
            else
            {
               _loc17_ = Math.round(_loc12_.gold * _loc15_);
               _loc18_ = Math.round(_loc12_.exp * _loc16_);
            }
            this.player.gold.value += _loc17_;
            this.player.exp.value += _loc18_;
            this.end_game.gold_bonus = _loc17_;
            this.end_game.exp_bonus = _loc18_;
            this.check_new_level();
         }
         if(this._play_mode != "just" && this._play_mode != "assault" && this.end_game.win)
         {
            this.execute_after = "init win or lose";
            this.init_save_params();
            return;
         }
         if(this._play_mode == "assault" && this.end_game.win)
         {
            ++this.player.achiev["assault"];
            this.net_get_assault();
            return;
         }
         if(this._play_mode != "just")
         {
            this._interf.init_win_or_lose();
         }
      }
      
      public function end_replay() : *
      {
         var _loc1_:* = undefined;
         this.REPLAY = false;
         this.REPLAY_STRING = "";
         this.init_data_arrays();
         _loc1_ = 1;
         while(_loc1_ <= this._proc.OBJ[0])
         {
            if(!this._proc.OBJ[_loc1_].free)
            {
               this._proc.remove_object(this._obj[this._proc.OBJ[_loc1_].fid],_loc1_,false);
            }
            _loc1_++;
         }
         this._proc = null;
         this.display_front_world.removeChild(this._world.objects.water_front);
         this.display_back_world.removeChild(this._world.objects.background);
         this.display_back_world.removeChild(this._world.objects.map);
         this.display_back_world.removeChild(this._world.objects.water_back);
         this._world.destructor();
         this._world = null;
         this.player.perks = {};
         this.player.perks = this.clone(this.player_perks_saved);
         this.player_perks_saved = {};
         this.player.tired = this.player_tired_saved;
         this.player_tired_saved = 0;
         this.player.cur_impl = this.player_impl_saved;
         this.player_impl_saved = 0;
         this.player.settings.skill = this.player_skill_saved;
         this._interf.remove_all();
         this._interf.init_mainframe();
         this.refresh_temp_params();
         this.main_mode = "IDLE";
      }
      
      public function check_new_level() : *
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
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         _loc2_ = 0;
         _loc3_ = this.get_player_level(this.player.exp.value);
         if((_loc4_ = this.player.level.value) != _loc3_)
         {
            _loc2_ = _loc3_ - _loc4_;
            this.player.rating += 100 * _loc2_;
            this.end_game.levels_upg = _loc2_;
            _loc5_ = 0;
            if(this.player.perks["education"])
            {
               _loc5_ = this.get_perk_effect("education",this.player.perks.education,"");
            }
            _loc6_ = 0;
            if(this.player.perks["legioner"])
            {
               _loc6_ = this.get_perk_effect("legioner",this.player.perks.legioner,"");
            }
            this.end_game.skill_pts = (15 + _loc6_) * _loc2_;
            this.end_game.perk_pts = (20 + _loc5_) * _loc2_;
            this.player.skill_pts.value += this.end_game.skill_pts;
            this.player.perk_pts.value += this.end_game.perk_pts;
            if(this.player.cur_task == 3)
            {
               this.player.cur_task = 4;
            }
            if(this.player.cur_task == 9)
            {
               this.player.cur_task = 10;
            }
            if(Math.floor(_loc3_ / 10) != Math.floor(_loc4_ / 10))
            {
               this.end_game.diam_bonus = (Math.floor(_loc3_ / 10) - Math.floor(_loc4_ / 10)) * 10;
               this.player.diam.value += this.end_game.diam_bonus;
            }
            if(this.player.perks["surprise"])
            {
               _loc7_ = 1;
               while(_loc7_ <= _loc2_)
               {
                  _loc8_ = "";
                  _loc9_ = this.ROUL_VER["surprise_" + this.player.perks["surprise"]];
                  _loc10_ = new Array(_loc9_[0],0);
                  _loc1_ = 1;
                  while(_loc1_ <= 7)
                  {
                     _loc10_[_loc1_] = _loc9_[_loc1_] + _loc10_[_loc1_ - 1];
                     _loc1_++;
                  }
                  _loc11_ = 0;
                  _loc12_ = this.true_random(0,99);
                  _loc13_ = 0;
                  while(_loc13_ <= 7)
                  {
                     if(_loc12_ < _loc10_[_loc13_])
                     {
                        _loc11_ = _loc13_;
                        break;
                     }
                     _loc13_++;
                  }
                  if(_loc11_ != 0)
                  {
                     do
                     {
                        _loc14_ = this.true_random(1,200);
                        for(_loc15_ in this.WEAPONS_DEF)
                        {
                           if(this.WEAPONS_DEF[_loc15_].id == _loc14_ && this.WEAPONS_DEF[_loc15_].id != 61 && _loc15_.search("rez") == -1)
                           {
                              if(this.WEAPONS_DEF[_loc15_].wpclass == _loc11_ && this.end_game.surprise_weapons[_loc7_ - 1] != _loc15_)
                              {
                                 _loc8_ = _loc15_;
                              }
                           }
                        }
                     }
                     while(_loc8_ == "");
                     
                     if(this.player.weapons[_loc8_] && this.player.weapons[_loc8_][0] < this.WEAPONS_DEF[_loc8_].limit)
                     {
                        ++this.player.weapons[_loc8_][0];
                        this.player.weapons[_loc8_][this.player.weapons[_loc8_][0]] = {
                           "range":1,
                           "stolen":false,
                           "crafted":false
                        };
                     }
                     else if(!this.player.weapons[_loc8_])
                     {
                        this.player.weapons[_loc8_] = [1,{
                           "range":1,
                           "stolen":false,
                           "crafted":false
                        }];
                     }
                     this.end_game.surprise_weapons[_loc7_] = _loc8_;
                     ++this.end_game.surprise_weapons[0];
                  }
                  _loc7_++;
               }
            }
         }
      }
      
      public function init_listeners() : *
      {
         stage.addEventListener(Event.ENTER_FRAME,this._keylistener,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keylistener_downkey,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.keylistener_upkey,false,0,true);
      }
      
      public function _keylistener(param1:Event) : *
      {
         this.KEY_PRESSED = "none";
         this.QUICK_WEAPON_PRESSED = "";
         this.SPACE_PRESSED = this.KEYS_ARRAY[6];
         if(this.KEYS_ARRAY[7])
         {
            this.KEY_PRESSED = "1";
         }
         if(this.KEYS_ARRAY[8])
         {
            this.KEY_PRESSED = "2";
         }
         if(this.KEYS_ARRAY[9])
         {
            this.KEY_PRESSED = "3";
         }
         if(this.KEYS_ARRAY[10])
         {
            this.KEY_PRESSED = "4";
         }
         if(this.KEYS_ARRAY[11])
         {
            this.KEY_PRESSED = "5";
         }
         if(this.KEYS_ARRAY[12])
         {
            this.KEY_PRESSED = "-";
         }
         if(this.KEYS_ARRAY[13])
         {
            this.KEY_PRESSED = "+";
         }
         if(this.KEYS_ARRAY[2])
         {
            this.KEY_PRESSED = "up";
         }
         if(this.KEYS_ARRAY[3])
         {
            this.KEY_PRESSED = "down";
         }
         if(this.KEYS_ARRAY[2] && this.KEYS_ARRAY[3])
         {
            this.KEY_PRESSED = "none";
         }
         if(this.KEYS_ARRAY[0])
         {
            this.KEY_PRESSED = "left";
         }
         if(this.KEYS_ARRAY[1])
         {
            this.KEY_PRESSED = "right";
         }
         if(this.KEYS_ARRAY[0] && this.KEYS_ARRAY[1])
         {
            this.KEY_PRESSED = "none";
         }
         if(this.KEYS_ARRAY[2] && this.KEYS_ARRAY[0])
         {
            this.KEY_PRESSED = "up+left";
         }
         if(this.KEYS_ARRAY[2] && this.KEYS_ARRAY[1])
         {
            this.KEY_PRESSED = "up+right";
         }
         if(this.KEYS_ARRAY[3] && this.KEYS_ARRAY[0])
         {
            this.KEY_PRESSED = "down+left";
         }
         if(this.KEYS_ARRAY[3] && this.KEYS_ARRAY[1])
         {
            this.KEY_PRESSED = "down+right";
         }
         if(this.KEYS_ARRAY[4])
         {
            this.KEY_PRESSED = "enter";
         }
         if(this.KEYS_ARRAY[5])
         {
            this.KEY_PRESSED = "backspace";
         }
         if(this.KEYS_ARRAY[4] && this.KEYS_ARRAY[5])
         {
            this.KEY_PRESSED = "none";
         }
         if(this.KEYS_ARRAY[14])
         {
            this.KEY_PRESSED = "escape";
         }
         if(this.KEYS_ARRAY[15])
         {
            this.QUICK_WEAPON_PRESSED = "q";
         }
         if(this.KEYS_ARRAY[16])
         {
            this.QUICK_WEAPON_PRESSED = "z";
         }
         if(this.KEYS_ARRAY[17])
         {
            this.QUICK_WEAPON_PRESSED = "x";
         }
         if(this.KEYS_ARRAY[18])
         {
            this.QUICK_WEAPON_PRESSED = "c";
         }
         if(this.KEYS_ARRAY[19])
         {
            this.QUICK_WEAPON_PRESSED = "v";
         }
         if(this.KEYS_ARRAY[20])
         {
            this.QUICK_WEAPON_PRESSED = "b";
         }
         if(this.KEYS_ARRAY[21])
         {
            this.QUICK_WEAPON_PRESSED = "n";
         }
         if(this.KEYS_ARRAY[22])
         {
            this.QUICK_WEAPON_PRESSED = "m";
         }
         if(this.KEYS_ARRAY[23])
         {
            this.QUICK_WEAPON_PRESSED = "k";
         }
         if(this.KEYS_ARRAY[24])
         {
            this.QUICK_WEAPON_PRESSED = "l";
         }
      }
      
      public function keylistener_downkey(param1:KeyboardEvent) : *
      {
         if(param1.keyCode == 37 || param1.keyCode == 65)
         {
            this.KEYS_ARRAY[0] = true;
         }
         if(param1.keyCode == 39 || param1.keyCode == 68)
         {
            this.KEYS_ARRAY[1] = true;
         }
         if(param1.keyCode == 38 || param1.keyCode == 87)
         {
            this.KEYS_ARRAY[2] = true;
         }
         if(param1.keyCode == 40 || param1.keyCode == 83)
         {
            this.KEYS_ARRAY[3] = true;
         }
         if(param1.keyCode == 13 || param1.keyCode == 69)
         {
            this.KEYS_ARRAY[4] = true;
         }
         if(param1.keyCode == 8 || param1.keyCode == 82)
         {
            this.KEYS_ARRAY[5] = true;
         }
         if(param1.keyCode == 32)
         {
            this.KEYS_ARRAY[6] = true;
         }
         if(param1.keyCode == 49)
         {
            this.KEYS_ARRAY[7] = true;
         }
         if(param1.keyCode == 50)
         {
            this.KEYS_ARRAY[8] = true;
         }
         if(param1.keyCode == 51)
         {
            this.KEYS_ARRAY[9] = true;
         }
         if(param1.keyCode == 52)
         {
            this.KEYS_ARRAY[10] = true;
         }
         if(param1.keyCode == 53)
         {
            this.KEYS_ARRAY[11] = true;
         }
         if(param1.keyCode == 189)
         {
            this.KEYS_ARRAY[12] = true;
         }
         if(param1.keyCode == 187)
         {
            this.KEYS_ARRAY[13] = true;
         }
         if(param1.keyCode == 27)
         {
            this.KEYS_ARRAY[14] = true;
         }
         if(param1.keyCode == 81)
         {
            this.KEYS_ARRAY[15] = true;
         }
         if(param1.keyCode == 90)
         {
            this.KEYS_ARRAY[16] = true;
         }
         if(param1.keyCode == 88)
         {
            this.KEYS_ARRAY[17] = true;
         }
         if(param1.keyCode == 67)
         {
            this.KEYS_ARRAY[18] = true;
         }
         if(param1.keyCode == 86)
         {
            this.KEYS_ARRAY[19] = true;
         }
         if(param1.keyCode == 66)
         {
            this.KEYS_ARRAY[20] = true;
         }
         if(param1.keyCode == 78)
         {
            this.KEYS_ARRAY[21] = true;
         }
         if(param1.keyCode == 77)
         {
            this.KEYS_ARRAY[22] = true;
         }
         if(param1.keyCode == 75)
         {
            this.KEYS_ARRAY[23] = true;
         }
         if(param1.keyCode == 76)
         {
            this.KEYS_ARRAY[24] = true;
         }
      }
      
      public function keylistener_upkey(param1:KeyboardEvent) : *
      {
         if(param1.keyCode == 37 || param1.keyCode == 65)
         {
            this.KEYS_ARRAY[0] = false;
         }
         if(param1.keyCode == 39 || param1.keyCode == 68)
         {
            this.KEYS_ARRAY[1] = false;
         }
         if(param1.keyCode == 38 || param1.keyCode == 87)
         {
            this.KEYS_ARRAY[2] = false;
         }
         if(param1.keyCode == 40 || param1.keyCode == 83)
         {
            this.KEYS_ARRAY[3] = false;
         }
         if(param1.keyCode == 13 || param1.keyCode == 69)
         {
            this.KEYS_ARRAY[4] = false;
         }
         if(param1.keyCode == 8 || param1.keyCode == 82)
         {
            this.KEYS_ARRAY[5] = false;
         }
         if(param1.keyCode == 32)
         {
            this.KEYS_ARRAY[6] = false;
         }
         if(param1.keyCode == 49)
         {
            this.KEYS_ARRAY[7] = false;
         }
         if(param1.keyCode == 50)
         {
            this.KEYS_ARRAY[8] = false;
         }
         if(param1.keyCode == 51)
         {
            this.KEYS_ARRAY[9] = false;
         }
         if(param1.keyCode == 52)
         {
            this.KEYS_ARRAY[10] = false;
         }
         if(param1.keyCode == 53)
         {
            this.KEYS_ARRAY[11] = false;
         }
         if(param1.keyCode == 189)
         {
            this.KEYS_ARRAY[12] = false;
         }
         if(param1.keyCode == 187)
         {
            this.KEYS_ARRAY[13] = false;
         }
         if(param1.keyCode == 27)
         {
            this.KEYS_ARRAY[14] = false;
         }
         if(param1.keyCode == 81)
         {
            this.KEYS_ARRAY[15] = false;
         }
         if(param1.keyCode == 90)
         {
            this.KEYS_ARRAY[16] = false;
         }
         if(param1.keyCode == 88)
         {
            this.KEYS_ARRAY[17] = false;
         }
         if(param1.keyCode == 67)
         {
            this.KEYS_ARRAY[18] = false;
         }
         if(param1.keyCode == 86)
         {
            this.KEYS_ARRAY[19] = false;
         }
         if(param1.keyCode == 66)
         {
            this.KEYS_ARRAY[20] = false;
         }
         if(param1.keyCode == 78)
         {
            this.KEYS_ARRAY[21] = false;
         }
         if(param1.keyCode == 77)
         {
            this.KEYS_ARRAY[22] = false;
         }
         if(param1.keyCode == 75)
         {
            this.KEYS_ARRAY[23] = false;
         }
         if(param1.keyCode == 76)
         {
            this.KEYS_ARRAY[24] = false;
         }
      }
      
      public function stage_focus() : *
      {
         stage.focus = this;
      }
      
      public function check_ban(param1:String) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(param1.length == 0)
         {
            return;
         }
         if(param1.charAt(0) == "2" && param1.charAt(3) == " ")
         {
            return;
         }
         if(param1.substr(0,3) == "202")
         {
            return;
         }
         _loc2_ = -1;
         if(param1.charAt(0) == "2")
         {
            _loc2_ = Number(param1.substr(3,param1.length - 3));
         }
         _loc3_ = (_loc2_ - this.user.unix_time) / 60 / 60;
         if(_loc3_ < 0 && _loc2_ != -1)
         {
            return;
         }
         this.main_mode = "IDLE";
         _loc4_ = this._assets[ASSET_ID_FWP].get("_splash_ban");
         this.display_system.addChild(_loc4_);
         _loc4_.mes.text = param1.substr(0,3) + " : " + this.BAN_DESC[Number(param1.substr(0,3))];
         _loc4_.ban_time.htmlText = _loc2_ == -1 ? "Срок бана: <b>бессрочно</b>." : "Срок бана истечет через <b>" + Math.round(_loc3_) + "</b> час.";
      }
      
      public function system_error(param1:String) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = this._assets[ASSET_ID_FWP].get("_splash_system_error");
         this.display_system.addChild(_loc2_);
         _loc2_.mes.text = param1;
      }
      
      public function encode_param(param1:Number) : String
      {
         if(param1 < 26)
         {
            return String.fromCharCode(65 + param1);
         }
         if(param1 < 52)
         {
            return String.fromCharCode(97 - 26 + param1);
         }
         if(param1 < 60)
         {
            return String.fromCharCode(48 - 52 + param1);
         }
         return "A";
      }
      
      public function decode_param(param1:String) : Number
      {
         var _loc2_:* = undefined;
         _loc2_ = param1.charCodeAt(0);
         if(_loc2_ >= 48 && _loc2_ <= 57)
         {
            return _loc2_ + 4;
         }
         if(_loc2_ >= 65 && _loc2_ <= 90)
         {
            return _loc2_ - 65;
         }
         if(_loc2_ >= 97 && _loc2_ <= 122)
         {
            return _loc2_ - 71;
         }
         return 0;
      }
      
      public function read_params(param1:String, param2:String) : *
      {
      }
      
      public function read_storage(param1:String, param2:String = "my") : Number
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         _loc3_ = param1;
         if(param2 != "my")
         {
            if(_loc3_.length == 0)
            {
               this.create_new_params("empty friend");
               return 0;
            }
         }
         _loc4_ = _loc3_.charCodeAt(249);
         _loc5_ = 0;
         if(_loc4_ == 116)
         {
            _loc5_ = this.read_storage_45(param1,param2);
         }
         if(this.player.flags["flag_spec"] == 1 && this.player.missions_max < 20)
         {
            this.player.flags = {};
         }
         if(this.player.exp.value > 0 && this.player.rating == 0)
         {
            this.player.rating = (this.player.level.value - 1) * 100;
         }
         if(param2 == "my")
         {
            if(this.banner_clicked == 1 && this.player.got_cmd_bonus == 0)
            {
               this.player.got_cmd_bonus = 1;
               this.player.diam.value += 10;
            }
         }
         this.read_params_end = true;
         if(param2 == "my" && (_loc4_ == 80 || _loc4_ == 111))
         {
            this.player.spec = 0;
            this.player.diam.value += 10;
            this.player.last_reset = 0;
         }
         return _loc5_;
      }
      
      public function read_storage_45(param1:String, param2:String = "my") : Number
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
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
         _loc6_ = param1;
         if(param2 == "my")
         {
            _loc7_ = this.player;
         }
         else
         {
            _loc7_ = this.get_info;
            if(_loc6_.length == 0)
            {
               this.create_new_params("empty friend");
               return 0;
            }
         }
         if(_loc6_.length == 0)
         {
            return 1;
         }
         _loc8_ = false;
         if(_loc6_.length == 2000)
         {
            _loc8_ = true;
            _loc3_ = 0;
            while(_loc3_ < 2000)
            {
               _loc6_ += "A";
               _loc3_++;
            }
         }
         _loc9_ = new Array();
         _loc3_ = 0;
         while(_loc3_ <= 3999)
         {
            _loc9_[_loc3_] = this.decode_param(_loc6_.charAt(_loc3_));
            _loc3_++;
         }
         var _loc10_:* = new MD5();
         var _loc11_:* = "FWPCOOLLOLOLOL";
         _loc12_ = MD5.hash(_loc6_.substr(0,4000 - 32));
         _loc13_ = _loc6_.substr(4000 - 32,32);
         if(param2 == "my")
         {
            if(_loc12_ != _loc13_ && !_loc8_)
            {
               this.create_new_params("protect");
               this.check_ban("101");
               return 2;
            }
         }
         _loc7_.view_tutorial = _loc9_[1];
         _loc7_.tween = _loc9_[2];
         _loc7_.admin_state = _loc9_[3];
         _loc7_.inc_state = _loc9_[4];
         _loc7_.last_exp = _loc9_[5] + _loc9_[6] * 60 + _loc9_[7] * this.ret_60(2) + _loc9_[8] * this.ret_60(3) + _loc9_[9] * this.ret_60(4);
         _loc7_.exp = new ProtectedInt(_loc9_[11] + _loc9_[12] * 60 + _loc9_[13] * this.ret_60(2) + _loc9_[14] * this.ret_60(3) + _loc9_[15] * this.ret_60(4));
         _loc7_.level = new ProtectedInt(this.get_player_level(_loc7_.exp.value));
         _loc7_.gold = new ProtectedInt(_loc9_[16] + _loc9_[17] * 60 + _loc9_[18] * this.ret_60(2) + _loc9_[19] * this.ret_60(3) + _loc9_[20] * this.ret_60(4));
         _loc7_.diam = new ProtectedInt(_loc9_[21] + _loc9_[22] * 60 + _loc9_[23] * this.ret_60(2) + _loc9_[24] * this.ret_60(3) + _loc9_[25] * this.ret_60(4));
         _loc7_.tired = _loc9_[26] + _loc9_[27] * 60;
         _loc7_.last_tired = _loc9_[28] + _loc9_[29] * 60 + _loc9_[30] * this.ret_60(2) + _loc9_[31] * this.ret_60(3) + _loc9_[32] * this.ret_60(4) + _loc9_[33] * this.ret_60(5);
         _loc7_.last_enter = _loc9_[34] + _loc9_[35] * 60 + _loc9_[36] * this.ret_60(2) + _loc9_[37] * this.ret_60(3) + _loc9_[38] * this.ret_60(4) + _loc9_[39] * this.ret_60(5);
         _loc7_.perk_slots = _loc9_[40];
         if(_loc7_.perk_slots == 0)
         {
            _loc7_.perk_slots = Math.max(2,_loc14_);
         }
         _loc7_.diam_magnet = _loc9_[41];
         _loc7_.quick_weapons["z"] = _loc9_[42] + _loc9_[43] * 60;
         _loc7_.quick_weapons["x"] = _loc9_[44] + _loc9_[45] * 60;
         _loc7_.quick_weapons["c"] = _loc9_[46] + _loc9_[47] * 60;
         _loc7_.quick_weapons["v"] = _loc9_[48] + _loc9_[49] * 60;
         _loc7_.quick_weapons["b"] = _loc9_[50] + _loc9_[51] * 60;
         _loc7_.quick_weapons["n"] = _loc9_[52] + _loc9_[53] * 60;
         _loc7_.quick_weapons["m"] = _loc9_[54] + _loc9_[55] * 60;
         _loc7_.quick_weapons["k"] = _loc9_[56] + _loc9_[57] * 60;
         _loc7_.quick_weapons["l"] = _loc9_[58] + _loc9_[59] * 60;
         _loc7_.settings = {};
         _loc7_.settings.skill = _loc9_[62];
         _loc7_.spec = _loc9_[63];
         _loc7_.career_max = _loc9_[72] + _loc9_[73] * 60;
         _loc7_.career_attempt = _loc9_[74];
         _loc7_.missions_max = _loc9_[75] + _loc9_[76] * 60;
         _loc7_.missions_attempt = _loc9_[77];
         _loc7_.survival_max = _loc9_[78] + _loc9_[79] * 60;
         _loc7_.survival_attempt = _loc9_[80];
         if(_loc7_.survival_max == 0)
         {
            _loc7_.survival_max = 1;
         }
         _loc7_.boss_max = _loc9_[81] + _loc9_[82] * 60;
         _loc7_.boss_attempt = _loc9_[83];
         if(_loc7_.boss_max == 0)
         {
            _loc7_.boss_max = 1;
         }
         _loc7_.attack = new ProtectedInt(_loc9_[90] + _loc9_[91] * 60);
         _loc7_.protect = new ProtectedInt(_loc9_[92] + _loc9_[93] * 60);
         _loc7_.health = new ProtectedInt(_loc9_[94] + _loc9_[95] * 60);
         _loc7_.worms = new ProtectedInt(_loc9_[96]);
         _loc7_.perk_pts = new ProtectedInt(_loc9_[100] + _loc9_[101] * 60 + _loc9_[102] * this.ret_60(2));
         _loc7_.skill_pts = new ProtectedInt(_loc9_[103] + _loc9_[104] * 60 + _loc9_[105] * this.ret_60(2));
         _loc14_ = 0;
         _loc3_ = 109;
         while(_loc3_ <= 133)
         {
            _loc16_ = _loc9_[_loc3_] + _loc9_[_loc3_ + 1] * 60;
            _loc17_ = _loc9_[_loc3_ + 2];
            for(_loc5_ in this.PERKS_DEF)
            {
               if(this.PERKS_DEF[_loc5_].id == _loc16_ && _loc16_ != 0)
               {
                  _loc7_.perks[_loc5_] = _loc17_;
                  _loc14_++;
                  break;
               }
            }
            _loc3_ += 3;
         }
         _loc3_ = 139;
         while(_loc3_ <= 148)
         {
            _loc18_ = _loc9_[_loc3_];
            _loc19_ = _loc3_ - 138;
            for(_loc5_ in this.STIM_DEF)
            {
               if(this.STIM_DEF[_loc5_].id == _loc19_)
               {
                  _loc7_.stim_behave[_loc5_] = _loc18_;
               }
            }
            _loc3_++;
         }
         _loc3_ = 149;
         while(_loc3_ <= 158)
         {
            _loc20_ = _loc9_[_loc3_];
            _loc21_ = _loc3_ - 148;
            for(_loc5_ in this.STIM_DEF)
            {
               if(this.STIM_DEF[_loc5_].id == _loc21_)
               {
                  _loc7_.stim_to_fight[_loc5_] = _loc20_;
               }
            }
            _loc3_++;
         }
         for(_loc15_ in _loc7_.quick_weapons)
         {
            _loc22_ = false;
            for(_loc23_ in _loc7_.weapons)
            {
               if(this.WEAPONS_DEF[_loc23_].id == _loc7_.quick_weapons[_loc15_])
               {
                  _loc22_ = _loc7_.weapons[_loc23_] > 0;
               }
            }
            if(!_loc22_)
            {
               _loc7_.quick_weapons[_loc15_] = 0;
            }
         }
         _loc7_.achiev["kill_p"] = _loc9_[500] + _loc9_[501] * 60 + _loc9_[502] * this.ret_60(2);
         _loc7_.achiev["kill_e"] = _loc9_[503] + _loc9_[504] * 60 + _loc9_[505] * this.ret_60(2);
         _loc7_.achiev["kill_a"] = _loc9_[506] + _loc9_[507] * 60 + _loc9_[508] * this.ret_60(2);
         _loc7_.achiev["kill_c"] = _loc9_[509] + _loc9_[510] * 60 + _loc9_[511] * this.ret_60(2);
         _loc7_.achiev["kill_h"] = _loc9_[512] + _loc9_[513] * 60 + _loc9_[514] * this.ret_60(2);
         _loc7_.achiev["kill_f"] = _loc9_[515] + _loc9_[516] * 60 + _loc9_[517] * this.ret_60(2);
         _loc7_.achiev["kill_l"] = _loc9_[518] + _loc9_[519] * 60 + _loc9_[520] * this.ret_60(2);
         _loc7_.achiev["assault"] = _loc9_[521] + _loc9_[522] * 60 + _loc9_[523] * this.ret_60(2);
         _loc7_.achiev["no_death"] = _loc9_[524] + _loc9_[525] * 60 + _loc9_[526] * this.ret_60(2);
         _loc7_.achiev["no_injure"] = _loc9_[527] + _loc9_[528] * 60 + _loc9_[529] * this.ret_60(2);
         _loc7_.achiev["para"] = _loc9_[530] + _loc9_[531] * 60 + _loc9_[532] * this.ret_60(2);
         _loc7_.achiev["annih"] = _loc9_[533] + _loc9_[534] * 60 + _loc9_[535] * this.ret_60(2);
         _loc7_.achiev["stims"] = _loc9_[536] + _loc9_[537] * 60 + _loc9_[538] * this.ret_60(2);
         _loc7_.achiev["buys"] = _loc9_[539] + _loc9_[540] * 60 + _loc9_[541] * this.ret_60(2);
         _loc7_.achiev["steal"] = _loc9_[542] + _loc9_[543] * 60 + _loc9_[544] * this.ret_60(2);
         _loc7_.achiev["crafted"] = _loc9_[545] + _loc9_[546] * 60 + _loc9_[547] * this.ret_60(2);
         _loc7_.achiev["upgraded"] = _loc9_[548] + _loc9_[549] * 60 + _loc9_[550] * this.ret_60(2);
         _loc7_.achiev["wins"] = _loc9_[551] + _loc9_[552] * 60 + _loc9_[553] * this.ret_60(2);
         _loc7_.achiev["days"] = _loc9_[554] + _loc9_[555] * 60 + _loc9_[556] * this.ret_60(2);
         _loc7_.achiev["career"] = _loc7_.career_max - 1;
         _loc7_.achiev["missions"] = _loc7_.missions_max - 1;
         _loc7_.achiev["survival"] = _loc7_.survival_max - 1;
         _loc7_.achiev["boss"] = _loc7_.boss_max - 1;
         _loc7_["a_rank"] = this.get_achiev_rank(_loc7_.achiev);
         _loc7_.last_achiev = {
            "career":0,
            "missions":0,
            "survival":0,
            "boss":0,
            "assault":0,
            "no_death":0,
            "no_injure":0,
            "kill_p":0,
            "kill_e":0,
            "kill_a":0,
            "kill_c":0,
            "kill_h":0,
            "kill_f":0,
            "kill_l":0,
            "para":0,
            "annih":0,
            "recipes":0,
            "stims":0,
            "buys":0,
            "steal":0,
            "crafted":0,
            "upgraded":0,
            "wins":0,
            "days":0
         };
         _loc7_.last_achiev["kill_p"] = _loc9_[558];
         _loc7_.last_achiev["kill_e"] = _loc9_[559];
         _loc7_.last_achiev["kill_a"] = _loc9_[560];
         _loc7_.last_achiev["kill_c"] = _loc9_[561];
         _loc7_.last_achiev["kill_h"] = _loc9_[562];
         _loc7_.last_achiev["kill_f"] = _loc9_[563];
         _loc7_.last_achiev["kill_l"] = _loc9_[564];
         _loc7_.last_achiev["assault"] = _loc9_[565];
         _loc7_.last_achiev["no_death"] = _loc9_[566];
         _loc7_.last_achiev["no_injure"] = _loc9_[567];
         _loc7_.last_achiev["para"] = _loc9_[568];
         _loc7_.last_achiev["annih"] = _loc9_[569];
         _loc7_.last_achiev["stims"] = _loc9_[570];
         _loc7_.last_achiev["buys"] = _loc9_[571];
         _loc7_.last_achiev["steal"] = _loc9_[572];
         _loc7_.last_achiev["crafted"] = _loc9_[573];
         _loc7_.last_achiev["upgraded"] = _loc9_[574];
         _loc7_.last_achiev["wins"] = _loc9_[575];
         _loc7_.last_achiev["days"] = _loc9_[576];
         _loc7_.last_achiev_range = _loc9_[577];
         _loc7_.achiev_rating_bonus = _loc9_[578] + _loc9_[579] * 60 + _loc9_[580] * this.ret_60(2);
         _loc7_.last_achiev["survival"] = _loc9_[581];
         _loc7_.last_achiev["boss"] = _loc9_[582];
         _loc7_.last_achiev["recipes"] = _loc9_[583];
         _loc7_.last_achiev["career"] = _loc9_[584];
         _loc7_.last_achiev["missions"] = _loc9_[585];
         _loc3_ = 750;
         while(_loc3_ <= 798)
         {
            _loc24_ = _loc9_[_loc3_];
            _loc25_ = _loc3_ - 749;
            for(_loc5_ in this.FLAGS_DEF)
            {
               if(this.FLAGS_DEF[_loc5_].id == _loc25_)
               {
                  _loc7_.flags[_loc5_] = _loc24_;
               }
            }
            _loc3_++;
         }
         _loc7_.cur_flag = _loc9_[799];
         _loc3_ = 800;
         while(_loc3_ <= 848)
         {
            _loc26_ = _loc9_[_loc3_];
            _loc27_ = _loc3_ - 799;
            for(_loc5_ in this.RIPS_DEF)
            {
               if(this.RIPS_DEF[_loc5_].id == _loc27_)
               {
                  _loc7_.rip[_loc5_] = _loc26_;
               }
            }
            _loc3_++;
         }
         _loc7_.cur_rip = _loc9_[849];
         _loc7_.last_reset = _loc9_[853] + _loc9_[854] * 60;
         _loc7_.today_steals = _loc9_[900];
         _loc7_.last_steal = _loc9_[901] + _loc9_[902] * 60 + _loc9_[903] * this.ret_60(2) + _loc9_[904] * this.ret_60(3) + _loc9_[905] * this.ret_60(4) + _loc9_[906] * this.ret_60(5);
         _loc7_.rating = _loc9_[910] + _loc9_[911] * 60 + _loc9_[912] * this.ret_60(2) + _loc9_[913] * this.ret_60(3) + _loc9_[914] * this.ret_60(4);
         _loc7_.today_date = _loc9_[916] + _loc9_[917] * 60 + _loc9_[918] * this.ret_60(2) + _loc9_[919] * this.ret_60(3) + _loc9_[920] * this.ret_60(4) + _loc9_[921] * this.ret_60(5);
         _loc7_.today_wins = _loc9_[922] + _loc9_[923] * 60;
         _loc7_.yest_wins = _loc9_[924] + _loc9_[925] * 60;
         _loc3_ = 1;
         while(_loc3_ <= 5)
         {
            _loc7_["worm_name" + _loc3_] = "";
            _loc4_ = 0;
            while(_loc4_ <= 14)
            {
               if((_loc28_ = _loc9_[950 + _loc4_ * 2 + (_loc3_ - 1) * 30] + _loc9_[951 + _loc4_ * 2 + (_loc3_ - 1) * 30] * 60) != 0)
               {
                  _loc7_["worm_name" + _loc3_] = _loc7_["worm_name" + _loc3_].concat(String.fromCharCode(_loc28_));
               }
               _loc4_++;
            }
            _loc3_++;
         }
         _loc3_ = 1200;
         while(_loc3_ <= 1248)
         {
            _loc29_ = _loc9_[_loc3_];
            _loc30_ = _loc3_ - 1199;
            for(_loc5_ in this.IMPL_DEF)
            {
               if(this.IMPL_DEF[_loc5_].id == _loc30_)
               {
                  _loc7_.impl[_loc5_] = _loc29_;
               }
            }
            _loc3_++;
         }
         _loc7_.cur_impl = _loc9_[1249];
         _loc7_.last_papa = _loc9_[1250] + _loc9_[1251] * 60 + _loc9_[1252] * this.ret_60(2) + _loc9_[1253] * this.ret_60(3) + _loc9_[1254] * this.ret_60(4) + _loc9_[1255] * this.ret_60(5);
         _loc7_.papa_asked = _loc9_[1256];
         _loc7_.settings.no_animation = _loc9_[1257];
         _loc3_ = 1260;
         while(_loc3_ <= 1299)
         {
            _loc31_ = _loc9_[_loc3_];
            _loc32_ = _loc3_ - 1259;
            for(_loc5_ in this.OBJ_DEF)
            {
               if(this.OBJ_DEF[_loc5_].id == _loc32_)
               {
                  _loc7_.objs[_loc5_] = _loc31_;
               }
            }
            _loc3_++;
         }
         _loc7_.recipes[0] = this.CRAFT_DEF[0];
         _loc3_ = 1300;
         while(_loc3_ <= 1450)
         {
            _loc7_.recipes[_loc3_ - 1299] = _loc9_[_loc3_];
            _loc3_++;
         }
         _loc7_.today_craft_sells = _loc9_[1451];
         _loc7_.next_assault_payment = _loc9_[1470] + _loc9_[1471] * 60 + _loc9_[1472] * this.ret_60(2) + _loc9_[1473] * this.ret_60(3) + _loc9_[1474] * this.ret_60(4) + _loc9_[1475] * this.ret_60(5);
         _loc7_.cur_task = _loc9_[1480];
         _loc7_.last_presented_task = _loc9_[1481];
         if(_loc7_.cur_task == 0)
         {
            _loc7_.cur_task = 1;
         }
         if(_loc7_.last_presented_task == 0)
         {
            _loc7_.last_presented_task = 1;
         }
         _loc7_.got_cmd_bonus = _loc9_[1482];
         _loc7_.weapons = {};
         _loc3_ = 1900;
         while(_loc3_ < 3900)
         {
            if(_loc3_ == 1900 || _loc3_ == 2000)
            {
               _loc5_ = 0;
               while(_loc5_ <= 9)
               {
                  _loc5_++;
               }
            }
            _loc33_ = (_loc3_ - 1900) / 10 + 1;
            for(_loc5_ in this.WEAPONS_DEF)
            {
               if(this.WEAPONS_DEF[_loc5_].id == _loc33_)
               {
                  _loc7_.weapons[_loc5_] = [0,{}];
                  if(_loc5_.search("rez") == -1)
                  {
                     _loc4_ = 0;
                     while(_loc4_ <= 9)
                     {
                        if(_loc9_[_loc3_ + _loc4_] > 0)
                        {
                           _loc34_ = _loc9_[_loc3_ + _loc4_] > 10;
                           _loc35_ = _loc9_[_loc3_ + _loc4_] > 20;
                           _loc36_ = _loc9_[_loc3_ + _loc4_];
                           if(_loc35_)
                           {
                              _loc34_ = false;
                              _loc36_ -= 20;
                           }
                           if(_loc34_)
                           {
                              _loc36_ -= 10;
                           }
                           ++_loc7_.weapons[_loc5_][0];
                           _loc7_.weapons[_loc5_][_loc7_.weapons[_loc5_][0]] = {
                              "range":_loc36_,
                              "stolen":_loc34_,
                              "crafted":_loc35_
                           };
                        }
                        _loc4_++;
                     }
                  }
                  break;
               }
            }
            _loc3_ += 10;
         }
         return 0;
      }
      
      public function read_map_info(param1:String) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc2_ = new Array();
         _loc3_ = 0;
         while(_loc3_ <= 2700)
         {
            _loc2_[_loc3_] = param1.charCodeAt(_loc3_);
            _loc3_++;
         }
         this.map_info = new Array();
         _loc3_ = 1;
         while(_loc3_ <= 60)
         {
            this.map_info[_loc3_] = new Array();
            _loc4_ = 1;
            while(_loc4_ <= 45)
            {
               this.map_info[_loc3_][_loc4_] = _loc2_[(_loc3_ - 1) * 45 + _loc4_] - 48;
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      public function write_storage() : String
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
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         var _loc16_:* = undefined;
         _loc1_ = new Array();
         _loc2_ = 0;
         while(_loc2_ <= 3999)
         {
            _loc1_[_loc2_] = 0;
            _loc2_++;
         }
         _loc1_[1] += this.player.view_tutorial;
         _loc1_[2] += this.player.tween;
         _loc1_[3] += this.player.admin_state;
         if(this.player.inc_state < this.LAST_CONTEST_STATE && this.player.level.value <= 10)
         {
            this.player.inc_state = this.LAST_CONTEST_STATE;
            this.player.last_exp = this.player.exp.value;
         }
         _loc1_[4] += this.player.inc_state;
         _loc1_[5] += this.return_bytes(this.player.last_exp)[0];
         _loc1_[6] += this.return_bytes(this.player.last_exp)[1];
         _loc1_[7] += this.return_bytes(this.player.last_exp)[2];
         _loc1_[8] += this.return_bytes(this.player.last_exp)[3];
         _loc1_[9] += this.return_bytes(this.player.last_exp)[4];
         _loc1_[11] += this.return_bytes(this.player.exp.value)[0];
         _loc1_[12] += this.return_bytes(this.player.exp.value)[1];
         _loc1_[13] += this.return_bytes(this.player.exp.value)[2];
         _loc1_[14] += this.return_bytes(this.player.exp.value)[3];
         _loc1_[15] += this.return_bytes(this.player.exp.value)[4];
         _loc1_[16] += this.return_bytes(this.player.gold.value)[0];
         _loc1_[17] += this.return_bytes(this.player.gold.value)[1];
         _loc1_[18] += this.return_bytes(this.player.gold.value)[2];
         _loc1_[19] += this.return_bytes(this.player.gold.value)[3];
         _loc1_[20] += this.return_bytes(this.player.gold.value)[4];
         _loc1_[21] += this.return_bytes(this.player.diam.value)[0];
         _loc1_[22] += this.return_bytes(this.player.diam.value)[1];
         _loc1_[23] += this.return_bytes(this.player.diam.value)[2];
         _loc1_[24] += this.return_bytes(this.player.diam.value)[3];
         _loc1_[25] += this.return_bytes(this.player.diam.value)[4];
         _loc1_[26] += this.return_bytes(this.player.tired)[0];
         _loc1_[27] += this.return_bytes(this.player.tired)[1];
         _loc1_[28] += this.return_bytes(this.player.last_tired)[0];
         _loc1_[29] += this.return_bytes(this.player.last_tired)[1];
         _loc1_[30] += this.return_bytes(this.player.last_tired)[2];
         _loc1_[31] += this.return_bytes(this.player.last_tired)[3];
         _loc1_[32] += this.return_bytes(this.player.last_tired)[4];
         _loc1_[33] += this.return_bytes(this.player.last_tired)[5];
         _loc1_[34] += this.return_bytes(this.player.last_enter)[0];
         _loc1_[35] += this.return_bytes(this.player.last_enter)[1];
         _loc1_[36] += this.return_bytes(this.player.last_enter)[2];
         _loc1_[37] += this.return_bytes(this.player.last_enter)[3];
         _loc1_[38] += this.return_bytes(this.player.last_enter)[4];
         _loc1_[39] += this.return_bytes(this.player.last_enter)[5];
         _loc1_[40] += this.player.perk_slots;
         _loc1_[41] += this.player.diam_magnet;
         _loc1_[42] += this.return_bytes(this.player.quick_weapons["z"])[0];
         _loc1_[43] += this.return_bytes(this.player.quick_weapons["z"])[1];
         _loc1_[44] += this.return_bytes(this.player.quick_weapons["x"])[0];
         _loc1_[45] += this.return_bytes(this.player.quick_weapons["x"])[1];
         _loc1_[46] += this.return_bytes(this.player.quick_weapons["c"])[0];
         _loc1_[47] += this.return_bytes(this.player.quick_weapons["c"])[1];
         _loc1_[48] += this.return_bytes(this.player.quick_weapons["v"])[0];
         _loc1_[49] += this.return_bytes(this.player.quick_weapons["v"])[1];
         _loc1_[50] += this.return_bytes(this.player.quick_weapons["b"])[0];
         _loc1_[51] += this.return_bytes(this.player.quick_weapons["b"])[1];
         _loc1_[52] += this.return_bytes(this.player.quick_weapons["n"])[0];
         _loc1_[53] += this.return_bytes(this.player.quick_weapons["n"])[1];
         _loc1_[54] += this.return_bytes(this.player.quick_weapons["m"])[0];
         _loc1_[55] += this.return_bytes(this.player.quick_weapons["m"])[1];
         _loc1_[56] += this.return_bytes(this.player.quick_weapons["k"])[0];
         _loc1_[57] += this.return_bytes(this.player.quick_weapons["k"])[1];
         _loc1_[58] += this.return_bytes(this.player.quick_weapons["l"])[0];
         _loc1_[59] += this.return_bytes(this.player.quick_weapons["l"])[1];
         _loc1_[62] += this.player.settings.skill;
         _loc1_[63] += this.player.spec;
         _loc1_[72] += this.return_bytes(this.player.career_max)[0];
         _loc1_[73] += this.return_bytes(this.player.career_max)[1];
         _loc1_[74] += this.player.career_attempt;
         _loc1_[75] += this.return_bytes(this.player.missions_max)[0];
         _loc1_[76] += this.return_bytes(this.player.missions_max)[1];
         _loc1_[77] += this.player.missions_attempt;
         _loc1_[78] += this.return_bytes(this.player.survival_max)[0];
         _loc1_[79] += this.return_bytes(this.player.survival_max)[1];
         _loc1_[80] += this.player.survival_attempt;
         _loc1_[81] += this.return_bytes(this.player.boss_max)[0];
         _loc1_[82] += this.return_bytes(this.player.boss_max)[1];
         _loc1_[83] += this.player.boss_attempt;
         _loc1_[90] += this.return_bytes(this.player.attack.value)[0];
         _loc1_[91] += this.return_bytes(this.player.attack.value)[1];
         _loc1_[92] += this.return_bytes(this.player.protect.value)[0];
         _loc1_[93] += this.return_bytes(this.player.protect.value)[1];
         _loc1_[94] += this.return_bytes(this.player.health.value)[0];
         _loc1_[95] += this.return_bytes(this.player.health.value)[1];
         _loc1_[96] += this.player.worms.value;
         _loc1_[100] += this.return_bytes(this.player.perk_pts.value)[0];
         _loc1_[101] += this.return_bytes(this.player.perk_pts.value)[1];
         _loc1_[102] += this.return_bytes(this.player.perk_pts.value)[2];
         _loc1_[103] += this.return_bytes(this.player.skill_pts.value)[0];
         _loc1_[104] += this.return_bytes(this.player.skill_pts.value)[1];
         _loc1_[105] += this.return_bytes(this.player.skill_pts.value)[2];
         _loc2_ = 109;
         for(_loc3_ in this.player.perks)
         {
            _loc1_[_loc2_] += this.return_bytes(this.PERKS_DEF[_loc3_].id)[0];
            _loc1_[_loc2_ + 1] += this.return_bytes(this.PERKS_DEF[_loc3_].id)[1];
            _loc1_[_loc2_ + 2] += this.player.perks[_loc3_];
            _loc2_ += 3;
         }
         _loc1_[139] += !!this.player.stim_behave.stimpack ? this.player.stim_behave.stimpack : 0;
         _loc1_[140] += !!this.player.stim_behave.jet ? this.player.stim_behave.jet : 0;
         _loc1_[141] += !!this.player.stim_behave.buffout ? this.player.stim_behave.buffout : 0;
         _loc1_[142] += !!this.player.stim_behave.superstimpack ? this.player.stim_behave.superstimpack : 0;
         _loc1_[143] += !!this.player.stim_behave.psycho ? this.player.stim_behave.psycho : 0;
         _loc1_[144] += !!this.player.stim_behave.fruit ? this.player.stim_behave.fruit : 0;
         _loc1_[149] += !!this.player.stim_to_fight.stimpack ? this.player.stim_to_fight.stimpack : 0;
         _loc1_[150] += !!this.player.stim_to_fight.jet ? this.player.stim_to_fight.jet : 0;
         _loc1_[151] += !!this.player.stim_to_fight.buffout ? this.player.stim_to_fight.buffout : 0;
         _loc1_[152] += !!this.player.stim_to_fight.superstimpack ? this.player.stim_to_fight.superstimpack : 0;
         _loc1_[153] += !!this.player.stim_to_fight.psycho ? this.player.stim_to_fight.psycho : 0;
         _loc1_[154] += !!this.player.stim_to_fight.fruit ? this.player.stim_to_fight.fruit : 0;
         _loc1_[249] += 45;
         for(_loc4_ in this.player.achiev)
         {
            _loc13_ = 1;
            while(_loc13_ <= this.ACHIEV_DEF[0])
            {
               if(this.ACHIEV_DEF[_loc13_].id == _loc4_)
               {
                  if(this.player.achiev[_loc4_] > this.ACHIEV_DEF[_loc13_].levels[15])
                  {
                     this.player.achiev[_loc4_] = this.ACHIEV_DEF[_loc13_].levels[15];
                  }
               }
               _loc13_++;
            }
         }
         _loc1_[500] += this.return_bytes(this.player.achiev["kill_p"])[0];
         _loc1_[501] += this.return_bytes(this.player.achiev["kill_p"])[1];
         _loc1_[502] += this.return_bytes(this.player.achiev["kill_p"])[2];
         _loc1_[503] += this.return_bytes(this.player.achiev["kill_e"])[0];
         _loc1_[504] += this.return_bytes(this.player.achiev["kill_e"])[1];
         _loc1_[505] += this.return_bytes(this.player.achiev["kill_e"])[2];
         _loc1_[506] += this.return_bytes(this.player.achiev["kill_a"])[0];
         _loc1_[507] += this.return_bytes(this.player.achiev["kill_a"])[1];
         _loc1_[508] += this.return_bytes(this.player.achiev["kill_a"])[2];
         _loc1_[509] += this.return_bytes(this.player.achiev["kill_c"])[0];
         _loc1_[510] += this.return_bytes(this.player.achiev["kill_c"])[1];
         _loc1_[511] += this.return_bytes(this.player.achiev["kill_c"])[2];
         _loc1_[512] += this.return_bytes(this.player.achiev["kill_h"])[0];
         _loc1_[513] += this.return_bytes(this.player.achiev["kill_h"])[1];
         _loc1_[514] += this.return_bytes(this.player.achiev["kill_h"])[2];
         _loc1_[515] += this.return_bytes(this.player.achiev["kill_f"])[0];
         _loc1_[516] += this.return_bytes(this.player.achiev["kill_f"])[1];
         _loc1_[517] += this.return_bytes(this.player.achiev["kill_f"])[2];
         _loc1_[518] += this.return_bytes(this.player.achiev["kill_l"])[0];
         _loc1_[519] += this.return_bytes(this.player.achiev["kill_l"])[1];
         _loc1_[520] += this.return_bytes(this.player.achiev["kill_l"])[2];
         _loc1_[521] += this.return_bytes(this.player.achiev["assault"])[0];
         _loc1_[522] += this.return_bytes(this.player.achiev["assault"])[1];
         _loc1_[523] += this.return_bytes(this.player.achiev["assault"])[2];
         _loc1_[524] += this.return_bytes(this.player.achiev["no_death"])[0];
         _loc1_[525] += this.return_bytes(this.player.achiev["no_death"])[1];
         _loc1_[526] += this.return_bytes(this.player.achiev["no_death"])[2];
         _loc1_[527] += this.return_bytes(this.player.achiev["no_injure"])[0];
         _loc1_[528] += this.return_bytes(this.player.achiev["no_injure"])[1];
         _loc1_[529] += this.return_bytes(this.player.achiev["no_injure"])[2];
         _loc1_[530] += this.return_bytes(this.player.achiev["para"])[0];
         _loc1_[531] += this.return_bytes(this.player.achiev["para"])[1];
         _loc1_[532] += this.return_bytes(this.player.achiev["para"])[2];
         _loc1_[533] += this.return_bytes(this.player.achiev["annih"])[0];
         _loc1_[534] += this.return_bytes(this.player.achiev["annih"])[1];
         _loc1_[535] += this.return_bytes(this.player.achiev["annih"])[2];
         _loc1_[536] += this.return_bytes(this.player.achiev["stims"])[0];
         _loc1_[537] += this.return_bytes(this.player.achiev["stims"])[1];
         _loc1_[538] += this.return_bytes(this.player.achiev["stims"])[2];
         _loc1_[539] += this.return_bytes(this.player.achiev["buys"])[0];
         _loc1_[540] += this.return_bytes(this.player.achiev["buys"])[1];
         _loc1_[541] += this.return_bytes(this.player.achiev["buys"])[2];
         _loc1_[542] += this.return_bytes(this.player.achiev["steal"])[0];
         _loc1_[543] += this.return_bytes(this.player.achiev["steal"])[1];
         _loc1_[544] += this.return_bytes(this.player.achiev["steal"])[2];
         _loc1_[545] += this.return_bytes(this.player.achiev["crafted"])[0];
         _loc1_[546] += this.return_bytes(this.player.achiev["crafted"])[1];
         _loc1_[547] += this.return_bytes(this.player.achiev["crafted"])[2];
         _loc1_[548] += this.return_bytes(this.player.achiev["upgraded"])[0];
         _loc1_[549] += this.return_bytes(this.player.achiev["upgraded"])[1];
         _loc1_[550] += this.return_bytes(this.player.achiev["upgraded"])[2];
         _loc1_[551] += this.return_bytes(this.player.achiev["wins"])[0];
         _loc1_[552] += this.return_bytes(this.player.achiev["wins"])[1];
         _loc1_[553] += this.return_bytes(this.player.achiev["wins"])[2];
         _loc1_[554] += this.return_bytes(this.player.achiev["days"])[0];
         _loc1_[555] += this.return_bytes(this.player.achiev["days"])[1];
         _loc1_[556] += this.return_bytes(this.player.achiev["days"])[2];
         this.player["a_rank"] = this.get_achiev_rank(this.player.achiev);
         _loc1_[557] += this.player["a_rank"];
         _loc1_[558] = this.player.last_achiev["kill_p"];
         _loc1_[559] = this.player.last_achiev["kill_e"];
         _loc1_[560] = this.player.last_achiev["kill_a"];
         _loc1_[561] = this.player.last_achiev["kill_c"];
         _loc1_[562] = this.player.last_achiev["kill_h"];
         _loc1_[563] = this.player.last_achiev["kill_f"];
         _loc1_[564] = this.player.last_achiev["kill_l"];
         _loc1_[565] = this.player.last_achiev["assault"];
         _loc1_[566] = this.player.last_achiev["no_death"];
         _loc1_[567] = this.player.last_achiev["no_injure"];
         _loc1_[568] = this.player.last_achiev["para"];
         _loc1_[569] = this.player.last_achiev["annih"];
         _loc1_[570] = this.player.last_achiev["stims"];
         _loc1_[571] = this.player.last_achiev["buys"];
         _loc1_[572] = this.player.last_achiev["steal"];
         _loc1_[573] = this.player.last_achiev["crafted"];
         _loc1_[574] = this.player.last_achiev["upgraded"];
         _loc1_[575] = this.player.last_achiev["wins"];
         _loc1_[576] = this.player.last_achiev["days"];
         _loc1_[577] = this.player.last_achiev_range;
         _loc1_[578] += this.return_bytes(this.player.achiev_rating_bonus)[0];
         _loc1_[579] += this.return_bytes(this.player.achiev_rating_bonus)[1];
         _loc1_[580] += this.return_bytes(this.player.achiev_rating_bonus)[2];
         _loc1_[581] = this.player.last_achiev["survival"];
         _loc1_[582] = this.player.last_achiev["boss"];
         _loc1_[583] = this.player.last_achiev["recipes"];
         _loc1_[584] = this.player.last_achiev["career"];
         _loc1_[585] = this.player.last_achiev["missions"];
         for(_loc5_ in this.player.flags)
         {
            if(this.player.flags[_loc5_] == 1)
            {
               _loc1_[749 + this.FLAGS_DEF[_loc5_].id] += 1;
            }
         }
         _loc1_[799] += this.player.cur_flag;
         for(_loc6_ in this.player.rip)
         {
            if(this.player.rip[_loc6_] == 1)
            {
               _loc1_[799 + this.RIPS_DEF[_loc6_].id] += 1;
            }
         }
         _loc1_[849] += this.player.cur_rip;
         _loc1_[853] += this.return_bytes(this.player.last_reset)[0];
         _loc1_[854] += this.return_bytes(this.player.last_reset)[1];
         _loc1_[900] += this.player.today_steals;
         _loc1_[901] += this.return_bytes(this.player.last_steal)[0];
         _loc1_[902] += this.return_bytes(this.player.last_steal)[1];
         _loc1_[903] += this.return_bytes(this.player.last_steal)[2];
         _loc1_[904] += this.return_bytes(this.player.last_steal)[3];
         _loc1_[905] += this.return_bytes(this.player.last_steal)[4];
         _loc1_[906] += this.return_bytes(this.player.last_steal)[5];
         _loc1_[910] += this.return_bytes(this.player.rating)[0];
         _loc1_[911] += this.return_bytes(this.player.rating)[1];
         _loc1_[912] += this.return_bytes(this.player.rating)[2];
         _loc1_[913] += this.return_bytes(this.player.rating)[3];
         _loc1_[914] += this.return_bytes(this.player.rating)[4];
         _loc1_[916] += this.return_bytes(this.player.today_date)[0];
         _loc1_[917] += this.return_bytes(this.player.today_date)[1];
         _loc1_[918] += this.return_bytes(this.player.today_date)[2];
         _loc1_[919] += this.return_bytes(this.player.today_date)[3];
         _loc1_[920] += this.return_bytes(this.player.today_date)[4];
         _loc1_[921] += this.return_bytes(this.player.today_date)[5];
         _loc1_[922] += this.return_bytes(this.player.today_wins)[0];
         _loc1_[923] += this.return_bytes(this.player.today_wins)[1];
         _loc1_[924] += this.return_bytes(this.player.yest_wins)[0];
         _loc1_[925] += this.return_bytes(this.player.yest_wins)[1];
         _loc2_ = 1;
         while(_loc2_ <= 5)
         {
            _loc14_ = 0;
            while(_loc14_ <= 14)
            {
               _loc1_[950 + _loc14_ * 2 + (_loc2_ - 1) * 30] += this.player["worm_name" + _loc2_] && this.player["worm_name" + _loc2_].length > _loc14_ ? this.return_bytes(this.player["worm_name" + _loc2_].charCodeAt(_loc14_))[0] : 0;
               _loc1_[951 + _loc14_ * 2 + (_loc2_ - 1) * 30] += this.player["worm_name" + _loc2_] && this.player["worm_name" + _loc2_].length > _loc14_ ? this.return_bytes(this.player["worm_name" + _loc2_].charCodeAt(_loc14_))[1] : 0;
               _loc14_++;
            }
            _loc2_++;
         }
         for(_loc7_ in this.player.impl)
         {
            if(this.player.impl[_loc7_] == 1)
            {
               _loc1_[1199 + this.IMPL_DEF[_loc7_].id] += 1;
            }
         }
         _loc1_[1249] += this.player.cur_impl;
         _loc1_[1250] += this.return_bytes(this.player.last_papa)[0];
         _loc1_[1251] += this.return_bytes(this.player.last_papa)[1];
         _loc1_[1252] += this.return_bytes(this.player.last_papa)[2];
         _loc1_[1253] += this.return_bytes(this.player.last_papa)[3];
         _loc1_[1254] += this.return_bytes(this.player.last_papa)[4];
         _loc1_[1255] += this.return_bytes(this.player.last_papa)[5];
         _loc1_[1256] += this.player.papa_asked;
         _loc1_[1257] += this.player.settings.no_animation;
         for(_loc8_ in this.player.objs)
         {
            if(this.player.objs[_loc8_])
            {
               _loc1_[1259 + this.OBJ_DEF[_loc8_].id] += this.player.objs[_loc8_];
            }
         }
         _loc2_ = 1;
         while(_loc2_ <= 151)
         {
            if(this.player.recipes[_loc2_])
            {
               _loc1_[_loc2_ + 1299] = this.player.recipes[_loc2_];
            }
            _loc2_++;
         }
         _loc1_[1451] += this.player.today_craft_sells;
         _loc1_[1470] += this.return_bytes(this.player.next_assault_payment)[0];
         _loc1_[1471] += this.return_bytes(this.player.next_assault_payment)[1];
         _loc1_[1472] += this.return_bytes(this.player.next_assault_payment)[2];
         _loc1_[1473] += this.return_bytes(this.player.next_assault_payment)[3];
         _loc1_[1474] += this.return_bytes(this.player.next_assault_payment)[4];
         _loc1_[1475] += this.return_bytes(this.player.next_assault_payment)[5];
         _loc1_[1480] += this.player.cur_task;
         _loc1_[1481] += this.player.last_presented_task;
         _loc1_[1482] += this.player.got_cmd_bonus;
         for(_loc9_ in this.player.weapons)
         {
            if(this.WEAPONS_DEF[_loc9_].id <= 200)
            {
               _loc1_[249 + this.WEAPONS_DEF[_loc9_].id] = this.player.weapons[_loc9_][0];
               _loc15_ = 1;
               while(_loc15_ <= this.player.weapons[_loc9_][0])
               {
                  if(this.player.weapons[_loc9_][_loc15_].range)
                  {
                     _loc16_ = this.player.weapons[_loc9_][_loc15_].range;
                     if(this.player.weapons[_loc9_][_loc15_].stolen)
                     {
                        _loc16_ += 10;
                     }
                     else if(this.player.weapons[_loc9_][_loc15_].crafted)
                     {
                        _loc16_ += 20;
                     }
                     _loc1_[1900 + _loc15_ + (this.WEAPONS_DEF[_loc9_].id - 1) * 10 - 1] = _loc16_;
                  }
                  _loc15_++;
               }
            }
         }
         this.string_to_save = "";
         _loc2_ = 0;
         while(_loc2_ <= 3999 - 32)
         {
            this.string_to_save = this.string_to_save.concat(this.encode_param(_loc1_[_loc2_]));
            _loc2_++;
         }
         var _loc10_:* = new MD5();
         var _loc11_:* = "FWPCOOLLOLOLOL";
         _loc12_ = MD5.hash(this.string_to_save);
         this.string_to_save = this.string_to_save.concat(_loc12_);
         return this.string_to_save;
      }
      
      public function write_map_info() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc1_ = 48;
         _loc2_ = new Array();
         _loc3_ = 0;
         while(_loc3_ <= 2700)
         {
            _loc2_[_loc3_] = _loc1_;
            _loc3_++;
         }
         _loc3_ = 1;
         while(_loc3_ <= 60)
         {
            _loc4_ = 1;
            while(_loc4_ <= 45)
            {
               _loc2_[(_loc3_ - 1) * 45 + _loc4_] += this.map_info[_loc3_][_loc4_];
               _loc4_++;
            }
            _loc3_++;
         }
         this.world_to_save = "";
         _loc3_ = 0;
         while(_loc3_ <= 2700)
         {
            this.world_to_save = this.world_to_save.concat(String.fromCharCode(_loc2_[_loc3_]));
            _loc3_++;
         }
      }
      
      public function create_new_params(param1:String) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         if(param1 == "empty friend")
         {
            _loc2_ = this.get_info;
         }
         else
         {
            _loc2_ = this.player;
         }
         _loc2_.progress = {
            "wormville_missions":0,
            "wormville_career":0,
            "mines_missions":0,
            "mines_career":0,
            "alps_missions":0,
            "alps_career":0,
            "dust_career":0,
            "island_missions":0
         };
         _loc2_.coord_x = 5;
         _loc2_.coord_y = 4;
         _loc2_.attack = new ProtectedInt(0);
         _loc2_.protect = new ProtectedInt(0);
         _loc2_.health = new ProtectedInt(0);
         _loc2_.worms = new ProtectedInt(0);
         _loc2_.perks = {};
         _loc2_.stim_behave = {
            "stimpack":5,
            "jet":1,
            "buffout":1
         };
         _loc2_.stim_to_fight = {};
         _loc2_.spec = 0;
         _loc2_.skill_pts = new ProtectedInt(15);
         _loc2_.perk_pts = new ProtectedInt(10);
         _loc2_.gold = new ProtectedInt(800);
         _loc2_.diam = new ProtectedInt(0);
         _loc2_.tired = 0;
         _loc2_.last_tired = 0;
         _loc2_.last_enter = 0;
         _loc2_.tween = 0;
         _loc2_.exp = new ProtectedInt(0);
         _loc2_.level = new ProtectedInt(this.get_player_level(_loc2_.exp.value));
         _loc2_.weapons = {};
         _loc2_.career_max = 1;
         _loc2_.career_attempt = 0;
         _loc2_.missions_max = 1;
         _loc2_.missions_attempt = 0;
         _loc2_.survival_max = 1;
         _loc2_.survival_attempt = 0;
         _loc2_.boss_max = 1;
         _loc2_.boss_attempt = 0;
         _loc2_.settings = {
            "skill":0,
            "help":0,
            "sound":0,
            "exhaust":0,
            "no_animation":0
         };
         _loc2_.first_time = true;
         _loc2_.admin_state = 20;
         _loc2_.inc_state = 0;
         _loc2_.last_exp = 0;
         _loc2_.achiev["kill_p"] = 0;
         _loc2_.achiev["kill_e"] = 0;
         _loc2_.achiev["kill_a"] = 0;
         _loc2_.achiev["kill_c"] = 0;
         _loc2_.achiev["kill_h"] = 0;
         _loc2_.achiev["kill_f"] = 0;
         _loc2_.achiev["kill_l"] = 0;
         _loc2_.achiev["career"] = _loc2_.career_max - 1;
         _loc2_.achiev["missions"] = _loc2_.missions_max - 1;
         _loc2_.achiev["survival"] = _loc2_.survival_max - 1;
         _loc2_.achiev["boss"] = _loc2_.boss_max - 1;
         _loc2_.achiev["assault"] = 0;
         _loc2_.achiev["recipes"] = 0;
         _loc2_.achiev["upgraded"] = 0;
         _loc2_.achiev["days"] = 0;
         _loc2_.achiev["no_death"] = 0;
         _loc2_.achiev["no_injure"] = 0;
         _loc2_.achiev["buys"] = 0;
         _loc2_.achiev["wins"] = 0;
         _loc2_.achiev["crafted"] = 0;
         _loc2_.achiev["stims"] = 0;
         _loc2_.achiev["para"] = 0;
         _loc2_.achiev["annih"] = 0;
         _loc2_.achiev["steal"] = 0;
         _loc2_.last_achiev = {
            "career":0,
            "missions":0,
            "survival":0,
            "boss":0,
            "assault":0,
            "no_death":0,
            "no_injure":0,
            "kill_p":0,
            "kill_e":0,
            "kill_a":0,
            "kill_c":0,
            "kill_h":0,
            "kill_f":0,
            "kill_l":0,
            "para":0,
            "annih":0,
            "recipes":0,
            "stims":0,
            "buys":0,
            "steal":0,
            "crafted":0,
            "upgraded":0,
            "wins":0,
            "days":0
         };
         _loc2_.last_achiev_range = 0;
         _loc2_.achiev_rating_bonus = 0;
         _loc2_.perk_slots = 2;
         _loc2_.diam_magnet = 0;
         _loc2_.quick_weapons["z"] = 0;
         _loc2_.quick_weapons["x"] = 0;
         _loc2_.quick_weapons["c"] = 0;
         _loc2_.quick_weapons["v"] = 0;
         _loc2_.quick_weapons["b"] = 0;
         _loc2_.quick_weapons["n"] = 0;
         _loc2_.quick_weapons["m"] = 0;
         _loc2_.quick_weapons["k"] = 0;
         _loc2_.quick_weapons["l"] = 0;
         _loc2_.flags = {};
         _loc2_.rip = {};
         _loc2_.impl = {};
         _loc2_.objs = {};
         _loc2_.cur_flag = 0;
         _loc2_.cur_rip = 0;
         _loc2_.cur_impl = 0;
         if(param1 != "null")
         {
            _loc2_.view_tutorial = 0;
         }
         _loc2_.today_steals = 0;
         _loc2_.last_steal = 0;
         _loc2_.rating = 0;
         _loc2_.today_date = 0;
         _loc2_.today_wins = 0;
         _loc2_.yest_wins = 0;
         _loc2_.last_papa = 0;
         _loc2_.papa_asked = 0;
         _loc3_ = 1;
         while(_loc3_ <= 5)
         {
            _loc2_["worm_name" + _loc3_] = "";
            _loc3_++;
         }
         _loc2_.last_reset = 0;
         _loc2_.next_assault_payment = 0;
         _loc2_.cur_task = 1;
         _loc2_.last_presented_task = 1;
         _loc2_.got_cmd_bonus = 0;
         _loc2_.recipes[0] = this.CRAFT_DEF[0];
         _loc4_ = 1;
         while(_loc4_ <= _loc2_.recipes[0])
         {
            _loc2_.recipes[_loc4_] = 0;
            _loc4_++;
         }
         if((this.user.user_id == 77226401 || this.LOCAL_TEST) && param1 != "empty friend")
         {
            _loc2_.attack.value = 199;
            _loc2_.protect.value = 700;
            _loc2_.health.value = 0;
            _loc2_.worms.value = 0;
            _loc2_.tired = 0;
            _loc2_.skill_pts.value = 1000;
            _loc2_.perk_pts.value = 3000;
            _loc2_.gold.value = 5000000;
            _loc2_.diam.value = 5000;
            _loc2_.spec = 0;
            _loc2_.settings.skill = 10;
            _loc2_.career_max = this.TEAMS_DEF.career_max;
            _loc2_.missions_max = this.TEAMS_DEF.missions_max;
            _loc2_.survival_max = this.TEAMS_DEF.survival_max;
            _loc2_.boss_max = this.TEAMS_DEF.boss_max - 2;
            _loc2_.tween = 2;
            _loc2_.perks = {"gsearch":3};
            _loc2_.objs = {
               "obj_ultra_mod":7,
               "obj_laser_mod":7
            };
            _loc2_.cur_task = 30;
            _loc2_.last_presented_task = 1;
            for(_loc5_ in this.WEAPONS_DEF)
            {
               if(_loc5_.search("rez") == -1 && this.WEAPONS_DEF[_loc5_].id <= 200 && _loc5_ != "annihilator")
               {
                  _loc2_.weapons[_loc5_] = [3,{
                     "range":1,
                     "stolen":false,
                     "crafted":false
                  },{
                     "range":1,
                     "stolen":false,
                     "crafted":false
                  },{
                     "range":1,
                     "stolen":false,
                     "crafted":false
                  }];
               }
            }
            if(this.LOCAL_TEST)
            {
               this.user.user_id = 77226401;
            }
            _loc2_.exp.value = this.LEVEL_THRESHOLD[10] - 1;
            _loc2_.level.value = this.get_player_level(_loc2_.exp.value);
            _loc2_.perk_slots = 2;
         }
      }
      
      public function create_map_info() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         this.map_info = new Array();
         _loc1_ = 1;
         while(_loc1_ <= 60)
         {
            this.map_info[_loc1_] = new Array();
            _loc2_ = 1;
            while(_loc2_ <= 45)
            {
               this.map_info[_loc1_][_loc2_] = 0;
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      public function refresh_temp_params() : *
      {
         this.temp_player = {};
         this.temp_player = this.clone(this.player);
         this.temp_player.exp = new ProtectedInt(this.player.exp.value);
         this.temp_player.level = new ProtectedInt(this.player.level.value);
         this.temp_player.gold = new ProtectedInt(this.player.gold.value);
         this.temp_player.diam = new ProtectedInt(this.player.diam.value);
         this.temp_player.attack = new ProtectedInt(this.player.attack.value);
         this.temp_player.protect = new ProtectedInt(this.player.protect.value);
         this.temp_player.health = new ProtectedInt(this.player.health.value);
         this.temp_player.worms = new ProtectedInt(this.player.worms.value);
         this.temp_player.perk_pts = new ProtectedInt(this.player.perk_pts.value);
         this.temp_player.skill_pts = new ProtectedInt(this.player.skill_pts.value);
         if(this._interf)
         {
            this._interf.changes_made = false;
         }
      }
      
      public function save_temp_params() : Object
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc1_ = false;
         if(this.player.health.value != this.temp_player.health.value || this.player.worms.value != this.temp_player.worms.value)
         {
            _loc1_ = true;
         }
         _loc2_ = this.get_perks_amount(this.player);
         _loc3_ = this.get_perks_amount(this.temp_player);
         this.player = this.temp_player;
         return {
            "new_perks":_loc3_ - _loc2_,
            "health_or_worms":_loc1_
         };
      }
      
      public function get_perks_amount(param1:Object) : Number
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = 0;
         for(_loc3_ in param1.perks)
         {
            if(param1.perks[_loc3_] > 0)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function modify_tired() : void
      {
         this.player.tired -= Math.floor((this.user.unix_time - this.player.last_tired) / 120);
         if(this.player.tired < 0)
         {
            this.player.tired = 0;
         }
         this.player.last_tired = this.user.unix_time;
      }
      
      public function modify_last_enter() : *
      {
         var _loc1_:Date = null;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:Date = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:Date = null;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         _loc1_ = new Date(this.user.unix_time * 1000);
         _loc2_ = _loc1_.getDate();
         _loc3_ = _loc1_.getMonth() + 1;
         _loc4_ = _loc1_.getFullYear();
         _loc6_ = (_loc5_ = new Date(this.player.last_enter * 1000)).getDate();
         _loc7_ = _loc5_.getMonth() + 1;
         _loc8_ = _loc5_.getFullYear();
         if(_loc2_ != _loc6_ || _loc3_ != _loc7_ || _loc4_ != _loc8_)
         {
            if(this.mod(_loc2_ - _loc6_) == 1 || _loc2_ == 1 && this.mod(_loc3_ - _loc7_) == 1 || _loc2_ == 1 && _loc3_ == 1 && this.mod(_loc4_ - _loc8_) == 1 || this.player.last_enter == 0)
            {
               if(this.player.last_enter != 0)
               {
                  ++this.player.tween;
               }
               else
               {
                  this.player.tween = 1;
               }
            }
            else
            {
               this.player.tween = 1;
            }
            this.get_present = this.player.tween;
            ++this.player.achiev["days"];
            this.player.today_craft_sells = 0;
         }
         this.player.last_enter = this.user.unix_time;
         if(this.player.last_steal > 0)
         {
            _loc10_ = (_loc9_ = new Date(this.player.last_steal * 1000)).getDate();
            _loc11_ = _loc9_.getMonth() + 1;
            _loc12_ = _loc9_.getFullYear();
            if(_loc2_ != _loc10_ || _loc3_ != _loc11_ || _loc4_ != _loc12_)
            {
               this.player.today_steals = 0;
            }
         }
         else
         {
            this.player.today_steals = 0;
         }
      }
      
      public function modify_papa() : *
      {
         var _loc1_:Date = null;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Date = null;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         _loc1_ = new Date(this.user.unix_time * 1000);
         _loc2_ = _loc1_.getHours();
         _loc3_ = _loc1_.getDate();
         _loc4_ = _loc1_.getMonth() + 1;
         _loc5_ = _loc1_.getFullYear();
         _loc6_ = _loc1_.getTimezoneOffset();
         _loc2_ += 4 + _loc6_ / 60;
         if(this.player.last_papa > 0)
         {
            _loc9_ = (_loc8_ = new Date(this.player.last_papa * 1000)).getDate();
            _loc10_ = _loc8_.getMonth() + 1;
            _loc11_ = _loc8_.getFullYear();
            if(_loc3_ != _loc9_ || _loc4_ != _loc10_ || _loc5_ != _loc11_)
            {
               this.player.last_papa = 0;
               this.player.papa_asked = 0;
            }
         }
         _loc7_ = this.PAPA_HOURS[_loc3_];
         this.PAPA_HERE = _loc2_ == _loc7_;
      }
      
      public function modify_wins() : *
      {
         var _loc1_:Date = null;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:Date = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         _loc1_ = new Date(this.user.unix_time * 1000);
         _loc2_ = _loc1_.getDate();
         _loc3_ = _loc1_.getMonth() + 1;
         _loc4_ = _loc1_.getFullYear();
         if(this.player.today_date == 0)
         {
            this.player.today_date = this.user.unix_time;
            this.player.today_wins = 0;
            this.player.yest_wins = 0;
            return;
         }
         _loc6_ = (_loc5_ = new Date(this.player.today_date * 1000)).getDate();
         _loc7_ = _loc5_.getMonth() + 1;
         _loc8_ = _loc5_.getFullYear();
         if(_loc2_ != _loc6_ || _loc3_ != _loc7_ || _loc4_ != _loc8_)
         {
            if(this.mod(_loc2_ - _loc6_) == 1 || _loc2_ == 1 && this.mod(_loc3_ - _loc7_) == 1 || _loc2_ == 1 && _loc3_ == 1 && this.mod(_loc4_ - _loc8_) == 1)
            {
               this.player.yest_wins = this.player.today_wins;
               this.player.today_date = this.user.unix_time;
               this.player.today_wins = 0;
            }
            else
            {
               this.player.today_date = this.user.unix_time;
               this.player.today_wins = 0;
               this.player.yest_wins = 0;
            }
         }
      }
      
      public function init_refresh() : *
      {
         this.display_system.addChild(this.splash_wait);
         if(this.LOCAL_TEST)
         {
            this.user.unix_time = 1321270560;
            this.modify_tired();
            this.modify_papa();
            this.modify_wins();
            this.success_saved();
            return;
         }
         this.main_mode = "NET_INIT";
         this.main_timeout = 40;
         this.main_execute = "refresh time";
      }
      
      public function init_save_params() : *
      {
         this.string_to_save255 = this.write_storage();
         this.display_system.addChild(this.splash_wait);
         if((this.LOCAL_TEST || this.user.user_id == 77226401) && this.MAIN_APPL)
         {
            this.success_saved();
            return;
         }
         if(this.execute_after == "init win or lose")
         {
            this.net_save_to_db();
            this.main_mode = "NET_INIT";
            this.main_timeout = 40;
            this.main_execute = "save storage";
         }
         else if(this.string_to_save.length == 4000)
         {
            this.main_mode = "NET_INIT";
            this.main_timeout = this.execute_after == "init roul result" || this.execute_after == "steal proceed" ? 500 : 40;
            this.main_execute = "save storage";
         }
         else
         {
            this.main_mode = "IDLE";
         }
      }
      
      public function check_sid(param1:Object) : *
      {
         if(String(param1) != this.CURRENT_SID && String(param1).length > 0)
         {
            this.system_error("Используйте одно окно с приложением!");
            this.main_mode = "IDLE";
            this.OOPS_BANNED = true;
         }
      }
      
      public function success_saved() : *
      {
         this.display_system.removeChild(this.splash_wait);
         if(this.OOPS_BANNED)
         {
            return;
         }
         if(this.execute_after == "render")
         {
            this.refresh_temp_params();
            this._interf.render();
         }
         if(this.execute_after == "post new weapon")
         {
            this.main_mode = "NET_INIT";
            this.main_timeout = 40;
            this.main_execute = "post new weapon";
            this._interf.render();
         }
         if(this.execute_after == "remove")
         {
            this.refresh_temp_params();
            this._interf.remove();
         }
         if(this.execute_after == "init roul result")
         {
            this._interf.init("roul result");
         }
         if(this.execute_after == "init grave result")
         {
            this._interf.init("grave_result");
         }
         if(this.execute_after == "init papa shop")
         {
            this._interf.init("papa_shop");
         }
         if(this.execute_after == "steal proceed")
         {
            this._interf.remove();
            this._interf.init("mainframe");
            this._interf.init("steal");
         }
         if(this.execute_after == "init win or lose")
         {
            this._interf.init_win_or_lose();
         }
         if(this.execute_after == "init game")
         {
            this.init_game({
               "mode":this._interf.play_type,
               "id":this._interf.cur_element
            });
         }
         if(this.execute_after == "new recipes added")
         {
            this._interf.init("error","new_recipes");
         }
         if(this.execute_after == "init new level")
         {
            this._interf.init_new_level();
         }
         this.execute_after = "";
      }
      
      public function save_replay() : *
      {
         this.display_system.addChild(this.splash_wait);
         System.setClipboard(this.REPLAY_STRING);
         this.main_mode = "NET_INIT";
         this.main_timeout = 40;
         this.main_execute = "save replay";
      }
      
      public function init_save_map() : *
      {
      }
      
      public function get_player_level(param1:Number) : Number
      {
         var _loc2_:* = undefined;
         _loc2_ = 1;
         while(this.LEVEL_THRESHOLD[_loc2_] <= param1)
         {
            _loc2_++;
         }
         return _loc2_ - 1;
      }
      
      public function get_player_league(param1:Number) : Number
      {
         var _loc2_:* = undefined;
         _loc2_ = 1;
         while(this.LEAGUE_THRESHOLD[_loc2_] <= param1)
         {
            _loc2_++;
         }
         return _loc2_ - 1;
      }
      
      public function get_affected_skills(param1:Object) : Object
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         _loc2_ = {};
         _loc3_ = {
            "attack":0,
            "protect":0,
            "health":0,
            "tired":0
         };
         for(_loc4_ in param1.stim_to_fight)
         {
            _loc3_.attack += this.STIM_DEF[_loc4_].attack * param1.stim_to_fight[_loc4_];
            _loc3_.protect += this.STIM_DEF[_loc4_].protect * param1.stim_to_fight[_loc4_];
            _loc3_.health += this.STIM_DEF[_loc4_].health * param1.stim_to_fight[_loc4_];
            _loc3_.tired += this.STIM_DEF[_loc4_].tired * param1.stim_to_fight[_loc4_];
         }
         _loc5_ = this.get_tired_effect(param1.tired + _loc3_.tired);
         _loc6_ = {
            "attack":0,
            "protect":0,
            "health":0
         };
         for(_loc7_ in this.IMPL_DEF)
         {
            if(this.IMPL_DEF[_loc7_].id == param1.impl)
            {
               _loc6_.attack = this.IMPL_DEF[_loc7_].attack;
               _loc6_.protect = this.IMPL_DEF[_loc7_].protect;
               _loc6_.health = this.IMPL_DEF[_loc7_].health;
            }
         }
         _loc2_.attack = param1.attack + _loc3_.attack + _loc5_.attack + _loc6_.attack;
         _loc2_.protect = param1.protect + _loc3_.protect + _loc5_.protect + _loc6_.protect;
         _loc2_.health = Math.round((param1.health + _loc3_.health) * _loc5_.health) + _loc6_.health;
         _loc2_.tired = param1.tired + _loc3_.tired;
         if(_loc2_.tired < 0)
         {
            _loc2_.tired = 0;
         }
         _loc2_.desc_attack = {
            "stim":_loc3_.attack,
            "tired":_loc5_.attack,
            "impl":_loc6_.attack
         };
         _loc2_.desc_protect = {
            "stim":_loc3_.protect,
            "tired":_loc5_.protect,
            "impl":_loc6_.protect
         };
         _loc2_.desc_health = {
            "stim":_loc3_.health,
            "tired":_loc5_.health,
            "impl":_loc6_.health
         };
         return _loc2_;
      }
      
      public function get_tired_effect(param1:Number) : Object
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = {
            "attack":0,
            "protect":0,
            "health":1
         };
         _loc3_ = 6;
         while(_loc3_ >= 0)
         {
            if(this.TIRED_EFFECTS[_loc3_].threshold <= param1)
            {
               _loc2_.attack = this.TIRED_EFFECTS[_loc3_].attack;
               _loc2_.protect = this.TIRED_EFFECTS[_loc3_].protect;
               _loc2_.health = this.TIRED_EFFECTS[_loc3_].health;
               return _loc2_;
            }
            _loc3_--;
         }
         return _loc2_;
      }
      
      public function get_peachful_bonus(param1:Object) : Object
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
         _loc2_ = param1.spec;
         _loc3_ = param1.wptype;
         _loc4_ = param1.attack;
         _loc5_ = param1.perks;
         _loc6_ = param1.spec_mod;
         _loc7_ = param1.wpclass;
         _loc8_ = {
            "damage":0,
            "attack":0,
            "spec":0,
            "perks":0,
            "aff_perks":new Array(0,{})
         };
         _loc9_ = 0;
         _loc10_ = 0;
         _loc11_ = 0;
         if(_loc5_["damage_" + _loc3_])
         {
            _loc10_ = _loc5_["damage_" + _loc3_];
            ++_loc8_.aff_perks[0];
            _loc8_.aff_perks[_loc8_.aff_perks[0]] = {
               "id":"damage_" + _loc3_,
               "p":_loc10_ * 0.15
            };
         }
         if(_loc5_["god_of_war"])
         {
            _loc11_ = _loc5_["god_of_war"];
            ++_loc8_.aff_perks[0];
            _loc8_.aff_perks[_loc8_.aff_perks[0]] = {
               "id":"god_of_war",
               "p":_loc11_ * 0.15
            };
         }
         _loc9_ += _loc10_ * 0.15 + _loc11_ * 0.15;
         _loc12_ = 0;
         if(_loc6_ == "elec")
         {
            if(_loc5_["electrician"] && _loc5_["electrician"] > 0)
            {
               _loc12_ += this.get_perk_effect("electrician",_loc5_["electrician"],"");
               ++_loc8_.aff_perks[0];
               _loc8_.aff_perks[_loc8_.aff_perks[0]] = {
                  "id":"electrician",
                  "p":this.get_perk_effect("electrician",_loc5_["electrician"],"")
               };
            }
         }
         if(_loc6_ == "holy")
         {
            if(_loc5_["angel"] && _loc5_["angel"] > 0)
            {
               _loc12_ += this.get_perk_effect("angel",_loc5_["angel"],"");
               ++_loc8_.aff_perks[0];
               _loc8_.aff_perks[_loc8_.aff_perks[0]] = {
                  "id":"angel",
                  "p":this.get_perk_effect("angel",_loc5_["angel"],"")
               };
            }
         }
         if(_loc6_ == "pistol")
         {
            if(_loc5_["up_pistols"] && _loc5_["up_pistols"] > 0)
            {
               _loc12_ += this.get_perk_effect("up_pistols",_loc5_["up_pistols"],"");
               ++_loc8_.aff_perks[0];
               _loc8_.aff_perks[_loc8_.aff_perks[0]] = {
                  "id":"up_pistols",
                  "p":this.get_perk_effect("up_pistols",_loc5_["up_pistols"],"")
               };
            }
         }
         if(_loc6_ == "rifle" || _loc6_ == "riflegun")
         {
            if(_loc5_["up_rifles"] && _loc5_["up_rifles"] > 0)
            {
               _loc12_ += this.get_perk_effect("up_rifles",_loc5_["up_rifles"],"");
               ++_loc8_.aff_perks[0];
               _loc8_.aff_perks[_loc8_.aff_perks[0]] = {
                  "id":"up_rifles",
                  "p":this.get_perk_effect("up_rifles",_loc5_["up_rifles"],"")
               };
            }
         }
         if(_loc6_ == "minigun" || _loc6_ == "riflegun")
         {
            if(_loc5_["up_miniguns"] && _loc5_["up_miniguns"] > 0)
            {
               _loc12_ += this.get_perk_effect("up_miniguns",_loc5_["up_miniguns"],"");
               ++_loc8_.aff_perks[0];
               _loc8_.aff_perks[_loc8_.aff_perks[0]] = {
                  "id":"up_miniguns",
                  "p":this.get_perk_effect("up_miniguns",_loc5_["up_miniguns"],"")
               };
            }
         }
         if(_loc5_["big_guns"] && _loc5_["big_guns"] > 0 && _loc7_ != 0)
         {
            _loc9_ += this.get_perk_effect("big_guns",_loc5_["big_guns"],String(_loc7_));
            ++_loc8_.aff_perks[0];
            _loc8_.aff_perks[_loc8_.aff_perks[0]] = {
               "id":"big_guns",
               "p":this.get_perk_effect("big_guns",_loc5_["big_guns"],String(_loc7_))
            };
         }
         _loc13_ = 0;
         if(_loc3_ == "p" && _loc2_ == 3)
         {
            _loc13_ = 0.5;
         }
         if(_loc3_ == "e" && _loc2_ == 2)
         {
            _loc13_ = 0.75;
         }
         if(_loc3_ == "a" && _loc2_ == 3)
         {
            _loc13_ = 0.75;
         }
         if(_loc3_ == "c" && _loc2_ == 1)
         {
            _loc13_ = 4;
         }
         if(_loc3_ == "h" && _loc2_ == 4)
         {
            _loc13_ = 0.5;
         }
         if(_loc3_ == "f" && _loc2_ == 2)
         {
            _loc13_ = 0.5;
         }
         if(_loc3_ == "l" && _loc2_ == 1)
         {
            _loc13_ = 1;
         }
         _loc14_ = 0;
         if(_loc4_ >= 0)
         {
            _loc14_ = _loc4_ * this.PEACHFUL_BONUS[_loc3_] / 100;
            _loc8_.damage = _loc14_ + _loc9_ + _loc12_ + _loc13_;
            _loc8_.attack = _loc14_;
            _loc8_.spec = _loc13_;
            _loc8_.perks = _loc9_;
         }
         else
         {
            _loc14_ = _loc4_ * 0.25 / 100;
            _loc8_.damage = _loc14_ + _loc9_ + _loc12_;
            _loc8_.attack = _loc14_;
            _loc8_.spec = 0;
            _loc8_.perks = _loc9_;
         }
         this.deep_trace(_loc8_);
         return _loc8_;
      }
      
      public function get_range_upgrade(param1:Number = 1, param2:String = "damage", param3:Number = 1) : Number
      {
         var _loc4_:* = undefined;
         if(param2 == "damage")
         {
            switch(param1)
            {
               case 1:
                  return 1;
               case 2:
                  return 1.15;
               case 3:
                  return 1.3;
               case 4:
                  return 1.4;
               case 5:
                  return 1.5;
               case 6:
                  return 1.6;
               case 7:
                  return 1.7;
               case 8:
                  return 1.85;
               case 9:
                  return 2.1;
               case 10:
                  return 2.5;
            }
         }
         if(param2 == "crit")
         {
            switch(param1)
            {
               case 1:
                  return 0;
               case 2:
                  return 5;
               case 3:
                  return 10;
               case 4:
                  return 13;
               case 5:
                  return 16;
               case 6:
                  return 20;
               case 7:
                  return 25;
               case 8:
                  return 30;
               case 9:
                  return 37;
               case 10:
                  return 45;
            }
         }
         if(param2 == "ap")
         {
            switch(param1)
            {
               case 1:
                  return 0;
               case 2:
                  return 0;
               case 3:
                  return 5;
               case 4:
                  return 7;
               case 5:
                  return 10;
               case 6:
                  return 15;
               case 7:
                  return 20;
               case 8:
                  return 25;
               case 9:
                  return 32;
               case 10:
                  return 40;
            }
         }
         if(param2 == "price")
         {
            _loc4_ = 1;
            if(param3 == 1)
            {
               _loc4_ = 4;
            }
            if(param3 == 2)
            {
               _loc4_ = 3;
            }
            if(param3 == 3)
            {
               _loc4_ = 2;
            }
            if(param3 == 4)
            {
               _loc4_ = 1.7;
            }
            if(param3 == 5)
            {
               _loc4_ = 1.4;
            }
            switch(param1)
            {
               case 2:
                  return 0.1 * _loc4_;
               case 3:
                  return 0.15 * _loc4_;
               case 4:
                  return 0.2 * _loc4_;
               case 5:
                  return 0.3 * _loc4_;
               case 6:
                  return 0.4 * _loc4_;
               case 7:
                  return 0.5 * _loc4_;
               case 8:
                  return 0.65 * _loc4_;
               case 9:
                  return 0.75 * _loc4_;
               case 10:
                  return 0.85 * _loc4_;
            }
         }
         if(param2 == "sell_price")
         {
            switch(param1)
            {
               case 2:
                  return 1.1;
               case 3:
                  return 1.25;
               case 4:
                  return 1.45;
               case 5:
                  return 1.75;
               case 6:
                  return 2.15;
               case 7:
                  return 2.55;
               case 8:
                  return 3;
               case 9:
                  return 3.5;
               case 10:
                  return 4;
            }
         }
         return 0;
      }
      
      public function get_damage_resistance(param1:Number) : Number
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = 100;
         _loc3_ = param1;
         if(_loc3_ > 0)
         {
            while(_loc3_ != 0)
            {
               if(_loc3_ >= 200)
               {
                  _loc2_ -= 0.1;
               }
               else if(_loc3_ >= 100)
               {
                  _loc2_ -= 0.2;
               }
               else
               {
                  _loc2_ -= 0.3;
               }
               _loc3_--;
            }
         }
         else
         {
            while(_loc3_ != 0)
            {
               _loc2_ += 0.1;
               _loc3_++;
            }
         }
         if(_loc2_ < 20)
         {
            _loc2_ = 20;
         }
         return _loc2_;
      }
      
      public function wptype_to_spec(param1:String) : Number
      {
         if(param1 == "p")
         {
            return 1;
         }
         if(param1 == "e")
         {
            return 2;
         }
         if(param1 == "a")
         {
            return 3;
         }
         if(param1 == "c")
         {
            return 4;
         }
         if(param1 == "h")
         {
            return 5;
         }
         if(param1 == "f")
         {
            return 6;
         }
         if(param1 == "u")
         {
            return 7;
         }
         if(param1 == "l")
         {
            return 8;
         }
         return 0;
      }
      
      public function spec_to_name(param1:Number) : String
      {
         switch(param1)
         {
            case 0:
               return "не выбрана";
            case 1:
               return "Мастер ближнего боя";
            case 2:
               return "Подрывник";
            case 3:
               return "Артиллерист";
            case 4:
               return "Инженер";
            default:
               return "не выбрана";
         }
      }
      
      public function get_perk_effect(param1:String, param2:Number, param3:String) : Number
      {
         if(param1 == "dragonball")
         {
            switch(param2)
            {
               case 1:
                  return 1.5;
               case 2:
                  return 2;
               case 3:
                  return 3;
            }
         }
         if(param1 == "builder")
         {
            switch(param2)
            {
               case 1:
                  return 1.15;
               case 2:
                  return 1.3;
               case 3:
                  return 1.5;
            }
         }
         if(param1 == "laser_sights")
         {
            return param2;
         }
         if(param1 == "champion")
         {
            switch(param2)
            {
               case 1:
                  return 1.1;
               case 2:
                  return 1.15;
               case 3:
                  return 1.2;
            }
         }
         if(param1 == "education")
         {
            switch(param2)
            {
               case 1:
                  return 2;
               case 2:
                  return 3;
               case 3:
                  return 5;
            }
         }
         if(param1 == "fire_punch")
         {
            switch(param2)
            {
               case 1:
                  return -4.8;
               case 2:
                  return -5.2;
               case 3:
                  return -5.6;
            }
         }
         if(param1 == "engineer")
         {
            switch(param2)
            {
               case 1:
                  return 350;
               case 2:
                  return 450;
               case 3:
                  return 600;
            }
         }
         if(param1 == "miner")
         {
            switch(param2)
            {
               case 1:
                  return 2;
               case 2:
                  return 1;
               case 3:
                  return 0;
            }
         }
         if(param1 == "crafting")
         {
            switch(param2)
            {
               case 1:
                  return 5;
               case 2:
                  return 7;
               case 3:
                  return 9;
            }
         }
         if(param1 == "electrician")
         {
            switch(param2)
            {
               case 1:
                  return 0.1;
               case 2:
                  return 0.2;
               case 3:
                  return 0.3;
            }
         }
         if(param1 == "surprise")
         {
            return param2;
         }
         if(param1 == "merchant")
         {
            switch(param2)
            {
               case 1:
                  return 0.95;
               case 2:
                  return 0.9;
               case 3:
                  return 0.85;
            }
         }
         if(param1 == "medic")
         {
            switch(param2)
            {
               case 1:
                  return 1.05;
               case 2:
                  return 1.1;
               case 3:
                  return 1.15;
            }
         }
         if(param1 == "para_res")
         {
            switch(param2)
            {
               case 1:
                  return 0.7;
               case 2:
                  return 0.5;
               case 3:
                  return 0.3;
            }
         }
         if(param1 == "luck" || param1 == "luck2")
         {
            switch(param2)
            {
               case 1:
                  return 0.02;
               case 2:
                  return 0.07;
               case 3:
                  return 0.14;
            }
         }
         if(param1 == "angel")
         {
            switch(param2)
            {
               case 1:
                  return 0.1;
               case 2:
                  return 0.25;
               case 3:
                  return 0.5;
            }
         }
         if(param1 == "fire_res")
         {
            switch(param2)
            {
               case 1:
                  return 0.7;
               case 2:
                  return 0.5;
               case 3:
                  return 0.3;
            }
         }
         if(param1 == "legioner")
         {
            switch(param2)
            {
               case 1:
                  return 1;
               case 2:
                  return 2;
               case 3:
                  return 4;
            }
         }
         if(param1 == "comandeer")
         {
            switch(param2)
            {
               case 1:
                  return 50;
               case 2:
                  return 100;
               case 3:
                  return 150;
            }
         }
         if(param1 == "poison_res")
         {
            switch(param2)
            {
               case 1:
                  return -1;
               case 2:
                  return -2;
               case 3:
                  return -3;
            }
         }
         if(param1 == "flyer")
         {
            switch(param2)
            {
               case 1:
                  return 10;
               case 2:
                  return 20;
               case 3:
                  return 30;
            }
         }
         if(param1 == "sprotsman")
         {
            switch(param2)
            {
               case 1:
                  return 1.05;
               case 2:
                  return 1.15;
               case 3:
                  return 1.3;
            }
         }
         if(param1 == "heavy_guy")
         {
            switch(param2)
            {
               case 1:
                  return 0.9;
               case 2:
                  return 0.8;
               case 3:
                  return 0.1;
            }
         }
         if(param1 == "accuracy")
         {
            switch(param2)
            {
               case 1:
                  return 5;
               case 2:
                  return 2;
               case 3:
                  return 1;
            }
         }
         if(param1 == "best_crit")
         {
            switch(param2)
            {
               case 1:
                  return 0.1;
               case 2:
                  return 0.25;
               case 3:
                  return 0.5;
            }
         }
         if(param1 == "stims")
         {
            switch(param2)
            {
               case 1:
                  return 1;
               case 2:
                  return 2;
               case 3:
                  return 3;
            }
         }
         if(param1 == "fast_temp")
         {
            switch(param2)
            {
               case 1:
                  return 1;
               case 2:
                  return 2;
               case 3:
                  return 3;
            }
         }
         if(param1 == "thinker")
         {
            switch(param2)
            {
               case 1:
                  return 15;
               case 2:
                  return 30;
               case 3:
                  return 45;
            }
         }
         if(param1 == "soft_land")
         {
            switch(param2)
            {
               case 1:
                  return 1.2;
               case 2:
                  return 1.5;
               case 3:
                  return 100;
            }
         }
         if(param1 == "regeneration")
         {
            switch(param2)
            {
               case 1:
                  return 10;
               case 2:
                  return 20;
               case 3:
                  return 30;
            }
         }
         if(param1 == "vampire")
         {
            switch(param2)
            {
               case 1:
                  return 0.4;
               case 2:
                  return 0.8;
               case 3:
                  return 1.5;
            }
         }
         if(param1 == "bar")
         {
            switch(param2)
            {
               case 1:
                  return 0.1;
               case 2:
                  return 0.3;
               case 3:
                  return 0.5;
            }
         }
         if(param1 == "more_exp")
         {
            switch(param2)
            {
               case 1:
                  return 1.05;
               case 2:
                  return 1.1;
               case 3:
                  return 1.15;
            }
         }
         if(param1 == "up_pistols")
         {
            switch(param2)
            {
               case 1:
                  return 0.1;
               case 2:
                  return 0.25;
               case 3:
                  return 0.4;
            }
         }
         if(param1 == "up_rifles")
         {
            switch(param2)
            {
               case 1:
                  return 0.1;
               case 2:
                  return 0.15;
               case 3:
                  return 0.3;
            }
         }
         if(param1 == "up_miniguns")
         {
            switch(param2)
            {
               case 1:
                  return 0.1;
               case 2:
                  return 0.15;
               case 3:
                  return 0.3;
            }
         }
         if(param1 == "less_fail")
         {
            switch(param2)
            {
               case 1:
                  return 0.85;
               case 2:
                  return 0.7;
               case 3:
                  return 0.5;
            }
         }
         if(param1 == "more_fail")
         {
            switch(param2)
            {
               case 1:
                  return 0.08;
               case 2:
                  return 0.15;
               case 3:
                  return 0.25;
            }
         }
         if(param1 == "less_tired")
         {
            switch(param2)
            {
               case 1:
                  return 1;
               case 2:
                  return 2;
               case 3:
                  return 3;
            }
         }
         if(param1 == "dmg_thr")
         {
            return param2 * 10;
         }
         if(param1 == "big_guns")
         {
            if(Number(param3) < 5)
            {
               switch(param2)
               {
                  case 1:
                     return -0.1;
                  case 2:
                     return -0.2;
                  case 3:
                     return -0.3;
               }
            }
            if(Number(param3) >= 5)
            {
               switch(param2)
               {
                  case 1:
                     return 0.1;
                  case 2:
                     return 0.15;
                  case 3:
                     return 0.2;
               }
            }
         }
         if(param1 == "gsearch")
         {
            switch(param2)
            {
               case 1:
                  return 0.7;
               case 2:
                  return 0.55;
               case 3:
                  return 0.3;
            }
         }
         return 0;
      }
      
      public function get_skill_multi(param1:String) : Number
      {
         var _loc2_:* = undefined;
         _loc2_ = this.player.settings.skill;
         if(_loc2_ >= 10)
         {
            _loc2_ -= 10;
         }
         if(param1 == "exp" || param1 == "gold")
         {
            switch(_loc2_)
            {
               case 0:
                  return 1;
               case 1:
                  return 1.15;
               case 2:
                  return 1.3;
               case 3:
                  return 1.6;
               case 4:
                  return 2;
            }
         }
         else if(param1 == "attack" || param1 == "protect")
         {
            switch(_loc2_)
            {
               case 0:
                  return 0;
               case 1:
                  return 60;
               case 2:
                  return 120;
               case 3:
                  return 180;
               case 4:
                  return 250;
            }
         }
         else if(param1 == "health")
         {
            switch(_loc2_)
            {
               case 0:
                  return 1;
               case 1:
                  return 1.3;
               case 2:
                  return 1.6;
               case 3:
                  return 1.9;
               case 4:
                  return 2.4;
            }
         }
         return 1;
      }
      
      public function get_hardcore_multi(param1:Number, param2:Number) : Number
      {
         var _loc3_:* = undefined;
         _loc3_ = 1;
         if(this.player.settings.skill >= 10)
         {
            _loc3_ = 1 + Math.pow(param1 / param2,2) * 0.75;
         }
         return _loc3_;
      }
      
      public function get_assault_multi(param1:String, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         _loc5_ = param3;
         if(param3 > this.TEAMS_DEF["assault" + param4].assault_limit)
         {
            _loc5_ = param3 % this.TEAMS_DEF["assault" + param4].assault_limit;
         }
         if(param1 == "attack" || param1 == "protect")
         {
            return param2 + Math.round(300 * _loc5_ / this.TEAMS_DEF["assault" + param4].assault_limit);
         }
         if(param1 == "health")
         {
            _loc6_ = _loc5_ / this.TEAMS_DEF["assault" + param4].assault_limit;
            return Math.round(param2 * (1 + _loc6_) + 15000 * _loc6_);
         }
         return param2;
      }
      
      public function get_achiev_level(param1:String, param2:Number) : Number
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc3_ = 1;
         while(_loc3_ <= this.ACHIEV_DEF[0])
         {
            if(this.ACHIEV_DEF[_loc3_].id == param1)
            {
               _loc4_ = 0;
               while(this.ACHIEV_DEF[_loc3_].levels[_loc4_] <= param2)
               {
                  _loc4_++;
               }
               return _loc4_ - 1;
            }
            _loc3_++;
         }
         return 0;
      }
      
      public function get_achiev_rank(param1:Object) : Number
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = 0;
         for(_loc3_ in param1)
         {
            _loc2_ += this.get_achiev_level(_loc3_,param1[_loc3_]);
         }
         return Math.floor(_loc2_ / 10);
      }
      
      public function get_achiev_bonus() : Object
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         _loc1_ = {
            "exist":false,
            "gold":0,
            "diam":0,
            "exp":0,
            "rating":0
         };
         _loc2_ = 0;
         _loc3_ = 1;
         while(_loc3_ <= this.CRAFT_DEF[0])
         {
            if(this.player.recipes[_loc3_] == 1)
            {
               _loc2_++;
            }
            _loc3_++;
         }
         this.player.achiev["recipes"] = _loc2_;
         this.player.achiev["career"] = this.player.career_max - 1;
         this.player.achiev["missions"] = this.player.missions_max - 1;
         this.player.achiev["survival"] = this.player.survival_max - 1;
         this.player.achiev["boss"] = this.player.boss_max - 1;
         for(_loc4_ in this.player.achiev)
         {
            if(this.player.last_achiev[_loc4_] != this.get_achiev_level(_loc4_,this.player.achiev[_loc4_]))
            {
               if(this.player.last_achiev[_loc4_] < this.get_achiev_level(_loc4_,this.player.achiev[_loc4_]))
               {
                  _loc5_ = 0;
                  _loc6_ = this.player.last_achiev[_loc4_];
                  while(_loc5_ < 20)
                  {
                     _loc5_++;
                     _loc6_++;
                     _loc1_[this.ACHIEV_PRISE_DEF[_loc4_].prise] += this.ACHIEV_PRISE_DEF[_loc4_].amount[_loc6_];
                     _loc1_.exist = true;
                     if(_loc6_ == this.get_achiev_level(_loc4_,this.player.achiev[_loc4_]))
                     {
                        break;
                     }
                  }
               }
            }
         }
         if(this.get_achiev_rank(this.player.achiev) != this.player.last_achiev_range)
         {
            _loc1_.rating = this.ACHIEV_RATING_BONUS[this.get_achiev_rank(this.player.achiev)];
            _loc1_.exist = true;
         }
         return _loc1_;
      }
      
      public function get_task_bonus() : Object
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         _loc1_ = {
            "exist":false,
            "gold":0,
            "diam":0,
            "exp":0,
            "rating":0
         };
         _loc2_ = this.player.last_presented_task;
         while(_loc2_ <= this.player.cur_task - 1)
         {
            _loc1_[this.TASK_DEF[_loc2_].bonus_type] += this.TASK_DEF[_loc2_].bonus;
            _loc1_.exist = true;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get_attack_cost(param1:Number) : Number
      {
         if(param1 < 100)
         {
            return 1;
         }
         if(param1 < 150)
         {
            return 2;
         }
         if(param1 < 200)
         {
            return 3;
         }
         if(param1 < 250)
         {
            return 4;
         }
         return 5;
      }
      
      public function get_fail_chance(param1:Number, param2:Number, param3:Number, param4:Boolean) : Object
      {
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         _loc5_ = {
            "fail":0,
            "tired":0,
            "perks":0
         };
         if(param4)
         {
            _loc5_.fail = 0.01 + param3;
         }
         else
         {
            if(param1 < 100)
            {
               _loc6_ = 0;
            }
            else if(param1 < 200)
            {
               _loc6_ = 0.05;
            }
            else if(param1 < 300)
            {
               _loc6_ = 0.1;
            }
            else if(param1 < 400)
            {
               _loc6_ = 0.2;
            }
            else if(param1 < 500)
            {
               _loc6_ = 0.3;
            }
            else
            {
               _loc6_ = 0.4;
            }
            if(param1 < 100)
            {
               _loc5_.fail = _loc6_ + param3;
            }
            else
            {
               _loc5_.fail = Math.ceil((_loc6_ * param2 + param3) * 100) / 100;
            }
            _loc5_.tired = _loc6_;
            _loc5_.perks = this.sign(_loc5_.fail - _loc5_.tired) * Math.ceil(this.mod(_loc5_.fail - _loc5_.tired) * 100) / 100;
         }
         return _loc5_;
      }
      
      public function get_steal_prob(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         _loc5_ = param1;
         if(param1 > 70)
         {
            _loc5_ = 70;
         }
         _loc6_ = 0;
         _loc7_ = (param3 + param4 / 3) / 11;
         _loc6_ = _loc5_ / 70 * 2 + 20 * Math.pow((70 - param2) / 70,4) * (_loc7_ + 0.5);
         if((_loc6_ = Math.ceil(_loc6_) - 1) < 0)
         {
            _loc6_ = 0;
         }
         return _loc6_;
      }
      
      public function get_crate_param(param1:Object, param2:String, param3:Number) : Object
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
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         var _loc16_:* = undefined;
         _loc4_ = {
            "generate":false,
            "weapon":""
         };
         _loc5_ = 10;
         _loc6_ = 0;
         if(param1["luck"] && param1["luck"] != 0)
         {
            _loc5_ += param1["luck"] * 3;
            _loc6_ += param1["luck"] * 7;
         }
         if(param1["luck2"] && param1["luck2"] != 0)
         {
            _loc5_ += param1["luck2"] * 4;
            _loc6_ += param1["luck2"] * 7;
         }
         if(param1["crates"] && param1["crates"] != 0 && param3 != 3)
         {
            _loc5_ += param1["crates"] * 8;
            _loc6_ += param1["crates"] * 20;
         }
         if(param3 == 3)
         {
            _loc5_ += 3 * 8;
            _loc6_ += 3 * 20;
         }
         if(param1["big_guns"] && param1["big_guns"] != 0)
         {
            _loc6_ += param1["big_guns"] * 5;
         }
         if(param2 == "just" && _loc6_ > 39)
         {
            _loc6_ = 39;
         }
         if(_loc5_ > this.pseudo_random(0,100))
         {
            _loc4_.generate = true;
            _loc7_ = "crates_1";
            if(_loc6_ <= 39)
            {
               _loc7_ = "crates_2";
            }
            if(_loc6_ <= 59)
            {
               _loc7_ = "crates_3";
            }
            if(_loc6_ <= 79)
            {
               _loc7_ = "crates_4";
            }
            if(_loc6_ <= 116)
            {
               _loc7_ = "crates_5";
            }
            if(_loc6_ > 116)
            {
               _loc7_ = "crates_6";
            }
            _loc8_ = this.ROUL_VER[_loc7_];
            _loc9_ = new Array(_loc8_[0],0);
            _loc10_ = 0;
            _loc11_ = "";
            _loc12_ = 1;
            while(_loc12_ <= 7)
            {
               _loc9_[_loc12_] = _loc8_[_loc12_] + _loc9_[_loc12_ - 1];
               _loc12_++;
            }
            _loc13_ = this.pseudo_random(0,99);
            _loc14_ = 0;
            while(_loc14_ <= 7)
            {
               if(_loc13_ < _loc9_[_loc14_])
               {
                  _loc10_ = _loc14_;
                  break;
               }
               _loc14_++;
            }
            if(_loc10_ != 0)
            {
               do
               {
                  _loc15_ = this.pseudo_random(1,200);
                  for(_loc16_ in this.WEAPONS_DEF)
                  {
                     if(this.WEAPONS_DEF[_loc16_].id == _loc15_ && this.WEAPONS_DEF[_loc16_].id != 61 && _loc16_.search("rez") == -1 && this.WEAPONS_DEF[_loc16_].shown)
                     {
                        if(this.WEAPONS_DEF[_loc16_].wpclass == _loc14_)
                        {
                           _loc11_ = _loc16_;
                        }
                     }
                  }
               }
               while(_loc11_ == "");
               
            }
            if(_loc11_ != "")
            {
               _loc4_.weapon = _loc11_;
            }
            else
            {
               _loc4_.generate = false;
            }
         }
         this.deep_trace(_loc4_);
         return _loc4_;
      }
      
      public function get_rating_inc(param1:Number, param2:Number) : Number
      {
         if(param1 == 10)
         {
            if(param2 >= 300)
            {
               return 30;
            }
            if(param2 >= 100)
            {
               return 20;
            }
            if(param2 >= 50)
            {
               return 15;
            }
            if(param2 >= 25)
            {
               return 10;
            }
            if(param2 >= 10)
            {
               return 8;
            }
            return 5;
         }
         if(param1 == 25)
         {
            if(param2 >= 300)
            {
               return 50;
            }
            if(param2 >= 100)
            {
               return 25;
            }
            if(param2 >= 50)
            {
               return 20;
            }
            if(param2 >= 25)
            {
               return 15;
            }
            if(param2 >= 10)
            {
               return 12;
            }
            return 10;
         }
         if(param1 == 50)
         {
            if(param2 >= 300)
            {
               return 75;
            }
            if(param2 >= 100)
            {
               return 35;
            }
            if(param2 >= 50)
            {
               return 30;
            }
            if(param2 >= 25)
            {
               return 25;
            }
            if(param2 >= 10)
            {
               return 20;
            }
            return 15;
         }
         if(param1 == 100)
         {
            if(param2 >= 300)
            {
               return 100;
            }
            if(param2 >= 100)
            {
               return 60;
            }
            if(param2 >= 50)
            {
               return 50;
            }
            if(param2 >= 25)
            {
               return 40;
            }
            if(param2 >= 10)
            {
               return 25;
            }
            return 20;
         }
         if(param1 == 300)
         {
            if(param2 >= 300)
            {
               return 500;
            }
            if(param2 >= 100)
            {
               return 150;
            }
            if(param2 >= 50)
            {
               return 100;
            }
            if(param2 >= 25)
            {
               return 75;
            }
            if(param2 >= 10)
            {
               return 60;
            }
            return 50;
         }
         return 0;
      }
      
      public function get_stealth_eff(param1:Number, param2:Number) : Number
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         _loc3_ = 0;
         if(this.player.perks["ninja"] && this.player.perks["ninja"] > 0)
         {
            _loc3_ = 30 * this.player.perks["ninja"];
         }
         if((_loc4_ = param2 + _loc3_) < 20)
         {
            return param1;
         }
         if(_loc4_ >= 20 && _loc4_ < 40)
         {
            switch(param1)
            {
               case 1:
                  return 1;
               case 2:
                  return 1;
               case 3:
                  return 3;
               case 4:
                  return 4;
               case 5:
                  return 5;
               case 6:
                  return 6;
            }
         }
         if(_loc4_ >= 40 && _loc4_ < 60)
         {
            switch(param1)
            {
               case 1:
                  return 1;
               case 2:
                  return 1;
               case 3:
                  return 2;
               case 4:
                  return 3;
               case 5:
                  return 5;
               case 6:
                  return 6;
            }
         }
         if(_loc4_ >= 60 && _loc4_ < 80)
         {
            switch(param1)
            {
               case 1:
                  return 1;
               case 2:
                  return 1;
               case 3:
                  return 1;
               case 4:
                  return 3;
               case 5:
                  return 5;
               case 6:
                  return 6;
            }
         }
         if(_loc4_ >= 80 && _loc4_ < 100)
         {
            switch(param1)
            {
               case 1:
                  return 1;
               case 2:
                  return 1;
               case 3:
                  return 1;
               case 4:
                  return 1;
               case 5:
                  return 4;
               case 6:
                  return 6;
            }
         }
         _loc5_ = this.pseudo_random(0,100);
         if(_loc4_ >= 100 && _loc5_ <= 30)
         {
            switch(param1)
            {
               case 1:
                  return 1;
               case 2:
                  return 1;
               case 3:
                  return 1;
               case 4:
                  return 1;
               case 5:
                  return 3;
               case 6:
                  return 4;
            }
         }
         if(_loc4_ >= 100 && _loc5_ <= 50)
         {
            switch(param1)
            {
               case 1:
                  return 1;
               case 2:
                  return 1;
               case 3:
                  return 1;
               case 4:
                  return 1;
               case 5:
                  return 3;
               case 6:
                  return 5;
            }
         }
         if(_loc4_ >= 100 && _loc5_ > 50)
         {
            switch(param1)
            {
               case 1:
                  return 1;
               case 2:
                  return 1;
               case 3:
                  return 1;
               case 4:
                  return 1;
               case 5:
                  return 3;
               case 6:
                  return 6;
            }
         }
         return param1;
      }
      
      public function get_ap_chance(param1:Object, param2:Object) : Object
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc3_ = param2.attack;
         _loc4_ = {
            "ap":0,
            "perks":0,
            "skills":0
         };
         if(_loc3_ < 200)
         {
            _loc4_.skills = 0;
         }
         else if(_loc3_ < 600)
         {
            _loc4_.skills = (_loc3_ - 200) / 20 + 5;
         }
         else if(_loc3_ < 700)
         {
            _loc4_.skills = (_loc3_ - 600) / 2 + 25;
         }
         else
         {
            _loc4_.skills = 75;
         }
         if(param1["ap_shots"])
         {
            _loc4_.perks += param1["ap_shots"] * 5;
         }
         _loc4_.ap = (_loc4_.skills + _loc4_.perks) / 100;
         _loc4_.skills = Math.round(_loc4_.skills);
         _loc4_.perks = Math.round(_loc4_.perks);
         return _loc4_;
      }
      
      public function get_absorb_chance(param1:Object, param2:Object) : Object
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc3_ = param2.protect;
         _loc4_ = {
            "absorb":0,
            "perks":0,
            "skills":0
         };
         if(_loc3_ < 200)
         {
            _loc4_.skills = 0;
         }
         else if(_loc3_ < 600)
         {
            _loc4_.skills = (_loc3_ - 200) / 20 + 5;
         }
         else
         {
            _loc4_.skills = (_loc3_ - 600) * 3 / 4 + 25;
         }
         if(param1["absorb"])
         {
            _loc4_.perks += param1["absorb"] * 5;
         }
         if(param1["dmg_thr"])
         {
            _loc4_.perks += Math.floor(param1["dmg_thr"] / 4);
         }
         _loc4_.absorb = (_loc4_.skills + _loc4_.perks) / 100;
         _loc4_.skills = Math.round(_loc4_.skills);
         _loc4_.perks = Math.round(_loc4_.perks);
         if(_loc4_.absorb > 1)
         {
            _loc4_.absorb = 1;
         }
         return _loc4_;
      }
      
      public function get_papa_weapons(param1:String) : *
      {
         var _loc2_:Date = null;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc2_ = new Date(this.user.unix_time * 1000);
         _loc3_ = _loc2_.getDate();
         if(param1 == "weapons")
         {
            _loc4_ = this.PAPA_WEAPONS[_loc3_ % 8];
         }
         if(param1 == "objs")
         {
            _loc4_ = this.PAPA_OBJECTS[_loc3_ % 8];
         }
         return _loc4_;
      }
      
      public function get_grave_result(param1:Number, param2:String, param3:Number) : Object
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
         _loc4_ = {
            "ptype":"",
            "id":""
         };
         _loc5_ = this.true_random(1,1000);
         if(param2 == "boss")
         {
            if(_loc5_ <= 100)
            {
               _loc4_.ptype = "gold";
            }
            else if(_loc5_ <= 600)
            {
               _loc4_.ptype = "diam";
            }
            else
            {
               _loc4_.ptype = "obj";
            }
         }
         else if(param1 == 7)
         {
            if(_loc5_ <= 300)
            {
               _loc4_.ptype = "stim";
            }
            else if(_loc5_ <= 600)
            {
               _loc4_.ptype = "gold";
            }
            else if(_loc5_ <= 650)
            {
               _loc4_.ptype = "diam";
            }
            else
            {
               _loc4_.ptype = "obj";
            }
         }
         else if(param1 == 6)
         {
            if(_loc5_ <= 400)
            {
               _loc4_.ptype = "stim";
            }
            else if(_loc5_ <= 600)
            {
               _loc4_.ptype = "gold";
            }
            else if(_loc5_ <= 650)
            {
               _loc4_.ptype = "diam";
            }
            else if(_loc5_ <= 900)
            {
               _loc4_.ptype = "obj";
            }
            else
            {
               _loc4_.ptype = "";
            }
         }
         else if(param1 == 5)
         {
            if(_loc5_ <= 440)
            {
               _loc4_.ptype = "stim";
            }
            else if(_loc5_ <= 690)
            {
               _loc4_.ptype = "gold";
            }
            else if(_loc5_ <= 700)
            {
               _loc4_.ptype = "diam";
            }
            else if(_loc5_ <= 850)
            {
               _loc4_.ptype = "obj";
            }
            else
            {
               _loc4_.ptype = "";
            }
         }
         else if(param1 == 4)
         {
            if(_loc5_ <= 400)
            {
               _loc4_.ptype = "stim";
            }
            else if(_loc5_ <= 550)
            {
               _loc4_.ptype = "gold";
            }
            else if(_loc5_ <= 600)
            {
               _loc4_.ptype = "weapon";
            }
            else if(_loc5_ <= 750)
            {
               _loc4_.ptype = "obj";
            }
            else
            {
               _loc4_.ptype = "";
            }
         }
         else if(param1 == 3)
         {
            if(_loc5_ <= 350)
            {
               _loc4_.ptype = "stim";
            }
            else if(_loc5_ <= 450)
            {
               _loc4_.ptype = "gold";
            }
            else if(_loc5_ <= 550)
            {
               _loc4_.ptype = "weapon";
            }
            else if(_loc5_ <= 700)
            {
               _loc4_.ptype = "obj";
            }
            else
            {
               _loc4_.ptype = "";
            }
         }
         else if(param1 == 2)
         {
            if(_loc5_ <= 300)
            {
               _loc4_.ptype = "stim";
            }
            else if(_loc5_ <= 350)
            {
               _loc4_.ptype = "gold";
            }
            else if(_loc5_ <= 450)
            {
               _loc4_.ptype = "weapon";
            }
            else if(_loc5_ <= 600)
            {
               _loc4_.ptype = "obj";
            }
            else
            {
               _loc4_.ptype = "";
            }
         }
         else if(param1 == 1)
         {
            if(_loc5_ <= 250)
            {
               _loc4_.ptype = "stim";
            }
            else if(_loc5_ <= 350)
            {
               _loc4_.ptype = "gold";
            }
            else if(_loc5_ <= 500)
            {
               _loc4_.ptype = "obj";
            }
            else
            {
               _loc4_.ptype = "weapon";
            }
         }
         if(_loc4_.ptype == "")
         {
            return _loc4_;
         }
         _loc6_ = this.true_random(1,100);
         if(_loc4_.ptype == "stim")
         {
            if(param2 == "boss" || param1 == 7 || param1 == 6)
            {
               if(_loc6_ <= 50)
               {
                  _loc4_.id = "stimpack";
               }
               else if(_loc6_ <= 65)
               {
                  _loc4_.id = "jet";
               }
               else if(_loc6_ <= 80)
               {
                  _loc4_.id = "buffout";
               }
               else if(_loc6_ <= 92)
               {
                  _loc4_.id = "superstimpack";
               }
               else
               {
                  _loc4_.id = "psycho";
               }
            }
            else if(param1 >= 4)
            {
               if(_loc6_ <= 70)
               {
                  _loc4_.id = "stimpack";
               }
               else if(_loc6_ <= 82)
               {
                  _loc4_.id = "jet";
               }
               else if(_loc6_ <= 94)
               {
                  _loc4_.id = "buffout";
               }
               else
               {
                  _loc4_.id = "superstimpack";
               }
            }
            else if(_loc6_ <= 80)
            {
               _loc4_.id = "stimpack";
            }
            else if(_loc6_ <= 90)
            {
               _loc4_.id = "jet";
            }
            else
            {
               _loc4_.id = "buffout";
            }
            return _loc4_;
         }
         if(_loc4_.ptype == "gold")
         {
            if(param2 == "boss" || param1 == 7 || param1 == 6)
            {
               if(_loc6_ <= 50)
               {
                  _loc4_.id = "300";
               }
               else if(_loc6_ <= 70)
               {
                  _loc4_.id = "400";
               }
               else if(_loc6_ <= 80)
               {
                  _loc4_.id = "600";
               }
               else if(_loc6_ <= 90)
               {
                  _loc4_.id = "800";
               }
               else if(_loc6_ <= 95)
               {
                  _loc4_.id = "1000";
               }
               else
               {
                  _loc4_.id = "1500";
               }
            }
            else if(param1 >= 4)
            {
               if(_loc6_ <= 50)
               {
                  _loc4_.id = "100";
               }
               else if(_loc6_ <= 80)
               {
                  _loc4_.id = "200";
               }
               else if(_loc6_ <= 90)
               {
                  _loc4_.id = "300";
               }
               else if(_loc6_ <= 95)
               {
                  _loc4_.id = "400";
               }
               else
               {
                  _loc4_.id = "500";
               }
            }
            else if(_loc6_ <= 80)
            {
               _loc4_.id = "50";
            }
            else if(_loc6_ <= 90)
            {
               _loc4_.id = "100";
            }
            else if(_loc6_ <= 95)
            {
               _loc4_.id = "150";
            }
            else
            {
               _loc4_.id = "200";
            }
            return _loc4_;
         }
         if(_loc4_.ptype == "diam")
         {
            if(param2 == "boss" || param1 == 6)
            {
               if(_loc6_ <= 95)
               {
                  _loc4_.id = "2";
               }
               else if(_loc6_ <= 98)
               {
                  _loc4_.id = "3";
               }
               else
               {
                  _loc4_.id = "4";
               }
            }
            else if(param1 >= 4)
            {
               if(_loc6_ <= 95)
               {
                  _loc4_.id = "1";
               }
               else
               {
                  _loc4_.id = "2";
               }
            }
            return _loc4_;
         }
         if(_loc4_.ptype == "weapon")
         {
            if(param2 == "career")
            {
               _loc7_ = this.TEAMS_DEF["career" + param3];
            }
            if(param2 == "missions")
            {
               _loc7_ = this.TEAMS_DEF["mission" + param3];
            }
            if(param2 == "survival")
            {
               _loc7_ = this.TEAMS_DEF["survival" + param3];
            }
            if(param2 == "boss")
            {
               _loc7_ = this.TEAMS_DEF["boss" + param3];
            }
            _loc8_ = [0,""];
            _loc9_ = 2;
            while(_loc9_ <= _loc7_.teams + 1)
            {
               for(_loc10_ in _loc7_["team" + _loc9_].weapons)
               {
                  if(this.WEAPONS_DEF[_loc10_].id < 200 && this.WEAPONS_DEF[_loc10_].wpclass <= 3 && _loc10_ != "skip_go")
                  {
                     _loc11_ = false;
                     _loc12_ = 1;
                     while(_loc12_ <= _loc8_[0])
                     {
                        if(_loc8_[_loc12_] == _loc10_)
                        {
                           _loc11_ = true;
                        }
                        _loc12_++;
                     }
                     if(!_loc11_)
                     {
                        ++_loc8_[0];
                        _loc8_[_loc8_[0]] = _loc10_;
                     }
                  }
               }
               _loc9_++;
            }
            if(_loc8_[0] == 0)
            {
               return {
                  "ptype":"",
                  "id":""
               };
            }
            _loc4_.id = _loc8_[this.true_random(1,_loc8_[0])];
         }
         if(_loc4_.ptype == "obj")
         {
            if(param2 == "boss" || param1 == 7)
            {
               if(_loc6_ <= 5)
               {
                  _loc4_.id = "obj_barrel";
               }
               else if(_loc6_ <= 10)
               {
                  _loc4_.id = "obj_middle_clip";
               }
               else if(_loc6_ <= 15)
               {
                  _loc4_.id = "obj_small_cell";
               }
               else if(_loc6_ <= 20)
               {
                  _loc4_.id = "obj_napalm_cont";
               }
               else if(_loc6_ <= 25)
               {
                  _loc4_.id = "obj_laser_mod";
               }
               else if(_loc6_ <= 30)
               {
                  _loc4_.id = "obj_plasma_mod";
               }
               else if(_loc6_ <= 35)
               {
                  _loc4_.id = "obj_fuel";
               }
               else if(_loc6_ <= 40)
               {
                  _loc4_.id = "obj_small_expl";
               }
               else if(_loc6_ <= 52)
               {
                  _loc4_.id = "obj_big_clip";
               }
               else if(_loc6_ <= 64)
               {
                  _loc4_.id = "obj_big_cell";
               }
               else if(_loc6_ <= 76)
               {
                  _loc4_.id = "obj_hard_jacket";
               }
               else if(_loc6_ <= 88)
               {
                  _loc4_.id = "obj_poison_cont";
               }
               else
               {
                  _loc4_.id = "obj_coil";
               }
            }
            else if(_loc6_ <= 15)
            {
               _loc4_.id = "obj_barrel";
            }
            else if(_loc6_ <= 30)
            {
               _loc4_.id = "obj_middle_clip";
            }
            else if(_loc6_ <= 45)
            {
               _loc4_.id = "obj_small_cell";
            }
            else if(_loc6_ <= 50)
            {
               _loc4_.id = "obj_napalm_cont";
            }
            else if(_loc6_ <= 55)
            {
               _loc4_.id = "obj_laser_mod";
            }
            else if(_loc6_ <= 60)
            {
               _loc4_.id = "obj_plasma_mod";
            }
            else if(_loc6_ <= 75)
            {
               _loc4_.id = "obj_fuel";
            }
            else if(_loc6_ <= 90)
            {
               _loc4_.id = "obj_small_expl";
            }
            else if(_loc6_ <= 92)
            {
               _loc4_.id = "obj_big_clip";
            }
            else if(_loc6_ <= 94)
            {
               _loc4_.id = "obj_big_cell";
            }
            else if(_loc6_ <= 96)
            {
               _loc4_.id = "obj_hard_jacket";
            }
            else if(_loc6_ <= 98)
            {
               _loc4_.id = "obj_poison_cont";
            }
            else
            {
               _loc4_.id = "obj_coil";
            }
            return _loc4_;
         }
         return _loc4_;
      }
      
      public function get_opened_squares() : Object
      {
         var _loc1_:* = undefined;
         _loc1_ = {};
         _loc1_["wormville"] = true;
         _loc1_["papa_john"] = true;
         return _loc1_;
      }
      
      public function get_award(param1:Number, param2:String) : Boolean
      {
         if(param2 == "tester")
         {
            if(param1 == 50203652 || param1 == 20462781 || param1 == 134819803 || param1 == 97219098 || param1 == 58247031 || param1 == 22618323)
            {
               return true;
            }
         }
         if(param2 == "contest")
         {
            if(param1 == 7334355 || param1 == 20462781 || param1 == 134819803 || param1 == 97219098 || param1 == 102563233 || param1 == 50203652 || param1 == 71156137 || param1 == 25897772 || param1 == 7034398 || param1 == 123914458)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get_player_worm_name(param1:Number, param2:String) : String
      {
         if(this.REPLAY || this.player["worm_name" + param1] == "" || param2 == "just")
         {
            return "Червь #" + String(param1);
         }
         return this.player["worm_name" + param1];
      }
      
      public function get_var_color(param1:Number, param2:Number) : String
      {
         if(param1 > param2)
         {
            return "\"#FF0000\"";
         }
         if(param1 < param2)
         {
            return "\"#009900\"";
         }
         return "\"#000000\"";
      }
      
      public function calc_bg_art(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Object
      {
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         param2 -= 800;
         _loc7_ = (param5 + param1) / (-param2 + param1);
         _loc8_ = (-param3 + this.WINDOW_WIDTH) * _loc7_;
         return {
            "x":_loc8_,
            "y":this.WINDOW_HEIGHT - param4 + param6 / 2
         };
      }
      
      public function weapon_optimisation(param1:Object) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         for(_loc2_ in param1)
         {
            _loc3_ = 0;
            _loc4_ = [];
            _loc5_ = 1;
            while(_loc5_ <= 10)
            {
               if(param1[_loc2_][_loc5_])
               {
                  if(param1[_loc2_][_loc5_].range > 0)
                  {
                     _loc4_[_loc3_] = this.clone(param1[_loc2_][_loc5_]);
                     _loc3_++;
                  }
               }
               _loc5_++;
            }
            _loc4_.sortOn("range",Array.NUMERIC | Array.DESCENDING);
            param1[_loc2_] = {};
            param1[_loc2_] = [_loc3_,{}];
            _loc5_ = 1;
            while(_loc5_ <= _loc3_)
            {
               param1[_loc2_][_loc5_] = _loc4_[_loc5_ - 1];
               _loc5_++;
            }
         }
      }
      
      public function ret_time_format(param1:Number) : String
      {
         if(param1 < 60)
         {
            return this.x3String(param1) + " сек. назад";
         }
         if(param1 < 60 * 60)
         {
            return this.x3String(Math.floor(param1 / 60)) + " мин. назад";
         }
         if(param1 < 60 * 60 * 24)
         {
            return this.x3String(Math.floor(param1 / 60 / 60)) + " час. назад";
         }
         return this.x3String(Math.floor(param1 / 60 / 60 / 24)) + " дн. назад";
      }
      
      public function return_clan(param1:Number, param2:Array) : Number
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc3_ = 1;
         while(_loc3_ <= param2[0])
         {
            _loc4_ = 1;
            while(_loc4_ <= param2[_loc3_][0])
            {
               if(param1 == param2[_loc3_][_loc4_])
               {
                  return _loc3_;
               }
               _loc4_++;
            }
            _loc3_++;
         }
         return 0;
      }
      
      public function get_book_recipes(param1:String, param2:String) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         _loc3_ = [0,0];
         _loc4_ = "<b>";
         _loc5_ = 1;
         while(_loc5_ <= this.BOOKS_DEF[param1].param[0])
         {
            if(param2 == "text")
            {
               _loc4_ += this.WEAPONS_DEF[this.CRAFT_DEF[this.BOOKS_DEF[param1].param[_loc5_]].result].name + "\n";
            }
            if(param2 == "array")
            {
               ++_loc3_[0];
               _loc3_[_loc3_[0]] = this.BOOKS_DEF[param1].param[_loc5_];
            }
            _loc5_++;
         }
         if(param2 == "text")
         {
            return _loc4_ + "</b>";
         }
         if(param2 == "array")
         {
            return _loc3_;
         }
         return 0;
      }
      
      public function get_bullet_amount(param1:String) : Number
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         _loc2_ = 0;
         if(this.player.perks["light_clips"])
         {
            _loc2_ = this.player.perks["light_clips"];
         }
         _loc3_ = 0;
         if(this.player.perks["medium_clips"])
         {
            _loc3_ = this.player.perks["medium_clips"];
         }
         _loc4_ = 0;
         if(this.player.perks["heavy_clips"])
         {
            _loc4_ = this.player.perks["heavy_clips"];
         }
         _loc5_ = {
            "pistol":[0,1,1,2,2,3,4,5,6,7,7],
            "uzi":[0,2,4,5,6,8,10,11,12,13,15],
            "unfail_uzi":[0,2,4,5,6,8,10,11,12,13,15],
            "laser_pistol":[0,0,1,1,2,3,3,4,5,6,7],
            "laser_pistol2":[0,1,3,4,5,6,7,8,9,11,13],
            "plasma_pistol":[0,0,1,1,2,2,3,3,3,4,5],
            "gauss_pistol":[0,0,0,0,0,0,0,1,1,1,1],
            "gauss_pistol2":[0,0,0,0,0,0,0,0,1,1,2]
         };
         _loc6_ = {
            "shotgun":[0,1,1,1,1,1,1,1,2,2,2],
            "hunting_rifle":[0,0,1,1,1,1,1,1,1,2,2],
            "peacemaker":[0,0,0,1,1,1,1,1,2,2,3],
            "hearts_ace":[0,0,0,1,1,1,1,1,2,2,3],
            "sniper_rifle":[0,0,0,0,0,0,0,1,1,1,1],
            "laser_rifle":[0,1,2,4,6,8,10,11,12,13,15],
            "unfail_laser_rifle":[0,1,2,4,6,8,10,11,12,13,15],
            "plasma_rifle":[0,0,1,2,4,5,6,7,8,9,10],
            "unfail_plasma_rifle":[0,0,1,2,4,5,6,7,8,9,10],
            "gauss_rifle":[0,0,0,0,0,0,0,1,1,1,1],
            "unfail_gauss_rifle":[0,0,0,0,0,0,0,1,1,1,1]
         };
         _loc7_ = {
            "minigun":[0,3,6,10,13,16,20,25,30,35,40],
            "unfail_minigun":[0,3,6,10,13,16,20,25,30,35,40],
            "air_minigun":[0,3,6,10,12,14,16,18,20,25,30],
            "avenger":[0,3,6,10,12,14,16,18,20,25,30],
            "rad_rifle":[0,0,0,0,0,0,0,0,0,0,1],
            "bozar":[0,3,6,10,12,14,16,18,20,25,30],
            "bozar16":[0,3,6,10,12,14,16,18,20,22,25],
            "bozar24s":[0,2,4,6,8,10,12,14,16,18,20],
            "laser_minigun":[0,3,6,10,12,14,16,18,20,25,30],
            "plasma_minigun":[0,3,6,10,12,14,16,18,20,22,25],
            "gauss_minigun":[0,1,2,3,4,5,6,7,8,9,10]
         };
         _loc8_ = 0;
         if(_loc2_ != 0 && _loc5_[param1])
         {
            _loc8_ += _loc5_[param1][_loc2_];
         }
         if(_loc3_ != 0 && _loc6_[param1])
         {
            _loc8_ += _loc6_[param1][_loc3_];
         }
         if(_loc4_ != 0 && _loc7_[param1])
         {
            _loc8_ += _loc7_[param1][_loc4_];
         }
         return _loc8_;
      }
      
      public function reset_perks() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         this.player.diam.value -= 10;
         _loc1_ = 0;
         _loc2_ = this.clone(this.player.perks);
         for(_loc3_ in this.player.perks)
         {
            while(_loc2_[_loc3_] != 0)
            {
               _loc1_ += this.PERKS_DEF[_loc3_].upg[_loc2_[_loc3_] - 1];
               --_loc2_[_loc3_];
            }
         }
         this.player.perk_pts.value += _loc1_;
         this.player.perks = {};
         while(this.player.attack.value != 0)
         {
            this.player.skill_pts.value += this.get_attack_cost(this.player.attack.value - 1);
            --this.player.attack.value;
         }
         while(this.player.protect.value != 0)
         {
            this.player.skill_pts.value += this.get_attack_cost(this.player.protect.value - 1);
            --this.player.protect.value;
         }
         this.player.skill_pts.value += this.player.health.value * 30;
         this.player.skill_pts.value += this.player.worms.value * 150;
         this.player.attack.value = 0;
         this.player.protect.value = 0;
         this.player.health.value = 0;
         this.player.worms.value = 0;
         this.player.spec = 0;
         this.player.last_reset = this.player.level.value;
      }
      
      public function improve_spec() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         _loc1_ = this.player.spec;
         _loc2_ = {};
         for(_loc3_ in this.player.perks)
         {
            _loc4_ = false;
            _loc5_ = 0;
            while(_loc5_ <= 1)
            {
               if(_loc3_ == this.SPEC_DEF[_loc1_][_loc5_])
               {
                  if(this.player.perks[_loc3_] > 0)
                  {
                     this.player.perk_pts.value += this.PERKS_DEF[_loc3_].upg[0];
                  }
                  if(this.player.perks[_loc3_] > 1)
                  {
                     this.player.perk_pts.value += this.PERKS_DEF[_loc3_].upg[1];
                  }
                  if(this.player.perks[_loc3_] > 2)
                  {
                     this.player.perk_pts.value += this.PERKS_DEF[_loc3_].upg[2];
                  }
                  _loc4_ = true;
               }
               _loc5_++;
            }
            if(!_loc4_)
            {
               _loc2_[_loc3_] = this.player.perks[_loc3_];
            }
         }
         this.player.perks = this.clone(_loc2_);
         this.deep_trace(this.temp_player.perks);
      }
      
      public function get_tribute() : Object
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc1_ = 0;
         _loc2_ = 0;
         _loc3_ = 1;
         while(_loc3_ <= 17)
         {
            if(this.ASSAULT[_loc3_].user_id == this.user.user_id)
            {
               _loc1_++;
               _loc2_ += Math.ceil(this.TEAMS_DEF["assault" + _loc3_].payments * this.get_tribute_coeff(_loc3_));
            }
            _loc3_++;
         }
         _loc4_ = 0;
         if(this.user_clan != 0)
         {
            _loc3_ = 1;
            while(_loc3_ <= 17)
            {
               if(this.return_clan(this.ASSAULT[_loc3_].user_id,this.CLANS_PEOPLE_DEF) == this.user_clan && this.ASSAULT[_loc3_].user_id != this.user.user_id)
               {
                  _loc4_ += Math.ceil(this.TEAMS_DEF["assault" + _loc3_].payments * this.get_tribute_coeff(_loc3_) / 10);
               }
               _loc3_++;
            }
         }
         return {
            "terr_total":_loc1_,
            "my_gold":_loc2_,
            "clans_gold":_loc4_
         };
      }
      
      public function get_tribute_coeff(param1:*) : Number
      {
         var _loc2_:* = undefined;
         _loc2_ = this.assault_cur_time - this.ASSAULT[param1].last_assault;
         if(_loc2_ > 60 * 60)
         {
            return 1;
         }
         return _loc2_ / 3600;
      }
      
      public function get_char_from_key(param1:Object) : String
      {
         var _loc2_:* = undefined;
         _loc2_ = "";
         switch(param1.other)
         {
            case "1":
               _loc2_ += "A";
               break;
            case "2":
               _loc2_ += "B";
               break;
            case "3":
               _loc2_ += "C";
               break;
            case "4":
               _loc2_ += "D";
               break;
            case "5":
               _loc2_ += "E";
               break;
            case "-":
               _loc2_ += "F";
               break;
            case "+":
               _loc2_ += "G";
               break;
            case "up":
               _loc2_ += "H";
               break;
            case "down":
               _loc2_ += "I";
               break;
            case "left":
               _loc2_ += "J";
               break;
            case "right":
               _loc2_ += "K";
               break;
            case "up+left":
               _loc2_ += "L";
               break;
            case "up+right":
               _loc2_ += "M";
               break;
            case "down+left":
               _loc2_ += "N";
               break;
            case "down+right":
               _loc2_ += "O";
               break;
            case "enter":
               _loc2_ += "P";
               break;
            case "backspace":
               _loc2_ += "Q";
               break;
            case "escape":
               _loc2_ += "R";
               break;
            case "weapon":
               _loc2_ += "S";
               break;
            case "click":
               _loc2_ += "T";
         }
         if(param1.space)
         {
            _loc2_ = "U" + _loc2_;
         }
         return _loc2_;
      }
      
      public function get_key_from_char(param1:String) : Object
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = {
            "space":false,
            "other":"none"
         };
         if(param1.length == 0)
         {
            return _loc2_;
         }
         _loc3_ = "";
         if(param1.length > 1)
         {
            _loc2_.space = true;
            _loc3_ = param1.charAt(1);
         }
         else
         {
            _loc3_ = param1.charAt(0);
         }
         switch(_loc3_)
         {
            case "A":
               _loc2_.other = "1";
               break;
            case "B":
               _loc2_.other = "2";
               break;
            case "C":
               _loc2_.other = "3";
               break;
            case "D":
               _loc2_.other = "4";
               break;
            case "E":
               _loc2_.other = "5";
               break;
            case "F":
               _loc2_.other = "-";
               break;
            case "G":
               _loc2_.other = "+";
               break;
            case "H":
               _loc2_.other = "up";
               break;
            case "I":
               _loc2_.other = "down";
               break;
            case "J":
               _loc2_.other = "left";
               break;
            case "K":
               _loc2_.other = "right";
               break;
            case "L":
               _loc2_.other = "up+left";
               break;
            case "M":
               _loc2_.other = "up+right";
               break;
            case "N":
               _loc2_.other = "down+left";
               break;
            case "O":
               _loc2_.other = "down+right";
               break;
            case "P":
               _loc2_.other = "enter";
               break;
            case "Q":
               _loc2_.other = "backspace";
               break;
            case "R":
               _loc2_.other = "escape";
               break;
            case "S":
               _loc2_.other = "weapon";
               break;
            case "T":
               _loc2_.other = "click";
               break;
            case "U":
               _loc2_.space = true;
         }
         return _loc2_;
      }
      
      public function encode_replay_number(param1:Number) : String
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = "";
         if(param1 < 0)
         {
            _loc2_ += "*";
            param1 *= -1;
         }
         _loc3_ = this.return_bytes_30(param1);
         if(param1 < 30)
         {
            _loc2_ += String.fromCharCode(_loc3_[0] + 94);
         }
         else if(param1 < 30 * 30)
         {
            _loc2_ += String.fromCharCode(_loc3_[0] + 94) + String.fromCharCode(_loc3_[1] + 94);
         }
         else
         {
            _loc2_ += String.fromCharCode(_loc3_[0] + 94) + String.fromCharCode(_loc3_[1] + 94) + String.fromCharCode(_loc3_[2] + 94);
         }
         return _loc2_;
      }
      
      public function decode_replay_number(param1:String) : Number
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         _loc2_ = 0;
         _loc3_ = 1;
         if(param1.charAt(0) == "*")
         {
            _loc3_ = -1;
            param1 = param1.split("*")[1];
         }
         _loc4_ = 0;
         while(_loc4_ <= param1.length - 1)
         {
            _loc2_ += (param1.charCodeAt(_loc4_) - 94) * Math.pow(30,_loc4_);
            _loc4_++;
         }
         return _loc2_ * _loc3_;
      }
      
      public function decode_replay_move(param1:String) : Array
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
         _loc2_ = new Array();
         _loc3_ = param1.split("$");
         for(_loc4_ in _loc3_)
         {
            if(_loc3_[_loc4_].length > 0)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc6_ = this.decode_replay_number(_loc5_.split("&")[0]);
               _loc8_ = (_loc7_ = _loc5_.split("&")[1]).split("%")[0];
               _loc9_ = 0;
               _loc10_ = 0;
               _loc11_ = 0;
               _loc12_ = 0;
               _loc13_ = 0;
               if(_loc8_ == "S")
               {
                  _loc10_ = this.decode_replay_number(_loc7_.split("%")[1]);
                  _loc11_ = this.decode_replay_number(_loc7_.split("%")[2]);
               }
               if(_loc8_ == "T")
               {
                  _loc12_ = this.decode_replay_number(_loc7_.split("%")[1]);
                  _loc13_ = this.decode_replay_number(_loc7_.split("%")[2]);
               }
               if(_loc8_ != "S" && _loc8_ != "T" && _loc7_.split("%")[1])
               {
                  _loc9_ = this.decode_replay_number(_loc7_.split("%")[1]);
               }
               _loc2_[_loc6_] = {
                  "key_code":this.get_key_from_char(_loc8_),
                  "repeats":_loc9_,
                  "params":{
                     "weapon":_loc10_,
                     "range":_loc11_,
                     "click_x":_loc12_,
                     "click_y":_loc13_
                  }
               };
            }
         }
         return _loc2_;
      }
      
      public function decode_move(param1:Number) : *
      {
         this.REPLAY_STRING_CUR_MOVE = this.REPLAY_STRING_MOVES.split("#")[param1 - 1];
         this.REPLAY_CUR_MOVE = new Array();
         this.REPLAY_CUR_MOVE = this.decode_replay_move(this.REPLAY_STRING_CUR_MOVE);
      }
      
      public function clear_move() : *
      {
         this.REPLAY_CUR_MOVE = new Array();
      }
      
      public function check_replay_string(param1:String) : Object
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
         _loc2_ = "!" + param1.split("!")[1] + "!" + param1.split("!")[2];
         _loc3_ = 0;
         _loc4_ = 0;
         while(_loc4_ <= _loc2_.length - 1)
         {
            _loc3_ += _loc2_.charCodeAt(_loc4_);
            _loc4_++;
         }
         _loc5_ = param1.split("!")[3].charAt(0);
         _loc6_ = this.encode_replay_number(_loc3_).charAt(0);
         _loc7_ = param1.split("!")[1];
         _loc8_ = "DD";
         if(param1.search("!DD") != -1)
         {
            _loc8_ = "DD";
         }
         if(param1.search("!DE") != -1)
         {
            _loc8_ = "DE";
         }
         if((_loc9_ = _loc7_.split(_loc8_)[1].charAt(0)) == "c")
         {
            _loc9_ = "career";
         }
         if(_loc9_ == "m")
         {
            _loc9_ = "missions";
         }
         if(_loc9_ == "s")
         {
            _loc9_ = "survival";
         }
         if(_loc9_ == "b")
         {
            _loc9_ = "boss";
         }
         _loc10_ = this.decode_replay_number(_loc7_.split("I")[1].split("$")[0]);
         (_loc11_ = {}).attack = this.decode_replay_number(param1.split("P")[1].split("$")[0]);
         _loc11_.protect = this.decode_replay_number(param1.split("P")[1].split("$")[1]);
         _loc11_.health = this.decode_replay_number(param1.split("P")[1].split("$")[2]);
         _loc11_.worms = this.decode_replay_number(param1.split("P")[1].split("$")[4]);
         _loc11_.skill_level = this.get_skill_level_name(this.decode_replay_number(param1.split("Z")[1].split("$")[0]));
         _loc11_.weapons = {};
         _loc12_ = 1;
         while(_loc12_ <= param1.split("S%").length - 1)
         {
            _loc13_ = this.decode_replay_number(param1.split("S%")[_loc12_].split("$")[0]);
            for(_loc14_ in this.WEAPONS_DEF)
            {
               if(this.WEAPONS_DEF[_loc14_].id == _loc13_)
               {
                  _loc11_.weapons[_loc14_] = 1;
               }
            }
            _loc12_++;
         }
         _loc11_.turns = param1.split("#").length;
         return {
            "state":_loc5_ == _loc6_,
            "play_type":_loc9_,
            "play_id":_loc10_,
            "params":_loc11_
         };
      }
      
      public function get_skill_level_name(param1:Number) : String
      {
         switch(param1)
         {
            case 0:
               return "Обычный";
            case 1:
               return "Сложный";
            case 2:
               return "Очень сложный";
            case 3:
               return "Невозмжный";
            case 4:
               return "Кошмар";
            default:
               return "";
         }
      }
      
      public function get_bitmap_data(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = null;
         return new BitmapData(807,600,true,1140850688);
      }
      
      public function get_screenshot_data(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = null;
         if(_loc2_)
         {
            _loc2_ = null;
         }
         _loc2_ = new BitmapData(807,600);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public function get_blur_filter() : BlurFilter
      {
         return new BlurFilter(2,2,BitmapFilterQuality.MEDIUM);
      }
      
      public function mod(param1:Number) : Number
      {
         return Math.abs(param1);
      }
      
      public function sign(param1:Number) : Number
      {
         return param1 >= 0 ? Number(1) : Number(-1);
      }
      
      public function ret_60(param1:Number) : Number
      {
         return Math.pow(60,param1);
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
      
      public function return_bytes(param1:Number) : Array
      {
         var _loc2_:Array = null;
         _loc2_ = new Array(0,0,0,0,0,0,0,0,0,0);
         if(param1 < 60)
         {
            _loc2_[0] = param1;
            return _loc2_;
         }
         if(param1 < 60 * 60)
         {
            _loc2_[0] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[0]) / 60);
            _loc2_[1] = param1;
            return _loc2_;
         }
         if(param1 < 60 * 60 * 60)
         {
            _loc2_[0] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[0]) / 60);
            _loc2_[1] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[1]) / 60);
            _loc2_[2] = param1;
            return _loc2_;
         }
         if(param1 < 60 * 60 * 60 * 60)
         {
            _loc2_[0] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[0]) / 60);
            _loc2_[1] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[1]) / 60);
            _loc2_[2] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[2]) / 60);
            _loc2_[3] = param1;
            return _loc2_;
         }
         if(param1 < 60 * 60 * 60 * 60 * 60)
         {
            _loc2_[0] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[0]) / 60);
            _loc2_[1] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[1]) / 60);
            _loc2_[2] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[2]) / 60);
            _loc2_[3] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[3]) / 60);
            _loc2_[4] = param1;
            return _loc2_;
         }
         if(param1 < 60 * 60 * 60 * 60 * 60 * 60)
         {
            _loc2_[0] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[0]) / 60);
            _loc2_[1] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[1]) / 60);
            _loc2_[2] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[2]) / 60);
            _loc2_[3] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[3]) / 60);
            _loc2_[4] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[4]) / 60);
            _loc2_[5] = param1;
            return _loc2_;
         }
         if(param1 < 60 * 60 * 60 * 60 * 60 * 60 * 60)
         {
            _loc2_[0] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[0]) / 60);
            _loc2_[1] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[1]) / 60);
            _loc2_[2] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[2]) / 60);
            _loc2_[3] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[3]) / 60);
            _loc2_[4] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[4]) / 60);
            _loc2_[5] = param1 % 60;
            param1 = Math.round((param1 - _loc2_[5]) / 60);
            _loc2_[6] = param1;
            return _loc2_;
         }
         _loc2_[0] = param1 % 60;
         param1 = Math.round((param1 - _loc2_[0]) / 60);
         _loc2_[1] = param1 % 60;
         param1 = Math.round((param1 - _loc2_[1]) / 60);
         _loc2_[2] = param1 % 60;
         param1 = Math.round((param1 - _loc2_[2]) / 60);
         _loc2_[3] = param1 % 60;
         param1 = Math.round((param1 - _loc2_[3]) / 60);
         _loc2_[4] = param1 % 60;
         param1 = Math.round((param1 - _loc2_[4]) / 60);
         _loc2_[5] = param1 % 60;
         param1 = Math.round((param1 - _loc2_[5]) / 60);
         _loc2_[6] = param1 % 60;
         param1 = Math.round((param1 - _loc2_[6]) / 60);
         _loc2_[7] = param1;
         return _loc2_;
      }
      
      public function return_bytes_30(param1:Number) : Array
      {
         var _loc2_:Array = null;
         _loc2_ = new Array(0,0,0,0,0,0,0,0,0,0);
         if(param1 < 30)
         {
            _loc2_[0] = param1;
            return _loc2_;
         }
         if(param1 < 30 * 30)
         {
            _loc2_[0] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[0]) / 30);
            _loc2_[1] = param1;
            return _loc2_;
         }
         if(param1 < 30 * 30 * 30)
         {
            _loc2_[0] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[0]) / 30);
            _loc2_[1] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[1]) / 30);
            _loc2_[2] = param1;
            return _loc2_;
         }
         if(param1 < 30 * 30 * 30 * 30)
         {
            _loc2_[0] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[0]) / 30);
            _loc2_[1] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[1]) / 30);
            _loc2_[2] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[2]) / 30);
            _loc2_[3] = param1;
            return _loc2_;
         }
         if(param1 < 30 * 30 * 30 * 30 * 30)
         {
            _loc2_[0] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[0]) / 30);
            _loc2_[1] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[1]) / 30);
            _loc2_[2] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[2]) / 30);
            _loc2_[3] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[3]) / 30);
            _loc2_[4] = param1;
            return _loc2_;
         }
         if(param1 < 30 * 30 * 30 * 30 * 30 * 30)
         {
            _loc2_[0] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[0]) / 30);
            _loc2_[1] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[1]) / 30);
            _loc2_[2] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[2]) / 30);
            _loc2_[3] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[3]) / 30);
            _loc2_[4] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[4]) / 30);
            _loc2_[5] = param1;
            return _loc2_;
         }
         if(param1 < 30 * 30 * 30 * 30 * 30 * 30 * 30)
         {
            _loc2_[0] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[0]) / 30);
            _loc2_[1] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[1]) / 30);
            _loc2_[2] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[2]) / 30);
            _loc2_[3] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[3]) / 30);
            _loc2_[4] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[4]) / 30);
            _loc2_[5] = param1 % 30;
            param1 = Math.round((param1 - _loc2_[5]) / 30);
            _loc2_[6] = param1;
            return _loc2_;
         }
         _loc2_[0] = param1 % 30;
         param1 = Math.round((param1 - _loc2_[0]) / 30);
         _loc2_[1] = param1 % 30;
         param1 = Math.round((param1 - _loc2_[1]) / 30);
         _loc2_[2] = param1 % 30;
         param1 = Math.round((param1 - _loc2_[2]) / 30);
         _loc2_[3] = param1 % 30;
         param1 = Math.round((param1 - _loc2_[3]) / 30);
         _loc2_[4] = param1 % 30;
         param1 = Math.round((param1 - _loc2_[4]) / 30);
         _loc2_[5] = param1 % 30;
         param1 = Math.round((param1 - _loc2_[5]) / 30);
         _loc2_[6] = param1 % 30;
         param1 = Math.round((param1 - _loc2_[6]) / 30);
         _loc2_[7] = param1;
         return _loc2_;
      }
      
      public function deep_trace(param1:*, param2:int = 0) : *
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         _loc3_ = "";
         _loc4_ = 0;
         while(_loc4_ < param2)
         {
            _loc3_ += "\t";
            _loc4_++;
         }
         for(_loc5_ in param1)
         {
            this.deep_trace(param1[_loc5_],param2 + 1);
         }
      }
      
      public function debug_get_param(param1:String) : String
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = "( ";
         _loc3_ = 0;
         while(_loc3_ <= param1.length - 1)
         {
            _loc2_ += param1.charCodeAt(_loc3_);
            if(_loc3_ != param1.length - 1)
            {
               _loc2_ += ", ";
            }
            else
            {
               _loc2_ += ")";
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function throw_error(param1:String) : *
      {
         this.debug_text += param1;
         this.display_system.addChild(this.splash_error);
         this.splash_error.out.text = this.debug_text;
      }
      
      public function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = null;
         _loc2_ = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
      
      public function find(param1:String, param2:String) : Object
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         _loc6_ = {};
         if(param1 == "perks")
         {
            _loc5_ = this.PERKS_DEF;
         }
         for(_loc3_ in _loc5_)
         {
            if(_loc3_ == param2)
            {
               for(_loc4_ in _loc5_[_loc3_])
               {
                  _loc6_[_loc4_] = _loc5_[_loc3_][_loc4_];
               }
            }
         }
         return _loc6_;
      }
      
      public function pseudo_random(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = NaN;
         return Number(Math.floor(this.fwp_random() * (param2 - param1 + 1)) + param1);
      }
      
      public function true_random(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = NaN;
         return Number(Math.floor(Math.random() * (param2 - param1 + 1)) + param1);
      }
      
      public function fwp_random() : *
      {
         ++this.cur_random;
         if(this.cur_random >= 400)
         {
            this.cur_random = 0;
         }
         return this.RANDOM_NUMBERS[this.cur_random];
      }
      
      public function init_random_numbers() : *
      {
         this.RANDOM_NUMBERS[0] = 0.0105068809352815;
         this.RANDOM_NUMBERS[1] = 0.730869142338634;
         this.RANDOM_NUMBERS[2] = 0.499469573609531;
         this.RANDOM_NUMBERS[3] = 0.805501346476376;
         this.RANDOM_NUMBERS[4] = 0.034350554458797;
         this.RANDOM_NUMBERS[5] = 0.726859863847494;
         this.RANDOM_NUMBERS[6] = 0.324677626602352;
         this.RANDOM_NUMBERS[7] = 0.642246135976166;
         this.RANDOM_NUMBERS[8] = 0.275960627011955;
         this.RANDOM_NUMBERS[9] = 0.878917911555618;
         this.RANDOM_NUMBERS[10] = 0.204375854227692;
         this.RANDOM_NUMBERS[11] = 0.144315101206303;
         this.RANDOM_NUMBERS[12] = 0.454119073227048;
         this.RANDOM_NUMBERS[13] = 0.828070389572531;
         this.RANDOM_NUMBERS[14] = 0.511293596122414;
         this.RANDOM_NUMBERS[15] = 0.508802316151559;
         this.RANDOM_NUMBERS[16] = 0.666794119868428;
         this.RANDOM_NUMBERS[17] = 0.791544779203832;
         this.RANDOM_NUMBERS[18] = 0.379451598506421;
         this.RANDOM_NUMBERS[19] = 0.146890638861805;
         this.RANDOM_NUMBERS[20] = 0.649151533376426;
         this.RANDOM_NUMBERS[21] = 0.852402184624225;
         this.RANDOM_NUMBERS[22] = 0.101014818996191;
         this.RANDOM_NUMBERS[23] = 0.215526244603097;
         this.RANDOM_NUMBERS[24] = 0.594081978313625;
         this.RANDOM_NUMBERS[25] = 0.517342809122056;
         this.RANDOM_NUMBERS[26] = 0.430419034790248;
         this.RANDOM_NUMBERS[27] = 0.91347916610539;
         this.RANDOM_NUMBERS[28] = 0.0130102522671223;
         this.RANDOM_NUMBERS[29] = 0.970513061620295;
         this.RANDOM_NUMBERS[30] = 0.232527774292976;
         this.RANDOM_NUMBERS[31] = 0.924833623692393;
         this.RANDOM_NUMBERS[32] = 0.145222825929523;
         this.RANDOM_NUMBERS[33] = 0.365983916912228;
         this.RANDOM_NUMBERS[34] = 0.593583664856851;
         this.RANDOM_NUMBERS[35] = 0.898711346555501;
         this.RANDOM_NUMBERS[36] = 0.477077796123922;
         this.RANDOM_NUMBERS[37] = 0.237812320236117;
         this.RANDOM_NUMBERS[38] = 0.513625638559461;
         this.RANDOM_NUMBERS[39] = 0.125932775903493;
         this.RANDOM_NUMBERS[40] = 0.328055612742901;
         this.RANDOM_NUMBERS[41] = 0.34819864993915;
         this.RANDOM_NUMBERS[42] = 0.896873746067286;
         this.RANDOM_NUMBERS[43] = 0.178762132767588;
         this.RANDOM_NUMBERS[44] = 0.0785278347320855;
         this.RANDOM_NUMBERS[45] = 0.713110588490963;
         this.RANDOM_NUMBERS[46] = 0.581079045776278;
         this.RANDOM_NUMBERS[47] = 0.445250871125609;
         this.RANDOM_NUMBERS[48] = 0.927840142976493;
         this.RANDOM_NUMBERS[49] = 0.201416231226176;
         this.RANDOM_NUMBERS[50] = 0.649670642334968;
         this.RANDOM_NUMBERS[51] = 0.140316595323384;
         this.RANDOM_NUMBERS[52] = 0.998368194326758;
         this.RANDOM_NUMBERS[53] = 0.649873551446944;
         this.RANDOM_NUMBERS[54] = 0.29595579020679;
         this.RANDOM_NUMBERS[55] = 0.509199020918459;
         this.RANDOM_NUMBERS[56] = 0.402266965247691;
         this.RANDOM_NUMBERS[57] = 0.662368068471551;
         this.RANDOM_NUMBERS[58] = 0.271753400564194;
         this.RANDOM_NUMBERS[59] = 0.963903859723359;
         this.RANDOM_NUMBERS[60] = 0.979586978442967;
         this.RANDOM_NUMBERS[61] = 0.973599896766245;
         this.RANDOM_NUMBERS[62] = 0.38471412891522;
         this.RANDOM_NUMBERS[63] = 0.735107151325792;
         this.RANDOM_NUMBERS[64] = 0.535191758535802;
         this.RANDOM_NUMBERS[65] = 0.0719749312847853;
         this.RANDOM_NUMBERS[66] = 0.929122535977513;
         this.RANDOM_NUMBERS[67] = 0.343996266368777;
         this.RANDOM_NUMBERS[68] = 0.0439378586597741;
         this.RANDOM_NUMBERS[69] = 0.71648328518495;
         this.RANDOM_NUMBERS[70] = 0.541961160488427;
         this.RANDOM_NUMBERS[71] = 0.45829211641103;
         this.RANDOM_NUMBERS[72] = 0.00829330971464515;
         this.RANDOM_NUMBERS[73] = 0.879446348641068;
         this.RANDOM_NUMBERS[74] = 0.732320713810623;
         this.RANDOM_NUMBERS[75] = 0.423844765406102;
         this.RANDOM_NUMBERS[76] = 0.606789837125689;
         this.RANDOM_NUMBERS[77] = 0.205807286780328;
         this.RANDOM_NUMBERS[78] = 0.0375967845320702;
         this.RANDOM_NUMBERS[79] = 0.529007301665843;
         this.RANDOM_NUMBERS[80] = 0.160911288578063;
         this.RANDOM_NUMBERS[81] = 0.188060792163014;
         this.RANDOM_NUMBERS[82] = 0.926540427841246;
         this.RANDOM_NUMBERS[83] = 0.454972779843956;
         this.RANDOM_NUMBERS[84] = 0.571073898114264;
         this.RANDOM_NUMBERS[85] = 0.944591540843248;
         this.RANDOM_NUMBERS[86] = 0.729825823567808;
         this.RANDOM_NUMBERS[87] = 0.783884565345943;
         this.RANDOM_NUMBERS[88] = 0.880359978880733;
         this.RANDOM_NUMBERS[89] = 0.636899908073246;
         this.RANDOM_NUMBERS[90] = 0.712700881063938;
         this.RANDOM_NUMBERS[91] = 0.0103085758164525;
         this.RANDOM_NUMBERS[92] = 0.622446780093014;
         this.RANDOM_NUMBERS[93] = 0.940436762757599;
         this.RANDOM_NUMBERS[94] = 0.431482867803425;
         this.RANDOM_NUMBERS[95] = 0.895030242856592;
         this.RANDOM_NUMBERS[96] = 0.327314767520875;
         this.RANDOM_NUMBERS[97] = 0.622982103377581;
         this.RANDOM_NUMBERS[98] = 0.274868949782103;
         this.RANDOM_NUMBERS[99] = 0.907392458990216;
         this.RANDOM_NUMBERS[100] = 0.488940735347569;
         this.RANDOM_NUMBERS[101] = 0.687521152663976;
         this.RANDOM_NUMBERS[102] = 0.937341881450266;
         this.RANDOM_NUMBERS[103] = 0.158788244705647;
         this.RANDOM_NUMBERS[104] = 0.0634453180246055;
         this.RANDOM_NUMBERS[105] = 0.999590751715004;
         this.RANDOM_NUMBERS[106] = 0.791986512951553;
         this.RANDOM_NUMBERS[107] = 0.821078085806221;
         this.RANDOM_NUMBERS[108] = 0.0482184845022857;
         this.RANDOM_NUMBERS[109] = 0.021837349049747;
         this.RANDOM_NUMBERS[110] = 0.97889940161258;
         this.RANDOM_NUMBERS[111] = 0.248700703494251;
         this.RANDOM_NUMBERS[112] = 0.109240679070354;
         this.RANDOM_NUMBERS[113] = 0.882521383464336;
         this.RANDOM_NUMBERS[114] = 0.687160844448954;
         this.RANDOM_NUMBERS[115] = 0.642324837855995;
         this.RANDOM_NUMBERS[116] = 0.858911106362939;
         this.RANDOM_NUMBERS[117] = 0.457614733837545;
         this.RANDOM_NUMBERS[118] = 0.203468793537468;
         this.RANDOM_NUMBERS[119] = 0.998653438407928;
         this.RANDOM_NUMBERS[120] = 0.400803244207054;
         this.RANDOM_NUMBERS[121] = 0.0203071371652186;
         this.RANDOM_NUMBERS[122] = 0.708607729524374;
         this.RANDOM_NUMBERS[123] = 0.93280420685187;
         this.RANDOM_NUMBERS[124] = 0.288038898725063;
         this.RANDOM_NUMBERS[125] = 0.657495399471372;
         this.RANDOM_NUMBERS[126] = 0.37042947486043;
         this.RANDOM_NUMBERS[127] = 0.0694185425527394;
         this.RANDOM_NUMBERS[128] = 0.264822624158114;
         this.RANDOM_NUMBERS[129] = 0.461185460910201;
         this.RANDOM_NUMBERS[130] = 0.937042695004493;
         this.RANDOM_NUMBERS[131] = 0.518828586675227;
         this.RANDOM_NUMBERS[132] = 0.877110952045768;
         this.RANDOM_NUMBERS[133] = 0.417970157694072;
         this.RANDOM_NUMBERS[134] = 0.0403708233498037;
         this.RANDOM_NUMBERS[135] = 0.11387382959947;
         this.RANDOM_NUMBERS[136] = 0.913852143101394;
         this.RANDOM_NUMBERS[137] = 0.484978249296546;
         this.RANDOM_NUMBERS[138] = 0.117299088742584;
         this.RANDOM_NUMBERS[139] = 0.880259740632027;
         this.RANDOM_NUMBERS[140] = 0.369179208762944;
         this.RANDOM_NUMBERS[141] = 0.00155526818707585;
         this.RANDOM_NUMBERS[142] = 0.450405163224787;
         this.RANDOM_NUMBERS[143] = 0.784925226122141;
         this.RANDOM_NUMBERS[144] = 0.220988112967461;
         this.RANDOM_NUMBERS[145] = 0.502011348027736;
         this.RANDOM_NUMBERS[146] = 0.57826757337898;
         this.RANDOM_NUMBERS[147] = 0.414018349256366;
         this.RANDOM_NUMBERS[148] = 0.616832682862878;
         this.RANDOM_NUMBERS[149] = 0.640721695963293;
         this.RANDOM_NUMBERS[150] = 0.451225728262216;
         this.RANDOM_NUMBERS[151] = 0.675223124679178;
         this.RANDOM_NUMBERS[152] = 0.335048616863787;
         this.RANDOM_NUMBERS[153] = 0.856781748589128;
         this.RANDOM_NUMBERS[154] = 0.156182606704533;
         this.RANDOM_NUMBERS[155] = 0.939712565392256;
         this.RANDOM_NUMBERS[156] = 0.381292717065662;
         this.RANDOM_NUMBERS[157] = 0.059642341453582;
         this.RANDOM_NUMBERS[158] = 0.74857876310125;
         this.RANDOM_NUMBERS[159] = 0.0946824084967375;
         this.RANDOM_NUMBERS[160] = 0.657958051655442;
         this.RANDOM_NUMBERS[161] = 0.622280344832689;
         this.RANDOM_NUMBERS[162] = 0.488643622491509;
         this.RANDOM_NUMBERS[163] = 0.0823682192713022;
         this.RANDOM_NUMBERS[164] = 0.638335245661438;
         this.RANDOM_NUMBERS[165] = 0.0820483001880348;
         this.RANDOM_NUMBERS[166] = 0.497653269674629;
         this.RANDOM_NUMBERS[167] = 0.732447758782655;
         this.RANDOM_NUMBERS[168] = 0.850397861562669;
         this.RANDOM_NUMBERS[169] = 0.710911143105477;
         this.RANDOM_NUMBERS[170] = 0.586424903944135;
         this.RANDOM_NUMBERS[171] = 0.363800998777151;
         this.RANDOM_NUMBERS[172] = 0.662290235981345;
         this.RANDOM_NUMBERS[173] = 0.461491629481316;
         this.RANDOM_NUMBERS[174] = 0.716474703047425;
         this.RANDOM_NUMBERS[175] = 0.0646947589702904;
         this.RANDOM_NUMBERS[176] = 0.896981793921441;
         this.RANDOM_NUMBERS[177] = 0.43032391089946;
         this.RANDOM_NUMBERS[178] = 0.475109997205436;
         this.RANDOM_NUMBERS[179] = 0.770833270158619;
         this.RANDOM_NUMBERS[180] = 0.479238932952285;
         this.RANDOM_NUMBERS[181] = 0.45419367402792;
         this.RANDOM_NUMBERS[182] = 0.458227392751724;
         this.RANDOM_NUMBERS[183] = 0.0129155670292675;
         this.RANDOM_NUMBERS[184] = 0.878262045327574;
         this.RANDOM_NUMBERS[185] = 0.285071306861937;
         this.RANDOM_NUMBERS[186] = 0.763956855516881;
         this.RANDOM_NUMBERS[187] = 0.0972123248502612;
         this.RANDOM_NUMBERS[188] = 0.744949230458587;
         this.RANDOM_NUMBERS[189] = 0.925963296089321;
         this.RANDOM_NUMBERS[190] = 0.644443085417151;
         this.RANDOM_NUMBERS[191] = 0.75484825996682;
         this.RANDOM_NUMBERS[192] = 0.182525145355612;
         this.RANDOM_NUMBERS[193] = 0.845127050764859;
         this.RANDOM_NUMBERS[194] = 0.606214772444218;
         this.RANDOM_NUMBERS[195] = 0.641561386641115;
         this.RANDOM_NUMBERS[196] = 0.150317116174847;
         this.RANDOM_NUMBERS[197] = 0.00778276845812798;
         this.RANDOM_NUMBERS[198] = 0.342587942723185;
         this.RANDOM_NUMBERS[199] = 0.182342369575053;
         this.RANDOM_NUMBERS[200] = 0.240026290062815;
         this.RANDOM_NUMBERS[201] = 0.544861108995974;
         this.RANDOM_NUMBERS[202] = 0.0921551682986319;
         this.RANDOM_NUMBERS[203] = 0.0337053961120546;
         this.RANDOM_NUMBERS[204] = 0.869289412628859;
         this.RANDOM_NUMBERS[205] = 0.594297934789211;
         this.RANDOM_NUMBERS[206] = 0.960113633424044;
         this.RANDOM_NUMBERS[207] = 0.715973119717091;
         this.RANDOM_NUMBERS[208] = 0.253984224516898;
         this.RANDOM_NUMBERS[209] = 0.494047305546701;
         this.RANDOM_NUMBERS[210] = 0.404430504422635;
         this.RANDOM_NUMBERS[211] = 0.282840899657458;
         this.RANDOM_NUMBERS[212] = 0.0729121505282819;
         this.RANDOM_NUMBERS[213] = 0.578704783227295;
         this.RANDOM_NUMBERS[214] = 0.238807140383869;
         this.RANDOM_NUMBERS[215] = 0.544307907577604;
         this.RANDOM_NUMBERS[216] = 0.252150231506675;
         this.RANDOM_NUMBERS[217] = 0.812931766267866;
         this.RANDOM_NUMBERS[218] = 0.0408175853081048;
         this.RANDOM_NUMBERS[219] = 0.630134323611856;
         this.RANDOM_NUMBERS[220] = 0.309965023770928;
         this.RANDOM_NUMBERS[221] = 0.198348613921553;
         this.RANDOM_NUMBERS[222] = 0.585677822586149;
         this.RANDOM_NUMBERS[223] = 0.350097142159939;
         this.RANDOM_NUMBERS[224] = 0.83396481256932;
         this.RANDOM_NUMBERS[225] = 0.450105682015419;
         this.RANDOM_NUMBERS[226] = 0.119369275402278;
         this.RANDOM_NUMBERS[227] = 0.211638445965946;
         this.RANDOM_NUMBERS[228] = 0.133212917018682;
         this.RANDOM_NUMBERS[229] = 0.00411838945001364;
         this.RANDOM_NUMBERS[230] = 0.0240426883101463;
         this.RANDOM_NUMBERS[231] = 0.422385531943291;
         this.RANDOM_NUMBERS[232] = 0.174667508807033;
         this.RANDOM_NUMBERS[233] = 0.0296915378421545;
         this.RANDOM_NUMBERS[234] = 0.237844021990895;
         this.RANDOM_NUMBERS[235] = 0.225490061566234;
         this.RANDOM_NUMBERS[236] = 0.250934376846999;
         this.RANDOM_NUMBERS[237] = 0.577183462679386;
         this.RANDOM_NUMBERS[238] = 0.717045633122325;
         this.RANDOM_NUMBERS[239] = 0.385061771608889;
         this.RANDOM_NUMBERS[240] = 0.734309702645987;
         this.RANDOM_NUMBERS[241] = 0.420925428159535;
         this.RANDOM_NUMBERS[242] = 0.928166200872511;
         this.RANDOM_NUMBERS[243] = 0.116864996030927;
         this.RANDOM_NUMBERS[244] = 0.314599908422679;
         this.RANDOM_NUMBERS[245] = 0.805555463302881;
         this.RANDOM_NUMBERS[246] = 0.759843951556832;
         this.RANDOM_NUMBERS[247] = 0.129837470594794;
         this.RANDOM_NUMBERS[248] = 0.71178668551147;
         this.RANDOM_NUMBERS[249] = 0.859646899159998;
         this.RANDOM_NUMBERS[250] = 0.582307816017419;
         this.RANDOM_NUMBERS[251] = 0.816392639186233;
         this.RANDOM_NUMBERS[252] = 0.55909385625273;
         this.RANDOM_NUMBERS[253] = 0.541503378655761;
         this.RANDOM_NUMBERS[254] = 0.453666713088751;
         this.RANDOM_NUMBERS[255] = 0.353615579195321;
         this.RANDOM_NUMBERS[256] = 0.513793888036162;
         this.RANDOM_NUMBERS[257] = 0.118203405290842;
         this.RANDOM_NUMBERS[258] = 0.744108890648931;
         this.RANDOM_NUMBERS[259] = 0.948549835942686;
         this.RANDOM_NUMBERS[260] = 0.903136304114014;
         this.RANDOM_NUMBERS[261] = 0.8965123007074;
         this.RANDOM_NUMBERS[262] = 0.54087829310447;
         this.RANDOM_NUMBERS[263] = 0.199744009412825;
         this.RANDOM_NUMBERS[264] = 0.462736022658646;
         this.RANDOM_NUMBERS[265] = 0.280440058093518;
         this.RANDOM_NUMBERS[266] = 0.355965461581945;
         this.RANDOM_NUMBERS[267] = 0.321952788624913;
         this.RANDOM_NUMBERS[268] = 0.0203971127048135;
         this.RANDOM_NUMBERS[269] = 0.131383295170963;
         this.RANDOM_NUMBERS[270] = 0.242880972102284;
         this.RANDOM_NUMBERS[271] = 0.141502866521478;
         this.RANDOM_NUMBERS[272] = 0.927168267313391;
         this.RANDOM_NUMBERS[273] = 0.362251495476812;
         this.RANDOM_NUMBERS[274] = 0.196942864917219;
         this.RANDOM_NUMBERS[275] = 0.134060836397111;
         this.RANDOM_NUMBERS[276] = 0.251554300542921;
         this.RANDOM_NUMBERS[277] = 0.999746905639768;
         this.RANDOM_NUMBERS[278] = 0.0762637192383409;
         this.RANDOM_NUMBERS[279] = 0.753391836304218;
         this.RANDOM_NUMBERS[280] = 0.0254380814731121;
         this.RANDOM_NUMBERS[281] = 0.271754588466138;
         this.RANDOM_NUMBERS[282] = 0.616452623624355;
         this.RANDOM_NUMBERS[283] = 0.472814567852765;
         this.RANDOM_NUMBERS[284] = 0.404001377522945;
         this.RANDOM_NUMBERS[285] = 0.984057757072151;
         this.RANDOM_NUMBERS[286] = 0.513899357058108;
         this.RANDOM_NUMBERS[287] = 0.488931294064969;
         this.RANDOM_NUMBERS[288] = 0.324067193549126;
         this.RANDOM_NUMBERS[289] = 0.500688988249749;
         this.RANDOM_NUMBERS[290] = 0.812951963860542;
         this.RANDOM_NUMBERS[291] = 0.822339335456491;
         this.RANDOM_NUMBERS[292] = 0.393955629318953;
         this.RANDOM_NUMBERS[293] = 0.512588276527822;
         this.RANDOM_NUMBERS[294] = 0.337195777334273;
         this.RANDOM_NUMBERS[295] = 0.479268720839173;
         this.RANDOM_NUMBERS[296] = 0.323310478124768;
         this.RANDOM_NUMBERS[297] = 0.927102231420577;
         this.RANDOM_NUMBERS[298] = 0.577967173419893;
         this.RANDOM_NUMBERS[299] = 0.0391326388344169;
         this.RANDOM_NUMBERS[300] = 0.411363545339555;
         this.RANDOM_NUMBERS[301] = 0.613831016700715;
         this.RANDOM_NUMBERS[302] = 0.353599574416876;
         this.RANDOM_NUMBERS[303] = 0.226320790592581;
         this.RANDOM_NUMBERS[304] = 0.0474451119080186;
         this.RANDOM_NUMBERS[305] = 0.338248191401362;
         this.RANDOM_NUMBERS[306] = 0.276868079323322;
         this.RANDOM_NUMBERS[307] = 0.0145955788902938;
         this.RANDOM_NUMBERS[308] = 0.17627903399989;
         this.RANDOM_NUMBERS[309] = 0.16539799887687;
         this.RANDOM_NUMBERS[310] = 0.282259655185044;
         this.RANDOM_NUMBERS[311] = 0.438557672780007;
         this.RANDOM_NUMBERS[312] = 0.186189749278128;
         this.RANDOM_NUMBERS[313] = 0.0287553439848125;
         this.RANDOM_NUMBERS[314] = 0.512395894154906;
         this.RANDOM_NUMBERS[315] = 0.0413961582817137;
         this.RANDOM_NUMBERS[316] = 0.247468195389956;
         this.RANDOM_NUMBERS[317] = 0.511485551483929;
         this.RANDOM_NUMBERS[318] = 0.381768161896616;
         this.RANDOM_NUMBERS[319] = 0.479038011748344;
         this.RANDOM_NUMBERS[320] = 0.483203071169555;
         this.RANDOM_NUMBERS[321] = 0.0871421680785716;
         this.RANDOM_NUMBERS[322] = 0.336900339461863;
         this.RANDOM_NUMBERS[323] = 0.610322112683207;
         this.RANDOM_NUMBERS[324] = 0.505733201280236;
         this.RANDOM_NUMBERS[325] = 0.159352482296526;
         this.RANDOM_NUMBERS[326] = 0.832303942646831;
         this.RANDOM_NUMBERS[327] = 0.283156323712319;
         this.RANDOM_NUMBERS[328] = 0.012188739143312;
         this.RANDOM_NUMBERS[329] = 0.0425070198252797;
         this.RANDOM_NUMBERS[330] = 0.650059149134904;
         this.RANDOM_NUMBERS[331] = 0.572968483436853;
         this.RANDOM_NUMBERS[332] = 0.340641965158284;
         this.RANDOM_NUMBERS[333] = 0.786948558874428;
         this.RANDOM_NUMBERS[334] = 0.845437334384769;
         this.RANDOM_NUMBERS[335] = 0.0181523696519434;
         this.RANDOM_NUMBERS[336] = 0.158711471129209;
         this.RANDOM_NUMBERS[337] = 0.498193501960486;
         this.RANDOM_NUMBERS[338] = 0.65459395898506;
         this.RANDOM_NUMBERS[339] = 0.009195642080158;
         this.RANDOM_NUMBERS[340] = 0.133964879438281;
         this.RANDOM_NUMBERS[341] = 0.347802182659507;
         this.RANDOM_NUMBERS[342] = 0.825680271256715;
         this.RANDOM_NUMBERS[343] = 0.679446796886623;
         this.RANDOM_NUMBERS[344] = 0.589672673959285;
         this.RANDOM_NUMBERS[345] = 0.696925341617316;
         this.RANDOM_NUMBERS[346] = 0.602210032753646;
         this.RANDOM_NUMBERS[347] = 0.683904949575663;
         this.RANDOM_NUMBERS[348] = 0.311483214609325;
         this.RANDOM_NUMBERS[349] = 0.205174351576716;
         this.RANDOM_NUMBERS[350] = 0.834053916390985;
         this.RANDOM_NUMBERS[351] = 0.334627907257527;
         this.RANDOM_NUMBERS[352] = 0.968945479951799;
         this.RANDOM_NUMBERS[353] = 0.239626547321677;
         this.RANDOM_NUMBERS[354] = 0.847167826257646;
         this.RANDOM_NUMBERS[355] = 0.344832660630345;
         this.RANDOM_NUMBERS[356] = 0.131364380475134;
         this.RANDOM_NUMBERS[357] = 0.734273769427091;
         this.RANDOM_NUMBERS[358] = 0.517964780796319;
         this.RANDOM_NUMBERS[359] = 0.046089434530586;
         this.RANDOM_NUMBERS[360] = 0.0852128718979657;
         this.RANDOM_NUMBERS[361] = 0.12620445759967;
         this.RANDOM_NUMBERS[362] = 0.611691859550774;
         this.RANDOM_NUMBERS[363] = 0.521498292218894;
         this.RANDOM_NUMBERS[364] = 0.548323855735362;
         this.RANDOM_NUMBERS[365] = 0.637604444287717;
         this.RANDOM_NUMBERS[366] = 0.0960523863323033;
         this.RANDOM_NUMBERS[367] = 0.511182041838765;
         this.RANDOM_NUMBERS[368] = 0.531217763200402;
         this.RANDOM_NUMBERS[369] = 0.247199159581214;
         this.RANDOM_NUMBERS[370] = 0.2908855387941;
         this.RANDOM_NUMBERS[371] = 0.969380146358162;
         this.RANDOM_NUMBERS[372] = 0.353573753964156;
         this.RANDOM_NUMBERS[373] = 0.147514746058732;
         this.RANDOM_NUMBERS[374] = 0.265271493699402;
         this.RANDOM_NUMBERS[375] = 0.229358002077788;
         this.RANDOM_NUMBERS[376] = 0.53721184656024;
         this.RANDOM_NUMBERS[377] = 0.0224328483454883;
         this.RANDOM_NUMBERS[378] = 0.59631533594802;
         this.RANDOM_NUMBERS[379] = 0.124746800865978;
         this.RANDOM_NUMBERS[380] = 0.430608743336052;
         this.RANDOM_NUMBERS[381] = 0.862161200959235;
         this.RANDOM_NUMBERS[382] = 0.707988245878369;
         this.RANDOM_NUMBERS[383] = 0.793183503206819;
         this.RANDOM_NUMBERS[384] = 0.122899625916034;
         this.RANDOM_NUMBERS[385] = 0.454802467953414;
         this.RANDOM_NUMBERS[386] = 0.905365605838597;
         this.RANDOM_NUMBERS[387] = 0.71630343189463;
         this.RANDOM_NUMBERS[388] = 0.234751171432436;
         this.RANDOM_NUMBERS[389] = 0.0906051704660058;
         this.RANDOM_NUMBERS[390] = 0.708340199664235;
         this.RANDOM_NUMBERS[391] = 0.753906250931323;
         this.RANDOM_NUMBERS[392] = 0.325373174622655;
         this.RANDOM_NUMBERS[393] = 0.0423104837536812;
         this.RANDOM_NUMBERS[394] = 0.16660821530968;
         this.RANDOM_NUMBERS[395] = 0.741020283661783;
         this.RANDOM_NUMBERS[396] = 0.238970066420734;
         this.RANDOM_NUMBERS[397] = 0.733691125642508;
         this.RANDOM_NUMBERS[398] = 0.99255857616663;
         this.RANDOM_NUMBERS[399] = 0.697735902387649;
      }
      
      public function recover_params(param1:Number) : Array
      {
         var _loc2_:* = undefined;
         _loc2_ = new Array();
         if(param1 == 43147358)
         {
            _loc2_[0] = 48;
            _loc2_[1] = 108;
            _loc2_[2] = 49;
            _loc2_[3] = 64;
            _loc2_[4] = 49;
            _loc2_[5] = 55;
            _loc2_[6] = 48;
            _loc2_[7] = 48;
            _loc2_[8] = 55;
            _loc2_[9] = 51;
            _loc2_[10] = 64;
            _loc2_[11] = 51;
            _loc2_[12] = 49;
            _loc2_[13] = 51;
            _loc2_[14] = 67;
            _loc2_[15] = 51;
            _loc2_[16] = 50;
            _loc2_[17] = 51;
            _loc2_[18] = 74;
            _loc2_[19] = 51;
            _loc2_[20] = 48;
            _loc2_[21] = 48;
            _loc2_[22] = 48;
            _loc2_[23] = 48;
            _loc2_[24] = 48;
            _loc2_[25] = 48;
            _loc2_[26] = 48;
            _loc2_[27] = 48;
            _loc2_[28] = 48;
            _loc2_[29] = 48;
            _loc2_[30] = 48;
            _loc2_[31] = 48;
            _loc2_[32] = 48;
            _loc2_[33] = 48;
            _loc2_[34] = 48;
            _loc2_[35] = 48;
            _loc2_[36] = 48;
            _loc2_[37] = 48;
            _loc2_[38] = 49;
            _loc2_[39] = 48;
            _loc2_[40] = 48;
            _loc2_[41] = 48;
            _loc2_[42] = 59;
            _loc2_[43] = 51;
            _loc2_[44] = 48;
            _loc2_[45] = 106;
            _loc2_[46] = 52;
            _loc2_[47] = 49;
            _loc2_[48] = 48;
            _loc2_[49] = 48;
            _loc2_[50] = 48;
            _loc2_[51] = 48;
            _loc2_[52] = 48;
            _loc2_[53] = 57;
            _loc2_[54] = 48;
            _loc2_[55] = 63;
            _loc2_[56] = 72;
            _loc2_[57] = 101;
            _loc2_[58] = 71;
            _loc2_[59] = 89;
            _loc2_[60] = 49;
            _loc2_[61] = 63;
            _loc2_[62] = 72;
            _loc2_[63] = 101;
            _loc2_[64] = 71;
            _loc2_[65] = 89;
            _loc2_[66] = 49;
            _loc2_[67] = 68;
            _loc2_[68] = 82;
            _loc2_[69] = 81;
            _loc2_[70] = 48;
            _loc2_[71] = 48;
            _loc2_[72] = 49;
            _loc2_[73] = 48;
            _loc2_[74] = 48;
            _loc2_[75] = 48;
            _loc2_[76] = 48;
            _loc2_[77] = 48;
            _loc2_[78] = 49;
            _loc2_[79] = 48;
            _loc2_[80] = 48;
            _loc2_[81] = 48;
            _loc2_[82] = 48;
            _loc2_[83] = 48;
            _loc2_[84] = 48;
            _loc2_[85] = 48;
            _loc2_[86] = 48;
            _loc2_[87] = 48;
            _loc2_[88] = 48;
            _loc2_[89] = 48;
            _loc2_[90] = 48;
            _loc2_[91] = 49;
            _loc2_[92] = 48;
            _loc2_[93] = 48;
            _loc2_[94] = 48;
            _loc2_[95] = 50;
            _loc2_[96] = 49;
            _loc2_[97] = 50;
            _loc2_[98] = 48;
            _loc2_[99] = 48;
            _loc2_[100] = 48;
            _loc2_[101] = 52;
            _loc2_[102] = 49;
            _loc2_[103] = 52;
            _loc2_[104] = 48;
            _loc2_[105] = 48;
            _loc2_[106] = 51;
            _loc2_[107] = 48;
            _loc2_[108] = 49;
            _loc2_[109] = 48;
            _loc2_[110] = 49;
            _loc2_[111] = 51;
            _loc2_[112] = 49;
            _loc2_[113] = 48;
            _loc2_[114] = 48;
            _loc2_[115] = 48;
            _loc2_[116] = 48;
            _loc2_[117] = 48;
            _loc2_[118] = 48;
            _loc2_[119] = 48;
            _loc2_[120] = 48;
            _loc2_[121] = 50;
            _loc2_[122] = 51;
            _loc2_[123] = 51;
            _loc2_[124] = 48;
            _loc2_[125] = 48;
            _loc2_[126] = 50;
            _loc2_[127] = 48;
            _loc2_[128] = 49;
            _loc2_[129] = 49;
            _loc2_[130] = 48;
            _loc2_[131] = 58;
            _loc2_[132] = 51;
            _loc2_[133] = 51;
            _loc2_[134] = 48;
            _loc2_[135] = 48;
            _loc2_[136] = 52;
            _loc2_[137] = 50;
            _loc2_[138] = 50;
            _loc2_[139] = 51;
            _loc2_[140] = 48;
            _loc2_[141] = 49;
            _loc2_[142] = 48;
            _loc2_[143] = 48;
            _loc2_[144] = 48;
            _loc2_[145] = 48;
            _loc2_[146] = 51;
            _loc2_[147] = 49;
            _loc2_[148] = 48;
            _loc2_[149] = 48;
            _loc2_[150] = 48;
            _loc2_[151] = 48;
            _loc2_[152] = 48;
            _loc2_[153] = 49;
            _loc2_[154] = 48;
            _loc2_[155] = 48;
            _loc2_[156] = 48;
            _loc2_[157] = 49;
            _loc2_[158] = 48;
            _loc2_[159] = 48;
            _loc2_[160] = 48;
            _loc2_[161] = 48;
            _loc2_[162] = 48;
            _loc2_[163] = 48;
            _loc2_[164] = 48;
            _loc2_[165] = 49;
            _loc2_[166] = 48;
            _loc2_[167] = 48;
            _loc2_[168] = 48;
            _loc2_[169] = 48;
            _loc2_[170] = 48;
            _loc2_[171] = 90;
            _loc2_[172] = 48;
            _loc2_[173] = 64;
            _loc2_[174] = 51;
            _loc2_[175] = 48;
            _loc2_[176] = 48;
            _loc2_[177] = 48;
            _loc2_[178] = 48;
            _loc2_[179] = 48;
            _loc2_[180] = 54;
            _loc2_[181] = 69;
            _loc2_[182] = 54;
            _loc2_[183] = 48;
            _loc2_[184] = 48;
            _loc2_[185] = 48;
            _loc2_[186] = 48;
            _loc2_[187] = 104;
            _loc2_[188] = 48;
            _loc2_[189] = 48;
            _loc2_[190] = 53;
            _loc2_[191] = 48;
            _loc2_[192] = 48;
            _loc2_[193] = 55;
            _loc2_[194] = 48;
            _loc2_[195] = 48;
            _loc2_[196] = 49;
            _loc2_[197] = 48;
            _loc2_[198] = 48;
            _loc2_[199] = 52;
            _loc2_[200] = 50;
            _loc2_[201] = 48;
            _loc2_[202] = 49;
            _loc2_[203] = 49;
            _loc2_[204] = 48;
            _loc2_[205] = 48;
            _loc2_[206] = 48;
            _loc2_[207] = 48;
            _loc2_[208] = 75;
            _loc2_[209] = 48;
            _loc2_[210] = 49;
            _loc2_[211] = 48;
            _loc2_[212] = 86;
            _loc2_[213] = 48;
            _loc2_[214] = 66;
            _loc2_[215] = 48;
            _loc2_[216] = 48;
            _loc2_[217] = 48;
            _loc2_[218] = 63;
            _loc2_[219] = 50;
            _loc2_[220] = 48;
            _loc2_[221] = 48;
            _loc2_[222] = 48;
            _loc2_[223] = 48;
            _loc2_[224] = 53;
            _loc2_[225] = 54;
            _loc2_[226] = 48;
            _loc2_[227] = 48;
            _loc2_[228] = 48;
            _loc2_[229] = 48;
            _loc2_[230] = 48;
            _loc2_[231] = 48;
            _loc2_[232] = 48;
            _loc2_[233] = 48;
            _loc2_[234] = 48;
            _loc2_[235] = 48;
            _loc2_[236] = 49;
            _loc2_[237] = 48;
            _loc2_[238] = 48;
            _loc2_[239] = 48;
            _loc2_[240] = 48;
            _loc2_[241] = 48;
            _loc2_[242] = 48;
            _loc2_[243] = 48;
            _loc2_[244] = 48;
            _loc2_[245] = 48;
            _loc2_[246] = 48;
            _loc2_[247] = 48;
            _loc2_[248] = 48;
            _loc2_[249] = 68;
            _loc2_[250] = 54;
            _loc2_[251] = 48;
            _loc2_[252] = 48;
            _loc2_[253] = 48;
            _loc2_[254] = 48;
         }
         if(param1 == 134819803)
         {
            _loc2_[0] = 48;
            _loc2_[1] = 88;
            _loc2_[2] = 49;
            _loc2_[3] = 66;
            _loc2_[4] = 48;
            _loc2_[5] = 63;
            _loc2_[6] = 48;
            _loc2_[7] = 48;
            _loc2_[8] = 85;
            _loc2_[9] = 51;
            _loc2_[10] = 70;
            _loc2_[11] = 51;
            _loc2_[12] = 62;
            _loc2_[13] = 51;
            _loc2_[14] = 81;
            _loc2_[15] = 51;
            _loc2_[16] = 60;
            _loc2_[17] = 51;
            _loc2_[18] = 80;
            _loc2_[19] = 51;
            _loc2_[20] = 66;
            _loc2_[21] = 51;
            _loc2_[22] = 79;
            _loc2_[23] = 51;
            _loc2_[24] = 48;
            _loc2_[25] = 48;
            _loc2_[26] = 48;
            _loc2_[27] = 48;
            _loc2_[28] = 48;
            _loc2_[29] = 53;
            _loc2_[30] = 53;
            _loc2_[31] = 50;
            _loc2_[32] = 48;
            _loc2_[33] = 48;
            _loc2_[34] = 48;
            _loc2_[35] = 48;
            _loc2_[36] = 48;
            _loc2_[37] = 48;
            _loc2_[38] = 51;
            _loc2_[39] = 48;
            _loc2_[40] = 48;
            _loc2_[41] = 48;
            _loc2_[42] = 95;
            _loc2_[43] = 100;
            _loc2_[44] = 48;
            _loc2_[45] = 50;
            _loc2_[46] = 83;
            _loc2_[47] = 61;
            _loc2_[48] = 48;
            _loc2_[49] = 50;
            _loc2_[50] = 48;
            _loc2_[51] = 48;
            _loc2_[52] = 48;
            _loc2_[53] = 100;
            _loc2_[54] = 48;
            _loc2_[55] = 53;
            _loc2_[56] = 105;
            _loc2_[57] = 64;
            _loc2_[58] = 72;
            _loc2_[59] = 89;
            _loc2_[60] = 49;
            _loc2_[61] = 53;
            _loc2_[62] = 105;
            _loc2_[63] = 64;
            _loc2_[64] = 72;
            _loc2_[65] = 89;
            _loc2_[66] = 49;
            _loc2_[67] = 86;
            _loc2_[68] = 107;
            _loc2_[69] = 57;
            _loc2_[70] = 50;
            _loc2_[71] = 48;
            _loc2_[72] = 48;
            _loc2_[73] = 48;
            _loc2_[74] = 48;
            _loc2_[75] = 48;
            _loc2_[76] = 49;
            _loc2_[77] = 48;
            _loc2_[78] = 48;
            _loc2_[79] = 49;
            _loc2_[80] = 48;
            _loc2_[81] = 48;
            _loc2_[82] = 48;
            _loc2_[83] = 48;
            _loc2_[84] = 48;
            _loc2_[85] = 48;
            _loc2_[86] = 48;
            _loc2_[87] = 48;
            _loc2_[88] = 48;
            _loc2_[89] = 51;
            _loc2_[90] = 48;
            _loc2_[91] = 48;
            _loc2_[92] = 48;
            _loc2_[93] = 48;
            _loc2_[94] = 48;
            _loc2_[95] = 48;
            _loc2_[96] = 48;
            _loc2_[97] = 48;
            _loc2_[98] = 48;
            _loc2_[99] = 48;
            _loc2_[100] = 49;
            _loc2_[101] = 48;
            _loc2_[102] = 48;
            _loc2_[103] = 54;
            _loc2_[104] = 49;
            _loc2_[105] = 49;
            _loc2_[106] = 49;
            _loc2_[107] = 48;
            _loc2_[108] = 48;
            _loc2_[109] = 48;
            _loc2_[110] = 48;
            _loc2_[111] = 49;
            _loc2_[112] = 48;
            _loc2_[113] = 48;
            _loc2_[114] = 48;
            _loc2_[115] = 48;
            _loc2_[116] = 49;
            _loc2_[117] = 49;
            _loc2_[118] = 48;
            _loc2_[119] = 48;
            _loc2_[120] = 48;
            _loc2_[121] = 48;
            _loc2_[122] = 51;
            _loc2_[123] = 52;
            _loc2_[124] = 48;
            _loc2_[125] = 48;
            _loc2_[126] = 50;
            _loc2_[127] = 48;
            _loc2_[128] = 48;
            _loc2_[129] = 48;
            _loc2_[130] = 48;
            _loc2_[131] = 58;
            _loc2_[132] = 48;
            _loc2_[133] = 50;
            _loc2_[134] = 48;
            _loc2_[135] = 48;
            _loc2_[136] = 50;
            _loc2_[137] = 50;
            _loc2_[138] = 48;
            _loc2_[139] = 48;
            _loc2_[140] = 49;
            _loc2_[141] = 49;
            _loc2_[142] = 50;
            _loc2_[143] = 49;
            _loc2_[144] = 48;
            _loc2_[145] = 49;
            _loc2_[146] = 48;
            _loc2_[147] = 49;
            _loc2_[148] = 48;
            _loc2_[149] = 48;
            _loc2_[150] = 48;
            _loc2_[151] = 48;
            _loc2_[152] = 48;
            _loc2_[153] = 48;
            _loc2_[154] = 48;
            _loc2_[155] = 48;
            _loc2_[156] = 48;
            _loc2_[157] = 48;
            _loc2_[158] = 48;
            _loc2_[159] = 48;
            _loc2_[160] = 48;
            _loc2_[161] = 48;
            _loc2_[162] = 48;
            _loc2_[163] = 48;
            _loc2_[164] = 49;
            _loc2_[165] = 49;
            _loc2_[166] = 48;
            _loc2_[167] = 48;
            _loc2_[168] = 48;
            _loc2_[169] = 48;
            _loc2_[170] = 48;
            _loc2_[171] = 100;
            _loc2_[172] = 49;
            _loc2_[173] = 65;
            _loc2_[174] = 99;
            _loc2_[175] = 52;
            _loc2_[176] = 48;
            _loc2_[177] = 48;
            _loc2_[178] = 48;
            _loc2_[179] = 49;
            _loc2_[180] = 57;
            _loc2_[181] = 69;
            _loc2_[182] = 53;
            _loc2_[183] = 97;
            _loc2_[184] = 53;
            _loc2_[185] = 72;
            _loc2_[186] = 49;
            _loc2_[187] = 54;
            _loc2_[188] = 48;
            _loc2_[189] = 48;
            _loc2_[190] = 48;
            _loc2_[191] = 48;
            _loc2_[192] = 48;
            _loc2_[193] = 102;
            _loc2_[194] = 50;
            _loc2_[195] = 48;
            _loc2_[196] = 48;
            _loc2_[197] = 48;
            _loc2_[198] = 48;
            _loc2_[199] = 107;
            _loc2_[200] = 49;
            _loc2_[201] = 48;
            _loc2_[202] = 82;
            _loc2_[203] = 48;
            _loc2_[204] = 48;
            _loc2_[205] = 48;
            _loc2_[206] = 48;
            _loc2_[207] = 48;
            _loc2_[208] = 100;
            _loc2_[209] = 51;
            _loc2_[210] = 100;
            _loc2_[211] = 49;
            _loc2_[212] = 68;
            _loc2_[213] = 48;
            _loc2_[214] = 77;
            _loc2_[215] = 48;
            _loc2_[216] = 58;
            _loc2_[217] = 48;
            _loc2_[218] = 98;
            _loc2_[219] = 51;
            _loc2_[220] = 65;
            _loc2_[221] = 48;
            _loc2_[222] = 48;
            _loc2_[223] = 48;
            _loc2_[224] = 57;
            _loc2_[225] = 56;
            _loc2_[226] = 48;
            _loc2_[227] = 83;
            _loc2_[228] = 48;
            _loc2_[229] = 61;
            _loc2_[230] = 49;
            _loc2_[231] = 51;
            _loc2_[232] = 49;
            _loc2_[233] = 105;
            _loc2_[234] = 48;
            _loc2_[235] = 48;
            _loc2_[236] = 49;
            _loc2_[237] = 48;
            _loc2_[238] = 48;
            _loc2_[239] = 48;
            _loc2_[240] = 48;
            _loc2_[241] = 48;
            _loc2_[242] = 48;
            _loc2_[243] = 48;
            _loc2_[244] = 48;
            _loc2_[245] = 48;
            _loc2_[246] = 48;
            _loc2_[247] = 48;
            _loc2_[248] = 48;
            _loc2_[249] = 68;
            _loc2_[250] = 89;
            _loc2_[251] = 48;
            _loc2_[252] = 48;
            _loc2_[253] = 48;
            _loc2_[254] = 48;
         }
         if(param1 == 50525291)
         {
            _loc2_[0] = 48;
            _loc2_[1] = 88;
            _loc2_[2] = 49;
            _loc2_[3] = 99;
            _loc2_[4] = 48;
            _loc2_[5] = 57;
            _loc2_[6] = 48;
            _loc2_[7] = 48;
            _loc2_[8] = 60;
            _loc2_[9] = 51;
            _loc2_[10] = 70;
            _loc2_[11] = 51;
            _loc2_[12] = 77;
            _loc2_[13] = 51;
            _loc2_[14] = 79;
            _loc2_[15] = 51;
            _loc2_[16] = 67;
            _loc2_[17] = 51;
            _loc2_[18] = 62;
            _loc2_[19] = 51;
            _loc2_[20] = 66;
            _loc2_[21] = 51;
            _loc2_[22] = 48;
            _loc2_[23] = 48;
            _loc2_[24] = 48;
            _loc2_[25] = 48;
            _loc2_[26] = 48;
            _loc2_[27] = 48;
            _loc2_[28] = 48;
            _loc2_[29] = 48;
            _loc2_[30] = 48;
            _loc2_[31] = 48;
            _loc2_[32] = 48;
            _loc2_[33] = 48;
            _loc2_[34] = 48;
            _loc2_[35] = 48;
            _loc2_[36] = 48;
            _loc2_[37] = 48;
            _loc2_[38] = 53;
            _loc2_[39] = 67;
            _loc2_[40] = 48;
            _loc2_[41] = 48;
            _loc2_[42] = 58;
            _loc2_[43] = 79;
            _loc2_[44] = 48;
            _loc2_[45] = 54;
            _loc2_[46] = 107;
            _loc2_[47] = 51;
            _loc2_[48] = 48;
            _loc2_[49] = 48;
            _loc2_[50] = 48;
            _loc2_[51] = 48;
            _loc2_[52] = 48;
            _loc2_[53] = 68;
            _loc2_[54] = 49;
            _loc2_[55] = 96;
            _loc2_[56] = 69;
            _loc2_[57] = 86;
            _loc2_[58] = 66;
            _loc2_[59] = 89;
            _loc2_[60] = 49;
            _loc2_[61] = 96;
            _loc2_[62] = 69;
            _loc2_[63] = 86;
            _loc2_[64] = 66;
            _loc2_[65] = 89;
            _loc2_[66] = 49;
            _loc2_[67] = 50;
            _loc2_[68] = 103;
            _loc2_[69] = 61;
            _loc2_[70] = 49;
            _loc2_[71] = 49;
            _loc2_[72] = 48;
            _loc2_[73] = 48;
            _loc2_[74] = 50;
            _loc2_[75] = 48;
            _loc2_[76] = 48;
            _loc2_[77] = 48;
            _loc2_[78] = 48;
            _loc2_[79] = 48;
            _loc2_[80] = 48;
            _loc2_[81] = 48;
            _loc2_[82] = 48;
            _loc2_[83] = 49;
            _loc2_[84] = 48;
            _loc2_[85] = 48;
            _loc2_[86] = 49;
            _loc2_[87] = 48;
            _loc2_[88] = 49;
            _loc2_[89] = 49;
            _loc2_[90] = 48;
            _loc2_[91] = 48;
            _loc2_[92] = 48;
            _loc2_[93] = 48;
            _loc2_[94] = 48;
            _loc2_[95] = 49;
            _loc2_[96] = 48;
            _loc2_[97] = 48;
            _loc2_[98] = 50;
            _loc2_[99] = 48;
            _loc2_[100] = 48;
            _loc2_[101] = 48;
            _loc2_[102] = 48;
            _loc2_[103] = 53;
            _loc2_[104] = 48;
            _loc2_[105] = 48;
            _loc2_[106] = 48;
            _loc2_[107] = 48;
            _loc2_[108] = 48;
            _loc2_[109] = 48;
            _loc2_[110] = 48;
            _loc2_[111] = 50;
            _loc2_[112] = 48;
            _loc2_[113] = 48;
            _loc2_[114] = 48;
            _loc2_[115] = 48;
            _loc2_[116] = 48;
            _loc2_[117] = 48;
            _loc2_[118] = 48;
            _loc2_[119] = 48;
            _loc2_[120] = 48;
            _loc2_[121] = 48;
            _loc2_[122] = 49;
            _loc2_[123] = 49;
            _loc2_[124] = 48;
            _loc2_[125] = 48;
            _loc2_[126] = 49;
            _loc2_[127] = 48;
            _loc2_[128] = 48;
            _loc2_[129] = 48;
            _loc2_[130] = 48;
            _loc2_[131] = 58;
            _loc2_[132] = 48;
            _loc2_[133] = 50;
            _loc2_[134] = 48;
            _loc2_[135] = 48;
            _loc2_[136] = 51;
            _loc2_[137] = 49;
            _loc2_[138] = 48;
            _loc2_[139] = 50;
            _loc2_[140] = 48;
            _loc2_[141] = 49;
            _loc2_[142] = 49;
            _loc2_[143] = 48;
            _loc2_[144] = 48;
            _loc2_[145] = 48;
            _loc2_[146] = 50;
            _loc2_[147] = 50;
            _loc2_[148] = 48;
            _loc2_[149] = 48;
            _loc2_[150] = 48;
            _loc2_[151] = 49;
            _loc2_[152] = 48;
            _loc2_[153] = 48;
            _loc2_[154] = 48;
            _loc2_[155] = 48;
            _loc2_[156] = 50;
            _loc2_[157] = 48;
            _loc2_[158] = 48;
            _loc2_[159] = 48;
            _loc2_[160] = 48;
            _loc2_[161] = 48;
            _loc2_[162] = 48;
            _loc2_[163] = 48;
            _loc2_[164] = 49;
            _loc2_[165] = 48;
            _loc2_[166] = 48;
            _loc2_[167] = 48;
            _loc2_[168] = 48;
            _loc2_[169] = 48;
            _loc2_[170] = 48;
            _loc2_[171] = 99;
            _loc2_[172] = 48;
            _loc2_[173] = 65;
            _loc2_[174] = 99;
            _loc2_[175] = 52;
            _loc2_[176] = 48;
            _loc2_[177] = 48;
            _loc2_[178] = 48;
            _loc2_[179] = 49;
            _loc2_[180] = 52;
            _loc2_[181] = 65;
            _loc2_[182] = 53;
            _loc2_[183] = 103;
            _loc2_[184] = 86;
            _loc2_[185] = 99;
            _loc2_[186] = 48;
            _loc2_[187] = 83;
            _loc2_[188] = 52;
            _loc2_[189] = 48;
            _loc2_[190] = 51;
            _loc2_[191] = 48;
            _loc2_[192] = 48;
            _loc2_[193] = 90;
            _loc2_[194] = 49;
            _loc2_[195] = 48;
            _loc2_[196] = 48;
            _loc2_[197] = 48;
            _loc2_[198] = 48;
            _loc2_[199] = 63;
            _loc2_[200] = 52;
            _loc2_[201] = 48;
            _loc2_[202] = 60;
            _loc2_[203] = 50;
            _loc2_[204] = 48;
            _loc2_[205] = 48;
            _loc2_[206] = 48;
            _loc2_[207] = 48;
            _loc2_[208] = 59;
            _loc2_[209] = 50;
            _loc2_[210] = 51;
            _loc2_[211] = 48;
            _loc2_[212] = 59;
            _loc2_[213] = 48;
            _loc2_[214] = 48;
            _loc2_[215] = 48;
            _loc2_[216] = 51;
            _loc2_[217] = 48;
            _loc2_[218] = 62;
            _loc2_[219] = 49;
            _loc2_[220] = 48;
            _loc2_[221] = 48;
            _loc2_[222] = 48;
            _loc2_[223] = 48;
            _loc2_[224] = 53;
            _loc2_[225] = 55;
            _loc2_[226] = 48;
            _loc2_[227] = 48;
            _loc2_[228] = 48;
            _loc2_[229] = 48;
            _loc2_[230] = 48;
            _loc2_[231] = 48;
            _loc2_[232] = 48;
            _loc2_[233] = 48;
            _loc2_[234] = 48;
            _loc2_[235] = 48;
            _loc2_[236] = 48;
            _loc2_[237] = 48;
            _loc2_[238] = 48;
            _loc2_[239] = 48;
            _loc2_[240] = 48;
            _loc2_[241] = 48;
            _loc2_[242] = 48;
            _loc2_[243] = 48;
            _loc2_[244] = 48;
            _loc2_[245] = 48;
            _loc2_[246] = 48;
            _loc2_[247] = 48;
            _loc2_[248] = 48;
            _loc2_[249] = 68;
            _loc2_[250] = 74;
            _loc2_[251] = 48;
            _loc2_[252] = 48;
            _loc2_[253] = 48;
            _loc2_[254] = 48;
         }
         if(param1 == 112754805)
         {
            _loc2_[0] = 48;
            _loc2_[1] = 60;
            _loc2_[2] = 48;
            _loc2_[3] = 48;
            _loc2_[4] = 48;
            _loc2_[5] = 54;
            _loc2_[6] = 48;
            _loc2_[7] = 49;
            _loc2_[8] = 54;
            _loc2_[9] = 51;
            _loc2_[10] = 62;
            _loc2_[11] = 51;
            _loc2_[12] = 64;
            _loc2_[13] = 51;
            _loc2_[14] = 66;
            _loc2_[15] = 51;
            _loc2_[16] = 70;
            _loc2_[17] = 51;
            _loc2_[18] = 48;
            _loc2_[19] = 48;
            _loc2_[20] = 48;
            _loc2_[21] = 48;
            _loc2_[22] = 48;
            _loc2_[23] = 48;
            _loc2_[24] = 48;
            _loc2_[25] = 48;
            _loc2_[26] = 48;
            _loc2_[27] = 48;
            _loc2_[28] = 59;
            _loc2_[29] = 54;
            _loc2_[30] = 52;
            _loc2_[31] = 50;
            _loc2_[32] = 48;
            _loc2_[33] = 48;
            _loc2_[34] = 48;
            _loc2_[35] = 48;
            _loc2_[36] = 48;
            _loc2_[37] = 48;
            _loc2_[38] = 51;
            _loc2_[39] = 48;
            _loc2_[40] = 48;
            _loc2_[41] = 48;
            _loc2_[42] = 106;
            _loc2_[43] = 55;
            _loc2_[44] = 48;
            _loc2_[45] = 82;
            _loc2_[46] = 91;
            _loc2_[47] = 50;
            _loc2_[48] = 48;
            _loc2_[49] = 49;
            _loc2_[50] = 48;
            _loc2_[51] = 48;
            _loc2_[52] = 48;
            _loc2_[53] = 78;
            _loc2_[54] = 48;
            _loc2_[55] = 99;
            _loc2_[56] = 76;
            _loc2_[57] = 79;
            _loc2_[58] = 70;
            _loc2_[59] = 89;
            _loc2_[60] = 49;
            _loc2_[61] = 99;
            _loc2_[62] = 76;
            _loc2_[63] = 79;
            _loc2_[64] = 70;
            _loc2_[65] = 89;
            _loc2_[66] = 49;
            _loc2_[67] = 82;
            _loc2_[68] = 87;
            _loc2_[69] = 73;
            _loc2_[70] = 48;
            _loc2_[71] = 49;
            _loc2_[72] = 48;
            _loc2_[73] = 49;
            _loc2_[74] = 48;
            _loc2_[75] = 48;
            _loc2_[76] = 51;
            _loc2_[77] = 48;
            _loc2_[78] = 48;
            _loc2_[79] = 48;
            _loc2_[80] = 48;
            _loc2_[81] = 48;
            _loc2_[82] = 48;
            _loc2_[83] = 48;
            _loc2_[84] = 48;
            _loc2_[85] = 49;
            _loc2_[86] = 50;
            _loc2_[87] = 48;
            _loc2_[88] = 48;
            _loc2_[89] = 48;
            _loc2_[90] = 48;
            _loc2_[91] = 48;
            _loc2_[92] = 48;
            _loc2_[93] = 49;
            _loc2_[94] = 48;
            _loc2_[95] = 48;
            _loc2_[96] = 48;
            _loc2_[97] = 48;
            _loc2_[98] = 49;
            _loc2_[99] = 48;
            _loc2_[100] = 48;
            _loc2_[101] = 52;
            _loc2_[102] = 48;
            _loc2_[103] = 50;
            _loc2_[104] = 48;
            _loc2_[105] = 48;
            _loc2_[106] = 48;
            _loc2_[107] = 48;
            _loc2_[108] = 48;
            _loc2_[109] = 48;
            _loc2_[110] = 48;
            _loc2_[111] = 48;
            _loc2_[112] = 49;
            _loc2_[113] = 48;
            _loc2_[114] = 48;
            _loc2_[115] = 48;
            _loc2_[116] = 48;
            _loc2_[117] = 48;
            _loc2_[118] = 50;
            _loc2_[119] = 48;
            _loc2_[120] = 48;
            _loc2_[121] = 48;
            _loc2_[122] = 51;
            _loc2_[123] = 48;
            _loc2_[124] = 48;
            _loc2_[125] = 48;
            _loc2_[126] = 48;
            _loc2_[127] = 48;
            _loc2_[128] = 49;
            _loc2_[129] = 48;
            _loc2_[130] = 48;
            _loc2_[131] = 58;
            _loc2_[132] = 48;
            _loc2_[133] = 49;
            _loc2_[134] = 48;
            _loc2_[135] = 48;
            _loc2_[136] = 48;
            _loc2_[137] = 49;
            _loc2_[138] = 48;
            _loc2_[139] = 49;
            _loc2_[140] = 48;
            _loc2_[141] = 48;
            _loc2_[142] = 49;
            _loc2_[143] = 48;
            _loc2_[144] = 48;
            _loc2_[145] = 48;
            _loc2_[146] = 48;
            _loc2_[147] = 49;
            _loc2_[148] = 48;
            _loc2_[149] = 48;
            _loc2_[150] = 48;
            _loc2_[151] = 48;
            _loc2_[152] = 48;
            _loc2_[153] = 48;
            _loc2_[154] = 48;
            _loc2_[155] = 48;
            _loc2_[156] = 50;
            _loc2_[157] = 48;
            _loc2_[158] = 48;
            _loc2_[159] = 48;
            _loc2_[160] = 48;
            _loc2_[161] = 48;
            _loc2_[162] = 48;
            _loc2_[163] = 48;
            _loc2_[164] = 48;
            _loc2_[165] = 48;
            _loc2_[166] = 48;
            _loc2_[167] = 48;
            _loc2_[168] = 48;
            _loc2_[169] = 48;
            _loc2_[170] = 48;
            _loc2_[171] = 76;
            _loc2_[172] = 78;
            _loc2_[173] = 61;
            _loc2_[174] = 66;
            _loc2_[175] = 48;
            _loc2_[176] = 48;
            _loc2_[177] = 49;
            _loc2_[178] = 48;
            _loc2_[179] = 48;
            _loc2_[180] = 52;
            _loc2_[181] = 69;
            _loc2_[182] = 53;
            _loc2_[183] = 105;
            _loc2_[184] = 64;
            _loc2_[185] = 73;
            _loc2_[186] = 48;
            _loc2_[187] = 98;
            _loc2_[188] = 48;
            _loc2_[189] = 48;
            _loc2_[190] = 51;
            _loc2_[191] = 48;
            _loc2_[192] = 48;
            _loc2_[193] = 76;
            _loc2_[194] = 48;
            _loc2_[195] = 48;
            _loc2_[196] = 50;
            _loc2_[197] = 48;
            _loc2_[198] = 48;
            _loc2_[199] = 74;
            _loc2_[200] = 48;
            _loc2_[201] = 48;
            _loc2_[202] = 67;
            _loc2_[203] = 48;
            _loc2_[204] = 48;
            _loc2_[205] = 53;
            _loc2_[206] = 48;
            _loc2_[207] = 48;
            _loc2_[208] = 81;
            _loc2_[209] = 48;
            _loc2_[210] = 61;
            _loc2_[211] = 48;
            _loc2_[212] = 51;
            _loc2_[213] = 48;
            _loc2_[214] = 68;
            _loc2_[215] = 48;
            _loc2_[216] = 49;
            _loc2_[217] = 48;
            _loc2_[218] = 49;
            _loc2_[219] = 48;
            _loc2_[220] = 48;
            _loc2_[221] = 48;
            _loc2_[222] = 48;
            _loc2_[223] = 48;
            _loc2_[224] = 52;
            _loc2_[225] = 53;
            _loc2_[226] = 48;
            _loc2_[227] = 49;
            _loc2_[228] = 48;
            _loc2_[229] = 54;
            _loc2_[230] = 48;
            _loc2_[231] = 48;
            _loc2_[232] = 48;
            _loc2_[233] = 81;
            _loc2_[234] = 48;
            _loc2_[235] = 48;
            _loc2_[236] = 49;
            _loc2_[237] = 64;
            _loc2_[238] = 48;
            _loc2_[239] = 79;
            _loc2_[240] = 48;
            _loc2_[241] = 51;
            _loc2_[242] = 49;
            _loc2_[243] = 48;
            _loc2_[244] = 48;
            _loc2_[245] = 48;
            _loc2_[246] = 48;
            _loc2_[247] = 48;
            _loc2_[248] = 48;
            _loc2_[249] = 68;
            _loc2_[250] = 55;
            _loc2_[251] = 48;
            _loc2_[252] = 48;
            _loc2_[253] = 48;
            _loc2_[254] = 48;
         }
         if(param1 == 126619772)
         {
            _loc2_[0] = 48;
            _loc2_[1] = 68;
            _loc2_[2] = 49;
            _loc2_[3] = 104;
            _loc2_[4] = 48;
            _loc2_[5] = 54;
            _loc2_[6] = 48;
            _loc2_[7] = 48;
            _loc2_[8] = 55;
            _loc2_[9] = 51;
            _loc2_[10] = 64;
            _loc2_[11] = 51;
            _loc2_[12] = 53;
            _loc2_[13] = 51;
            _loc2_[14] = 66;
            _loc2_[15] = 51;
            _loc2_[16] = 57;
            _loc2_[17] = 51;
            _loc2_[18] = 48;
            _loc2_[19] = 48;
            _loc2_[20] = 48;
            _loc2_[21] = 48;
            _loc2_[22] = 48;
            _loc2_[23] = 48;
            _loc2_[24] = 48;
            _loc2_[25] = 48;
            _loc2_[26] = 48;
            _loc2_[27] = 48;
            _loc2_[28] = 48;
            _loc2_[29] = 48;
            _loc2_[30] = 48;
            _loc2_[31] = 48;
            _loc2_[32] = 48;
            _loc2_[33] = 48;
            _loc2_[34] = 48;
            _loc2_[35] = 48;
            _loc2_[36] = 48;
            _loc2_[37] = 48;
            _loc2_[38] = 48;
            _loc2_[39] = 63;
            _loc2_[40] = 48;
            _loc2_[41] = 48;
            _loc2_[42] = 57;
            _loc2_[43] = 50;
            _loc2_[44] = 48;
            _loc2_[45] = 86;
            _loc2_[46] = 89;
            _loc2_[47] = 48;
            _loc2_[48] = 48;
            _loc2_[49] = 48;
            _loc2_[50] = 48;
            _loc2_[51] = 48;
            _loc2_[52] = 48;
            _loc2_[53] = 48;
            _loc2_[54] = 49;
            _loc2_[55] = 51;
            _loc2_[56] = 84;
            _loc2_[57] = 63;
            _loc2_[58] = 72;
            _loc2_[59] = 89;
            _loc2_[60] = 49;
            _loc2_[61] = 69;
            _loc2_[62] = 70;
            _loc2_[63] = 62;
            _loc2_[64] = 72;
            _loc2_[65] = 89;
            _loc2_[66] = 49;
            _loc2_[67] = 101;
            _loc2_[68] = 86;
            _loc2_[69] = 67;
            _loc2_[70] = 48;
            _loc2_[71] = 50;
            _loc2_[72] = 48;
            _loc2_[73] = 48;
            _loc2_[74] = 48;
            _loc2_[75] = 48;
            _loc2_[76] = 49;
            _loc2_[77] = 48;
            _loc2_[78] = 48;
            _loc2_[79] = 48;
            _loc2_[80] = 48;
            _loc2_[81] = 49;
            _loc2_[82] = 48;
            _loc2_[83] = 49;
            _loc2_[84] = 48;
            _loc2_[85] = 48;
            _loc2_[86] = 48;
            _loc2_[87] = 48;
            _loc2_[88] = 48;
            _loc2_[89] = 48;
            _loc2_[90] = 48;
            _loc2_[91] = 48;
            _loc2_[92] = 49;
            _loc2_[93] = 48;
            _loc2_[94] = 48;
            _loc2_[95] = 49;
            _loc2_[96] = 48;
            _loc2_[97] = 50;
            _loc2_[98] = 48;
            _loc2_[99] = 48;
            _loc2_[100] = 48;
            _loc2_[101] = 48;
            _loc2_[102] = 48;
            _loc2_[103] = 48;
            _loc2_[104] = 48;
            _loc2_[105] = 48;
            _loc2_[106] = 48;
            _loc2_[107] = 48;
            _loc2_[108] = 48;
            _loc2_[109] = 48;
            _loc2_[110] = 48;
            _loc2_[111] = 49;
            _loc2_[112] = 48;
            _loc2_[113] = 49;
            _loc2_[114] = 48;
            _loc2_[115] = 48;
            _loc2_[116] = 48;
            _loc2_[117] = 48;
            _loc2_[118] = 48;
            _loc2_[119] = 49;
            _loc2_[120] = 48;
            _loc2_[121] = 49;
            _loc2_[122] = 52;
            _loc2_[123] = 49;
            _loc2_[124] = 48;
            _loc2_[125] = 48;
            _loc2_[126] = 48;
            _loc2_[127] = 49;
            _loc2_[128] = 48;
            _loc2_[129] = 48;
            _loc2_[130] = 48;
            _loc2_[131] = 58;
            _loc2_[132] = 48;
            _loc2_[133] = 50;
            _loc2_[134] = 48;
            _loc2_[135] = 48;
            _loc2_[136] = 48;
            _loc2_[137] = 48;
            _loc2_[138] = 48;
            _loc2_[139] = 49;
            _loc2_[140] = 48;
            _loc2_[141] = 48;
            _loc2_[142] = 48;
            _loc2_[143] = 48;
            _loc2_[144] = 48;
            _loc2_[145] = 48;
            _loc2_[146] = 48;
            _loc2_[147] = 48;
            _loc2_[148] = 48;
            _loc2_[149] = 48;
            _loc2_[150] = 48;
            _loc2_[151] = 48;
            _loc2_[152] = 49;
            _loc2_[153] = 48;
            _loc2_[154] = 48;
            _loc2_[155] = 48;
            _loc2_[156] = 48;
            _loc2_[157] = 48;
            _loc2_[158] = 48;
            _loc2_[159] = 48;
            _loc2_[160] = 48;
            _loc2_[161] = 48;
            _loc2_[162] = 48;
            _loc2_[163] = 48;
            _loc2_[164] = 48;
            _loc2_[165] = 48;
            _loc2_[166] = 48;
            _loc2_[167] = 48;
            _loc2_[168] = 48;
            _loc2_[169] = 48;
            _loc2_[170] = 48;
            _loc2_[171] = 76;
            _loc2_[172] = 48;
            _loc2_[173] = 60;
            _loc2_[174] = 53;
            _loc2_[175] = 48;
            _loc2_[176] = 48;
            _loc2_[177] = 48;
            _loc2_[178] = 48;
            _loc2_[179] = 49;
            _loc2_[180] = 53;
            _loc2_[181] = 69;
            _loc2_[182] = 54;
            _loc2_[183] = 48;
            _loc2_[184] = 48;
            _loc2_[185] = 48;
            _loc2_[186] = 48;
            _loc2_[187] = 62;
            _loc2_[188] = 49;
            _loc2_[189] = 48;
            _loc2_[190] = 58;
            _loc2_[191] = 48;
            _loc2_[192] = 48;
            _loc2_[193] = 48;
            _loc2_[194] = 48;
            _loc2_[195] = 48;
            _loc2_[196] = 49;
            _loc2_[197] = 48;
            _loc2_[198] = 48;
            _loc2_[199] = 49;
            _loc2_[200] = 48;
            _loc2_[201] = 48;
            _loc2_[202] = 81;
            _loc2_[203] = 48;
            _loc2_[204] = 48;
            _loc2_[205] = 51;
            _loc2_[206] = 48;
            _loc2_[207] = 48;
            _loc2_[208] = 66;
            _loc2_[209] = 48;
            _loc2_[210] = 49;
            _loc2_[211] = 48;
            _loc2_[212] = 59;
            _loc2_[213] = 48;
            _loc2_[214] = 48;
            _loc2_[215] = 48;
            _loc2_[216] = 48;
            _loc2_[217] = 48;
            _loc2_[218] = 56;
            _loc2_[219] = 48;
            _loc2_[220] = 48;
            _loc2_[221] = 48;
            _loc2_[222] = 48;
            _loc2_[223] = 48;
            _loc2_[224] = 51;
            _loc2_[225] = 53;
            _loc2_[226] = 48;
            _loc2_[227] = 49;
            _loc2_[228] = 48;
            _loc2_[229] = 54;
            _loc2_[230] = 48;
            _loc2_[231] = 48;
            _loc2_[232] = 48;
            _loc2_[233] = 48;
            _loc2_[234] = 48;
            _loc2_[235] = 48;
            _loc2_[236] = 49;
            _loc2_[237] = 48;
            _loc2_[238] = 48;
            _loc2_[239] = 48;
            _loc2_[240] = 48;
            _loc2_[241] = 48;
            _loc2_[242] = 48;
            _loc2_[243] = 48;
            _loc2_[244] = 48;
            _loc2_[245] = 48;
            _loc2_[246] = 48;
            _loc2_[247] = 48;
            _loc2_[248] = 48;
            _loc2_[249] = 68;
            _loc2_[250] = 58;
            _loc2_[251] = 48;
            _loc2_[252] = 48;
            _loc2_[253] = 48;
            _loc2_[254] = 48;
         }
         return _loc2_;
      }
      
      public function recovery() : Boolean
      {
         return false;
      }
      
      public function get_wpij(param1:Number) : Object
      {
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         _loc2_ = Math.floor(param1 / 5);
         _loc3_ = Math.floor(param1 % 5);
         if(_loc3_ == 0)
         {
            _loc3_ = 5;
            _loc2_--;
         }
         _loc2_++;
         return {
            "i":_loc2_,
            "j":_loc3_
         };
      }
   }
}
