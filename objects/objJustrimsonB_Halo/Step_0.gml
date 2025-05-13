/// @description you are filled with determination !!
if (gravity > 0)
   exit;
if (instance_exists(objPlayer))
{
    x = objPlayer.x;
    y = objPlayer.y;
    image_xscale = objPlayer.xScale * xscale;
    if (global.gravH)
        image_angle = 90;
    else
        image_angle = 0;
    if (global.grav == 1)   //normal
    {
        image_yscale = yscale;
    }
    else    //flipped
    {
        image_yscale = -yscale;
        y += 1; //need to draw the sprite a pixel off when flipped
    }
}
else
{
    instance_destroy();
}

