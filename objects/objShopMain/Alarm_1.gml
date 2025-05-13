/// @description Epic sliding in
if (slideOffset <= 0)
{
    slideOffset = 0;
    image_alpha = 1;
    exit;
}
slideOffset -= 8;
if (image_alpha < 1)
   image_alpha += 0.05;
alarm[1] = 1;


