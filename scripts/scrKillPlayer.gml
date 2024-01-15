//kills the player

if (instance_exists(objPlayer) && (!global.noDeath && !global.debugNoDeath))
{
    if (global.gameStarted) //normal death
    {
        global.deathSound = scrPlaySound(sndDeath);
        
        if (global.deathMusicMode == 1) //instantly pause the current music
        {
            audio_pause_sound(global.currentMusic);
            global.gameOverMusic = audio_play_sound(musOnDeath, 1, false);
        }
        else if (global.deathMusicMode == 2)    //fade out the current music
        {                
            with (objWorld)
                event_user(0);  //fades out and stops the current music
            
            if (global.GameOverType == 4)
               global.gameOverMusic = scrPlaySound(musOnDeath2, 1);
            else
                global.gameOverMusic = scrPlaySound(musOnDeath, 1);
        }
        global.frozen = false;
        with (objPlayer)
        {
            instance_create(x,y,objBloodEmitter);
            instance_destroy();
        }
        
        instance_create(0,0,objGameOver);
        
        global.death += 1; //increment deaths
        objWorld.alarm[2] = -1;
        global.frozen = false;
        scrSaveGame(false); //save death/time
    }
    else    //death in the difficulty select room, restart the room
    {
        with(objPlayer)
            instance_destroy();
        room_restart();
    }
}
