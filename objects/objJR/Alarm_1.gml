/// @description Walking
if (x != destinationX or hidden)
{
    event_user(1);
    return -1;
}
destinationX = irandom_range(0, 800);
if (destinationX < 48)
    destinationX = 48;
else if (destinationX > 752)
    destinationX = 752;
if (global.difficulty < 3)
{
    if (nextFlying)
        instance_create(destinationX, nextFlyHight, objWarningJR);
    else
        instance_create(destinationX, 464, objWarningJR);
}
alarm[10] = warnDelay;

