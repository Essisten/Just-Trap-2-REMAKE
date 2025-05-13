event_inherited();
image_speed = 5 / room_speed;
direction = point_direction(x, y, 400, 304) + random_range(-50, 50);
speed = 3 + global.difficulty * 2;
image_xscale = 2;
image_yscale = image_xscale;
canParry = true;

