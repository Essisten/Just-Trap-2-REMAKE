event_inherited();
spd = 6 + global.difficulty * 2;
gravity = 0.5 + 0.5 * global.difficulty;
rotate_speed = 4 * choose(-1, 1);
if (rotate_speed < 0)
   image_xscale = -1;
if (instance_exists(objPlayer))
   gravity_direction = point_direction(x, y, objPlayer.x, objPlayer.y);
direction = gravity_direction;
if (global.difficulty < 3)
{
    image_xscale /= 2;
    image_yscale /= 2;
}
alarm[0] = 80 - 10 * global.difficulty;
alarm[1] = 50;
endless = false;
canParry = true;

