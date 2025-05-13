/// @description Stop
if (y <= __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
{
    speed = 0;
    image_index = 1;
    if (!instance_exists(objShakeEffect))
       scrShakeEffect(8, 0.2, sndSolgrynLaser);
    fire = instance_create(x, y - 80, objCherry);
    with (fire)
    {
        sprite_index = sprPirhanaPlant_Laser;
        image_speed = 0;
        depth = -111;
    }
    alarm[1] = 25;
    exit;
}
alarm[0] = 1;

