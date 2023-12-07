///Initializing particles

global.portalParticleSystem = part_system_create();
global.saveParticleSystem = part_system_create();
global.sprintParticleSystem = part_system_create();
global.topParticleSystem = part_system_create();
part_system_depth(global.portalParticleSystem, 1);
part_system_depth(global.saveParticleSystem, -5);
part_system_depth(global.sprintParticleSystem, -9);
part_system_depth(global.topParticleSystem, -95);

global.saveEmitter = part_emitter_create(global.saveParticleSystem);

global.saveParticles = part_type_create();
part_type_colour1(global.saveParticles, c_green);
part_type_direction(global.saveParticles, 0, 360, 0, 0);
part_type_life(global.saveParticles, 30, 80);
part_type_gravity(global.saveParticles, 0.1, 270);
part_type_speed(global.saveParticles, 2, 3, 0, 0);
part_type_shape(global.saveParticles, pt_shape_spark);
part_type_size(global.saveParticles, 0.1, 0.5, 0, 0);
part_type_alpha3(global.saveParticles, 1, 0.6, 0.2);

global.sprintParticles = part_type_create();
part_type_life(global.sprintParticles, 10, 10);
part_type_alpha2(global.sprintParticles, 0.6, 0);

global.sprintEmitter = part_emitter_create(global.sprintParticleSystem);
