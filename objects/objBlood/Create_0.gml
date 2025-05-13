image_index = irandom(image_number - 1);
image_speed = 0;
speed = random(15);
gravity = (0.1 + random(0.2));
image_xscale = random_range(1, 2);
image_yscale = image_xscale;
if (global.gravH)
{
    if (global.grav)
        gravity_direction = 0;
    else
        gravity_direction = 180;
}
else
{
    if (global.grav)
        gravity_direction = 270;
    else
        gravity_direction = 90;
}

