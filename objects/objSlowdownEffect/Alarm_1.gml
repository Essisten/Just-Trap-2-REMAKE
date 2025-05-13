if (room_speed >= 50)
{
    instance_destroy();
    exit;
}
room_speed += 5;
alarm[1] = 1;

