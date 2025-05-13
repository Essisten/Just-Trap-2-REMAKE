/// @description I-framing
if (image_alpha > 0.2)
   image_alpha = 0.2;
else
    image_alpha = 1;
iframe_counter++;
if (iframe_counter >= 8)
{
    image_alpha = 1;
    iframe_counter = 0;
    exit;
}
alarm[1] = 10;

