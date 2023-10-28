///scrSaveGame(saveposition)
///saves the game
///argument0 - sets whether the game should save the player's current location or just save the deaths/time

var savePosition = argument0;
//save the player's current location variables if the script is currently set to (we don't want to save the player's location if we're just updating death/time)
if (savePosition)
{    
    global.saveRoom = room_get_name(room);
    global.savePlayerX = objPlayer.x;    
    global.savePlayerY = objPlayer.y;
    global.saveGrav = global.grav;
    global.saveCurrentWeapon = global.currentWeapon;
    
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
    }
    //floor player position to match standard engine behavior
    global.savePlayerX = floor(global.savePlayerX);
    global.savePlayerY = floor(global.savePlayerY);
    global.saveGameClear = global.gameClear;
}

//create a map for save data
var saveMap = ds_map_create();

ds_map_add(saveMap,"death",global.death);
ds_map_add(saveMap,"time",global.time);
ds_map_add(saveMap,"timeMicro",global.timeMicro);
ds_map_add(saveMap,"difficulty",global.difficulty);
ds_map_add(saveMap,"saveRoom",global.saveRoom);
ds_map_add(saveMap,"savePlayerX",global.savePlayerX);
ds_map_add(saveMap,"savePlayerY",global.savePlayerY);
ds_map_add(saveMap,"saveGrav",global.saveGrav);
ds_map_add(saveMap,"gravH",global.gravH);
ds_map_add(saveMap, "currentWeapon", global.currentWeapon);
ds_map_add(saveMap, "coins", global.coins);
ds_map_add(saveMap, "superCoins", global.fakeCoins);

for (var i = 0; i < array_length_1d(global.bossClear); i++)
{
    ds_map_add(saveMap,"bossClear["+string(i)+"]", global.bossClear[i]);
    ds_map_add(saveMap,"clearAmount["+string(i)+"]", global.clearAmount[i]);
}
    
ds_map_add(saveMap,"saveGameClear",global.saveGameClear);

for (var i = 0; i < array_length_1d(global.tutorial); i++)
    ds_map_add(saveMap,"tutorial["+string(i)+"]", global.tutorial[i]);
    
for (var i = 0; i < array_length_1d(global.pb); i++)
    ds_map_add(saveMap,"pb["+string(i)+"]", global.pb[i]);
for (var i = 0; i < array_length_1d(global.skip); i++)
    ds_map_add(saveMap,"skip["+string(i)+"]", global.skip[i]);
for (var i = 0; i < 3; i++)
{
    ds_map_add(saveMap, "unlockedWeapons["+string(i)+"]", global.unlockedWeapons[i]);
    ds_map_add(saveMap, "obtainedWeapons["+string(i)+"]", global.obtainedWeapons[i]);
}

//add md5 hash to verify saves and make them harder to hack
ds_map_add(saveMap,"mapMd5",md5_string_unicode(json_encode(saveMap)+global.md5StrAdd));

//save the map to a file
if (global.extraSaveProtection) //use ds_map_secure function
{
    ds_map_secure_save(saveMap, global.dir + "Data\save"+string(global.savenum));
}
else    //use text file
{
    //open the save file
    var f = file_text_open_write(global.dir + "Data\save"+string(global.savenum));
    show_debug_message(global.dir + "Data\save"+string(global.savenum));
    //write map to the save file with base64 encoding
    file_text_write_string(f,base64_encode(json_encode(saveMap)));
    
    file_text_close(f);
}
//destroy the map
ds_map_destroy(saveMap);
