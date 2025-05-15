/// @description Reload animation

if (choose(true, false, true))
{
    reloading = true;
    shooting = true;
    if (isRed)
       sprite_index = sprJustularityReloadRed;
    else
       sprite_index = sprJustularityReloadBlue;
    //image_speed = 1/8;
    image_index = 0;
}
else
    event_user(5);