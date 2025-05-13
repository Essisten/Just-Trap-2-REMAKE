if (used or !instance_exists(objPlayer))
    exit;
var distV = abs(objPlayer.y - y);
var distH = abs(objPlayer.x - x);
if (hspeed != 0)
{
    if (distH < 6)
    {
        used = true;
        alarm[1] = 40 - global.difficulty * 13;
        spd = speed;
        speed = 0;
    }
}
else
{
    if (distV < 6)
    {
        used = true;
        alarm[2] = 40 - global.difficulty * 13;
        spd = speed;
        speed = 0;
    }
}

