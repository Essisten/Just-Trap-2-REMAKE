if (scrButtonCheckPressed(global.menuOptionsButton))
{
    global.menuSelectPrev[0] = select;
    room_goto(rOptions);
}
else
{
    if (!difSelect)
    {
        if (scrButtonCheckPressed(global.menuLeftButton))
        {
            audio_play_sound(global.menuSound,0,false);
            select -= 1;
            if (select < 0)
                select = 2;
        }
        else if (scrButtonCheckPressed(global.menuRightButton))
        {
            audio_play_sound(global.menuSound,0,false);
            select += 1;
            if (select > 2)
                select = 0;
        }
        else if (scrButtonCheckPressed(global.menuBackButton))
        {
            global.menuSelectPrev[0] = 0;
            room_goto(rTitle);  //go back
        }
        else if (scrButtonCheckPressed(global.menuAcceptButton))
        {
            if (global.menuMode == 0)   //use the difficulty select room to select difficulty
            {
                global.savenum = select+1;
                room_goto(rDifficultySelect);
            }
            else    //use the menu to select difficulty
            {
                difSelect = true;
                if (exists[select]) //check if there is a save in the current slot
                    select2 = -1;   //default to load game
                else
                    select2 = 0;    //default to medium
            }
        }
    }
    else
    {
        if (!warnText)
        {
            if (scrButtonCheckPressed(global.menuLeftButton))
            {
                audio_play_sound(global.menuSound,0,false);
                select2 -= 1;
                if ((select2 == -1 && !exists[select]) || (select2 < -1))
                    select2 = 3;
            }
            else if (scrButtonCheckPressed(global.menuRightButton))
            {
                audio_play_sound(global.menuSound,0,false);
                select2 += 1;
                if (select2 > 3)
                {
                    if (exists[select])
                        select2 = -1;
                    else
                        select2 = 0;
                }
            }
            else if (scrButtonCheckPressed(global.menuBackButton))
            {
                difSelect = false;
            }
            else if (scrButtonCheckPressed(global.menuAcceptButton))
            {
                global.savenum = select+1;
                
                if (select2 == -1)  //load game
                {
                    if (file_exists(global.dir + "Data\\save"+string(global.savenum)))
                        scrLoadGame(true);
                }
                else    //starts new game
                {
                    if (!file_exists(global.dir + "Data\\save"+string(global.savenum)))
                    {
                        global.gameStarted = true; //sets game in progress (enables saving, restarting, etc.)
                        global.autosave = true;
                        
                        global.difficulty = select2;
                        
                        room_goto(global.startRoom);
                    }
                    else
                    {
                        warnText = true;
                        warnSelect = true;
                    }
                }
            }
        }
        else
        {
            if (scrButtonCheckPressed(global.menuLeftButton))
            {
                audio_play_sound(global.menuSound,0,false);
                warnSelect = !warnSelect;
            }
            else if (scrButtonCheckPressed(global.menuRightButton))
            {
                audio_play_sound(global.menuSound,0,false);
                warnSelect = !warnSelect;
            }
            else if (scrButtonCheckPressed(global.menuBackButton))
            {
                warnText = false;
            }
            else if (scrButtonCheckPressed(global.menuAcceptButton))
            {
                if (warnSelect)
                {
                    //start new game
                    global.gameStarted = true; //sets game in progress (enables saving, restarting, etc.)
                    global.autosave = true;
                    
                    global.difficulty = select2;
                    
                    if (file_exists(global.dir + "Data\\save"+string(global.savenum)))
                        file_delete(global.dir + "Data\\save"+string(global.savenum));
                    
                    room_goto(global.startRoom);
                }
                else
                {
                    warnText = false;
                }
            }
        }
    }
}

