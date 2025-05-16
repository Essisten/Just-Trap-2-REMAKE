event_inherited();
select = 0;
alarm[0] = 1;
destX = __view_get( e__VW.XView, 0 ) + 240;
xSelector = __view_get( e__VW.XView, 0 ) + 500;
ySelector = __view_get( e__VW.YView, 0 ) + 64;
xSeperation = 532;
ySeperation = 36;
offset = 20;
valueType[0] = -1;
valueType[1] = -1;
valueType[2] = -1;
valueType[3] = -1;
valueType[4] = -1;
valueType[5] = -1;
valueType[6] = -1;
valueType[7] = -1;
valueType[8] = -1;
valueType[9] = -1;
valueType[10] = -1;
valueType[11] = -1;
valueType[12] = -1;
valueType[13] = -1;
values = ds_list_create();
strSelect[0] = "Device"
strSelect[1] = "Reset controls";
strSelect[2] = "Move Left";
strSelect[3] = "Move Right";
strSelect[4] = "Upwards";
strSelect[5] = "Downwards";
strSelect[6] = "Jump";
strSelect[7] = "Shoot";
strSelect[8] = "Restart";
strSelect[9] = "Skip";
strSelect[10] = "Sprint";
strSelect[11] = "Pause";
strSelect[12] = "Previous weapon";
strSelect[13] = "Next weapon";
optionsNum = array_length(strSelect);
//Devices
strValue[3, 0] = "Keyboard";
gp_num = 10;
gp_sel = 0;
gp_connections = ds_list_create();
ds_list_add(gp_connections, -1);
key_listen = false;
for (var i = 1; i <= gp_num; i++)
{
    if (gamepad_is_connected(i - 1))
    {
        ds_list_add(gp_connections, i - 1);
        strValue[3, i] = "Gamepad " + string(ds_list_size(gp_connections) - 1);
    }
}
gp_sel = ds_list_find_index(gp_connections, global.controllerIndex);
if (gp_sel == -1)
{
    gp_sel = 0;
    global.controllerIndex = -1;
}
key_duplicates = ds_list_create();
event_user(2);