//get the bullet's direction based off the direction the player is facing
dmg = 1 - global.difficulty * 0.25;
bulletDir = 1;
spd = 8 + random(8);
if (instance_exists(objPlayer))
    bulletDir = objPlayer.xScale;
degree = random_range(-2, 2);
//set the bullet's speed
if (global.gravH)
{
    if (objPlayer.shootUpward)
    {
        hspeed = -spd * global.grav;
        vspeed = degree;
    }
    else
    {
        vspeed = bulletDir * -spd;
        hspeed = degree;
    }
}
else
{
    if (objPlayer.shootUpward)
    {
        vspeed = -spd * global.grav;
        hspeed = degree;
    }
    else
    {
        hspeed = bulletDir * spd;
        vspeed = degree;
    }
}

alarm[0] = 5 + irandom_range(0, 6);

