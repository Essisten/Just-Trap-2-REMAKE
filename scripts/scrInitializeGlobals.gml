///initializes all global variables needed for the game
scrSetGlobalOptions();       //initialize global game options
global.savenum = 1;
global.difficulty = 0;  //0 = medium, 1 = hard, 2 = very hard, 3 = impossible
global.death = 0;
global.time = 0;
global.timeMicro = 0;
global.saveRoom = "";
global.savePlayerX = 0;
global.savePlayerY = 0;
global.grav = 1;
global.gravH = false;
global.saveGrav = 1;
global.gameClear = false;
global.saveGameClear = false;
global.frozen = false;  //not allowing restart and suicide
for (i = 99; i >= 0; i--)
{
    global.trigger[i] = false;
}
global.coins = 0;
global.currentWeapon = 0;
for (i = 0; i < 2; i++)
{
    global.unlockedWeapons[i] = false;
    global.obtainedWeapons[i] = false;
}
for (i = 0; i < 7; i++)
{
    global.bossClear[i] = false;
    global.saveBossClear[i] = false;
    global.pb[i] = 1;
}
global.pb[7] = 1;   //Gravityman second phase
global.gameStarted = false;     //determines whether the game is in progress (enables saving, restarting, etc.)
global.noPause = false;         //sets whether or not to allow pausing (useful for bosses to prevent desync)
global.autosave = false;        //keeps track of whether or not to autosave the next time the player is created
global.noDeath = false;         //keeps track of whether to give the player god mode
global.infJump = false;         //keeps track of whether to give the player infinite jump
global.swapControls = false;
global.gamePaused = false;      //keeps track of whether the game is paused or not
global.pauseSurf = -1;       //stores the screen surface when the game is paused
global.pauseDelay = 0;      //sets pause delay so that the player can't quickly pause buffer
global.dir = game_save_id;
global.currentMusicID = -1;  //keeps track of what song the current music is
global.currentMusic = -1;    //keeps track of current main music instance
global.deathSound = -1;     //keeps track of death sound when the player dies
global.gameOverMusic = -1;   //keeps track of game over music instance
global.musicFading = false;     //keeps track of whether the music is being currently faded out
global.currentGain = 0;     //keeps track of current track gain when a song is being faded out
for (var i = 0; i < 5; i++)
{
    global.skip[0] = false;
}
global.menuSelectPrev[0] = 0;     //keeps track of the previously selected option when navigating away from the difficulty menu
global.menuSelectPrev[1] = 0;     //keeps track of the previously selected option when navigating away from the options menu
global.hubColor = -1;
//get the default window size
global.windowWidth = surface_get_width(application_surface);
global.windowHeight = surface_get_height(application_surface);
for (var i = 0; i < 1; i++)
    global.tutorial[i] = true;
//keeps track of previous window position/size when display_reset is used for setting vsync
global.windowXPrev = 0;
global.windowYPrev = 0;
global.windowWidthPrev = 0;
global.windowHeightPrev = 0;
display_set_gui_size(surface_get_width(application_surface),surface_get_height(application_surface));  //set the correct gui size for the Draw GUI event

scrParticleInit();
global.controllerMode = false;  //keeps track of whether to use keyboard or controller
global.controllerDelay = -1;    //handles delay between switching between keyboard/controller so that the player can't use both at the same time

randomize();    //make sure the game starts with a random seed for RNG
