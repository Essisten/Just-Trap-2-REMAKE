event_inherited();
if (objJustrimsonController.dead)
   exit;
y = oldY + sin(degtorad(dick)) * 8;
if (rot_sum < rot_spd)
{
    //image_angle += rot_sum;
    //var shit = (image_angle mod 180);
    //if (shit > 90)
       //shit = 180 + shit;
    //image_angle += shit;
    image_angle = old_angl + amount_angl * dir;
    rot_sum = 0;
    rot_spd = 0;
}
else if (rot_sum > 0)
{
    rot_spd = round(max((rot_sum / 180) * 4, 4)) * 2;
}
if (rot_spd > 0)
{
   image_angle += rot_spd * dir;
   rot_sum -= rot_spd;
}

