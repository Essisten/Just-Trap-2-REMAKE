/// @description Freezing
counter++;
if (counter == 2)
{
    instance_create(__view_get( e__VW.XView, 0 ) + 16, __view_get( e__VW.YView, 0 ) + 16, objNoRespond);
    exit;
}
alarm[1] = 100;

