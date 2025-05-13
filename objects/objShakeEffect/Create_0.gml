leaveRoom = true;  //sets whether the camera can follow the player outside of the room's boundaries
shake_mag = 0;
shake_mag_acc = 0;
surface = -1;
if (global.screenshakePower == 2)
    surface = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
old_x = __view_get( e__VW.XView, 0 );
old_y = __view_get( e__VW.YView, 0 );
xFollow = 0;
yFollow = 0;
if (instance_exists(objPlayer))
{
    xFollow = max(objPlayer.x, old_x);
    yFollow = max(objPlayer.y, old_y);
}
xFollow = clamp(xFollow, old_x, old_x + room_width-1); 
yFollow = clamp(yFollow, old_y, old_y + room_height-1);

