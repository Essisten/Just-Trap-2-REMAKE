/// @description Less precise step event
switch (select)
{
    case 0:
        if (scrButtonCheck(global.menuLeftButton))
            global.bossDeathBrightness -= 0.02;
        if (scrButtonCheck(global.menuRightButton))
            global.bossDeathBrightness += 0.02;
        global.bossDeathBrightness = clamp(global.bossDeathBrightness, 0, 1);
        break;
}
alarm[10] = 2;

