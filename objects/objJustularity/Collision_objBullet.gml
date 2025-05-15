if (god)
    exit;
alarm[3] = 1;
if (!instance_exists(bullet))
   bullet = instance_nearest(x, y, objBullet);
var dmg = bullet.dmg * 2;//(11 - global.difficulty * 3);
instance_destroy(bullet);
var heal = (5 + global.difficulty * 5);
var temp1 = RedHP;
var temp2 = BlueHP;
if (phase == 2)
{
    temp1 = maxHP[0];
    temp2 = maxHP[1];
}
if (global.difficulty == 3)
    heal = 100;
if (isRed)
{
    if (temp1 > 0)
    {
        temp1 = max(temp1 - dmg, 0);    
        scrPlaySound(sndBoss2_Damage);
        if (temp1 <= 75 and alarm[7] == -1)
            alarm[7] = 1;
    }
    else
    {
        temp2 = min(temp2 + heal, 100);
        scrPlaySound(sndHeal);    
        if (global.particles)
        {
            part_emitter_region(global.saveParticleSystem, global.saveEmitter, x, x + 32, y, y + 32, pt_shape_square, ps_distr_gaussian);
            part_emitter_burst(global.saveParticleSystem, global.saveEmitter, global.saveParticles, 30);
        }
    }
}
else
{
    if (temp2 > 0)
    {
        temp2 = max(temp2 - dmg, 0); 
        scrPlaySound(sndBoss2_Damage);
        if (temp2 <= 75 and alarm[7] == -1)
            alarm[7] = 1;
    }
    else
    {
        temp1 = min(temp1 + heal, 100);
        scrPlaySound(sndHeal);        
        if (global.particles)
        {
            part_emitter_region(global.saveParticleSystem, global.saveEmitter, x, x + 32, y, y + 32, pt_shape_square, ps_distr_gaussian);
            part_emitter_burst(global.saveParticleSystem, global.saveEmitter, global.saveParticles, 30);
        }
    }
}
if (phase == 1)
{
    RedHP = temp1;
    BlueHP = temp2;
    with (objBoss2HP)
    {
        event_user(0);
    }
    if (temp1 <= 0 and temp2 <= 0)
    {
        event_user(3);
        alarm[7] = -1;
    }
}
else
{
    if (isRed)
    {
        maxHP[0] = temp1;
        objBoss2HP.HP[2] = maxHP[0];
    }
    else
    {
        maxHP[1] = temp2;
        objBoss2HP.HP[3] = maxHP[1];
    }
    if ((temp1 <= 0 and isRed) or (temp2 <= 0 and !isRed))
        event_user(2);
}