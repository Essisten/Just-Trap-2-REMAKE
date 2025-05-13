with (objPlayer) {
//when the player is destroyed, also destroy the bow
with (objBow)
    instance_destroy();
part_type_clear(global.sprintParticles);
part_emitter_clear(global.sprintParticleSystem, global.sprintEmitter);

}
