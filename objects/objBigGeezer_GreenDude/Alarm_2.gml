/// @description Aim
if (!instance_exists(objPlayer) or abs(objPlayer.x - x) < 6
   or (y + 96 >= objPlayer.y))
   exit;
hspeed = sign(objPlayer.x - x) * (global.difficulty + 1) / 2;
alarm[2] = 2;

