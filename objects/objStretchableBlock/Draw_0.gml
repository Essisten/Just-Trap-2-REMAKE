for (var i = 0; i < image_yscale; i++)
{
    for (var k = 0; k < image_xscale; k++)
    {
        draw_sprite_ext(sprite_index, image_index,
        x + k * sprite_get_width(sprite_index),
        y + i * sprite_get_height(sprite_index),
        1, 1, image_angle, image_blend, image_alpha);
    }
}

