if (hidden)
   exit;
if (HP > 0)
{
    draw_set_blend_mode(bm_add);
    draw_set_alpha((0.7 - HP / 100) * image_alpha);
    draw_ellipse_colour(x - rad, y - rad, x + rad, y + rad, color2, c_black, false);
    draw_set_alpha(1);
    draw_set_blend_mode(bm_normal);
}

