if (!instance_exists(objPlayer) or !active)
    return -1;

alarm[0] = 13 - global.difficulty * 4;
var f = instance_create(objJustination.x, objJustination.y, objCherry);
f.direction = random_range(210, 330);
f.speed = random_range(2, 4) + global.difficulty + 0.5;
if (HP <= 50)
{
    f.speed++;
    f.change_dir = choose(-1, 1) * ((global.difficulty + 1) /5);
    alarm[0] += 3 - global.difficulty;
}
if (HP <= 0)
    f.sprite_index = sprCherryGray;

