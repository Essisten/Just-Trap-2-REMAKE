/// @description snap view to the section of the room that the player's in

if(instance_exists(objPlayer))
{
    var xFollow = objPlayer.x;
    var yFollow = objPlayer.y;
    
    if (!leaveRoom)
    {
        xFollow = clamp(xFollow,0,room_width-1); 
        yFollow = clamp(yFollow,0,room_height-1);   
    }
    
    __view_set( e__VW.XView, 0, floor(xFollow/__view_get( e__VW.WView, 0 ))*__view_get( e__VW.WView, 0 ) );
    __view_set( e__VW.YView, 0, floor(yFollow/__view_get( e__VW.HView, 0 ))*__view_get( e__VW.HView, 0 ) );
}

