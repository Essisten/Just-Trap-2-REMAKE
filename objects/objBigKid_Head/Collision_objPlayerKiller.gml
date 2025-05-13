if (!other.reflected or frozen)
   exit;
if (alarm[0] > -1)
{
    instance_destroy(other);
    exit;
}
bullet = other;
bullet.dmg /= 2;
event_perform(ev_collision, objBullet);
alarm[0] = 1;
with (objBigGeezer_Head)
{
    event_perform(ev_alarm, 3);
    alarm[1] = -1;
    alarm[2] = -1;
}

