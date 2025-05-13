image_alpha = random_range(0.2, 0.8);
if (!instance_exists(objPlayer) or global.spriteStyle == 1)
   exit;
dist = clamp(abs(objPlayer.x - x) + abs(objPlayer.y - y), 0, 128);
image_blend = make_colour_hsv(0, abs((dist / 128) - 1) * 255, 255);

