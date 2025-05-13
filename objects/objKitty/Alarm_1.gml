/// @description Stop and bounce
if (y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
   instance_destroy();
vspeed = -global.difficulty;
hspeed = (global.difficulty + 1) / 2 * choose(1, -1);
alarm[1] = 50;
if ((x < __view_get( e__VW.XView, 0 ) and hspeed < 0) or (x > __view_get( e__VW.XView, 0 ) + 600 and hspeed > 0))
   hspeed *= -1;

