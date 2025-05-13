if (room_speed <= spd)
{
   alarm[1] = time;
   exit;
}
if (type == 1)
   room_speed = spd;
else
    room_speed -= 5;
alarm[0] = 1;


