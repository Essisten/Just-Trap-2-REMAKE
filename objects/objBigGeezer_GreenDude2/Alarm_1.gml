/// @description Fly
if (x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2)
{
    vspeed = 0;
    exit;
}
vspeed = choose(1, -1) * (global.difficulty + 1);
if ((y < 224 and sign(vspeed) < 0) or
   y > 448 and sign(vspeed) > 0)
{
    vspeed *= -1;
}
alarm[1] = 20;

