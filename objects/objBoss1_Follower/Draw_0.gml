if (!instance_exists(owner))
   exit;
   
if (owner.HP <= 0)
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

