/// @description Attacking
if (!instance_exists(objPlayer))
    return -1;
event_user(4);
if (hidden)
    return -1;
with (arms)
{
     if (global.difficulty == 3)
        alarm[1] = 100;
     else
        alarm[1] = 1;
}
alarm[9] = warnDelay;

