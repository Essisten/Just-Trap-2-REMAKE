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
valueType[0] = -1;
valueType[1] = -1;
valueType[2] = 0;
valueType[3] = 0;
values = true;
strSelect[0] = "Music"
strSelect[1] = "Sounds";
strSelect[2] = "Sound test";
strSelect[3] = "Music slowdown";
optionsNum = array_length_1d(strSelect);
event_user(2);

alarm[10] = 2;

}
