if (HP > 0)
{
    var posHP = x + width * (HP / maxHP);
    var oldPosHP = x + width * (oldHP / maxHP);
    switch (type)
    {
        case 7:
             
             break;
        default:
            draw_set_color(c_black);
            draw_rectangle(x - border, y - border, x + width + border, y + height + border, false);
            if (global.spriteStyle == 0)
            {
                draw_set_color(c_red);
                draw_rectangle(posHP, y, oldPosHP, y + height, false);
            }
            draw_set_color(colorHP[objBigKid_BG.phase]);
            draw_rectangle(x, y, posHP, y + height, false);
            break;
    }
}
if (objBigKid_BG.phase == 2 and global.spriteStyle == 0)
{
    draw_set_font(fDefault24);
    scrDrawTextOutline(__view_get( e__VW.XView, 0 ) + 16, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 32, "Deaths: " + string(global.death), c_white, c_black);
    draw_set_halign(fa_right);
    scrDrawTextOutline(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 16, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 32, "Difficulty: " + gayDiff[global.difficulty], c_white, c_black);
}
draw_rectangle_colour(__view_get( e__VW.XView, 0 ), objBigKid_BG.left_wall.y, objBigKid_BG.left_wall.x + 32, objBigKid_BG.left_wall.y + objBigKid_BG.left_wall.image_yscale * 32, c_black, c_black, c_black, c_black, false);

