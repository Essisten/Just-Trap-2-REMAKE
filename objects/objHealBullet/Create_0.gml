emitterHeal = part_emitter_create(global.saveParticleSystem);

particleHeal = part_type_create();
part_type_shape(particleHeal,pt_shape_flare);
part_type_color3(particleHeal,8454016,65408,65280);
part_type_alpha3(particleHeal,0.8000,0.4000,0.1000);
part_type_life(particleHeal,40,50);
part_type_size(particleHeal,0.2107,0.3692,0.0031,-0.0010);
part_type_speed(particleHeal,0,0.2000,0.0211,0.0392);
part_type_direction(particleHeal,0,360,0.2521,-0.8141);
part_type_orientation(particleHeal,0,360,-1.8293,2.1906,0);
part_type_gravity(particleHeal,0,270);
part_type_blend(particleHeal,true);

//part_emitter_region(global.saveParticleSystem,emitterHeal,x - 4, x + 4, y - 4, y + 4, ps_shape_ellipse,ps_distr_invgaussian);
//part_emitter_stream(global.saveParticleSystem,emitterHeal,particleHeal,2);

target = objJR;
num = 0;
speed = 10;
direction = point_direction(x, y, target.x, target.y);

