if ((x < 0 || x > room_width || y < 0 || y > room_height) && global.edgeDeath)  //check if player has left the room
    scrKillPlayer();

//update player sprite
if (global.playerAnimationFix)
{
    //block/vine checks
    var notOnBlock = (place_free(x,y+(global.grav)));
    var onVineR = (place_meeting(x+1,y,objWalljumpR) && notOnBlock);
    var onVineL = (place_meeting(x-1,y,objWalljumpL) && notOnBlock);
    
    if (!onVineR && !onVineL)   //not touching any vines
    {
        if (onPlatform || !notOnBlock)  //standing on something
        {
            //check if moving left/right
            var L = (scrButtonCheck(global.leftButton) || (global.directionalTapFix && scrButtonCheckPressed(global.leftButton)));
            var R = (scrButtonCheck(global.rightButton) || (global.directionalTapFix && scrButtonCheckPressed(global.rightButton)));
            if ((L || R) && !frozen)
            {
                state = 1;
                image_speed = 1/2;
            }
            else
            {
                state = 0;
                image_speed = 1/5;
            }
        }
        else    //in the air
        { 
            if ((vspeed * global.grav) < 0)
            {
                state = 2;
                image_speed = 1/2;
            }
            else
            {
                state = 3;
                image_speed = 1/2;
            }
        }
    }
    else    //touching a vine
    {
        state = 4;
        image_speed = 1/2;
    }
}
if (!part_emitter_exists(global.sprintParticleSystem, global.sprintEmitter))
{
    global.sprintEmitter = part_emitter_create(global.sprintParticleSystem);
    show_message(global.sprintEmitter);
}
if (scrButtonCheck(global.sprintButton))
{
   maxSpeed = 6;
   if (global.particles)
   {
       part_type_sprite(global.sprintParticles, sprite_index, false, false, false);
       part_type_scale(global.sprintParticles, image_xscale*xScale,image_yscale*global.grav);
       part_type_orientation(global.sprintParticles, image_angle, image_angle, 0, 0, 0);
       part_emitter_region(global.sprintParticleSystem, global.sprintEmitter, x, x, y, y, global.sprintParticles, ps_distr_linear);
       part_emitter_burst(global.sprintParticleSystem, global.sprintEmitter, global.sprintParticles, 1);
   }
}
else
{
   maxSpeed = 3;
   part_emitter_stream(global.sprintParticleSystem, global.sprintEmitter, global.sprintParticles, 0);
}
sprite_index = Just[state];
shootUpward = scrButtonCheck(global.upButton) && !frozen;
if (paralyzed)
{
    image_speed = 0;
    if (global.enableShaders == 0)
    {
        sprt = sprPlayerParalyzed;
        switch (sprite_index)
        {
            case sprPlayerRunning:
            case sprPlayerRunUp:
                image_index = 1;
                break;
            case sprPlayerFall:
            case sprPlayerFallUp:
                image_index = 2;
                break;
            case sprPlayerJump:
            case sprPlayerJumpUp:
                image_index = 3;
                break;
            default:
                image_index = 0;
                break;
        }
        sprite_index = sprt;
    }
}
if (ds_list_find_value(global.arsenal, global.currentWeapon) == 3)
{
    jump = 6 * global.grav;
    jump2 = 5 * global.grav;
    maxSpeed = 3;
    shootUpward = false;
}
else
{
    jump = 8.5 * global.grav;
    jump2 = 7 * global.grav;
}
if (place_meeting(x, y, objBlock))
{
    softlock_counter++;
    if (softlock_counter > 5)
    {
        scrPlayerUnsoftlock();
        softlock_counter = 0;
    }
}

