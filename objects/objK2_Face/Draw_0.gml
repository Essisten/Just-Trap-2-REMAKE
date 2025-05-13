if (global.spriteStyle == 0)
    draw_self();
if (counter > 50)
{
    draw_set_font(fBoss1_46);
    draw_set_halign(fa_center);
    scrDrawTextOutline(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, 128, "To Be Continued", c_black, c_white);
}

