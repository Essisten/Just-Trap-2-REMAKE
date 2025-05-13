/// @description Real attacking
if (!instance_exists(objPlayer) or alarm[4] = -1)
    return -1;
if (hidden)
{
    event_user(4);
    return -1;
}
if (HP > 75)
{
    event_user(11);
}
else if (HP > 50)
{
    event_user(12);
}
else if (HP > 0)
{
    alarm[5] = 1;
}
else if (HP <= 0)
{
    if (choose(true, false))
        alarm[5] = 1;
    else
        event_user(12);
}
energy += 2;

