/// @description Real gravity change
gravH = prevGravH;
grav = prevGrav;
if (!instance_exists(objViridian))
{
    with (objPlayer)
        scrSetGrav(other.prevPlayerGrav);
    event_user(0);
    wait = false;
}
else
{
    prevPlayerGrav += choose(1, -1);
    if (prevPlayerGrav > 4)
        prevPlayerGrav = 1;
    if (prevPlayerGrav < 1)
        prevPlayerGrav = 4;
    with (objPlayer)
        scrSetGrav(other.prevPlayerGrav);
}
event_user(6);
act = -1;