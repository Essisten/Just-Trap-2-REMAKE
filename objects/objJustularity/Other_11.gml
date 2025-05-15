/// @description Preparing for changing gravity
var tmp = prevPlayerGrav;
oldSide = side;
oldPlayerGrav = prevPlayerGrav;
oldGrav = grav;
oldGravH = gravH;
while (tmp == prevPlayerGrav)
{
    tmp = irandom_range(1, 4);
    if (tmp == 1 or tmp == 4)
        prevGrav = 1;
    else
        prevGrav = -1;
    if (phase == 1)
    {
        if (tmp == 1 or tmp == 3)
            prevGravH = false;
        else
            prevGravH = true;
    }
    else
        prevGravH = choose(true, false);
    if (prevGravH)
    {
        if (prevGrav)
            side = 2;
        else
            side = 4;
    }
    else
    {
        if (prevGrav)
            side = 3;
        else
            side = 1;
    }
    for (var i = 0; i < instance_number(objJustularity); i++)
    {
        if (!instance_exists(j[i]))
            continue;
        if (j[i].side == tmp)
            tmp = prevPlayerGrav;
    }
}
prevPlayerGrav = tmp;
if (global.difficulty < 3)
{
    with (instance_create(400, 304, objBoss2Warning))
    {
        if (other.image_blend == c_black)
            image_index = 1;
        image_angle = (other.prevPlayerGrav - 1) * -90;
        direction = image_angle + 90;
    }
}
wait = true;
alarm[5] = 50;