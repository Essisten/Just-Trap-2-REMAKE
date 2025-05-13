event_inherited();
if (active)
{
    part_emitter_region(global.portalParticleSystem, emitter, x - siz + random_range(-4, 0), x + siz + random_range(0, 4), oldY - siz, oldY + siz, pt_shape_circle, ps_distr_gaussian);
}

