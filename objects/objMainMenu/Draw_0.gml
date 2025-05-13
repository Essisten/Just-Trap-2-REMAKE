draw_set_alpha(a);
draw_set_colour(c_black);
draw_rectangle(sx[0], sy[0] - sOffsetY, sx[1], sy[1] - sOffsetY, false);
draw_set_alpha(a);
draw_set_font(fDefault24);
draw_set_halign(fa_center);
draw_set_valign(fa_top)
for (var i = 0; i < 3; i++)
{
    if (sel == i and state == 0)
        textClr = c_red;
    else
        textClr = c_white;
    scrDrawTextOutline(textX, textY + sepY * i, text[i], textClr, c_black);
}
draw_set_alpha(1);

for(var i = 0; i < 3; i += 1)
{
    draw_set_colour(c_black);
    draw_rectangle(saveX, saveY + ySeperation * i, saveX + saveW, saveY + saveH + ySeperation * i, false);
    draw_set_colour(c_white);
    draw_rectangle(saveX, saveY + ySeperation * i, saveX + saveW + saveBorder, saveY + ySeperation * i - saveBorder, false); //top
    draw_rectangle(saveX, saveY + ySeperation * i - saveBorder, saveX - saveBorder, saveY + saveH + ySeperation * i + saveBorder, false);   //left
    draw_rectangle(saveX, saveY + saveH + ySeperation * i, saveX + saveW + saveBorder, saveY + saveH + ySeperation * i + saveBorder, false);    //bottom
    draw_rectangle(saveX + saveW, saveY + ySeperation * i, saveX + saveW + saveBorder, saveY + saveH + ySeperation * i, false); //right
    draw_set_colour(c_black);
    var clr = c_white;
    if (i == sel)
        clr = c_red;
    draw_set_halign(fa_left)
    draw_set_font(fDefault30);
    scrDrawTextOutline(saveX + saveOffset, saveY + ySeperation * i + saveOffset2, str[i], clr, c_black);
    if (!exists[i])
    {
        if (state < 2 or i != sel)
            scrDrawTextOutline(saveX + xSeperation * 1.5 + saveOffset, saveY + ySeperation * i + saveOffset * 1.5 - saveOffset3, "No Data" ,clr ,c_black);
    }
    else
    {
        draw_set_font(fDefault12);
        scrDrawTextOutline(saveX + xSeperation * 2 + saveOffset * 2, saveY + ySeperation * i + saveOffset - saveOffset3, "Deaths: " + string(death[i]), clr, c_black);
        scrDrawTextOutline(saveX + xSeperation * 2 + saveOffset * 2, saveY + ySeperation * i + saveOffset * 2 - saveOffset3, "Time: " + timeStr[i] ,clr , c_black);     
        scrDrawTextOutline(saveX + xSeperation + saveOffset, saveY + ySeperation * i + saveOffset - saveOffset3,"Difficulty: " + dif[difficulty[i]], clr ,c_black);
        draw_set_font(fDefault24);
        if (clear[i])
            scrDrawTextOutline(saveX + xSeperation + saveOffset, saveY + ySeperation * i + saveOffset * 4 - saveOffset3, "FINISHED" ,clr ,c_black);
    }
    if (exists[i] or (i == sel and state > 1))
    {
        var sub = 0;
        if (exists[i])
            sub = difficulty[i];
        if (i == sel)
        {
            if (state == 2)
                sub = difSel;
            if (state == 3)
                sub = 4;
        }
        draw_sprite_ext(sprDiffIcon, sub + 1, saveX + xSeperation * 1.5, saveY + ySeperation * i + saveOffset * 2 - saveOffset3, 4, 4, 0, c_white, 1);
    }
    draw_set_halign(fa_center);
    draw_set_font(fDefault12);
    if (i == sel)
    {
        if (state == 2)
        {
            if (difSel == -1)
                scrDrawTextOutline(saveX + xSeperation * 2.5 + saveOffset, saveY + ySeperation * i + saveOffset * 4 - saveOffset3, "< Continue >" ,clr , c_black);
            else
                scrDrawTextOutline(saveX + xSeperation * 2.5 + saveOffset, saveY + ySeperation * i + saveOffset * 4 - saveOffset3, "< " + dif[difSel] + " >" ,clr , c_black);
        }
        else if (state == 3)
        {
            scrDrawTextOutline(saveX + xSeperation * 2.5 + saveOffset, saveY + ySeperation * i + saveOffset * 4 - saveOffset3, "New Game?" ,clr ,c_black);
            var choice = "No";
            if (difSel)
                choice = "Yes";
            scrDrawTextOutline(saveX + xSeperation * 2.5 + saveOffset, saveY + ySeperation * i + saveOffset * 5 - saveOffset3, "< " + choice + " >" ,clr ,c_black);
        }
    }
    
}
draw_set_colour(c_white);
scrDrawTextOutline(100, 10, "Just Trap made by: Just", c_yellow, c_black);
scrDrawTextOutline(680, 10, "Remake made by: Essisten", c_red, c_black);

