alarm[1] = 5 - global.difficulty;
if (!ready or shoots <= 0)
   exit;
if (shoots > 20)
{
    var amount = (global.difficulty + 1) * 2, start = 100 + random(10);
    for (var i = 0; i < amount; i++)
    {
        var g = instance_create(x, y - 32, objGayGranade);
        g.direction = start + (60 / amount * i);
        g.speed = (global.difficulty + 2) * 2;
    }
    shoots--;
    alarm[1] = 50 - 10 * global.difficulty;
    exit;
}
dir += 20 - (global.difficulty - (shoots div 10)) * 4;
fire_alpha = 1;
scrPlaySound(sndGayShooting);
if (dir > 360)
{
    dir -= 360;
    shoots -= 2;
}
var amount = 1;
if (global.difficulty > 0)
   amount = 2;
if (global.difficulty == 3)
   amount = 4;
for (var i = 0; i < amount; i++)
{
    b[i] = instance_create(x, y, objGayBullet);
    b[i].speed = (global.difficulty + 2) * 1.5;
}
b[0].direction = dir;
if (global.difficulty > 0)
   b[1].direction = dir + 180;
if (global.difficulty == 3)
{
    b[2].direction = abs(dir - 360);
    b[3].direction = abs(dir - 360) + 180;
}

