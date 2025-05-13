scrPlaySound(sndBoss2_Bomb);
var r = random(360);
for (var i = 0; i < 10; i++)
{
    var c = instance_create(x, y, objCherry);
    with (c)
    {
        sprite_index = other.sprite_index;
        image_speed = other.image_speed * 2;
        speed = other.speed * 1.5;
        depth = 100030;
        sprite_index = other.sprite_index;
        reflected = other.reflected;
    }
    c.direction = 36 * i + r;
}
instance_destroy();

