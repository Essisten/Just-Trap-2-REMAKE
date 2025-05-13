/// @description Attack 2. It requires real time shooting

if (HP > 50 or !instance_exists(objPlayer))
    alarm[5] = -1;
else if (HP > 25)
{
    if (shootCounter > 8 + global.difficulty * 2)
    {
        event_user(4);
        shootCounter = 0;
        alarm[5] = -1;
        energy++;
    }
    else
        alarm[5] = random_range(2, 3);
    var bullet = instance_create(x, y, objBulletJR);
    with (bullet)
    {
        alarm[0] = 1;
        speed += random_range(-1, 1);
    }
    scrPlaySound(sndShoot);
    shootCounter++;
}
else
{
    if (shootCounter > 12 + global.difficulty * 3)
    {
        event_user(4);
        shootCounter = 0;
        alarm[5] = -1;
        energy++;
    }
    else
        alarm[5] = random_range(1, 2);
    var bullet = instance_create(x, y, objBulletJR);
    with (bullet)
    {
        alarm[0] = 1;
        speed += random_range(-1, 1);
    }
    scrPlaySound(sndShoot);
    shootCounter++;
}


