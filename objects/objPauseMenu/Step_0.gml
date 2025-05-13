if (alarm[0] > -1 or alarm[1] > -1 or instance_exists(child))
    exit;
if (scrButtonCheckPressed(global.menuUpButton))
{
    scrPlaySound(sndMenuMove);
    sel--;
    if (sel < 0)
        sel = maxSel;
}
else if (scrButtonCheckPressed(global.menuDownButton))
{
    scrPlaySound(sndMenuMove);
    sel++;
    if (sel > maxSel)
        sel = 0;
}
else if (scrButtonCheckPressed(global.menuAcceptButton) or scrButtonCheckPressed(global.menuOptionsButton))
{
    scrPlaySound(sndMenuSelect);
    if (sel > 1)
        scrCreateFade(c_black, 1 / (maxW / spd), true);
    alarm[1] = 1;
}
else if (scrButtonCheckPressed(global.menuBackButton) or scrButtonCheckPressed(global.pauseButton))
{
    scrPlaySound(sndMenuMove, 1.5);
    sel = 0;
    alarm[1] = 1;
}

