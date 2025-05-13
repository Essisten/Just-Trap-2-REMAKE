draw_set_alpha(reward_alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fDefault18);
scrDrawTextOutline(x, y, "+" + string(fake_reward), c_white, c_black);
draw_sprite(sprCoin, 0, x + reward_length * 9, y - 4);
draw_set_alpha(1);

