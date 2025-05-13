event_inherited();
colorHP = c_blue;
pitch = 1;
surprise = true;
active_parts = ds_list_create();
parts = ds_list_create();
spikes[0] = instance_create(random(128), 544, objBoss4_Spike);
spikes[1] = instance_create(random_range(652, 800), 544, objBoss4_Spike);
spikes[0].hspeed = choose(-2, 2) * (global.difficulty + 1);
spikes[1].hspeed = choose(-1, 1) * (global.difficulty + 1);
block_count = instance_number(objBoss4_Ground);
for (var i = 0; i < block_count; i++)
{
    blocks[i] = instance_find(objBoss4_Ground, i);
}
normal[0] = sprJustination;
normal[1] = sprJustination_Old;
unlucky = 0;
crazy[0] = sprJustinationCrazy;
crazy[1] = sprJustinationCrazy_Old;
xx = x;
part_alpha = 0.5;
fantom = part_type_create();
part_type_alpha2(fantom, 0, 0);
part_type_sprite(fantom, normal[global.spriteStyle], false, false, false);
part_type_life(fantom, 4, 12);
part_type_speed(fantom, 0.1, 2, 0, 0);
part_type_direction(fantom, 0, 360, 0, 0);
emitter = part_emitter_create(global.portalParticleSystem);
siz = 2;
part_emitter_region(global.portalParticleSystem, emitter, x - siz, x + siz, y - siz, y + siz, pt_shape_circle, ps_distr_gaussian);
event_user(0);
alarm[3] = 60;
sprite_index = normal[global.spriteStyle];
with (instance_create(x, y, objBossName))
{
    name = "Justination";
    owner = objJustination;
}

