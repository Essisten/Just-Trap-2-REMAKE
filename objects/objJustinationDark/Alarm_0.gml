/// @description Attack
if (!instance_exists(objPlayer) or !active)
    return -1;
if (HP > 50)
{
    for (var i = 0; i < 1 + global.difficulty; i++)
    {
        var f = instance_create(objJustination.x, objJustination.y, objCherry);
        f.sprite_index = sprCherryDark;
        f.direction = (360 / (1 + global.difficulty)) * i + spin;
        f.speed = 3 + global.difficulty * 2;
    }
    spin += 16 - global.difficulty * 3;
    if (spin > 360)
        spin -= 360;
    if (edge > 10 - global.difficulty * 2)
    {
        edge = 0;
        with (instance_create(0, 0, objCherry))
        {
            sprite_index = sprCherryDark;
            direction = point_direction(0, 0, objPlayer.x, objPlayer.y);
            speed = 3 + global.difficulty * 2;
        }
        with (instance_create(800, 0, objCherry))
        {
            sprite_index = sprCherryDark;
            direction = point_direction(800, 0, objPlayer.x, objPlayer.y);
            speed = 3 + global.difficulty * 2;
        }
    }
}
else
{
    for (var i = 0; i < min(1 + global.difficulty, 3); i++)
    {
        var f = instance_create(random_range(32, 768), 0, objCherry);
        with (f)
        {
            sprite_index = sprCherryDark;
            hspeed = random_range(-1, 1) * (1 + global.difficulty);
            vspeed = random_range(2, 4) + global.difficulty;
        }
        if (HP <= 0)
            f.sprite_index = sprCherryGray;
    }
    if edge > 6 - global.difficulty
    {
        edge = 0;
        var f = instance_create(objPlayer.x, -64, objBoss4_FruitBomb);
        if (HP <= 0)
            f.sprite_index = sprCherryGray;
    }
}
alarm[0] = 24 - global.difficulty * 7;
edge++;
if (!active)
    alarm[0] = -1;

