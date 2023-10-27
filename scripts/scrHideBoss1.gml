///scrHideBoss1(object, show)
///object - JR or Justist
///show - boss shows up or hides

if (argument1)
{
    with (argument0)
    {
        hidden = false;
        showing = true;
        canWalk = true;
        nextFlying = true;
        flying = true;
        x = hole.x;
        y = hole.y;
        oldY = y;
        flyHight = irandom_range(150, 300);
        alarm[0] = 1;
        alarm[6] = 2;
        counter = 0;
        event_user(1);
        with (hole)
            event_user(0);
    }
}
else
{
    with (argument0)
    {
        hidden = true;
        showing = false;
        canWalk = true;
        hole = instance_nearest(x, y, objWallHole);
        destinationX = hole.x;
        flyHight = hole.y;
        flying = true;
        //event_user(0);
        alarm[0] = -1;
    }
}
