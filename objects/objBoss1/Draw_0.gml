sprite_index = sprite[state];
if (HP <= 0)
{
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
if (HP > 0 and !hidden)
{
    draw_set_alpha(1);
    draw_healthbar(x - rad, y - rad, x + rad, y - 68, HP, c_black, color1, color1, 0, true, true);
}

