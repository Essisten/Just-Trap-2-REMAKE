target.HP += num;
scrPlaySound(sndHeal);
if (!global.particles)
    exit;
part_emitter_region(global.saveParticleSystem, global.saveEmitter, x, x + 32, y, y + 32, pt_shape_square, ps_distr_gaussian);
part_emitter_burst(global.saveParticleSystem, global.saveEmitter, global.saveParticles, 30);
part_emitter_destroy(global.saveParticleSystem, emitterHeal);

