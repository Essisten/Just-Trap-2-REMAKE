/// @description Spawning extra bullets
for (var i = 0; i < 1 + global.difficulty * 2; i++)
{
    with (instance_create(x, y, objBulletJustist))
    {
        direction = random(360);
        wrap = true;
        speed /= 2;
        owner = objJustist;
    }
    extraBulletsCounter++;
}
scrPlaySound(sndShoot, 0.8);
scrPlaySound(sndShoot, 0.8);

