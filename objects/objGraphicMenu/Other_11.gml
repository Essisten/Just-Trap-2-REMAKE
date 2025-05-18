/// @description going back
if (global.enableShaders == 0)
{
    if (global.smoothingMode = 1)
        global.smoothingMode = 0;
    if (global.screenshakePower == 2)
        global.screenshakePower = 1;
}
scrSaveConfig();
destX = 500;
dest_alpha = 0;
active = false;
alarm[11] = 1;

event_inherited();
