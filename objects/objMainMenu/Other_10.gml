/// @description Start new game
global.gameStarted = true; //sets game in progress (enables saving, restarting, etc.)
global.autosave = true;
global.savenum = sel + 1;
global.difficulty = oldSel;
if (file_exists(global.dir + "Data\\save"+string(global.savenum)))
    file_delete(global.dir + "Data\\save"+string(global.savenum));
room_goto(global.startRoom);


