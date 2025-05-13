/// @description Fading
if (image_xscale > 0)
{
    image_xscale -= 0.2;
    alarm[0] = 1;
}
else
    instance_destroy();

