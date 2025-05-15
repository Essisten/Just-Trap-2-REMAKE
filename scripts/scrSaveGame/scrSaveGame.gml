/// @description scrSaveGame(saveposition)
/// @param saveposition
///saves the game
///argument0 - sets whether the game should save the player's current location or just save the deaths/time
function scrSaveGame(argument0) {

	var savePosition = argument0;
	//save the player's current location variables if the script is currently set to (we don't want to save the player's location if we're just updating death/time)
	if (savePosition)
	{    
	    global.saveRoom = room_get_name(room);
	    global.saveGrav = global.grav;
	    global.saveCurrentWeapon = global.currentWeapon;
	    /*
	    //check if player is saving inside of a wall or in the ceiling when the player's position is floored to prevent save locking
	    with (objPlayer)
	    {
	        if (!place_free(floor(global.savePlayerX),global.savePlayerY))
	        {
	            global.savePlayerX += 1;
	        }
        
	        if (!place_free(global.savePlayerX,floor(global.savePlayerY)))
	        {
	            global.savePlayerY += 1;
	        }
        
	        if (!place_free(floor(global.savePlayerX),floor(global.savePlayerY)))
	        {
	            global.savePlayerX += 1;
	            global.savePlayerY += 1;
	        }
	    }*/
	    //floor player position to match standard engine behavior
	    global.savePlayerX = objPlayer.x;    
	    global.savePlayerY = objPlayer.y;
	    global.savePlayerX = floor(global.savePlayerX);
	    global.savePlayerY = floor(global.savePlayerY);
	    global.saveGameClear = global.gameClear;
	}

	//create a map for save data
	var save_map = ds_map_create();

	ds_map_add(save_map,"death",global.death);
	ds_map_add(save_map,"time",global.time);
	ds_map_add(save_map,"timeMicro",global.timeMicro);
	ds_map_add(save_map,"difficulty",global.difficulty);
	ds_map_add(save_map,"saveRoom",global.saveRoom);
	ds_map_add(save_map,"savePlayerX",global.savePlayerX);
	ds_map_add(save_map,"savePlayerY",global.savePlayerY);
	ds_map_add(save_map,"saveGrav",global.saveGrav);
	ds_map_add(save_map,"gravH",global.gravH);
	ds_map_add(save_map, "currentWeapon", global.currentWeapon);
	ds_map_add(save_map, "coins", global.coins);
	ds_map_add(save_map, "superCoins", global.fakeCoins);

	for (var i = 0; i < array_length(global.bossClear); i++)
	{
	    ds_map_add(save_map,"bossClear["+string(i)+"]", global.bossClear[i]);
	    ds_map_add(save_map,"clearAmount["+string(i)+"]", global.clearAmount[i]);
	}
    
	ds_map_add(save_map,"saveGameClear",global.saveGameClear);

	for (var i = 0; i < array_length(global.tutorial); i++)
	    ds_map_add(save_map,"tutorial["+string(i)+"]", global.tutorial[i]);
    
	for (var i = 0; i < array_length(global.pb); i++)
	    ds_map_add(save_map,"pb["+string(i)+"]", global.pb[i]);
	for (var i = 0; i < array_length(global.skip); i++)
	    ds_map_add(save_map,"skip["+string(i)+"]", global.skip[i]);
	for (var i = 0; i < 12; i++) //each weapon cycle
	{
	    ds_map_add(save_map, "unlockedWeapons["+string(i)+"]", global.unlockedWeapons[i]);
	    ds_map_add(save_map, "obtainedWeapons["+string(i)+"]", global.obtainedWeapons[i]);
	}
	var tmp = ds_list_size(global.arsenal);
	if (tmp == 0)
	   ds_list_add(global.arsenal, 1);
	for (var i = 0; i < tmp; i++)
	{
	    ds_map_add(save_map, "arsenal["+string(i)+"]", ds_list_find_value(global.arsenal, i));
	}
	//add md5 hash to verify saves and make them harder to hack
	ds_map_add(save_map,"mapMd5",md5_string_unicode(json_encode(save_map)+global.md5StrAdd));

	//save the map to a file
	if (global.extraSaveProtection) //use ds_map_secure function
	{
	    ds_map_secure_save(save_map, global.dir + "Data\\save"+string(global.savenum));
	}
	else    //use text file
	{
	    //open the save file
	    var f = file_text_open_write(global.dir + "Data\\save"+string(global.savenum));
	    //write map to the save file with base64 encoding
	    file_text_write_string(f,base64_encode(json_encode(save_map)));
    
	    file_text_close(f);
	}


































	//destroy the map
	ds_map_destroy(save_map);



}
