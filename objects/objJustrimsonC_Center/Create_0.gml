rad = 256;
alarm[0] = 1;
done = true;
dir = random(360);
for (i = 0; i < 5 + global.difficulty; i++)
{
    var fruit = instance_create(-10, -10, objJustrimsonC_Cherry);
    with (fruit)
    {
        rad = 900;
        dmg /= 2;
    }
    fruits[i] = fruit;
}
if (!instance_exists(objPlayer))
   exit;
x = objPlayer.x;
y = objPlayer.y;

