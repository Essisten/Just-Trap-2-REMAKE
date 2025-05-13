/// @description Fly or walk
if ((flying and oldY != flyHight) or (!flying and oldY < 464) or hidden)
{
    event_user(0);
    exit;
}
nextFlying = choose(true, false);
if (nextFlying)
{
    nextFlyHight = irandom_range(150, 300);
    if (flying != nextFlying and global.difficulty < 3)
        instance_create(destinationX, nextFlyHight, objWarningJustist);
}
else
{
    if (flying != nextFlying and global.difficulty < 3)
        instance_create(destinationX, 464, objWarningJustist)
}
alarm[11] = warnDelay;

