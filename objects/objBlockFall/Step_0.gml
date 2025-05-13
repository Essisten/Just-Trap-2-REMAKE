if (vspeed == 0 && instance_exists(objPlayer))
{
    if (place_meeting(x,y-objPlayer.vspeed-(global.grav),objPlayer))
        vspeed = 2; //touching the player, start falling
}

event_inherited();  //movement checks

