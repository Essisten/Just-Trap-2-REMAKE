/// @description Attack
with (instance_create(x, y, objCherry))
{
    sprite_index = sprGayIce;
    gravity = 0.04 * (global.difficulty + 1);
    gravity_direction = 270;
    direction = random_range(0, 180);
    speed = global.difficulty + 1;
    depth = -100;
}
alarm[0] = 16 - global.difficulty * 4;
fire_alpha = 1;

