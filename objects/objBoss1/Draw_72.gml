if (hidden)
   exit;
if (HP <= 0)
{
    draw_set_blend_mode(bm_add);
    draw_set_alpha(0.8);
    draw_ellipse_colour(x - rad * 1.5, y - rad * 1.5, x + rad * 1.5, y + rad * 1.5, color2, c_black, false);
    draw_set_alpha(1);
    draw_set_blend_mode(bm_normal);
}

