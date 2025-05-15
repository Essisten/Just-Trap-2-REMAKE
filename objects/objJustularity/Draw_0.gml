if ((RedHP <= 0 and isRed) or (BlueHP <= 0 and !isRed) or phase == 2)
{
    var rad = 96 + sin(degtorad(d)) * 16;
    var clr = c_teal;
    if (isRed)
        clr = c_maroon;
    draw_set_blend_mode(bm_add);
    draw_ellipse_colour(x - rad, y - rad, x + rad, y + rad, clr, c_black, false);
    draw_set_blend_mode(bm_normal);
    if (global.enableShaders == 0)
        image_blend = c_black;
    else
    {
        shader_set(shdGrayscale);
        shader_set_uniform_f(global.shdGrayscaleBrightness, global.bossDeathBrightness);
    }
}
draw_self();
shader_reset();