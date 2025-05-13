for(var i = 0; i < 3; i += 1)
{
    draw_set_colour(c_black);
    draw_rectangle(x + i * xSeperation - 20, y, x + i * xSeperation + 150, y + 200, false);
    var clr = c_white;
    if (i == select)
        clr = c_red;
    draw_set_halign(fa_left)
    draw_set_font(fDefault30);
    scrDrawTextOutline(x + i * xSeperation + 2, y, str[i], clr, c_black);
    
    draw_set_font(fDefault12);
    
    scrDrawTextOutline(x + i * xSeperation + 10, y + 70, "Deaths: " + string(death[i]), clr, c_black);
    scrDrawTextOutline(x + i * xSeperation + 10, y + 90, "Time: " + timeStr[i] ,clr , c_black);
    
    draw_set_halign(fa_center);
    
    if (difSelect && i == select)
    {
        if (!warnText)
        {
            if(select2==-1)
                scrDrawTextOutline(x + i * xSeperation + 65, y + 49, "< Load game >" ,clr , c_black);
            else
                scrDrawTextOutline(x + i*xSeperation + 65, y + 49, "< " + dif[select2] + " >" ,clr , c_black);
        }
        else
        {
            scrDrawTextOutline(x + i * xSeperation + 63, y + 120, "Fresh start?" ,clr ,c_black);
            var choice = "No";
            if(warnSelect)
                choice = "Yes";
            scrDrawTextOutline(x + i*xSeperation + 65, y + 49, "< " + choice + " >" ,clr ,c_black);
        }
    }
    
    if (exists[i])
    {        
        if ((!difSelect) || (difSelect && i != select))
        {
            scrDrawTextOutline(x + i * xSeperation + 65, y + 49,dif[difficulty[i]], clr ,c_black);
        }
        
        draw_set_font(fDefault24);
        
        if(clear[i])
            scrDrawTextOutline(x + i * xSeperation + 63, y + 215, "FINISHED" ,clr ,c_black);
        
    }
    else
    {
        if ((!difSelect) || (difSelect && i != select))
        {
            scrDrawTextOutline(x + i * xSeperation + 65, y+49, "No Data" ,clr ,c_black);
        }
    }
}
draw_set_colour(c_white);
scrDrawButtonInfo(true);
scrDrawTextOutline(100, 10, "Just Trap made by: Just", c_yellow, c_black);
scrDrawTextOutline(680, 10, "Remake made by: Essisten", c_red, c_black);

