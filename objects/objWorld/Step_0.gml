/// @description game checks


//set linear interpolation depending on what the current smoothing setting is
if (global.smoothingMode == 2)
    texture_set_interpolation(true);
else if (global.smoothingMode == 0)
    texture_set_interpolation(false);

//controller checks
if (global.controllerEnabled)
{
    if (!global.controllerMode)  //check if we should switch to controller mode
    {
        if (keyboard_check_pressed(vk_anykey))
        {
            global.controllerDelay = -1;
        }
        else if (scrAnyControllerButton() != -1)
        {
            if (global.controllerDelay == -1)
                global.controllerDelay = global.controllerDelayLength;
        }
    }
    else    //check if we should switch to keyboard mode
    {
        if (keyboard_check_pressed(vk_anykey))
        {
            if (global.controllerDelay == -1)
                global.controllerDelay = global.controllerDelayLength;
        }
        else if (scrAnyControllerButton() != -1)
        {
            global.controllerDelay = -1;
        }
    }
    
    if (global.controllerDelay != -1)   //check delay for switching between keyboard/controller
    {
        if (global.controllerDelay == 0)    //delay over, toggle controller mode
        {
            global.controllerMode = !global.controllerMode;
            global.controllerDelay = -1;
        }
        else
        {
            global.controllerDelay -= 1;
        }
    }
}

if (global.gameStarted)
{
    //handle pausing
    if (!instance_exists(objPauseMenu)) //check if pause delay is active
    {
        if (scrButtonCheckPressed(global.pauseButton) or scrButtonCheckPressed(global.menuBackButton))
        {
            if (!global.noPause)
            {
                global.gamePaused = true;  //set the game to paused
                global.pauseDelay = global.pauseDelayLength; //set pause delay
                global.pauseSurf = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
				application_surface_draw_enable(true);
				surface_copy(global.pauseSurf,0,0, application_surface);
                instance_deactivate_all(true);  //deactivate everything
                instance_create(0, 0, objPauseMenu);
            }
        }
    }
    
    if (!global.gamePaused) //check if the game is currently paused
    {
        if (scrButtonCheckPressed(global.restartButton) and !global.frozen)
        {
            //stop death sound/music
            audio_stop_sound(global.deathSound);
            audio_stop_sound(global.gameOverMusic);
            
            //resume room music
            audio_resume_sound(global.currentMusic);
            
            ///return to old gain if music is being faded out
            if (global.musicFading)
            {
                global.musicFading = false;
                audio_sound_gain(global.currentMusic,global.currentGain,0);
                alarm[0] = -1;   //reset alarm that pauses music
            }
            
            scrSaveGame(false); //save death/time
            scrLoadGame(false); //load the game
        }
        
        if (global.timeWhenDead || instance_exists(objPlayer))  //increment timer
        {
            global.timeMicro += delta_time;
            global.time += global.timeMicro div 1000000;
            global.timeMicro = global.timeMicro mod 1000000;
        }
    }
    scrSetRoomCaption();    //keep caption updated
}

///debug keys

if (global.debugMode && global.gameStarted && !global.gamePaused)
{
    if (keyboard_check(vk_tab))             //drags player with mouse
    {
        with (objPlayer)
        {
            x = mouse_x;
            y = mouse_y;
        }
    }
    if (keyboard_check_pressed(vk_backspace))   //toggles debug overlay
    {
        global.debugOverlay = !global.debugOverlay;
    }
    if (keyboard_check_pressed(vk_insert))  //saves game
    {
        with (objPlayer)
        {
            scrSaveGame(true);
            audio_play_sound(sndItem,0,false);
        }
    }
    if (keyboard_check_pressed(vk_delete))  //toggles showing the hitbox
    {
        global.debugShowHitbox = !global.debugShowHitbox;
    }
    if (keyboard_check_pressed(vk_home))    //toggles god mode
    {
        global.debugNoDeath = !global.debugNoDeath;
    }
    if (keyboard_check_pressed(vk_end))     //toggles infinite jump
    {
        global.debugInfJump = !global.debugInfJump;
    }
    if (keyboard_check_pressed(vk_pageup) && room != room_last)  //goes to next room
    {        
        with (objPlayer)
            instance_destroy();
    
        room_goto_next();
    }
    if (keyboard_check_pressed(vk_pagedown) && room != room_first)    //goes to previous room
    {        
        with (objPlayer)
            instance_destroy();
    
        room_goto_previous();
    }
}

if (global.debugVisuals)
{
    with (objPlayer)    //sets appearance of the player to show god mode/infinite jump
    {
        if (global.debugNoDeath)     //makes player slightly transparent when god mode is on
            image_alpha = 0.7;
        else if (!healthed)
            image_alpha = 1;
        
        if (global.debugInfJump)     //makes player turn blue when infinite jump is on
            image_blend = c_blue;
        else
            image_blend = color_normal;
    }
}

///function keys
if (keyboard_check_pressed(vk_f2))
{
    scrRestartGame();
    exit;
}

if (keyboard_check_pressed(vk_f4) && !global.gamePaused)    //toggle fullscreen mode
{
    global.fullscreenMode = !global.fullscreenMode;
    
    window_set_fullscreen(global.fullscreenMode);
    
    scrSaveConfig();    //save fullscreen setting
}

if (keyboard_check_pressed(vk_f5) && !global.gamePaused)    //reset window size
{
    scrResetWindowSize();
}

UpdateControllers();