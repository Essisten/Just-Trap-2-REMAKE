/// @description Remember player position
if (!instance_exists(objPlayer))
    exit;
shootCounter = 0;
alarm[7] = 2;
line = true;
fly = false;
rotate = true;
direction = point_direction(x, y, objPlayer.x, objPlayer.y);
if (totalShoots < 4)
{
    alarm[1] = 65 - totalShoots * 15;
    scrPlaySound(sndWarningV);
}
else
{
    if (lineCounter > 200)
    {
        direction = point_direction(x, y, objJustularity.x, objJustularity.y);
        alarm[1] = 20;
        alarm[7] = -1;
    }
    else
    {
        lineCounter++;
        alarm[2] = 1;
        direction += choose(-1, 1) * random_range(0, 4);
        if (alarm[3] == -1)
            alarm[3] = 11 - (lineCounter div 20);
    }
    
}

