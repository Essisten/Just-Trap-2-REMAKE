var tmp = __background_get( e__BG.Alpha, 1 );
var tmp2 = tmp;
if (global.selectedBoss > 0 and tmp < 1)
{
    tmp += 0.05;
    if (sel != global.selectedBoss)
    {
        sel = global.selectedBoss;
        event_user(0);
    }
}
else if (global.selectedBoss == 0 and tmp > 0)
    tmp -= 0.05;
    
if (tmp != tmp2)
{
    if (sel != 0)
        event_user(1);
    __background_set( e__BG.Alpha, 1, tmp );
}


