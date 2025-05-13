/// @description Throwing bricks
if (!global.particles)
    exit;
for (var i = 0; i < 20; i++)
{
    instance_create(x + random_range(-16, 16), y + random_range(-16, 16), objBrick);
}

