draw_set_alpha(0.8 * image_alpha);
draw_set_colour(c_black);
draw_rectangle(xSelector - offset, ySelector - offset, xSelector + xSeperation + offset, ySelector + ySeperation * optionsNum + offset, false);
draw_set_font(fDefault24);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(image_alpha);
for(i = 0; i < optionsNum; i++)
{
    clr = c_white;
    if (i == select)
        clr = c_red;
    draw_set_halign(fa_left);
    scrDrawTextOutline(xSelector,ySelector+(ySeperation*i),strSelect[i], clr, c_black);
    if (valueType[i] == -1)
    {
        scrCustomDisplay();
        continue;
    }
    draw_set_halign(fa_right);
    scrDrawTextOutline(xSelector+xSeperation,ySelector+(ySeperation*i), strValue[valueType[i], ds_list_find_value(values, i)], clr, c_black);
}

