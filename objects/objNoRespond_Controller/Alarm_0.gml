/// @description Slowdown
room_speed -= 5;
global.smoothingMode = 0;
if (room_speed <= 5)
{
    instance_deactivate_all(true);
    audio_pause_all();
    room_speed = 50;
    counter++;
    surface_copy(surface, 0, 0, application_surface);
    alarm[1] = 100;
    exit;
}
alarm[0] = 50 - room_speed;

