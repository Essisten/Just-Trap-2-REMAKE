/// @description Particle starting
image_blend = color;
if (!global.particles or global.spriteStyle == 1)
    exit;
part_type_colour1(portalParticles, color);
part_emitter_stream(global.portalParticleSystem, portalEmitter, portalParticles, 2);

