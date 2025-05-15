/// @description Do jump
jumping = true;
var xx = x;
var yy = y;
var high = 80;
switch (gravity_direction)
{
    case 0:
        xx -= high;
        break;
    case 90:
        yy += high;
        break;
    case 180:
        xx += high;
        break;
    case 270:
        yy -= high;
        break;
}
if (gravity_direction == 0 or gravity_direction == 180)
{
    if (y < 300)
        yy += high;
    else
        yy -= high;
}
else
{
    if (x < 404)
        xx += high;
    else
        xx -= high;
}
direction = point_direction(x, y, xx, yy);
speed = 10 + random(5);