color[0] = c_lime;
color[1] = c_white;
color[2] = c_red;
state = 0;
alarm[2] = 1;
color2[0] = c_green;
color2[1] = c_gray;
color2[2] = c_maroon;
image_alpha = 0;
with (objPlayer)
{
    HP = 10;
    if (global.difficulty == 1)
       HP /= 2;
    else if (global.difficulty == 2)
       HP = 3;
    maxHP = HP;
}

