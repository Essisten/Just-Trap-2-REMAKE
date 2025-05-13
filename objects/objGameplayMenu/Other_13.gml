/// @description Option paging
if (scrButtonCheckPressed(global.menuLeftButton))
{
    switch (select)
    {
        case 2:
            global.GameOverType--;
            if (global.GameOverType < 0)
               global.GameOverType = 4;
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
        case 2:
            global.GameOverType++;
            if (global.GameOverType > 4)
               global.GameOverType = 0;
            break;
        default:
            event_user(0);
            break;
    }
}

