/// @description Create block effect
var offset = 16;
with (instance_create(choose(__view_get( e__VW.XView, 0 ) - offset, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + offset),
                    random_range(__view_get( e__VW.YView, 0 ) + 64, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 64),
                   objBigGeezer_BlockEffect))
{
    if (x < __view_get( e__VW.XView, 0 ))
       hspeed = 2;
    else
        hspeed = -2;
}
alarm[4] = 50;

