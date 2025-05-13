if (image_xscale == 1)
    exit;
var r = random(360);
for (var i = 0; i < 3 + global.difficulty; i++)
{
    var b = instance_create(x, y, objJustularityBall);
    b.sprite_index = sprite_index;
    b.speed = speed + (global.difficulty + 1);
    b.direction = (360 / (3 + global.difficulty)) * i + r;
}
instance_destroy();

