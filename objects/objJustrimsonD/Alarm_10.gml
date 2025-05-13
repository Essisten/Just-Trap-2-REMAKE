/// @description Real gravity change
scrFlipGrav();
rot_sum += 360 * 1.5 + (rot_sum mod 360);
amount_angl = rot_sum;
old_angl = image_angle;
nohit_challenge = 0;
dmg_in = 3 - global.difficulty;
alarm[3] = 1;
scrPlaySound(sndVJump, 1);
if (image_index < 2)
{
    if (global.grav < 0)
    {
       image_index = 1;
       glow_color = c_blue;
    }
    else
    {
        image_index = 0;
        glow_color = c_red;
    }
    color = glow_color;
}

