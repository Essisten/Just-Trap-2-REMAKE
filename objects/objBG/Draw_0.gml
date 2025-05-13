if (instance_exists(objJR) and instance_exists(objJustist))
{
    draw_set_font(fDefault18);
    draw_set_halign(fa_left);
    var clr1 = c_red;
    var clr2 = c_maroon;
    if (objJustist.HP <= 0)
    {
        clr1 = c_gray;
        clr2 = c_black;
    }
    scrDrawTextOutline(0, 0, "Justist energy: ", clr1, clr2);
    scrDrawTextOutline(190, 2, string(objJustist.energy), clr1, clr2);
    if (objJR.HP <= 0)
    {
        clr1 = c_gray;
        clr2 = c_black;
    }
    else
    {
        clr1 = c_aqua;
        clr2 = c_teal;   
    }
    scrDrawTextOutline(0, 30, "JR energy: ", clr1, clr2);
    scrDrawTextOutline(190, 32, string(objJR.energy), clr1, clr2);
    if (final)
    {
        draw_set_font(fBoss1_46);
        scrDrawTextOutline(timerX, timerY, string(timer), c_white, c_gray);
    }
}

