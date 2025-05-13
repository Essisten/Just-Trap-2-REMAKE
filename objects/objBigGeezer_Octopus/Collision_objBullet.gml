if (HP <= 0)
   exit;
if (!instance_exists(bullet))
   bullet = instance_nearest(x, y, objBullet);
HP -= bullet.dmg;
instance_destroy(bullet);
if (HP <= 0)
    event_user(0);
scrPlaySound(sndBossHit, 1.4);

