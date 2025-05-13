/// @description Attack 1
for (var i = 0; i < 3 + global.difficulty; i++)
{
    with (instance_create(x, y, objBulletJustist))
    {
        direction = point_direction(x, y, objPlayer.x, objPlayer.y);
        speed -= i * 2;
    }
}
scrPlaySound(sndShoot, 0.8);
scrPlaySound(sndShoot, 0.8);

