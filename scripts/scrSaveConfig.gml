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
ini_write_real("Settings","Gravity_controls", global.gravityControls);
ini_write_real("Settings","Sound_test", global.soundTest);
ini_write_real("Settings","Music_slowdown", global.musicSlowdown);
ini_write_real("Settings","Screenshake", global.screenshake);
ini_write_real("Settings","AA", global.AA);
ini_write_real("Settings","Boss_death_style", global.bossDeathBrightness);

ini_close();
