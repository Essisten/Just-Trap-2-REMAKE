/// @description Less precise step event
switch (select)
{
    case 0:
        if (scrButtonCheck(global.menuLeftButton))
            global.musicVol--;
        if (scrButtonCheck(global.menuRightButton))
            global.musicVol++;
        global.musicVol = clamp(global.musicVol, 0, 100);
        audio_sound_gain(global.currentMusic, global.musicVol/100, 0);
        break;
    case 1:
        if (scrButtonCheck(global.menuLeftButton))
            global.soundVol--;
        if (scrButtonCheck(global.menuRightButton))
            global.soundVol++;
        global.soundVol = clamp(global.soundVol, 0, 100);
        break;
}
alarm[10] = 2;

