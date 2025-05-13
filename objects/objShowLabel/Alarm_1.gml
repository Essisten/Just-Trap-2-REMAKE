/// @description fading
alarm[0] = -1;
alpha -= spd;
if (alpha > 0)
    alarm[1] = alarmSpd;
else
    instance_destroy();

