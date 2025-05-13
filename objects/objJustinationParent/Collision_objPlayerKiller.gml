if (!other.reflected or !active)
   exit;
bullet = other;
bullet.target = self;
bullet.doHeal = false;
event_perform(ev_collision, objBoss4_BigBullet);
godmode = true;
alarm[10] = 50;
alarm[9] = 5;

