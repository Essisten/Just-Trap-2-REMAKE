/// @description Attacking

if (!instance_exists(objPlayer) or !active)
    exit;

if (HP > 50)
{
    for (var i = 0; i < global.difficulty + 1; i++)
    {
        with (instance_create(objJustination.x, objJustination.y, objCherry))
        {
            sprite_index = sprCherryWhite;
            hspeed = random_range(-2, 2) * (min(2.2, global.difficulty + 1));
            vspeed = -random_range(1, 3) - global.difficulty;
            gravity = random_range(0.05, 0.1) + global.difficulty / 25;
        }
    }
    alarm[0] = 16 - global.difficulty * 4;
}
else
{
    var f = instance_create(0, random_range(420, 560), objCherry)
    with (f)
    {
        sprite_index = sprCherryWhite;
        hspeed = random_range(1, 3) + global.difficulty * 2;
    }
    if HP <= 0
        f.sprite_index = sprCherryGray;
    f = instance_create(800, random_range(420, 560), objCherry);
    with (f)
    {
        sprite_index = sprCherryWhite;
        hspeed = -(random_range(1, 3) + global.difficulty * 2);
    }
    if HP <= 0
        f.sprite_index = sprCherryGray;
    alarm[0] = 100 - global.difficulty * 30;
}

