/// @description Option selection
switch (select)
{
    case 0:
        if (global.musicVol == 0)
            global.musicVol = 100;
        else
            global.musicVol = 0;
        global.musicVol = clamp(global.musicVol, 0, 100);
        audio_sound_gain(global.currentMusic, global.musicVol/100, 0);
        break;
    case 1:
        if (global.soundVol == 0)
            global.soundVol = 100;
        else
            global.soundVol = 0;
        global.soundVol = clamp(global.soundVol, 0, 100);
        break;
    case 2:
        global.soundTest = !global.soundTest;
        break;
    case 3:
        global.musicSlowdown = !global.musicSlowdown;
        break;
}
event_user(2);

