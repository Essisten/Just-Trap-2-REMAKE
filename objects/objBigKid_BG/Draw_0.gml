if (color[phase] == -1)
{
    sprite_index = BG[phase];
    switch (phase)
    {
        case 3:
            draw_sprite(sprBigKid_SolgrynBG2, 0, x, y);
            for (var i = 0; i <= (height / 32) - 1; i++)
            {
                for (var k = 0; k <= (width / 32) - 1; k++)
                {
                    draw_sprite(sprBigKid_SolgrynBG3, 0, x + 32 * k + (dick mod 32), y + 32 * i + (dick mod 32));
                }
            }
            dick += 0.5;
            break;
        case 5:
             image_xscale = (right_wall.x - x + 32) / 800;
             image_yscale = (bottom_wall.y - y + 32) / 533;
             break;
    }
    draw_self();
}
else
{
    draw_set_color(color[phase]);
    draw_rectangle(x, y, x + width, y + height, false);
}
if (global.spriteStyle == 0)
{
    draw_set_font(fDefault30);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    scrDrawTextOutline(x, y - 64, name[phase], c_white, c_gray);
}

