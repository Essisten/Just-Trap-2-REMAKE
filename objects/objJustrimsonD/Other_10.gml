event_inherited();
if (objJustrimsonController.dead)
   exit;
if (HP <= 50)
{
    image_index = 2;
    glow_color = c_white;
    glow_index = 5;
}
rot_sum = 360 * 2 + (rot_sum mod 360);
amount_angl = rot_sum;
old_angl = image_angle;
if (instance_number(objJustrimsonD_Star) > 400)
{
    with (objJustrimsonD_Star)
    {
        if (!ready)
           event_user(15);
    }
}
for (i = 0; i < 8 * (global.difficulty + 1); i++)
{
    with (instance_create(x, y, objJustrimsonD_Star))
         image_blend = c_dkgray;
}
alarm[11] = 400;

