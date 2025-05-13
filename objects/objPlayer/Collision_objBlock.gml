
if (!place_free(x+hspeed,y))
{
    if (global.grav == 1)   //normal
    {
        if(hspeed <= 0)move_contact_solid(180,abs(hspeed))
        if(hspeed > 0) move_contact_solid(0,abs(hspeed))
    }
    else    //flipped
    {
        if(hspeed < 0){move_contact_solid(180,abs(hspeed));}
        if(hspeed >= 0){move_contact_solid(0,abs(hspeed));}
    }
    hspeed = 0;
}
if (!place_free(x,y+vspeed))
{
    if (global.grav == 1)   //normal
    {
        if(vspeed <= 0)move_contact_solid(90,abs(vspeed));
        if(vspeed > 0)
        {
            move_contact_solid(270,abs(vspeed));
            djump = 1;
        }
    }
    else    //flipped
    {
        if(vspeed <= 0)
        {
            move_contact_solid(90,abs(vspeed));
            djump = 1;
        }
        if(vspeed > 0) move_contact_solid(270,abs(vspeed))
    }
    vspeed = 0;
}
if (!place_free(x+hspeed,y+vspeed))
   hspeed = 0;

