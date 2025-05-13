w = 0;
spd = 8;
maxW = 128;
sel = 0;
text[0] = "RESUME";
text[1] = "SETTINGS";
text[2] = "MAIN MENU";
text[3] = "EXIT";
maxSel = array_length_1d(text) - 1;
sep = 48;
textY = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2 - sep / 2 * (maxSel);
textX = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2;
sOffsetV = 32;
sOffsetH = 128;
child = noone;
alarm[0] = 1;
if (room != rStageSelect)
    audio_pause_all();

