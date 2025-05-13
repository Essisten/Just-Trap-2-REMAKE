image_angle -= sign(hspeed) * 4;
if (y > 480)
   direction = 90 + sign(hspeed) * -25;
if (x < 160 and hspeed < 0)
{
    hspeed *= -1;
    direction = 90 + sign(hspeed) * -25;
}
if (x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 64)
   instance_destroy();

