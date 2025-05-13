/*
if (!surface_exists(surface) and alarm[3] == -1)
{
    instance_activate_all();
    alarm[3] = 1;
    exit;
}*/
if (counter > 0)
{
    if (surface_exists(surface))
       draw_surface(surface, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    draw_set_alpha(0.5);
    draw_set_color(c_white);
    draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ),
    __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), false);
    draw_set_alpha(1);
    window_set_caption(global.roomCaptionLast + " (Not Responding)");
}

/* */
/*  */
