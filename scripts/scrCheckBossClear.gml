blend = c_white;
if (global.spriteStyle == 1)
    blend = make_colour_hsv(0, 0, 250 - global.bossClear[argument0] * 200);
else if (global.bossClear[argument0])
    blend = c_black;
