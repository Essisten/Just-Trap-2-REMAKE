/// @description Epic sliding out
if (slideOffset > 300)
{
    instance_destroy();
    exit;
}
slideOffset += 8;
if (image_alpha > 0)
   image_alpha -= 0.05;
alarm[1] = 1;


