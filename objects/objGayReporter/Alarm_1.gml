alarm[1] = 10 - global.difficulty * 2;
if (shoots <= 0)
   exit;
if (increment < 32 and dir > 90 and dir < 270)
     increment = 32;
dir += increment;
increment += 5 - global.difficulty;
shoots -= 1;
fire_alpha = 1;
scrPlaySound(sndGayShooting);
if (dir > 360)
    dir -= 360;
if (increment > 360)
   increment -= 360;
for (var i = 0; i < 2; i++)
{
    b[i] = instance_create(x + 32 * i, y, objGayIce);
    b[i].speed = (global.difficulty + 2) * 3;
}
b[0].direction = random_range(150, 220)//dir;
b[1].direction = random_range(150, 220)//abs(dir - 360);
b[0].image_angle = b[0].direction + 90;
b[1].image_angle = b[1].direction + 90;

