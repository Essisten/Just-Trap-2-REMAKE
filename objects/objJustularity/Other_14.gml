/// @description Start phase 2
phase = 2;
image_speed = 0.2;
prevAct = 1;
waitTime *= 2;
j[1] = instance_copy(false);
with (j[1])
{
    if (gravH)
        destination = y;
    else
        destination = x;
    isRed = !other.isRed;
    prevGrav = -other.prevGrav;
    side = other.side + 2;
    if (side > 4)
        side -= 4;
    event_user(6);
    alarm[5] = 1;
    alarm[0] = -1;
    j[1] = self.id;
    j[0] = other.id;
}
if (j[1].isRed)
   j[1].waitTime *= 0.8;
else
    waitTime *= 0.8;