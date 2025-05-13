draw_set_blend_mode(bm_add);
if (vGrad > 0)
{
    draw_rectangle_colour(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2 - vGrad, c_black, c_black, c_ltgray, c_ltgray, false);
    draw_rectangle_colour(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2 + vGrad, c_ltgray, c_ltgray, c_black, c_black, false);
}
draw_set_blend_mode(bm_normal);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fBoss1_46);
scrDrawTextOutline(__view_get( e__VW.XView, 0 ) + hText, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2, "Stage   " + string(stage) + "#Clear", c_white, c_red);

