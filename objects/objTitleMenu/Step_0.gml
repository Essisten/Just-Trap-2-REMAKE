if ((scrButtonCheckPressed(global.menuAcceptButton) or scrButtonCheckPressed(global.menuOptionsButton)) and intro)
{
    alarm[1] = 1;
    intro = false;
    instance_create(0, 0, objMainMenu);
}
if (alarm[0] == -1)
    d += 2;

