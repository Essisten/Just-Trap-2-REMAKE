move_contact_solid(direction, speed);
gravity = 0.3;
speed /= 5;
dmg /= 5;
gravity_direction = 180 + 90 * global.grav;
if (global.particles)
{
    part_type_direction(global.bulletBounceEffect, direction + 90, direction + 270, 0, 0);
    part_emitter_region(global.sprintParticleSystem, global.bulletBounceEmitter, x + hspeed, x + hspeed, y + vspeed / 2, y + vspeed / 2, global.bulletBounceEffect, ps_distr_linear);
    part_emitter_burst(global.sprintParticleSystem, global.bulletBounceEmitter, global.bulletBounceEffect, 1);
}
if (global.gravH)
   gravity_direction += 90;
direction += 90 + random(180);
alarm[0] = 1;

