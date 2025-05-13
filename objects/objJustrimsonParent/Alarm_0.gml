/// @description I-framing
iframes++;
if (image_alpha == 1)
   image_alpha = 0.2;
else
    image_alpha = 1;
if (iframes >= 10 - 3 * global.difficulty)
{
    image_alpha = 1;
    iframes = 0;
    exit;
}
alarm[0] = 5;

