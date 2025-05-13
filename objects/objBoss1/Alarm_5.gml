with (objJustist) {
///Attack 2. It requires real time shooting

if (HP > 50 or !instance_exists(objPlayer))
{
    alarm[5] = -1;
    energy++;
    exit;
}
if ((HP > 25 and shootCounter > (global.difficulty + 1) * 2) or 
(HP <= 25 and shootCounter > (global.difficulty + 2) * 2))
{
    event_user(4);
    shootCounter = 0;
    alarm[5] = -1;
    energy++;
    exit;
}
alarm[5] = 3;
if (global.difficulty == 3)
    alarm[5] = 1;
repeat (global.difficulty + 1)
{
    with (instance_create(x, y, objBulletJustist))
    {
        gravity_direction = point_direction(x, y, objPlayer.x, objPlayer.y) + random_range(-60, 60);
        speed += random_range(-4, 4);
        gravity = speed / 50;
        speed = 0;
    }
}
scrPlaySound(sndShoot);
shootCounter++;

}
