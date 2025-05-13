speed /= 3;
move_bounce_solid(true);
if (speed < 1)
{
    speed = 0;
    rotate = 0;
    alarm[0] = irandom(10);
}

