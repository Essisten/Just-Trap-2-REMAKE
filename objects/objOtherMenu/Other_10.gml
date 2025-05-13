/// @description Option selection
switch (select)
{
    case 0:
        if (global.bossDeathBrightness == 0)
            global.bossDeathBrightness = 1;
        else
            global.bossDeathBrightness = 0;
        break;
}
event_user(2);

