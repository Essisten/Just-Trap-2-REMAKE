/// @description Final timer
if (!instance_exists(objPlayer))
    exit;
if (timer < 2)
{
    scrStopMusic();
    with (objBoss1_Follower)
        instance_destroy();
    with (objBoss1)
        instance_destroy();
    final = false;
    scrShakeEffect(20, 0.5);
    for (var i = 0; i < holes_count; i++)
    {
        with (instance_find(objWallHole, i))
            event_user(1);
    }
    alarm[0] = -1;
    for (var i = 0; i < tiles_count; i++;)
    {
        tile_set_alpha(tiles[i], 0);
    }
    objWorld.alarm[2] = 400;
    global.frozen = true;
    global.unlockedWeapons[0] = true;
    with (objBoss1Bullet)
         can_kill = false;
    instance_destroy();
    scrStartSlowdown(25, 25);
    repeat (3)
        scrPlaySound(sndDeath, 0.7);
    exit;
}
timer--;
event_user(4);
alarm[2] = 50;

