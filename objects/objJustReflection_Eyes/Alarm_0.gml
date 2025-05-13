/// @description Start blinking
if (blink)
   image_yscale -= 0.5;
else
    image_yscale += 0.5;
if (image_yscale <= 0)
   blink = false;
if !(!blink and image_yscale >= 10)
   alarm[0] = 1;
else
{
    blink = true;
    alarm[0] = 300;
}

