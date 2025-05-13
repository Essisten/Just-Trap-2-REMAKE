/// @description Move the view
alarm[0] = 1;
if (__view_get( e__VW.XView, 0 ) > 0)
   __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (4) );
else if (__view_get( e__VW.YView, 0 ) > 0)
     __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (4) );
else
{
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, 0 );
    alarm[1] = 25;
    alarm[0] = -1;
    with (instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ),
                      __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 192, objCard))
    {
        y = __view_get( e__VW.YView, 0 );
        image_index = objBigKid_BG.phase + 4;
    }
}

