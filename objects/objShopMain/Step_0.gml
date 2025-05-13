if (alarm[0] != -1 or alarm[2] != -1)
   exit;
if (instance_exists(submenu))
   exit;
if (scrButtonCheckPressed(global.menuUpButton))
{
    scrPlaySound(sndMenuMove);
    select--;
    if(select < 0)
        select = optionsNum-1;
}
else if (scrButtonCheckPressed(global.menuDownButton))
{
    scrPlaySound(sndMenuMove);
    select++;
    if(select > optionsNum-1)
        select = 0;
}
else if (scrButtonCheckPressed(global.menuBackButton))
{
    scrPlaySound(sndMenuMove, 1.5);
    level--;
    if (level < 1)
    {
         scrCreateFade(c_black, 0.02, true);
         alarm[0] = 50;
         alarm[1] = -1;
         alarm[2] = 1;
    }
}
else if (scrButtonCheckPressed(global.menuAcceptButton) or scrButtonCheckPressed(global.menuOptionsButton))
{
     switch (select)
     {
        case 0:
             submenu = instance_create(x, y, objShopWeapon);
             break;
        case 3:
             scrCreateFade(c_black, 0.02, true);
             alarm[0] = 50;
             alarm[1] = -1;
             alarm[2] = 1;
             break;
        default:
            scrPlaySound(sndGlass, 1);
            exit;
     }
    scrPlaySound(sndMenuSelect);
}

