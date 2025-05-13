/// @description Aim
if (!instance_exists(objPlayer) or aims > 5)
   exit;
gravity_direction = point_direction(x, y, objPlayer.x, objPlayer.y);
alarm[0] = 50;
aims++;

