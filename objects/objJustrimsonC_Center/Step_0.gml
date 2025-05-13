var length = array_length_1d(fruits);
var skips = 0;
for (var i = 0; i < length; i++)
{
    var fruit = fruits[i];
    if (!instance_exists(fruit) or fruit.reflected)
    {
        skips++;
       continue;
    }
    with (fruit)
    {
        rad -= (2 + global.difficulty) * 2;
    }
    if (abs(fruit.rad) > 900)
    {
        instance_destroy(fruit);
        continue;
    }
    fruit.x = x + lengthdir_x(fruit.rad, dir + i * (360 / length));
    fruit.y = y + lengthdir_y(fruit.rad, dir + i * (360 / length));
}
if (skips == length or length == 0)
{
    instance_destroy();
    exit;
}
if (!done or (instance_exists(objJustrimsonC) and objJustrimsonC.HP <= 50))
   dir += (global.difficulty + 1) / 3;

