///scrLoadControls()

///loads config settings, sets default config if it doesn't exist

ini_open(global.dir + "config.ini");

//keyboard controls
global.leftButton[0] = ini_read_real("Controls","Left",vk_left);
global.rightButton[0] = ini_read_real("Controls","Right",vk_right);
global.upButton[0] = ini_read_real("Controls","Up",vk_up);
global.downButton[0] = ini_read_real("Controls","Down",vk_down);
global.jumpButton[0] = ini_read_real("Controls","Jump",vk_shift);
global.shootButton[0] = ini_read_real("Controls","Shoot",ord("Z"));
global.restartButton[0] = ini_read_real("Controls","Restart",ord("R"));
global.skipButton[0] = ini_read_real("Controls","Skip",vk_space);
global.sprintButton[0] = ini_read_real("Controls","Sprint",ord("X"));
global.pauseButton[0] = ini_read_real("Controls","Pause",ord("P"));
global.prevWeaponButton[0] = ini_read_real("Controls","Previous_weapon",ord("A"));
global.nextWeaponButton[0] = ini_read_real("Controls","Next_weapon",ord("S"));

global.alignLeftButton[0] = ini_read_real("Controls","Align_left",ord("A"));
global.alignRightButton[0] = ini_read_real("Controls","Align_right",ord("D"));

//menu keys (not rebindable)
global.menuLeftButton[0] = vk_left;
global.menuRightButton[0] = vk_right;
global.menuUpButton[0] = vk_up;
global.menuDownButton[0] = vk_down;
global.menuAcceptButton[0] = vk_shift;
global.menuBackButton[0] = vk_escape;
global.menuOptionsButton[0] = vk_enter;

if (global.controllerEnabled)
{
    //controller options
    global.controllerIndex = ini_read_real("Controller", "Index", -1); //-1 means no controller
    global.leftButton[1] = ini_read_real("Controller","Left",gp_padl);
    global.rightButton[1] = ini_read_real("Controller","Right",gp_padr);
    global.upButton[1] = ini_read_real("Controller","Up",gp_padu);
    global.downButton[1] = ini_read_real("Controller","Down",gp_padd);
    global.jumpButton[1] = ini_read_real("Controller","Jump",gp_face1);
    global.shootButton[1] = ini_read_real("Controller","Shoot",gp_face3);
    global.restartButton[1] = ini_read_real("Controller","Restart",gp_face4);
    global.skipButton[1] = ini_read_real("Controller","Skip",gp_face2);
    global.sprintButton[1] = ini_read_real("Controller","Sprint",gp_select);
    global.pauseButton[1] = ini_read_real("Controller","Pause",gp_start);
    global.prevWeaponButton[1] = ini_read_real("Controller","Previous_weapon",gp_shoulderl);
    global.nextWeaponButton[1] = ini_read_real("Controller","Next_weapon",gp_shoulderr);
    global.alignLeftButton[1] = ini_read_real("Controller","Align_left",gp_shoulderl);
    global.alignRightButton[1] = ini_read_real("Controller","Align_right",gp_shoulderr);
}

//menu buttons (not rebindable)
global.menuLeftButton[1] = gp_padl;
global.menuRightButton[1] = gp_padr;
global.menuUpButton[1] = gp_padu;
global.menuDownButton[1] = gp_padd;
global.menuAcceptButton[1] = gp_face1;
global.menuBackButton[1] = gp_face2;
global.menuOptionsButton[1] = gp_select;

ini_close();

for (var i = 0; i < 2; i++)
{
    global.saveLeftButton[i] = global.leftButton[i];
    global.saveRightButton[i] = global.rightButton[i];
    global.saveJumpButton[i] = global.jumpButton[i];
    global.saveShootButton[i] = global.shootButton[i];
}
