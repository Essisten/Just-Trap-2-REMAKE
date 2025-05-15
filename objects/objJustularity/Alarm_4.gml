/// @description Do something
wait = false;
act = irandom(2);
while (act == prevAct)
    act = irandom(2);
switch (act)
{
    case 0:
        event_user(0);  //Walk
        break;
    case 1:  //Gravity
        event_user(1);
        if (phase == 2)
        {
            with (objJustularity)
                prevAct = 1;
        }
        break;
    case 2:
         event_user(8);
        break;
}
prevAct = act;