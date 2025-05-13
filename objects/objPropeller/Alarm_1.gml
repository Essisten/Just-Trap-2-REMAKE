/// @description Change direction #1
if (!instance_exists(objPlayer))
   exit;
vspeed = spd;
if (objPlayer.y < y)
    vspeed *= -1;;
hspeed = 0;

