draw_set_alpha(image_alpha);
draw_self();
draw_set_font(fDefault12);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
scrDrawTextOutline(x + xoffset, y + yoffset_name, name, c_white, c_black);
scrDrawTextOutline(x + xoffset, y + yoffset_from, from, c_white, c_black);
draw_set_alpha(1);
draw_set_valign(fa_top);

