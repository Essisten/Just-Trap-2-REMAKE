/// @description Change direction #2
if (!instance_exists(objPlayer))
   exit;
hspeed = spd;
if (objPlayer.x < x)
    hspeed *= -1;
vspeed = 0;

