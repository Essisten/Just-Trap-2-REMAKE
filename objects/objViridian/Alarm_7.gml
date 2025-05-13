/// @description throw stars
for (var i = 0; i < global.difficulty + 1; i++)
{
    var s = instance_create(x, y, objStarV);
    with (s)
    {
        speed = (global.difficulty + 2) * 2;
        image_xscale = 0.5;
        image_yscale = image_xscale;
    }
    s.direction = random(360);
}
alarm[7] = 11 - global.difficulty * 3;

