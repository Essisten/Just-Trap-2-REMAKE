if (HP <= 0)
   exit;
if (!instance_exists(bullet))
   bullet = instance_nearest(x, y, objBullet);
HP -= bullet.dmg;
instance_destroy(bullet);
scrPlaySound(sndBossHit);
if (HP > 0)
   exit;
totalShoots = 3;
shootCounter = 30;
alarm[1] = 1;
image_index = 1;
scrPlaySound(sndDeath);


