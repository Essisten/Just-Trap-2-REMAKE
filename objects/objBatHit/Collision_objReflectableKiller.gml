if (!other.canParry or other.alarm[11] > -1 or other.speed > 16)
   exit;
with (other)
{
    if (hor)
       image_xscale *= -1;
    else if (ver)
       image_yscale *= -1;
}
event_perform(ev_collision, objPlayerKiller);
with (other)
{
    if (rotate)
       image_angle = direction;
}

