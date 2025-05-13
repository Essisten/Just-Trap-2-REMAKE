with (other) {
owner = noone;
select = 0;
xSelector = __view_get( e__VW.XView, 0 ) + 32;
ySelector = __view_get( e__VW.YView, 0 ) + 64;
xSeperation = 160;
ySeperation = 32;
destX = xSelector;
destY = ySelector;
slideSpeed = 12;
offset = 16;
dest_alpha = 1;
image_alpha = 0;
alarm[0] = 1;
alarm[11] = 1;
strSelect[0] = ""
optionsNum = 1;
values = false;
active = true;
//On-Off
strValue[0, 0] = "Off";
strValue[0, 1] = "On";
//New-Old
strValue[1, 0] = "New";
strValue[1, 1] = "Old";
//Reserved
strValue[2, 0] = "";
strValue[2, 1] = "";
values = ds_list_create();
valueType[0] = -1;

}
