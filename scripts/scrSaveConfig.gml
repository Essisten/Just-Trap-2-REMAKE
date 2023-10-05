///saves current config settings

ini_open(global.dir + "config.ini");

//settings
ini_write_real("Settings","musicVol",global.musicVol);
ini_write_real("Settings","Fullscreen_mode",global.fullscreenMode);
ini_write_real("Settings","Smoothing_mode",global.smoothingMode);
ini_write_real("Settings","Vsync_mode",global.vsyncMode);
ini_write_real("Settings","soundVol", global.soundVol);
ini_write_real("Settings","Show_card", global.showCard);
ini_write_real("Settings","Particles", global.particles);
ini_write_real("Settings","Fix_bow", global.delayBow);
ini_write_real("Settings","Show_PB", global.showPB);
ini_write_real("Settings","Show_names", global.showNames);
ini_write_real("Settings","Sprite_style", global.spriteStyle);
ini_write_real("Settings","GameOver_type", global.GameOverType);
//keyboard controls
ini_write_real("Controls","Left",global.leftButton[0]);
ini_write_real("Controls","Right",global.rightButton[0]);
ini_write_real("Controls","Up",global.upButton[0]);
ini_write_real("Controls","Down",global.downButton[0]);
ini_write_real("Controls","Jump",global.jumpButton[0]);
ini_write_real("Controls","Shoot",global.shootButton[0]);
ini_write_real("Controls","Restart",global.restartButton[0]);
ini_write_real("Controls","Skip",global.skipButton[0]);
ini_write_real("Controls","Sprint",global.sprintButton[0]);
ini_write_real("Controls","Pause",global.pauseButton[0]);
ini_write_real("Controls","Previous_weapon",global.prevWeaponButton[0]);
ini_write_real("Controls","Next_weapon",global.nextWeaponButton[0]);
ini_write_real("Controls","Align_left",global.alignLeftButton[0]);
ini_write_real("Controls","Align_right",global.alignRightButton[0]);

if (global.controllerEnabled)
{
    //controller options
    ini_write_real("Controller","Index",global.controllerIndex);
    ini_write_real("Controller","Left",global.leftButton[1]);
    ini_write_real("Controller","Right",global.rightButton[1]);
    ini_write_real("Controller","Up",global.upButton[1]);
    ini_write_real("Controller","Down",global.downButton[1]);
    ini_write_real("Controller","Jump",global.jumpButton[1]);
    ini_write_real("Controller","Shoot",global.shootButton[1]);
    ini_write_real("Controller","Restart",global.restartButton[1]);
    ini_write_real("Controller","Skip",global.skipButton[1]);
    ini_write_real("Controller","Sprint",global.sprintButton[1]);
    ini_write_real("Controller","Pause",global.pauseButton[1]);
    ini_write_real("Controller","Align_left",global.alignLeftButton[1]);
    ini_write_real("Controller","Align_right",global.alignRightButton[1]);
}

ini_close();
