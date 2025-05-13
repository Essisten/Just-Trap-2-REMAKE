event_inherited();
ready = false;
canParry = true;
dmg /= 10;
x = choose(random_range(-400, 0), random_range(800, 1200));
y = choose(random_range(-400, 0), random_range(610, 1000));
spd = random_range(2, 6) + (global.difficulty * 2);
image_xscale = 9;
image_yscale = image_xscale;
gravity = 0.5;

