event_inherited();
ready = false;
alarm[0] = 15;
spinDir = choose(-1, 1);
color = c_purple;
if (global.spriteStyle == 1)
{
    sprite_index = sprWarp_Old;
    spinDir = 0;
    color = c_white;
    exit;
}
portalEmitter = part_emitter_create(global.portalParticleSystem);
part_emitter_region(global.portalParticleSystem, portalEmitter, x - 8, x + 8, y - 8, y + 8, pt_shape_circle, ps_distr_linear);
portalParticles = part_type_create();
part_type_life(portalParticles, 5, 40);
part_type_alpha3(portalParticles, 0.8, 0.4, 0);
part_type_direction(portalParticles, 0, 360, 4, 2);
part_type_shape(portalParticles, pt_shape_pixel);
part_type_speed(portalParticles, 0.1, 2, 0.2, 0);
part_type_direction(portalParticles, 0, 360, 4, 0);
part_type_size(portalParticles, 1, 2, 0, 0);

