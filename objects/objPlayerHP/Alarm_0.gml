/// @description Appearing
if (image_alpha >= 1)
{
    alarm[1] = 50;
   exit;
}
image_alpha += 0.02;
alarm[0] = 1;

