/// @description Attack 2
for (var i = 0; i < 18; i++)
{
    var bullet = instance_create(x, y, objBulletJR);
    with (bullet)
    {
        direction = 20 * i;
        alarm[0] = 12;
    }
}
scrPlaySound(sndShoot, 1.2);
scrPlaySound(sndShoot, 1.2);

