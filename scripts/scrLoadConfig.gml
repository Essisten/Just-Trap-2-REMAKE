///loads config settings, sets default config if it doesn't exist

ini_open(global.dir + "config.ini");
global.musicVol = ini_read_real("Settings","musicVol", 100);
global.soundVol = ini_read_real("Settings","soundVol", 100);
global.fullscreenMode = ini_read_real("Settings","Fullscreen_mode",false);
window_set_fullscreen(global.fullscreenMode);
global.showCard = ini_read_real("Settings","Show_card", true);
global.smoothingMode = ini_read_real("Settings","Smoothing_mode",false);
global.particles = ini_read_real("Settings","Particles", true);
global.vsyncMode = ini_read_real("Settings","Vsync_mode",false);
global.showNames = ini_read_real("Settings","Show_names", true);
if (global.vsyncMode)   //only need to set vsync mode if it's on since it's off by default
    scrSetVsync();
global.delayBow = ini_read_real("Settings","Fix_bow",false);
global.showPB = ini_read_real("Settings","Show_PB",true);
global.spriteStyle = ini_read_real("Settings","Sprite_style", 0);
global.GameOverType = ini_read_real("Settings","GameOver_type", 0);
global.gravityControls = ini_read_real("Settings","Gravity_controls", true);
global.soundTest = ini_read_real("Settings","Sound_test", true);
global.musicSlowdown = ini_read_real("Settings","Music_slowdown", true);
global.screenshake = ini_read_real("Settings","Screenshake", 2);
ini_close();
scrLoadControls();
scrSaveConfig();    //save config in case something changed
