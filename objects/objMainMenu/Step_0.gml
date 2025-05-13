if (blocked)
    exit;
if (scrButtonCheckPressed(global.menuAcceptButton) or scrButtonCheckPressed(global.menuOptionsButton))
{
    scrPlaySound(sndMenuSelect);
    switch (state)
    {
        case 0:
            sx[0] = sMax;
            sx[1] = 800 - sMax;
            sy[0] = textY;
            sy[1] = textY + array_length_1d(text) * sepY;
            a = 1;
            alarm[0] = -1;
            switch (sel)
            {
                case 0:
                    state = 1;
                    sel = 0;
                    alarm[2] = 1;
                    alarm[3] = -1;
                    break;
                case 1:
                    alarm[1] = 20;
                    blocked = true;
                    scrCreateFade(c_black, 0.05, true);
                    break;
                case 2:
                    blocked = true;
                    alarm[4] = 20;
                    scrCreateFade(c_black, 0.05, true);
                    break;
            }
        break;
        case 1:
            state = 2;
            if (exists[sel]) //check if there is a save in the current slot
                difSel = -1;   //default to load game
            else
                difSel = 0;    //default to medium
            break;
        case 2:
            oldSel = difSel;
            if (difSel == -1)  //load game
            {
                if (exists[sel])
                {
                    global.savenum = sel + 1;
                    scrLoadGame(true);
                }
            }
            else    //starts new game
            {
                if (!exists[sel])
                    event_user(0);
                else
                    state = 3;
            }
            break;
        case 3:
            if (difSel)
                event_user(0);
            else
                state--;
            break;
    }
}
else if (scrButtonCheckPressed(global.menuBackButton))
{
    if (state == 1)
    {
        alarm[2] = -1;
        alarm[3] = 1;
        sel = 0;
    }
    if (state > 0)
    {
        scrPlaySound(sndMenuMove, 1.5);
        state--;
    }
}
if (state > 1)
{
    if (scrButtonCheckPressed(global.menuLeftButton))
    {
        scrPlaySound(sndMenuMove);
        if (state == 2)
        {
            difSel--;
            if (exists[sel])
            {
                if (difSel < -1)
                    difSel = 3;
            }
            else
            {
                if (difSel < 0)
                    difSel = 3;
            }
        }
        else
            difSel = !difSel;
    }
    else if (scrButtonCheckPressed(global.menuRightButton))
    {
        scrPlaySound(sndMenuMove);
        if (state == 2)
        {
            difSel++;
            if (difSel > 3)
            {
                if (exists[sel])
                    difSel = -1;
                else
                    difSel = 0;
            }
        }
        else
            difSel = !difSel;
    }
}
else
{
    if (scrButtonCheckPressed(global.menuUpButton))
    {
        scrPlaySound(sndMenuMove);
        sel--;
        if (state == 0)
        {
            if (sel < 0)
                sel = array_length_1d(text) - 1;
        }
        else if (state == 1)
        {
            if (sel < 0)
                sel = 2;
        }
    }
    else if (scrButtonCheckPressed(global.menuDownButton))
    {
        scrPlaySound(sndMenuMove);
        sel++;
        if (state == 0)
        {
            if (sel >= array_length_1d(text))
                sel = 0;
        }
        else if (state == 1)
        {
            if (sel > 2)
                sel = 0;
        }
    }
}

