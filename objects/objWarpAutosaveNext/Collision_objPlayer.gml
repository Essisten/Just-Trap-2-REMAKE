/// @description go to the next room and autosave

if (global.difficulty < 3)  //make sure we're on a difficulty lower than impossible before autosaving
    global.autosave = true;

event_inherited();

