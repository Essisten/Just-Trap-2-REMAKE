/// @description fuck go back
if (x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2)
{
    x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - (x - __view_get( e__VW.XView, 0 ) + sprite_width);
}
else
{
    x = __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - x - sprite_width);
}
gravity_direction += 180;
direction += 180;

