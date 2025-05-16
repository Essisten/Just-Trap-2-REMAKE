/// @description scrLoadGame(load_file)
/// @param load_file
///loads the game
///argument0 - sets whether or not to read the save file when loading the game
function scrLoadGame(argument0) {

	var load_file = argument0;
	if (!file_exists(global.dir + "Data"))
	{
	    directory_create(global.dir + "Data");
	}
	//only load save data from the save file if the script is currently set to (we should only need to load these on first load because the game stores them afterwards)
	if (load_file)
	{
	    //load the save map
	    var save_map;
    
	    if (global.extraSaveProtection) //use ds_map_secure function
	    {
	        save_map = ds_map_secure_load(global.dir + "Data\\save"+string(global.savenum));
	    }
	    else    //use text file
	    {
	        var f = file_text_open_read(global.dir + "Data\\save"+string(global.savenum));
        
	        save_map = json_decode(base64_decode(file_text_read_string(f)));
        
	        file_text_close(f);
	    }
    
	    var save_valid = true;   //keeps track of whether or not the save being loaded is valid
    
	    if (save_map != -1)  //check if the save map loaded correctly
	    {
	        global.death = ds_map_find_value(save_map,"death");
	        global.time = ds_map_find_value(save_map,"time");
	        global.timeMicro = ds_map_find_value(save_map,"timeMicro");
        
	        global.difficulty = ds_map_find_value(save_map,"difficulty");
	        global.saveRoom = ds_map_find_value(save_map,"saveRoom");
	        global.savePlayerX = ds_map_find_value(save_map,"savePlayerX");
	        global.savePlayerY = ds_map_find_value(save_map,"savePlayerY");
	        global.saveGrav = ds_map_find_value(save_map,"saveGrav");
	        global.gravH = scrSafeLoad(save_map, "gravH", false);
	        if (is_string(global.saveRoom))   //check if the saved room loaded properly
	        {
	            if (!room_exists(asset_get_index(global.saveRoom)))  //check if the room index in the save is valid
	            {
	                save_valid = false;
	            }
	        }
	        else
	            save_valid = false;
	        for (var i = 0; i < array_length(global.tutorial); i++)
	        {
	            global.tutorial[i] = scrSafeLoad(save_map, "tutorial["+string(i)+"]", true);
	        }
	        for (var i = 0; i < array_length(global.bossClear); i++)
	            global.bossClear[i] = scrSafeLoad(save_map, "bossClear["+string(i)+"]", false);
	        global.saveGameClear = scrSafeLoad(save_map,"saveGameClear", false);
        
	        for (var i = 0; i < array_length(global.skip); i++)
	            global.skip[i] = scrSafeLoad(save_map, "skip["+string(i)+"]", false);
            
	        for (var i = 0; i < array_length(global.pb); i++)
	            global.pb[i] = scrSafeLoad(save_map, "pb["+string(i)+"]", 1);
        
	        for (var i = 0; i < array_length(global.clearAmount); i++)
	            global.clearAmount[i] = scrSafeLoad(save_map, "clearAmount["+string(i)+"]", 0);
        
	        global.coins = scrSafeLoad(save_map, "coins", 0);
	        global.fakeCoins = scrSafeLoad(save_map, "superCoins", global.coins);
	        global.currentWeapon = scrSafeLoad(save_map, "currentWeapon", 0);
	        global.saveCurrentWeapon = global.currentWeapon;
	        for (var i = 1; i < 12; i++) //each weapon cycle
	        {
	            global.unlockedWeapons[i] = scrSafeLoad(save_map, "unlockedWeapons["+string(i)+"]", false);
	            global.obtainedWeapons[i] = scrSafeLoad(save_map, "obtainedWeapons["+string(i)+"]", false);
	        }
	        global.unlockedWeapons[0] = scrSafeLoad(save_map, "unlockedWeapons[0]", true);
	        global.obtainedWeapons[0] = scrSafeLoad(save_map, "obtainedWeapons[0]", true);
	        ds_list_clear(global.arsenal);
	        for (var i = 0; i < 6; i++)
	        {
	            var weapon = scrSafeLoad(save_map, "arsenal["+string(i)+"]", -1);
	            if (weapon == -1)
	               break;
	            ds_list_add(global.arsenal, weapon);
	        }
	        //load md5 string from the save map
	        var map_md5 = ds_map_find_value(save_map,"mapMd5");
        
	        //check if md5 is not a string in case the save was messed with or got corrupted
	        if (!is_string(map_md5))
	            map_md5 = "";   //make it a string for the md5 comparison
        
	        //generate md5 string to compare with
	        ds_map_delete(save_map,"mapMd5");
	        var a = json_encode(save_map)+global.md5StrAdd;
	        var gen_md5 = md5_string_unicode(json_encode(save_map)+global.md5StrAdd);
	        if (map_md5 != gen_md5)   //check if md5 hash is invalid
	            save_valid = false;
	        //destroy the map
	        ds_map_destroy(save_map);
	    }
	    else
	    {
	        //save map didn't load correctly, set the save to invalid
	        save_valid = false;
	    }
    
	    if (!save_valid) //check if the save is invalid
	    {
	        //save is invalid, restart the game
        
	        show_message("Save invalid!");
        
	        scrRestartGame();
        
	        exit;
	    }
	}
	objWorld.alarm[3] = -1;
	//set game variables and set the player's position
	with (objPlayer) //destroy player if it exists
	    instance_destroy();
	global.gameStarted = true;  //sets game in progress (enables saving, restarting, etc.)
	global.noPause = false;     //disable no pause mode
	global.autosave = false;    //disable autosaving since we're loading the game
	global.selectedBoss = 0;
	global.grav = global.saveGrav;
	global.gameClear = global.saveGameClear;
	global.swapControls = false;
	global.currentWeapon = global.saveCurrentWeapon;
	scrSwapControls();
	room_goto(asset_get_index(global.saveRoom));
	instance_create(global.savePlayerX,global.savePlayerY,objPlayer);
	with (objPlayer)
	    scrPlayerUnsoftlock();



}
