var h = __view_get( e__VW.HView, 0 );
var w = __view_get( e__VW.WView, 0 );
if (image_index == 4)
{
    if (a)
    {
        draw_set_alpha(0.5);
        draw_rectangle_color(x - h2, y - d, x, y + d, c_red, c_red, c_red, c_red, 0);
        draw_set_alpha(1);
        
        draw_set_blend_mode_ext(bm_inv_dest_color, bm_inv_dest_color);
        draw_rectangle_color(x + 1, y - d, x + h2, y + d, c_white, c_white, c_white, c_white, 0);
        draw_set_color(c_black);
        draw_set_blend_mode(bm_normal);
    }
    if (b)
    {
        draw_set_blend_mode(bm_subtract);
        draw_rectangle_color(x - 600 + 10 * c, y - __view_get( e__VW.HView, 0 ) / 2, x - __view_get( e__VW.WView, 0 ) / 2 + 10 * c, y + __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, c_white, c_black, c_black, c_white, 0);
        draw_rectangle_color(x + __view_get( e__VW.WView, 0 ) / 2 - 10 * c, y - __view_get( e__VW.HView, 0 ) / 2, x+600-10*c, y + __view_get( e__VW.HView, 0 ) / 2, c_black, c_white, c_white, c_black, 0);
        draw_set_blend_mode(bm_normal);
    }
}
else
{
    draw_set_blend_mode(bm_add);
    draw_rectangle_colour(__view_get( e__VW.XView, 0 ), h / 2, __view_get( e__VW.XView, 0 ) + w, __view_get( e__VW.YView, 0 ) + (h - h * (image_alpha + 0.2)) / 2, c_black, c_black, c_red, c_red, false);
    draw_rectangle_colour(__view_get( e__VW.XView, 0 ), h / 2, __view_get( e__VW.XView, 0 ) + w, __view_get( e__VW.YView, 0 ) + (h + h * (image_alpha + 0.2)) / 2, c_red, c_red, c_black, c_black, false);
    draw_set_blend_mode(bm_normal);
}
if (image_index < 3)
{
    draw_set_font(fDefault24);
    draw_set_halign(fa_center);
    draw_set_alpha(image_alpha);
    draw_set_valign(fa_top);
    scrDrawTextOutline(x, y + 56, "Press '" + scrGetKeybind(global.restartButton[0]) + "' to restart", c_maroon, c_black);
    draw_set_alpha(1);
}
draw_self();
if (old < percent and !hide_progress)
{
    draw_set_font(fDefault24);
    draw_set_halign(fa_center);
    draw_set_alpha(image_alpha);
    scrDrawTextOutline(x, y + 110, "Personal Best", c_maroon, c_black);
    scrDrawTextOutline(x, y + 150, string(percent) + "%", c_maroon, c_black);
    draw_set_alpha(1);
}

