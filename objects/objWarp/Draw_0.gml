draw_self();
image_angle += spinDir;
if (image_angle > 360)
    image_angle = 0;
else if (image_angle < 0)
    image_angle = 360;

