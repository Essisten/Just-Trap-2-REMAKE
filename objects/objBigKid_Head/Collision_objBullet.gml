if (frozen)
   exit;
if (!instance_exists(bullet))
   bullet = instance_nearest(x, y, objBullet);
HP = clamp(HP - bullet.dmg, 0, 100);
instance_destroy(bullet);
event_user(1);
if (HP <= 0 and !frozen)
{
    event_user(0);
}
scrPlaySound(sndBossHit);

