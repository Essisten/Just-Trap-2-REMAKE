/// @description Option paging
if (scrButtonCheckPressed(global.menuLeftButton))
{
    switch (select)
    {
        case 1:
            global.smoothingMode--;
            if (global.smoothingMode < 0)
                global.smoothingMode = 2;
            break;
        case 2:
            global.AA--;
            if (global.AA < 0)
               global.AA = 3;
            if (!aaMode[global.AA])
            {
                event_user(3);
                exit;
            }
            scrSetVsync();
            break;
        case 5:
            global.outlinePower--;
            if (global.outlinePower < 0)
                global.outlinePower = 12;
            break;
        case 6:
            global.enableShaders--;
            if (global.enableShaders < 0)
               global.enableShaders = 2;
            break;
        case 7:
            global.spriteStyle--;
            if (global.spriteStyle < 0)
               global.spriteStyle = 1;
            break;
        case 8:
            global.screenshakePower--;
            if (global.screenshakePower < 0)
               global.screenshakePower = 2;
            break;
        default:
            event_user(0);
            break;
    }
}
else
{
    switch (select)
    {
        default:
            event_user(0);
            break;
    }
}

