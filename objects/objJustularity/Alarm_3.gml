/// @description Smoking
if (!god or !global.particles)
    exit;
var rad = 16;
var upV = 16 * global.grav;
var upH = 0;
if (global.gravH)
{
    upH = upV;
    upV = 0;
}
if (speed > 0)
    part_type_direction(smoke, direction + 150, direction + 210, 0, 0);
else
    part_type_direction(smoke, 0, 360, 0, 0);
part_emitter_region(global.saveParticleSystem, emitter, x - rad + upH, x + rad + upH, y + rad + upV, y - rad + upV, pt_shape_circle, ps_distr_gaussian);
part_emitter_burst(global.saveParticleSystem, emitter, smoke, 10);