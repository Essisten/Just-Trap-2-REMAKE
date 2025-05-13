if (scrButtonCheckPressed(global.menuOptionsButton) or scrButtonCheckPressed(global.menuBackButton))
{
    event_user(0);
}
draw_self();
draw_sprite_ext(sprNoRespond_Body, 0, x, y + (bodyY * image_yscale), image_xscale, image_yscale, 0, c_white, image_alpha);

