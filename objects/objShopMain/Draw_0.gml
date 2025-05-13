draw_set_alpha(0.6 * image_alpha);
draw_rectangle_colour(boxStartX + slideOffset, boxStartY, boxEndX + slideOffset, boxEndY, c_black, c_black, c_black, c_black, false);
dick += 2;
draw_set_colour(c_black);
draw_rectangle(coinX, coinY - 8 + slideOffset / 8, 800, 608, false);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_alpha(image_alpha);
draw_sprite(sprCoin, 0, coinX, coinY + slideOffset / 8);
scrDrawTextOutline(coinX + 32, coinY + (590 - coinY) / 2 + slideOffset / 8, global.coins, c_white, c_black);

draw_set_font(fDefault24);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_colour(c_black);
quad(boxStartX + slideOffset, boxStartY + lineSeperation * select,
boxEndX + selectBoxOffset * 2 + slideOffset, boxStartY + lineSeperation * select,
boxStartX - selectBoxOffset * 2 + slideOffset, boxStartY + selectBoxOffset + lineSeperation * (select + 1),
boxEndX + slideOffset, boxStartY + selectBoxOffset + lineSeperation * (select + 1));
draw_set_colour(c_white);
draw_line_width(boxStartX + slideOffset, boxStartY + lineSeperation * select, boxEndX + selectBoxOffset * 2 + slideOffset, boxStartY + lineSeperation * select, 4);
draw_line_width(boxStartX - selectBoxOffset * 2 + slideOffset, boxStartY + selectBoxOffset + lineSeperation * (select + 1), boxEndX + slideOffset, boxStartY + selectBoxOffset + lineSeperation * (select + 1), 4);
draw_line_width(boxStartX + slideOffset, boxStartY + lineSeperation * select, boxStartX - selectBoxOffset * 2 + slideOffset, boxStartY + selectBoxOffset + lineSeperation * (select + 1), 4);
draw_line_width(boxEndX + selectBoxOffset * 2 + slideOffset, boxStartY + lineSeperation * select, boxEndX + slideOffset, boxStartY + selectBoxOffset + lineSeperation * (select + 1), 4);
for (var i = 0; i < optionsNum; i++)
{
    var color;
    if (unlocked[i])
       color = c_white;
    else
       color = c_gray;
    scrDrawTextOutline(lineCenter + slideOffset, boxStartY + lineSeperation * (i) + selectBoxOffset * 2, main[i], color, c_black);
}


