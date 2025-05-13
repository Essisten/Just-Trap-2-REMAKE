with (other) {
draw_set_font(font);
draw_set_alpha(alpha);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
scrDrawTextOutline(x, y, text, color[0], color[1]);
draw_set_alpha(1);

}
