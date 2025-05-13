/// @description Revive

if (hidden)
{
    alarm[7] = 50;
    exit;
}
if (HP >= 100 or energy == 0)
{
    extraBulletsCounter -= 1 + global.difficulty * 2;
    exit;
}
HP++;
energy--;
if (reviveSound)
{
    reviveSound = false;
}
if (energy mod 2 == 0)
   scrPlaySound(sndHeal, 0.8);
alarm[7] = 5;
if (!global.particles)
    exit;
part_emitter_region(global.saveParticleSystem, emitterRevive,x - 8, x + 8, y - 8, y + 8, ps_shape_ellipse,ps_distr_gaussian);
part_emitter_burst(global.saveParticleSystem, emitterRevive, particleRevive, 2);

