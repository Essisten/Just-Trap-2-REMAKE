draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_alpha(alpha);
draw_set_font(fDefault24);
draw_set_colour(c_black);
draw_set_alpha(alpha * 0.5);
draw_rectangle(x - w, y, x + w, y + h, false);
draw_set_alpha(alpha);
scrDrawTextOutline(x, y, "F1 for help", c_white, c_black);
//draw_sprite_ext(sprPlayerIdleUp, 0, x, y + 96, 4, 4, 0, c_white, alpha);
draw_set_alpha(1);

