if (active and rotate < 8)
   rotate += 0.1;
else if (!active and rotate > 0)
     rotate -= 0.1
if (rotate > 0)
{
    image_angle -= rotate;
    if (image_angle <= 0)
        image_angle += 360;
}
if (y > 800)
    instance_destroy();

