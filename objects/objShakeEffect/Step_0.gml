if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc;
    if (shake_mag < 0)
        shake_mag = 0;
    __view_set( e__VW.XView, 0, old_x + floor(xFollow/__view_get( e__VW.WView, 0 ))*__view_get( e__VW.WView, 0 ) + random_range(-shake_mag,shake_mag) );
    __view_set( e__VW.YView, 0, old_y + floor(yFollow/__view_get( e__VW.HView, 0 ))*__view_get( e__VW.HView, 0 ) + random_range(-shake_mag,shake_mag) );
}
else
{
    instance_destroy();
}

