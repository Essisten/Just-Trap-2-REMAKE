if (global.particles)
{
    emitter = part_emitter_create(global.topParticleSystem);
    effect = part_type_create();
    part_type_alpha2(effect, 1, 0);
    part_type_size(effect, 1, 1, -0.1, 0);
    part_type_life(effect, 50, 100);
    part_type_sprite(effect, sprBigGeezer_Eyes, false, false, false);
}
oldY = y;
dick = 0;
hspeed = -1;
if (instance_number(objBigGeezer_Eyes) > 1)
{
    instance_destroy();
}

