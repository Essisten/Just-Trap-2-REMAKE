draw_set_alpha(alpha);
draw_set_colour(color);
xx = __view_get( e__VW.XView, 0 );
yy = __view_get( e__VW.YView, 0 );
draw_rectangle(xx, yy, xx + w, yy + h, false);
draw_set_colour(c_white);
draw_set_alpha(1);
if (darker)
{
    alpha += spd;
    if (alpha > 1)
        instance_destroy();
}
else
{
    alpha -= spd;
    if (alpha < 0)
        instance_destroy();
}

