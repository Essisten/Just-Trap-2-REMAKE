/// @description Destroy after time
if (x < __view_get( e__VW.XView, 0 ) or x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) or
   y < __view_get( e__VW.YView, 0 ) or y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
   instance_destroy();
else
    alarm[0] = 50;

