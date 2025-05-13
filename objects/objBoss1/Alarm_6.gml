/// @description Showing and hiding
counter++;
if (showing)
{
    if (image_alpha < 1)
        image_alpha = counter / 10;
    if (image_yscale < 4)
        image_yscale = counter / 10 * 4;
    if (image_xscale < 0)
        image_xscale = image_yscale * -1;
    else
        image_xscale = image_yscale;
    oldY = min(hole.y, 464);
    destinationX = hole.x;
    if (counter >= 10)
    {
        counter = 0;
        alarm[6] = -1;
    }
    else
        alarm[6] = 2;
}
else
{
    if (image_alpha > 0)
        image_alpha = 1 - counter / 10;
    if (image_yscale > 0)
        image_yscale = (1 - counter / 10) * 4;
    if (image_xscale < 0)
        image_xscale = image_yscale * -1;
    else
        image_xscale = image_yscale;
    oldY = hole.y
    hightY = hole.y;
    destinationX = hole.x;
    if (counter >= 10)
    {
        oldY = -50;
        flyHight = -50;
        counter = 0;
        alarm[6] = -1;
        hole = objBG.holes[irandom_range(0, 4)];
    }
    else
        alarm[6] = 2;
}

