/// @description Epic sliding out
if (slideOffset > 300)
{
    exit;
}
slideOffset += 8;
if (image_alpha > 0)
   image_alpha -= 0.05;
alarm[2] = 1;


