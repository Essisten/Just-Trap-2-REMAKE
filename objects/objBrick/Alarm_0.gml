/// @description Destroying

image_alpha -= 0.05;
alarm[0] = 1;
if (image_alpha == 0)
    instance_destroy();

