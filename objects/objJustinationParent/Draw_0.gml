if (active)
{
    image_blend = c_white;
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
}
else
{
    image_blend = c_black;
    image_alpha = 1;
}
draw_self();
shader_reset();
if (active and HP > 0)
    draw_healthbar(x - 32, oldY - 90, x + 32, oldY - 86, HP, c_black, colorHP, colorHP, 0, true, true);

