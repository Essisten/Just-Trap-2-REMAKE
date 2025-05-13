/// @description Release laser
if (!instance_exists(beam))
{
    beam = instance_create(x, y, objJustrimsonB_LaserBeam);
    beam.image_angle = image_angle;
    alarm[1] = 1;
    if (instance_exists(objShakeEffect))
    {
        instance_destroy(objShakeEffect);
        __view_set( e__VW.XView, 0, 0 );
        __view_set( e__VW.YView, 0, 0 );
    }
    scrShakeEffect(5 * (global.difficulty + 1), 0.1 * (global.difficulty + 1));
    with (objJustrimsonB)
    {
        if (HP > 50)
            laser_sound = scrPlaySound(sndAngelLaser, 1);
        else
            laser_sound = scrPlaySound(sndAngelLaser2, 1);
    }
}
else
{
    if (beam.image_xscale < size)
    {
        with (beam)
            image_xscale += 0.5;
        alarm[1] = 1;
    }
    else
    {
        alarm[3] = 25;
        beam.alarm[0] = 50;
    }
}

