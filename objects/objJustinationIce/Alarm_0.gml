/// @description Attack
if (!instance_exists(objPlayer) or !active)
    return -1;
var diff = 256 - global.difficulty * 64;
for (i = -100; i < room_width + 100; i += diff)
{
    var f = instance_create(i + side * (diff / 2), 0, objCherryPersistant);
    with (f)
    {
        sprite_index = sprCherryCyan;
        vspeed = 3 + global.difficulty * 2;
    }
    if (HP <= 50)
        f.hspeed = 4 * side - 2;
    if (HP <= 0)
        f.sprite_index = sprCherryGray;
}
if (timer >= 4 - global.difficulty)
{
    var f = instance_create(objJustination.x, objJustination.y, objCherryPersistant);
    with (f)
    {
        sprite_index = sprCherryCyan;
        direction = point_direction(x, y, objPlayer.x, objPlayer.y);
        speed = 3 + global.difficulty * 2;
    }
    if (HP <= 0)
        f.sprite_index = sprCherryGray;
    timer = 0;
}
timer++;
side = !side;
alarm[0] = 70 - global.difficulty * 20;

