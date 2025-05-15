with (objBigGeezer_Block)
     instance_destroy();
with (objBigGeezer_BlockEffect)
     instance_destroy();
with (objBigGeezer_Eyes)
     instance_destroy();
if (global.spriteStyle == 0 and global.particles)
{
    part_system_clear(global.topParticleSystem);
    part_emitter_destroy(global.topParticleSystem, emitter);
}

