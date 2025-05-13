image_angle += rotate_speed;
if (speed > spd)
   speed = spd;
if (x < __view_get( e__VW.XView, 0 ) or x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) or y < __view_get( e__VW.YView, 0 ) or y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
{
    if ((alarm[1] == -1 and !endless) or !instance_exists(objJustrimsonA))
    {
       instance_destroy();
    }
    else if (objJustrimsonA.HP <= 50 or endless)
        event_user(0);
}

