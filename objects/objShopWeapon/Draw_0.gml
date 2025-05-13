draw_set_alpha(0.8 * image_alpha);
draw_rectangle_colour(weaponStartX, weaponStartY -  + slideOffset, weaponEndX, weaponEndY -  + slideOffset, c_black, c_black, c_black, c_black, false);
draw_set_alpha(image_alpha);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

w_id = select * (version[select]+1);
w_index = ds_list_find_index(global.arsenal, w_id);
draw_set_alpha(0.6 * image_alpha);
draw_rectangle_colour(boxStartX + slideOffset, boxStartY, boxEndX + slideOffset, boxEndY, c_black, c_black, c_black, c_black, false);
dick += 2;

draw_set_alpha(image_alpha);
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

draw_text_ext_transformed(weaponNameX, weaponNameY - slideOffset, string_hash_to_newline(weapons[version[select], select].name), 32, weaponDescriptionX - weaponNameX, 1, 1, 0);
if (global.unlockedWeapons[w_id])
{
    draw_set_font(fDefault12);
    scrDrawTextOutline(weaponNameX, weaponNameY + 72 - slideOffset, "Damage: " + weapons[version[select], select].dmg, c_red, c_maroon);
    scrDrawTextOutline(weaponNameX, weaponNameY + 92 - slideOffset, "Range:   " + weapons[version[select], select].range, c_yellow, c_orange);
    scrDrawTextOutline(weaponNameX, weaponNameY + 112 - slideOffset, "Speed:   " + weapons[version[select], select].spd, c_aqua, c_blue);
}
draw_set_colour(c_white);
draw_set_font(fDetermination14);
draw_text_ext_transformed(weaponDescriptionX, weaponDescriptionY - slideOffset, string_hash_to_newline(weapons[version[select], select].description), 20, 780 - weaponDescriptionX, 1, 1, 0);
draw_set_font(fDefault24);
if (global.unlockedWeapons[w_id])
{
    if (global.obtainedWeapons[w_id])
    {
        if (w_index > -1)
            scrDrawTextOutline(weaponNameX, weaponNameY + 160 - slideOffset, "Equipped", c_lime, c_green);
        else
            scrDrawTextOutline(weaponNameX, weaponNameY + 160 - slideOffset, "Not equipped", c_gray, c_dkgray);
    }
    else
    {
        scrDrawTextOutline(weaponNameX + 32, weaponNameY + 160 - slideOffset, weapons[version[select], select].price, c_white, c_gray);
        draw_sprite(sprCoin, 0, weaponNameX, weaponNameY + 160 - slideOffset);
    }
}
else
    scrDrawTextOutline(weaponNameX, weaponNameY + 160 - slideOffset, weapons[version[select], select].require, c_red, c_maroon);
dick += 2;
draw_set_colour(c_white);
draw_set_valign(fa_center);
if (global.unlockedWeapons[w_id])
{
    if (w_id == 0)
       draw_sprite_ext(sprBigWeaponImage, 0, weaponStartX, weaponStartY + (weaponEndY - weaponStartY) / 2 - slideOffset, 1, 1, 0, c_white, image_alpha);
    else
        draw_sprite_ext(sprWeaponImage, w_id, weaponStartX, weaponStartY + (weaponEndY - weaponStartY) / 2 - slideOffset, 3.4, 3.4, 0, c_white, image_alpha);
}
else
   draw_sprite_ext(sprUnknownWeapon, 0, weaponStartX + 8, weaponStartY + (weaponEndY - weaponStartY) / 2 - slideOffset, 9, 9, 0, c_white, image_alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fDefault24);
for (var i = 0; i < optionsNum; i++)
{
    var ident = i * (version[i] + 1);
    var index = ds_list_find_index(global.arsenal, ident);
    var color;
    if (index > -1)
       color = c_green;
    else if (global.obtainedWeapons[ident])
       color = c_white;
    else
       color = c_gray;
    scrDrawTextOutline(lineCenter + slideOffset, boxStartY + selectBoxOffset * 2 + lineSeperation * (i), weapons[version[select], i].name, color, c_black);
}

