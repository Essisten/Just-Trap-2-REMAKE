/// @description save the game

if (canSave && instance_exists(objPlayer) && global.grav == grav)
{
    if (!((objPlayer.x < 0 || objPlayer.x > room_width || objPlayer.y < 0 || objPlayer.y > room_height) && global.edgeDeath))  //make sure the player isn't saving outside the room to prevent save locking
    {
        canSave = false;    //make it so that the player can't save again immediately
        alarm[0] = 30;  //set alarm so the player can save again
        image_index = 1;
        image_speed = 0.017;
        scrSaveGame(true);
        if (!global.particles)
            exit;
        part_emitter_region(global.saveParticleSystem, global.saveEmitter, x, x + 32, y, y + 32, pt_shape_square, ps_distr_gaussian);
        part_emitter_burst(global.saveParticleSystem, global.saveEmitter, global.saveParticles, 10);
    }
}

