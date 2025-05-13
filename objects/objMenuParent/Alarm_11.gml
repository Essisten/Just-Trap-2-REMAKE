/// @description Sliding out
alarm[11] = 1;
var xDiff = destX - xSelector;
image_alpha = clamp(image_alpha + sign(dest_alpha - image_alpha) * 0.1, 0, 1);
xSelector += slideSpeed * sign(xDiff);
if (abs(xDiff) < slideSpeed)
{
    xSelector = destX;
    alarm[11] = -1;
    if (!active)
        instance_destroy();
}

