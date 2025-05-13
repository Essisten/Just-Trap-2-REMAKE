with (other) {
event_inherited();
select = 0;
alarm[0] = 1;
destX = __view_get( e__VW.XView, 0 ) + 240;
xSelector = __view_get( e__VW.XView, 0 ) + 500;
ySelector = __view_get( e__VW.YView, 0 ) + 64;
xSeperation = 532;
ySeperation = 48;
offset = 20;
valueType[0] = 0;
valueType[1] = 5;
valueType[2] = 3;
valueType[3] = 0;
valueType[4] = 0;
valueType[5] = -1;
valueType[6] = 6;
valueType[7] = 1;
valueType[8] = 4;
values = true;
strSelect[0] = "Fullscreen"
strSelect[1] = "Smoothing";
strSelect[2] = "Anti-alising";
strSelect[3] = "V. Sync";
strSelect[4] = "Particles";
strSelect[5] = "Outline power";
strSelect[6] = "Shaders";
strSelect[7] = "Sprite style";
strSelect[8] = "Screenshake";
optionsNum = array_length_1d(strSelect);
//Anti-alising
strValue[3, 0] = "Off";
strValue[3, 1] = "x2";
strValue[3, 2] = "x4";
strValue[3, 3] = "x8";
//Screenshake
strValue[4, 0] = "Off";
strValue[4, 1] = "Normal";
strValue[4, 2] = "Strong";
//Smoothing
strValue[5, 0] = "Disabled";
strValue[5, 1] = "New";
strValue[5, 2] = "Old";
//Surfaces
strValue[6, 0] = "Disabled";
strValue[6, 1] = "All";
strValue[6, 2] = "Minimal";
event_user(2);
aaMode[0] = true;
switch (display_aa)
{
    case 2:
        aaMode[1] = true;
        aaMode[2] = false;
        aaMode[3] = false;
        break;
    case 6:
        aaMode[1] = true;
        aaMode[2] = true;
        aaMode[3] = false;
        break;
    case 12:
        aaMode[1] = false;
        aaMode[2] = true;
        aaMode[3] = true;
        break;
    case 14:
        aaMode[1] = true;
        aaMode[2] = true;
        aaMode[3] = true;
        break;
}


}
