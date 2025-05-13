/// @description Attack 1
for (var i = 0; i < 12; i++)
{
    var bullet = instance_create(x, y, objBulletJR);
    with (bullet)
    {
        direction = 30 * i;
        alarm[0] = 12;
    }
}
scrPlaySound(sndShoot, 1.2);
scrPlaySound(sndShoot, 1.2);

