draw_set_halign(fa_center);
if (line >= 5)
   draw_set_font(fGeezer30);
else
    draw_set_font(fDefault24);
scrDrawTextOutline(textX, textY, string_copy(text[line], 0, chars), color, c_black);

