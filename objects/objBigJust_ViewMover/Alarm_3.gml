/// @description Moving the healthbar
objBigJust_Healthbar.y += 2;
if (objBigJust_Healthbar.y - 4 < objBigKid_BG.top_wall.y)
   alarm[3] = 1;
else
    alarm[0] = 25;

