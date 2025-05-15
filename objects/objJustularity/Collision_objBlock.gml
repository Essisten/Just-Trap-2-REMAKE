var distH = 0//30 * sign(hspeed);
var distV = 0//42 * sign(vspeed);
if (!place_free(x+hspeed+distH,y))
{
    if (grav == 1)   //normal
    {
        if(hspeed <= 0)
            move_contact_solid(180,abs(hspeed));
        else
            move_contact_solid(0,abs(hspeed));
    }
    else    //flipped
    {
        if(hspeed < 0)
            move_contact_solid(180,abs(hspeed));
        else
            move_contact_solid(0,abs(hspeed));
    }
    hspeed = 0;
    if (jumping)
    {
        jumping = false;
        if (gravH)
            destination = y;
        else
            destination = x;
    }
}
if (!place_free(x,y+vspeed+distV))
{
    if (grav == 1)   //normal
    {
        if(vspeed <= 0)
            move_contact_solid(90,abs(vspeed));
        else
            move_contact_solid(270,abs(vspeed));
    }
    else    //flipped
    {
        if(vspeed < 0)
            move_contact_solid(90,abs(vspeed));
        else
            move_contact_solid(270,abs(vspeed));
    }
    vspeed = 0;
    if (jumping)
    {
        jumping = false;
        if (gravH)
            destination = y;
        else
            destination = x;
    }
}