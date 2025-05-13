if (!instance_exists(objPlayer))
    exit;
counter++;
if (counter < 3 + global.difficulty)
    alarm[0] = 100 - global.difficulty * 20;
else
{
    direction = point_direction(x, y, objPlayer.x, objPlayer.y);
    speed = min((global.difficulty + 1) * 4, 8);
    done = true;
    exit;
}
var star = instance_create(x, y, objCherry);
with (star)
{
    sprite_index = sprJustularityStar;
    image_speed = 0;
    image_xscale = 2;
    image_yscale = image_xscale;
    rad = 0;
}
ds_list_add(stars, star);

