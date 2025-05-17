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

