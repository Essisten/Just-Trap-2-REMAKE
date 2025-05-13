if (alarm[0] != -1)
   exit;
if (((gravity_direction+90) mod 180) == 0)
{
    if (place_meeting(x + hspeed, y, objBlock))
       event_user(0);
}
else if ((gravity_direction mod 180) == 0)
{
    if (place_meeting(x, y + vspeed, objBlock))
       event_user(0);
}

