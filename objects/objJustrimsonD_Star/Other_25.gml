/// @description Explosion
if (!instance_exists(objPlayer))
   exit;
if (objJustrimsonD.HP <= 50)
{
    gravity_direction = point_direction(x, y, objPlayer.x, objPlayer.y) + random(360 / (2 + global.difficulty)) * choose(-1, 1);
}
else
{
    if (global.difficulty == 3)
       gravity_direction = point_direction(x, y, objPlayer.x, objPlayer.y);
    else
        instance_destroy();
}
spd = random_range(1, 5) + global.difficulty * 2;
ready = true;
alarm[0] = 50;

