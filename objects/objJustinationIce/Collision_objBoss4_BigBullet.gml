event_inherited();
if (HP <= 0)
{
    with (objBoss4_Effects)
    {
        part_emitter_destroy(global.portalParticleSystem, emitter[0]);
        part_emitter_destroy(global.saveParticleSystem, emitter[1]);
    }
    with (objJustination)
    {
        for (var i = 0; i < block_count; i++)
        {
            with (blocks[i])
                event_user(0);
        }
    }
}

