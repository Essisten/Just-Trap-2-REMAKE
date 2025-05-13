/// @description After init
if (xflip)
{
    image_xscale *= -1;
    xoffset *= -1;
    align = fa_right;
}
if (yflip)
{
    image_yscale *= -1;
    yoffset_name *= -1;
    yoffset_from *= -1;
    var tmp = yoffset_name;
    yoffset_name = yoffset_from;
    yoffset_from = tmp;
}

