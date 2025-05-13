/// @description Option selected
if (sel != 1)
{
    w -= spd;
    if (w > 0)
    {
        alarm[1] = 1;
        exit;
    }
}

switch (sel)
{
    case 0:
        global.gamePaused = false;
        global.pauseDelay = global.pauseDelayLength;
        instance_activate_all();
        if (surface_exists(global.pauseSurf))
            surface_free(global.pauseSurf);
        scrSaveConfig();
        io_clear(); //clear input states to prevent possible pause strats/exploits
        instance_destroy();
        audio_resume_all();
        break;
    case 1:
        child = instance_create(0, 0, objOptionsMenu);
        break;
    case 2:
        scrRestartGame();
        break;
    case 3:
        game_end();
        break;
}

