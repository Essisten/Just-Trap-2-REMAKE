draw_self();

if (showText)
{
    draw_set_color(color);
    draw_set_font(fDefault12);
    draw_set_halign(fa_center);
    
    var yOffset = string_height(string_hash_to_newline(signText));
    
    scrDrawTextOutline(x+(sprite_width/2),y-yOffset,signText, color, color2);
}

