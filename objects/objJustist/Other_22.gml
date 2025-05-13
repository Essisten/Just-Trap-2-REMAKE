/// @description Attack 2
for (var i = 0; i < 5 + global.difficulty * 2; i++)
{
    with (instance_create(x, y, objBulletJustist))
    {
        direction = point_direction(x, y, objPlayer.x, objPlayer.y);
        speed -= i;
    }
}
scrPlaySound(sndShoot, 0.8);

