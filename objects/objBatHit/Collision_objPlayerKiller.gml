if (!other.canParry or other.alarm[11] > -1 or other.speed > 16)
   exit;
with (other)
{
    reflected = true;
    speed *= 2;
    dmg *= 2;
    alarm[11] = 50;
}
var proj_dir = other.direction;
if (proj_dir > 180)
{
    proj_dir -= (proj_dir - 180) * 2;
}
if (abs(proj_dir - old_dir) > 90)
   other.direction += 180;
else
    other.direction = old_dir;
if (sound == -1)
   sound = scrPlaySound(sndBatDeflect2, 1);

