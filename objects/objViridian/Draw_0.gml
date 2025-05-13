if (line)
{
    draw_set_alpha(0.2);
    draw_line_width_colour(x, y, x + lengthdir_x(1000, direction), y + lengthdir_y(1000, direction), 8, c_white, c_white);
    draw_set_alpha(1);
}
draw_set_blend_mode(bm_add);
var rad = 96 + sin(degtorad(d)) * 16;
draw_ellipse_colour(x - rad, y - rad, x + rad, y + rad, c_black, image_blend, false);
draw_set_blend_mode(bm_normal);
draw_self();

