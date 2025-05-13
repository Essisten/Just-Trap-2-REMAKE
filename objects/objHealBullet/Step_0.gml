if (!target.hidden and target.HP > 0)
    direction = point_direction(x, y, target.x, target.y);
else
{
    if (target == objJR)
        target = objJustist;
    else
        target = objJR;
}
if (abs(x - target.x) < (speed * 2) and abs(y - target.y) < (speed * 2))
    instance_destroy();
if (!global.particles)
    exit;
part_emitter_region(global.saveParticleSystem,emitterHeal,x - 16, x + 16, y - 16, y + 16, ps_shape_ellipse,ps_distr_invgaussian);
part_emitter_burst(global.saveParticleSystem, emitterHeal, particleHeal, 4);

