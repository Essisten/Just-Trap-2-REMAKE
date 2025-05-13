if (lightY > 0)
{
    draw_set_blend_mode(bm_add);
    draw_rectangle_colour(x, y + sprite_height, x + sprite_width - 1, y + sprite_height - lightY, c_black, c_black, clr[sel], clr[sel], false);
    draw_set_blend_mode(bm_normal);
}
if (global.selectedBoss == sel)
{
    if (lightY < 16)
        lightY++;
}
else
{
    if (lightY > 0)
        lightY--;
}

