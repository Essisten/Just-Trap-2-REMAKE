/// @description Real time shooting
if (shootCounter < 30)
{
    alarm[1] = 1 + totalShoots;
    shootCounter++;
    line = false;
    var s = instance_create(x, y, objStarV);
    s.direction = direction;
    s.image_xscale = 2 + totalShoots;
    s.image_yscale = s.image_xscale;
    scrPlaySound(sndShootV);
}
else
{
    totalShoots++;
    spd += 2 * sign(spd);
    if (totalShoots < 5)
        alarm[2] = 50;
    else
    {
        alarm[0] = 150;
        alarm[5] = irandom_range(1, 20);
        alarm[7] = -1;
        with (objJustularity)
            event_user(4);
    }
}

