if (canWalk)
{
    if (destinationX < x)
        image_xscale = abs(image_xscale) * -1;
    else if (destinationX > x)
        image_xscale = abs(image_xscale);
}
else if (instance_exists(objPlayer))
{
    if (objPlayer.x < x)
        image_xscale = abs(image_xscale) * -1;
    else if (objPlayer.x > x)
        image_xscale = abs(image_xscale);
}
if (flying)
{
    if (flyHight < oldY)
    {
        y = max(y - spd - 1, flyHight);
        oldY = y;
        state = 2;
    }
    else if (flyHight > oldY)
    {
        y = min(y + spd + 1, flyHight);
        oldY = y;
        state = 3;
    }
    else
    {
        y = oldY + 8 * sin(degtorad(dick));
        dick += 8;
        state = 3;
    }
}
else
{
    if (y < 464)
    {
        y = min(y + spd + 1, 464);
        oldY = y;
        state = 3;
    }
    else
    {
        dick = 0;
        if (x == destinationX or !canWalk)
           state = 0;
        else
            state = 1;
    }
}
if (x == destinationX)
    canWalk = false;
else if (canWalk)
{
    if (x < destinationX)
        x = min(x + spd, destinationX);
    else if (x > destinationX)
        x = max(x - spd, destinationX);
}

