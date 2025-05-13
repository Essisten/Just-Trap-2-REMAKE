if (dif == 4)   //load game
{
    if (file_exists("Data\\save"+string(global.savenum)))
        scrLoadGame(true);
    else
        scrKillPlayer();
}
else    //start new game
{
    global.gameStarted = true; //sets game in progress (enables saving, restarting, etc.)
    global.autosave = true;
    
    global.difficulty = dif;
    
    if(file_exists("Data\\save"+string(global.savenum)))
        file_delete("Data\\save"+string(global.savenum));
    
    with (objPlayer)
        instance_destroy();

    room_goto(global.startRoom);
}

