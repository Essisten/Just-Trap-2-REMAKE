if (objJustrimsonController.dead)
   exit;
if (!instance_exists(bullet))
   bullet = instance_nearest(x, y, objBullet);
if (HP > 0)
   HP -= bullet.dmg * 4;
instance_destroy(bullet);
if (alarm[0] != -1)
   exit;
if (nohit_challenge > 0)
{
    nohit_challenge -= dmg_in;
    if (nohit_challenge < 0)
       nohit_challenge = 0;
    if (dmg_in > 0)
    {
        dmg_in--;
        if (dmg_in <= 0)
           scrPlaySound(sndJustrimsonRage, 1);
    }
}
alarm[3] = 1;
event_user(0);

