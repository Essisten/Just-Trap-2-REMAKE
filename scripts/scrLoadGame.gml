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
        var tut = ds_map_find_value(saveMap,"gravH");
        if (is_undefined(tut))
            tut = false;
        global.gravH = tut;
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
            var tut = ds_map_find_value(saveMap, "tutorial["+string(i)+"]");
            if (is_undefined(tut))
                tut = true;
            global.tutorial[i] = tut;
        }
        for (var i = 0; i < array_length_1d(global.bossClear); i++)
            global.bossClear[i] = ds_map_find_value(saveMap, "bossClear["+string(i)+"]");
        global.saveGameClear = ds_map_find_value(saveMap,"saveGameClear");
        
        for (var i = 0; i < array_length_1d(global.skip); i++)
            global.skip[i] = ds_map_find_value(saveMap, "skip["+string(i)+"]");
            
        for (var i = 0; i < array_length_1d(global.pb); i++)
        {
            var tut = ds_map_find_value(saveMap, "pb["+string(i)+"]");
            if (is_undefined(tut))
                tut = 1;
            global.pb[i] = tut;
        }
        //load md5 string from the save map
        var mapMd5 = ds_map_find_value(saveMap,"mapMd5");
        
        //check if md5 is not a string in case the save was messed with or got corrupted
        if (!is_string(mapMd5))
            mapMd5 = "";   //make it a string for the md5 comparison
        
        //generate md5 string to compare with
        ds_map_delete(saveMap,"mapMd5");
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
scrSwapControls();
instance_create(global.savePlayerX,global.savePlayerY,objPlayer);
room_goto(asset_get_index(global.saveRoom));
