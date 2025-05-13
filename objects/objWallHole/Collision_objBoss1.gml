if (!other.hidden or !once or abs(other.oldY - y) > 2 or abs(other.x - x) > 2)
    exit;
event_user(0);
with (other)
{
    event_perform(ev_alarm, 6);
    counter = 0;
}
once = false;
alarm[1] = 150;

