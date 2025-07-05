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
valueType[1] = 0;
valueType[2] = 3;
valueType[3] = 1;
valueType[4] = 0;
valueType[5] = 0;
strSelect[0] = "Title cards"
strSelect[1] = "Personal best";
strSelect[2] = "Game Over screen";
strSelect[3] = "Gravity controls";
strSelect[4] = "Show names";
strSelect[5] = "Fixed bow";
optionsNum = array_length(strSelect);
//Game Over
strValue[3, 0] = "New";
strValue[3, 1] = "New (dots)";
strValue[3, 2] = "New (shiny)";
strValue[3, 3] = "Old";
strValue[3, 4] = "Happil 2";
event_user(2);