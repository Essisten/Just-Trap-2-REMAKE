if (!instance_exists(bullet))
   bullet = instance_nearest(x, y, objBoss4_BigBullet);
if (!instance_exists(bullet) or bullet.target.id != self.id or !active)
   exit;
if (godmode)
{
    instance_destroy(bullet);
    exit;
}
var heal = bullet.doHeal;
instance_destroy(bullet);
if (HP > 0 and !heal)
{
    HP -= 4 - global.difficulty;
    if (HP > 0)
        scrPlaySound(sndBossHit);
    else
        scrPlaySound(sndDeath);
    with (objJustination)
    {
        for (var i = 0; i < 2; i++)
        {
            with (spikes[i])
                event_user(0);
        }
    }
    //godmode = true;
    //alarm[10] = 50;
    //alarm[9] = 5;
}
else if (!objJustination.active)
{
    scrPlaySound(sndHeal);
    for (var i = 0; i < 4; i++)
    {
        with (ds_list_find_value(objJustination.parts, i))
        {
            if (HP > 0)
                HP = min(100, HP + global.difficulty * 2 + 2);
            if (global.difficulty >= 3)
                HP = 100;
        }
    }
    if (global.particles)
    {
        part_emitter_region(global.saveParticleSystem, global.saveEmitter, x, x + 32, y, y + 32, pt_shape_square, ps_distr_gaussian);
        part_emitter_burst(global.saveParticleSystem, global.saveEmitter, global.saveParticles, 50);
    }
}
else
{
    scrPlaySound(sndHeal);
    if (HP > 0)
        HP = min(100, HP + global.difficulty * 2 + 2);
    if (global.difficulty >= 3)
        HP = 100;    
    if (global.particles)
    {
        part_emitter_region(global.saveParticleSystem, global.saveEmitter, x, x + 32, y, y + 32, pt_shape_square, ps_distr_gaussian);
        part_emitter_burst(global.saveParticleSystem, global.saveEmitter, global.saveParticles, 50);
    }
}
if (!objJustination.active)
{
    with (objJustination)
        event_user(1);
}

