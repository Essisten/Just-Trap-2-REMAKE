if (x < (__view_get( e__VW.XView, 0 ) - 320) or x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))
    instance_destroy();
if (done)
    exit;
if (x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2)
{
    x = min(x + 6, __view_get( e__VW.XView, 0 ));
    if (x >= 0)
    {
        done = true;
        alarm[0] = 100;
    }
}
else
{
    x = max(x - 6, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 320);
    if (x <= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 320)
    {
        done = true;
        alarm[0] = 100;
    }
}

