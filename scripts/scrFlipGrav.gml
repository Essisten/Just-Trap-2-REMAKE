///flips the current gravity

//set gravity
global.grav = -global.grav;

//flip the player
with (objPlayer)
{
    djump = 1;
    vspeed = 0;
    hspeed = 0;
    jump = abs(jump) * global.grav;
    jump2 = abs(jump2) * global.grav;
    gravity = abs(gravity) * global.grav;
    
    scrSetPlayerMask();
    if (global.gravH)
        x += 4 * global.grav;
    else
        y += 4 * global.grav;
}
