frozen = false; //sets if the player can move or not
global.frozen = false;
jump = 8.5 * global.grav; //set how fast the player jumps
jump2 = 7 * global.grav; //sets how fast the player double jumps
gravity = 0.4 * global.grav; //player gravity
djump = 1; //allow the player to double jump as soon as he spawns
maxSpeed = 3;   //max horizontal speed
maxVspeed = 9;  //max vertical speed
HP = 1;
maxHP = 1;
softlock_counter = 0;
image_speed = 0.2; //initial speed of animation
onPlatform = false; //sets if player is currently standing on a platform
paralyzed = false;
healthed = false;
iframe_counter = 0;
xScale = 1; //sets the direction the player is facing (1 is facing right, -1 is facing left)
sprt = sprite_index;
Just[0] = sprPlayerIdle;
Just[1] = sprPlayerRunning;
Just[2] = sprPlayerJump;
Just[3] = sprPlayerFall;
Just[4] = sprPlayerSliding;
shootUpward = false;
state = 0;
//0 - idle, 1 - run, 2 - jump, 3 - fall, 4 - sliding
global.gravH = false;
if (global.grav == -1)
    scrFlipGrav();
scrSetPlayerMask(); //set the player's hitbox
color_normal = c_white;
if (global.difficulty == 0 && global.gameStarted)   //create the player's bow
    instance_create(x,y,objBow);

if (global.autosave) //save the game if currently set to autosave
{
    scrSaveGame(true);
    global.autosave = false;
}
if (!instance_exists(objWeaponPlayer))
   instance_create(x, y, objWeaponPlayer);

