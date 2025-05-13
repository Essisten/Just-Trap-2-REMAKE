/// @description Fading away

image_alpha -= 0.05;
alarm[11] = 5;
if (image_alpha <= 0)
    alarm[11] = -1;

