if (line == 3)
{
    if (scrButtonCheckPressed(global.leftButton))
    {
        sel--;
        if (sel < 0)
           sel = 2;
    }
    else if (scrButtonCheckPressed(global.rightButton))
    {
        sel++;
        if (sel > 2)
           sel = 0;
    }
    if (alarm[0] > 0 or alarm[2] > 0)
       exit;
    if (scrButtonCheckPressed(global.menuAcceptButton) or scrButtonCheckPressed(global.menuOptionsButton))
    {
        warn_alpha = 1;
        choice = sel;
        scrSaveConfig();
        if (global.soundVol == 0 and global.musicVol == 0)
        {
            phrase = 2;
            alarm[3] = -1;
            alarm[2] = 50;
        }
        else if (sel == answer)
        {
           alarm[3] = -1;
           alarm[2] = 50;
           phrase = 1;
        }
        else
        {
            alarm[0] = 1;
            phrase = 0;
        }
    }
}
else if (line == 2 and
    (scrButtonCheckPressed(global.menuAcceptButton) or scrButtonCheckPressed(global.menuOptionsButton)))
{
    if (audio_is_playing(musicPlaying))
    {
        alarm[3] = 50;
        audio_stop_sound(musicPlaying);
    }
    else
    {
        musicPlaying = scrPlayMusic(music[irandom(3)], false);
        alarm[3] = -1;
        sound_stop_all();
    }
}
if (scrButtonCheckPressed(global.menuUpButton))
{
    line--;
    if (line < 0)
        line = 3;
}
else if (scrButtonCheckPressed(global.menuDownButton))
{
    line++;
    if (line > 3)
        line = 0;
}
else if (scrButtonCheckPressed(global.menuBackButton))
{
    game_end();
}
else if (scrButtonCheckPressed(global.menuAcceptButton) or scrButtonCheckPressed(global.menuOptionsButton))
{
    if (line == 0)
    {
        if (global.musicVol == 0)
            global.musicVol = 100;
        else
            global.musicVol = 0;
    }
    else if (line == 1)
    {
        if (global.soundVol == 0)
            global.soundVol = 100;
        else
            global.soundVol = 0;
    }
}

