/// @description go to menu
if (room == rOptions)
{
    if (instance_exists(objLightEffect))
        alarm[1] = 1;
    else
        room_goto(rTitle);
}
else
{
    objPauseMenu.child = noone;
}

