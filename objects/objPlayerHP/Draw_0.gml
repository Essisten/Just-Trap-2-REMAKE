if (!instance_exists(objPlayer))
   exit;
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(fDefault12);
draw_set_alpha(image_alpha);
if (state == 2)
    scrDrawTextOutline(x + offset_x, y - 24 + offset_y, objPlayer.HP, color[state], color2[state]);
else
    scrDrawTextOutline(x, y - 24, objPlayer.HP, color[state], color2[state]);
draw_sprite_ext(sprPlayerHeart, 0, x - 12, y - 24, 2, 2, 0, c_white, image_alpha);
draw_set_alpha(1);

