dick += 2;
y = oldY + sin(degtorad(dick)) * 32;
if (dick > 360)
   dick -= 360;
if (global.spriteStyle == 0 and global.particles)
{
    part_emitter_region(global.topParticleSystem, emitter, x, x, y, y, pt_shape_pixel, ps_distr_linear);
    part_emitter_burst(global.topParticleSystem, emitter, effect, 1);
    
    
    var offset = 16;
    part_emitter_region(global.topParticleSystem, objBigGeezer_Head.emitter,
    x - offset, x + offset, oldY - offset, oldY + offset, pt_shape_square, ps_distr_invgaussian);
    part_emitter_stream(global.topParticleSystem, objBigGeezer_Head.emitter, objBigGeezer_Head.effect, -20);
}

