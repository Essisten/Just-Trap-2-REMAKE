///scrLoadGame(loadfile)
///loads the game
///argument0 - sets whether or not to read the save file when loading the game

var loadFile = argument0;
if (!file_exists(global.dir + "Data"))
{
    directory_create(global.dir + "Data");
}
//only load save data from the save file if the script is currently set to (we should only need to load these on first load because the game stores them afterwards)
if (loadFile)
{
    //load the save map
    var saveMap;
    
    if (global.extraSaveProtection) //use ds_map_secure function
    {
        saveMap = ds_map_secure_load(global.dir + "Data\save"+string(global.savenum));
    }
    else    //use text file
    {
        var f = file_text_open_read(global.dir + "Data\save"+string(global.savenum));
        
        saveMap = json_decode(base64_decode(file_text_read_string(f)));
        
        file_text_close(f);
    }
    
    var saveValid = true;   //keeps track of whether or not the save being loaded is valid
    
    if (saveMap != -1)  //check if the save map loaded correctly
    {
        global.death = ds_map_find_value(saveMap,"death");
        global.time = ds_map_find_value(saveMap,"time");
        global.timeMicro = ds_map_find_value(saveMap,"timeMicro");
        
        global.difficulty = ds_map_find_value(saveMap,"difficulty");
        global.saveRoom = ds_map_find_value(saveMap,"saveRoom");
        global.savePlayerX = ds_map_find_value(saveMap,"savePlayerX");
        global.savePlayerY = ds_map_find_value(saveMap,"savePlayerY");
        global.saveGrav = ds_map_find_value(saveMap,"saveGrav");
        global.gravH = scrSafeLoad(saveMap, "gravH", false);
        if (is_string(global.saveRoom))   //check if the saved room loaded properly
        {
            if (!room_exists(asset_get_index(global.saveRoom)))  //check if the room index in the save is valid
            {
                saveValid = false;
            }
        }
        else
            saveValid = false;
        for (var i = 0; i < array_length_1d(global.tutorial); i++)
        {
            global.tutorial[i] = scrSafeLoad(saveMap, "tutorial["+string(i)+"]", true);
        }
        for (var i = 0; i < array_length_1d(global.bossClear); i++)
            global.bossClear[i] = scrSafeLoad(saveMap, "bossClear["+string(i)+"]", false);
        global.saveGameClear = scrSafeLoad(saveMap,"saveGameClear", false);
        
        for (var i = 0; i < array_length_1d(global.skip); i++)
            global.skip[i] = scrSafeLoad(saveMap, "skip["+string(i)+"]", false);
            
        for (var i = 0; i < array_length_1d(global.pb); i++)
            global.pb[i] = scrSafeLoad(saveMap, "pb["+string(i)+"]", 1);
        
        for (var i = 0; i < array_length_1d(global.clearAmount); i++)
            global.clearAmount[i] = scrSafeLoad(saveMap, "clearAmount["+string(i)+"]", 0);
        
        global.coins = scrSafeLoad(saveMap, "coins", 0);
        global.fakeCoins = scrSafeLoad(saveMap, "superCoins", global.coins);
        global.currentWeapon = scrSafeLoad(saveMap, "currentWeapon", 0);
        global.saveCurrentWeapon = global.currentWeapon;
        for (var i = 0; i < 6; i++) //each weapon cycle
        {
            for (var k = 0; k < 2; k++) //each type cycle
            {
                if (k > 0)
                   global.unlockedWeapons[k, i] = scrSafeLoad(saveMap, "unlockedWeapons["+string(k)+","+string(i)+"]", false);
                global.obtainedWeapons[k, i] = scrSafeLoad(saveMap, "obtainedWeapons["+string(k)+","+string(i)+"]", false);
            }
        }
        global.unlockedWeapons[0, 1] = scrSafeLoad(saveMap, "unlockedWeapons[0, 1]", true);
        global.obtainedWeapons[0, 1] = scrSafeLoad(saveMap, "obtainedWeapons[0, 1]", true);
        ds_list_clear(global.arsenal);
        for (var i = 0; i < 6; i++)
        {
            var weapon = scrSafeLoad(saveMap, "arsenal["+string(i)+"]", -1);
            if (weapon == -1)
               break;
            ds_list_add(global.arsenal, weapon);
        }
        //load md5 string from the save map
        var mapMd5 = ds_map_find_value(saveMap,"mapMd5");
        
        //check if md5 is not a string in case the save was messed with or got corrupted
        if (!is_string(mapMd5))
            mapMd5 = "";   //make it a string for the md5 comparison
        
        //generate md5 string to compare with
        ds_map_delete(saveMap,"mapMd5");
        var a = json_encode(saveMap)+global.md5StrAdd;
        var genMd5 = md5_string_unicode(json_encode(saveMap)+global.md5StrAdd);
        if (mapMd5 != genMd5)   //check if md5 hash is invalid
            saveValid = false;
        //destroy the map
        ds_map_destroy(saveMap);
    }
    else
    {
        //save map didn't load correctly, set the save to invalid
        saveValid = false;
    }
    
    if (!saveValid) //check if the save is invalid
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
