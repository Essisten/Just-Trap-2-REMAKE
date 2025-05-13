/// @description Option selection
switch (select)
{
    case 0:
        global.fullscreenMode = !global.fullscreenMode;
        window_set_fullscreen(global.fullscreenMode);
        break;
    case 1:
        global.smoothingMode++;
        if (global.smoothingMode > 2)
            global.smoothingMode = 0;
        break;
    case 2:
        global.AA++;
        if (global.AA > 3)
           global.AA = 0;
        if (!aaMode[global.AA])
        {
            event_user(0);
            exit;
        }
        scrSetVsync();
        break;
    case 3:
        global.vsyncMode = !global.vsyncMode;
        scrSetVsync();
        break;
    case 4:
        global.particles = !global.particles;
        break;
    case 5:
        global.outlinePower++;
        if (global.outlinePower > 12)
            global.outlinePower = 0;
        break;
    case 6:
        global.enableShaders++;
        if (global.enableShaders > 2)
           global.enableShaders = 0;
        break;
    case 7:
        global.spriteStyle++;
        if (global.spriteStyle > 1)
           global.spriteStyle = 0;
        break;
    case 8:
        global.screenshakePower++;
        if (global.screenshakePower > 2)
           global.screenshakePower = 0;
        break;
}

