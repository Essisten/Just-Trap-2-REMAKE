if (!instance_exists(bullet))
   bullet = instance_nearest(x, y, objBullet);
if (objJustrimsonB.HP > 0)
   objJustrimsonB.HP -= bullet.dmg * 8;
instance_destroy(bullet);
//if (objJustrimsonB.alarm[0] != -1)
//   exit;
with (objJustrimsonB)
{
     event_user(0);
    if (nohit_challenge < 0)
       nohit_challenge = 0;
    else
    {
        nohit_challenge -= dmg_in;
        //dmg_in--;
        if (nohit_challenge < 0)
           nohit_challenge = 0;
    }
     //alarm[3] = 1;
}

