event_inherited();
if (owner.HP < 100 and owner.HP > 0)
{
    draw_set_blend_mode(bm_add);
    draw_sprite_ext(sprBoss1BowLight, image_index, x, y, image_xscale, image_yscale, 0, color, 0.8 * abs(1 - owner.HP / 100) * sin(degtorad(d)));
    draw_set_blend_mode(bm_normal);
}

