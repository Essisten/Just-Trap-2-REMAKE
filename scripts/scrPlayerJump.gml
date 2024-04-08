var addAngle = image_angle;
if (global.grav == -1)
   addAngle += 180;
if (global.particles)
{
    part_type_direction(global.djumpParticles, addAngle + 180, addAngle + 360, 0, 0);
    part_emitter_region(global.sprintParticleSystem, global.djumpEmitter, x, x, y, y, global.djumpParticles, ps_distr_linear);
}
if (global.gravH)
{
    if (place_meeting(x +(global.grav), y,objBlock) || onPlatform || place_meeting(x +(global.grav), y,objWater))
    {
        hspeed = -jump;
        djump = 1;
        scrPlaySound(sndJump);
    }
    else if (djump == 1 || place_meeting(x +(global.grav), y,objWater2) || (global.infJump || global.debugInfJump))
    {
        hspeed = -jump2;
        state = 2;
        scrPlaySound(sndDJump);
        if (!place_meeting(x +(global.grav), y,objWater3))
            djump = 0;  //take away the player's double jump
        else
            djump = 1;  //replenish djump if touching water3
        if (global.particles)
           part_emitter_burst(global.sprintParticleSystem, global.djumpEmitter, global.djumpParticles, 4);
    }
}
else
{
    if (place_meeting(x,y+(global.grav),objBlock) || onPlatform || place_meeting(x,y+(global.grav),objWater))
    {
        vspeed = -jump;
        djump = 1;
        scrPlaySound(sndJump);
    }
    else if (djump == 1 || place_meeting(x,y+(global.grav),objWater2) || (global.infJump || global.debugInfJump))
    {
        vspeed = -jump2;
        state = 2;
        scrPlaySound(sndDJump);
        if (global.particles)
           part_emitter_burst(global.sprintParticleSystem, global.djumpEmitter, global.djumpParticles, 4);
        
        if (!place_meeting(x,y+(global.grav),objWater3))
            djump = 0;  //take away the player's double jump
        else
            djump = 1;  //replenish djump if touching water3
    }
}

