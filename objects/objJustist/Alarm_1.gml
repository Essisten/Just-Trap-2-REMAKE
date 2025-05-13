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
    var t = 464
    if (nextFlying)
        t = nextFlyHight;
    with (instance_create(destinationX, t, objWarningJustist))
        image_index = 1;
}
alarm[10] = 40 - global.difficulty * 10;

