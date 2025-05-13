if (!instance_exists(target) or alarm[1] > -1)
   exit;
direction = point_direction(x, y, target.x, target.y);
if (hspeed < 0)
   image_xscale = 2;
else if (hspeed > 0)
    image_xscale = -2;
if (target == objPlayer)
   exit;
if (place_meeting(x, y, target))
{
    with (target)
    {
        HP = min(HP + 20 * (global.difficulty + 1), 100);
        if (HP > 0)
           image_blend = c_white;
        if (nohit_challenge < 8)
           nohit_challenge++;
    }
    scrPlaySound(sndHeal, 1);
    alarm[1] = 1;
}

