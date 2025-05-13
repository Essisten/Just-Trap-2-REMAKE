if (glow_thicc > 0)
{
    draw_sprite_ext(sprJustrimsonOutline, glow_index, x, y, image_xscale, image_yscale, image_angle, glow_color, glow_thicc);
}
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
var offset = 72;
if (spot == 1 or spot == 4)
   offset = -offset - 24;
if (HP > 0)
   draw_healthbar(x - 32, y + offset, x + 32, y + offset + 4, HP, c_black, color, color, 0, true, true);

