/// @description Disappear
if (image_alpha > 0)
   alarm[1] = 2;
else
    instance_destroy();
image_alpha -= 0.1;

