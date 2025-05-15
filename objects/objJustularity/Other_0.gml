/// @description out of bounds handler
if (x < 0)
    x = 128;
else if (x > 800)
    x = 672;
if (y < 0)
    y = 128;
else if (y > 608)
    y = 480;
scrPlaySound(sndAppearV);
instance_create(0, 0, objLightEffect);
if (global.difficulty == 3)
    exit;
killable = false;
alarm[9] = 100;