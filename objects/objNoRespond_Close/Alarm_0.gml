/// @description Look really focused
if (focused)
   image_alpha += 0.1;
else
   image_alpha -= 0.1;
image_alpha = clamp(image_alpha, 0, 1);
if (image_alpha == 0 or image_alpha == 1)
   exit;
alarm[0] = 1;

