event_inherited();
HP = 4;
rad = 0;
color = c_aqua;
red_dir = 0;
bullet_spd = (global.difficulty + 1) * 1.5;
alarm[0] = 1;
alarm[1] = irandom(50) + 50;
emitter = part_emitter_create(global.topParticleSystem);
effect = part_type_create();
part_type_alpha2(effect, 0.6, 0);
part_type_size(effect, 1, 1, -0.05, 0);
part_type_shape(effect, pt_shape_sphere);
image_speed = 0;
part_emitter_stream(global.topParticleSystem, emitter, effect, -2);

