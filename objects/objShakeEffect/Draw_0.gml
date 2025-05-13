/// @description Thanks to Just and Kelvar <3
if (global.screenshakePower == 1)
    exit;
surface_free(surface);
surface = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
surface_set_target(surface);
var v_w = __view_get( e__VW.WView, 0 );
var v_h = __view_get( e__VW.HView, 0 );
draw_clear_alpha(c_black, 0);
surface_copy(surface, __view_get( e__VW.XView, 0 ) - old_x, __view_get( e__VW.YView, 0 ) - old_y, application_surface);
surface_reset_target();
for (i = 0; i < 5; i++)
{    
    draw_surface_ext(surface, round(__view_get( e__VW.XView, 0 )/v_w)*v_w + (__view_get( e__VW.XView, 0 )-round(__view_get( e__VW.XView, 0 )/v_w)*v_w),
    round(__view_get( e__VW.YView, 0 )/v_h)*v_h + (__view_get( e__VW.YView, 0 )-round(__view_get( e__VW.YView, 0 )/v_h)*v_h),
    1, 1, 0, c_white, (5 - i)/6);
    
   draw_surface_ext(surface, __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.XView, 0 )-round(__view_get( e__VW.XView, 0 )/v_w)*v_w) - old_x,
   __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.YView, 0 )-round(__view_get( e__VW.YView, 0 )/v_h)*v_h) - old_y,
   1, 1, 0, c_white, (5 - i)/6);
}

