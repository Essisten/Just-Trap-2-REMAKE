counter += 4;
if (image_xscale == 2)
{
    image_blend = c_red;
    alarm[1] = 11 - counter div 10;
    if (counter > 100)
        event_user(0);
}
alarm[0] = max(50 - counter / 2, 5);

