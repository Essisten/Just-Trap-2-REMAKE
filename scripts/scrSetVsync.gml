///sets vsync mode depending on the current setting

global.windowXPrev = window_get_x();
global.windowYPrev = window_get_y();
global.windowWidthPrev = window_get_width();
global.windowHeightPrev = window_get_height();
var alising = global.AA * 2;
if (alising == 6)
    alising = 8;
display_reset(alising, global.vsyncMode);

//set an alarm for returning to the previous window position/size (using display_reset resets the window's location and size)
with (objWorld)
    alarm[1] = 1;
