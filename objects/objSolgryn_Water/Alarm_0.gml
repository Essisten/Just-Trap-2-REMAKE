/// @description Stop when on top
if (y < __view_get( e__VW.YView, 0 ) + 160)
{
    gravity_direction = 270;
    gravity = 0.05 * (global.difficulty + 1);
    speed /= global.difficulty + 1;
    exit;
}
alarm[0] = 1;

