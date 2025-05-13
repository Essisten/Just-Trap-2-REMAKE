if (!instance_exists(owner))
   exit;
other.dmg *= 1.5;
owner.bullet = other;
with (owner)
{
     event_perform(ev_collision, objBullet);
}

