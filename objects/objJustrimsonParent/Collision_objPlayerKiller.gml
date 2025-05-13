if (!other.reflected)
   exit;
bullet = other;
bullet.dmg /= 2;
event_perform(ev_collision, objBullet);


