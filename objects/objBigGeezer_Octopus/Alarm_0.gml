/// @description Stop when we need
if (!done)
    alarm[0] = 1;
if (speed != 0 and !done and x <= destX)
{
    speed = 0;
    image_angle = 180;
    alarm[0] = 25;
    exit;
}
if (speed == 0)
{
    instance_create(x, y, objBigGeezer_Rock);
    image_angle = 270;
    done = true;
    hspeed = -(global.difficulty * 2) - 2;
}

