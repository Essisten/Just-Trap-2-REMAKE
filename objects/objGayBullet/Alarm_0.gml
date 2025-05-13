/// @description Cool effect
alarm[0] = 1;
image_angle = direction;
part_type_orientation(objBigKid_BG.gay_effect, direction, direction, 0, 0, 0);
part_emitter_region(global.topParticleSystem, objBigKid_BG.emitter, x, x, y, y, pt_shape_pixel, ps_distr_linear);
part_emitter_burst(global.topParticleSystem, objBigKid_BG.emitter, objBigKid_BG.gay_effect, 1);

