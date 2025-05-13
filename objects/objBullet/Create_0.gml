//get the bullet's direction based off the direction the player is facing
dmg = 1 - global.difficulty * 0.25;
spd = 16;
bulletDir = 1;
if (instance_exists(objPlayer))
    bulletDir = objPlayer.xScale;

//set the bullet's speed
if (global.gravH)
{
    if (objPlayer.shootUpward)
        hspeed = -spd * global.grav;
    else
        vspeed = bulletDir * -spd;
}
else
{
    if (objPlayer.shootUpward)
        vspeed = -spd * global.grav;
    else
        hspeed = bulletDir * spd;
}

alarm[0] = 50;

