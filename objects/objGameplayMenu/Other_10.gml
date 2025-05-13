/// @description Option selection
switch (select)
{
    case 0:
        global.showCard = !global.showCard;
        break;
    case 1:
        global.showPB = !global.showPB;
        break;
    case 2:
        global.GameOverType++;
        if (global.GameOverType > 4)
           global.GameOverType = 0;
        break;
    case 3:
        global.gravityControls = !global.gravityControls;
        break;
    case 4:
        global.showNames = !global.showNames;
        break;
    case 5:
        global.delayBow = !global.delayBow;
        break;
}

