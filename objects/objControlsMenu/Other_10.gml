/// @description Option selection
if (global.swapControls)
{
    event_user(1);
    exit;
}
switch (select)
{
    case 0:
        gp_sel++;
        if (gp_sel > ds_list_size(global.gp_connections) - 1)
            gp_sel = 0;
        global.controllerIndex = ds_list_find_value(global.gp_connections, gp_sel);
		global.controllerMode = (global.controllerIndex != -1);
        break;
    case 1:
        //default controls
        if (global.controllerIndex == -1)
        {
            global.leftButton[0] = vk_left;
            global.rightButton[0] = vk_right;
            global.upButton[0] = vk_up;
            global.downButton[0] = vk_down;
            global.jumpButton[0] = vk_shift;
            global.shootButton[0] = ord("Z");
            global.restartButton[0] = ord("R");
            global.skipButton[0] = vk_space;
            global.sprintButton[0] = ord("X");
            global.pauseButton[0] = ord("P");
            global.prevWeaponButton[0] = ord("A");
            global.nextWeaponButton[0] = ord("S");
        }
        else
        {
            global.leftButton[1] = gp_padl;
            global.rightButton[1] = gp_padr;
            global.upButton[1] = gp_padu;
            global.downButton[1] = gp_padd;
            global.jumpButton[1] = gp_face1;
            global.shootButton[1] = gp_face3;
            global.restartButton[1] = gp_face4;
            global.skipButton[1] = gp_face2;
            global.sprintButton[1] = gp_select;
            global.pauseButton[1] = gp_start;
            global.nextWeaponButton[1] = gp_shoulderr;
            global.prevWeaponButton[1] = gp_shoulderl;
        }
        break;
    default:
        key_listen = true;
        break;
}

