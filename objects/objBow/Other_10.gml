/// @description stay with the player

if (instance_exists(objPlayer))
{
    x = objPlayer.x;
    y = objPlayer.y;
    image_xscale = objPlayer.xScale;
    if (global.gravH)
        image_angle = 90;
    else
        image_angle = 0;
    if (global.grav == 1)   //normal
    {
        image_yscale = 1;
    }
    else    //flipped
    {
        image_yscale = -1;
        y += 1; //need to draw the sprite a pixel off when flipped
    }
}
else
{
    instance_destroy();
}

