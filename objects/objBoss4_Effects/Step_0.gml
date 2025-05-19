/// @description Moved from draw event

if (side[0] != old[0])
{
    changeW[0] = max(0, changeW[0] - 8);
    if (changeW[0] == 0)
    {
        old[0] = side[0];
        part_emitter_destroy(global.portalParticleSystem, emitter[0]);
    }
}
else
    changeW[0] = min(500, changeW[0] + 8);

if (side[1] != old[1])
{
    changeW[1] = min(500, changeW[1] + 8);
    if (changeW[1] == 500)
    {
        old[1] = side[1];
        part_emitter_destroy(global.saveParticleSystem, emitter[1]);
    }
}
else
    changeW[1] = max(0, changeW[1] - 8);