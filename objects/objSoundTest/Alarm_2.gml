/// @description Time to go
image_alpha -= 0.05;
warn_alpha -= 0.05;
if (image_alpha <= 0)
{
    room_goto_next();
    exit;
}
alarm[2] = 1;

