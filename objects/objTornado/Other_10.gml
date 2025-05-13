gravity_direction += 90 * -dir;
direction_real += 90 * -dir;
image_angle += 90 * -dir;
move_outside_solid(point_direction(x, y, 400, 304), 128);
gravity_direction = gravity_direction mod 360;
direction = direction mod 360;
image_angle = image_angle mod 360;
alarm[0] = 25;

