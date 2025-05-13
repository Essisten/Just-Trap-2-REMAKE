if (!active)
    exit;
if (scrButtonCheckPressed(global.menuUpButton))
{
    scrPlaySound(sndMenuMove);
    select -= 1;
    if(select < 0)
        select = optionsNum-1;
}
else if (scrButtonCheckPressed(global.menuDownButton))
{
    scrPlaySound(sndMenuMove);
    select += 1;
    if(select > optionsNum-1)
        select = 0;
}
else if (scrButtonCheckPressed(global.menuBackButton))
{
    scrPlaySound(sndMenuMove, 1.5);
    event_user(1);
}
else if (scrButtonCheckPressed(global.menuAcceptButton) or
        scrButtonCheckPressed(global.menuOptionsButton))
{
    event_user(0);
    event_user(2);
    scrPlaySound(sndMenuSelect);
}
else if (scrButtonCheckPressed(global.menuLeftButton) or
        scrButtonCheckPressed(global.menuRightButton))
{
    scrPlaySound(sndMenuMove);
    event_user(3);
    event_user(2);
}

