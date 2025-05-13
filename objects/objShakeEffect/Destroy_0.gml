
if surface_exists(surface)
   surface_free(surface);
application_surface_draw_enable(true);
__view_set( e__VW.XView, 0, old_x );
__view_set( e__VW.YView, 0, old_y );

