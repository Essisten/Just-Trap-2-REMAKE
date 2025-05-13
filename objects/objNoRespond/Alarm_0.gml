/// @description Showing up
if (show)
{
   image_alpha += 0.1;
   image_yscale += 0.01;
   y -= 1;
   x -= 1;
}
else
{
    image_alpha -= 0.1;
   image_yscale -= 0.01;
    y += 1;
    x += 1;
}
image_xscale = image_yscale;
image_alpha = clamp(image_alpha, 0, 1);
if (image_alpha == 1)
{
    button[0] = instance_create(x + buttonX[0], y + 82 + 34, objNoRespond_Button);
    button[1] = instance_create(x + buttonX[1], y + 82 + 34, objNoRespond_Button);
    button[2] = instance_create(x + buttonX[2], y + 4, objNoRespond_Close);
    button[1].image_index = 1;
    show = false;
   exit;
}
if (image_alpha == 0)
{
   instance_destroy();
   exit;
}
alarm[0] = 1;

