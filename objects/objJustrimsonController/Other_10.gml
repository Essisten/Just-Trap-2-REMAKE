/// @description The ending
if (!instance_exists(objPlayer))
   exit;
if (global.grav == -1)
   scrFlipGrav();
with (objSpikeUp)
     vspeed = 2;
with (objBlock)
{
    if (y == 576)
       vspeed = 2;
}
with (objJustrimsonParent)
{
    alarm[0] = -1;
    alarm[1] = -1;
    alarm[2] = -1;
    alarm[4] = 1;
    image_alpha = 1;
    direction = point_direction(x, y, 400, 300) + 180;
    speed = 2;
    circle_width = 0;
}
with (objJustrimson_Soul)
{
    target = objPlayer;
}
with (objJustrimsonB_Halo)
{
    gravity = 0.1;
    gravity_direction = 270;
}
instance_destroy(objJustrimsonC_Heart);
with (objJustrimsonB_Laser)
{
    if (side == 1 or side == 3)
       instance_destroy();
}
with (objJustrimsonA_blade)
     endless = false;
audio_stop_sound(global.currentMusic);
alarm[2] = -1;
dead = true;
global.unlockedWeapons[3] = true;
scrLoadConfig();

