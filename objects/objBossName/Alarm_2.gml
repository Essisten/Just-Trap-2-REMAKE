/// @description Hidding
if (image_alpha <= 0)
{
    instance_destroy();
    exit;
}
image_alpha -= spd;
alarm[2] = 1;

