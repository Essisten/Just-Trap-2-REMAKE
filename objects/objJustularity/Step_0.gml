/// @description Your personal hell
if (instance_exists(objPlayer) and hspeed == 0 and vspeed == 0)
{
    if (gravH)
    {
        if (objPlayer.y < y)
            image_xscale = -3;
        else
            image_xscale = 3;
    }
    else
    {
        if (objPlayer.x < x)
            image_xscale = 3;
        else
            image_xscale = -3;
    }
}
dead = ((RedHP <= 0 and isRed) or (BlueHP <= 0 and !isRed) or phase == 2);
d += 4;
if (phase == 1)
    isRed = y < 304;
if (jumping)
    scrJustularitySkin(2);
if (shooting)
    scrJustularitySkin(3);
if (wait or jumping or reloading)
    exit;

L = ((gravH and destination > y) or (!gravH and destination < x));
R = ((gravH and destination < y) or (!gravH and destination > x));
h = 0;
if (R)
    h = 1;
else if (L)
    h = -1;
if (isRed)
    spd = 4 + (((100 - RedHP) div 25) + 1) * global.difficulty;
else
    spd = 3 + (((100 - BlueHP) div 25) + 1) * global.difficulty;
if (gravH)
{
    if (h != 0 and hspeed == 0)  //moving
    {
        image_xscale = -h * 3;
        vspeed = spd * -h;
        scrJustularitySkin(1);
    }
    else    //not moving
    {
        vspeed = 0;
        if (hspeed == 0)
            scrJustularitySkin(0);
        else
            scrJustularitySkin(2);
    }
    if ((destination <= y and y + vspeed <= destination) or
    (destination >= y and y + vspeed >= destination))
    {
        vspeed = 0;
        y = destination;
        scrJustularitySkin(0);
        wait = true;
        alarm[4] = waitTime;
    }
    if (abs(hspeed) > 32)
        hspeed = 31 * sign(hspeed);
}
else
{
    if (h != 0 and vspeed == 0)  //moving
    {
        image_xscale = -h * 3;
        hspeed = spd * h;
        scrJustularitySkin(1);
    }
    else    //not moving
    {
        hspeed = 0;
        if (vspeed == 0)
            scrJustularitySkin(0);
        else
            scrJustularitySkin(2);
    }
    if ((destination <= x and x + hspeed <= destination) or
    (destination >= x and x + hspeed >= destination))
    {
        hspeed = 0;
        x = destination;
        scrJustularitySkin(0);
        wait = true;
        alarm[4] = waitTime;
    }
    if (abs(vspeed) > 32)
        vspeed = 31 * sign(vspeed);
}
if (shooting)
    scrJustularitySkin(3);