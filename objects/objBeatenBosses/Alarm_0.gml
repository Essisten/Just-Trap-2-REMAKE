global.hubColor++;
if (global.hubColor > 255)
    global.hubColor = 0;
__background_set( e__BG.Blend, 0, make_colour_hsv(global.hubColor, 220, 255) );
alarm[0] = 10;

