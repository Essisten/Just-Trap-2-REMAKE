/// @description Slide out
if (y >= __view_get( e__VW.YView, 0 ) + 19)
{
    alarm[1] = 50;
    image_speed = 1/4;
    exit;
}
y += 1;
alarm[0] = 1;

