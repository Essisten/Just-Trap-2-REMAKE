var length = ds_list_size(stars);
dir += spd;
for (var i = 0; i < length; i++)
{
    var star = ds_list_find_value(stars, i);
    if (is_undefined(star) || !instance_exists(star))
    {
        //ds_list_delete(stars, i);
        //break;
        continue;
    }
    with (star)
    {
        if (rad < other.rad)
            rad += 2;
    }
    star.x = x + lengthdir_x(star.rad, dir + i * (360 / length));
    star.y = y + lengthdir_y(star.rad, dir + i * (360 / length));
}
if (!done)
{
    if (!instance_exists(owner))
    {
        counter = 7
        alarm[0] = 1;
        exit;
    }
    x = owner.x;
    y = owner.y;
}
else if (x < -200 or x > 1000 or y < -200 or y > 800)
    instance_destroy();

