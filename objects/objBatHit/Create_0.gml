event_inherited();
dmg /= 2;
sound = -1;
speed = 2;
image_alpha = 0.8;
alarm[0] = 5;
old_dir = direction;
if (instance_exists(objPlayer))
{
    image_angle = objPlayer.image_angle;
    if (objPlayer.shootUpward)
    {
       image_angle += 90 * global.grav;
    }
    else
       image_xscale = objPlayer.xScale;
    image_yscale = global.grav;
    if (global.gravH or !objPlayer.shootUpward)
       hspeed += objPlayer.hspeed;
    if (objPlayer.shootUpward or global.gravH)
       vspeed += objPlayer.vspeed;
}

