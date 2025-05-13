/// @description Look really focused
if (focused)
   saturation += 16;
else
    saturation -= 16;
saturation = clamp(saturation, 0, 112);
image_blend = make_color_hsv(hue, saturation, 255);
if (saturation == 0 or saturation == 112)
   exit;
alarm[0] = 1;

