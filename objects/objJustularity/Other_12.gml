/// @description Death
instance_destroy();
scrPlaySound(sndBoss2_Death);
with (objJustularityBall)
    event_user(0);
with (objJustularityBall)
    counter = 101;
for (var i = 0; i < 8; i++)
{
    var e = instance_create(x, y, objCherry);
    e.speed = 4;
    e.direction = i * 45;
    e.sprite_index = sprJustularityDeath;
    e.image_speed = 4 / room_speed;
    e.image_xscale = 3;
    e.image_yscale = e.image_xscale;
}
if (instance_number(objJustularity) == 0 and instance_exists(objPlayer))
{
    audio_stop_sound(global.currentMusic);
    objWorld.alarm[2] = 300;
    global.frozen = true;
    global.unlockedWeapons[2] = true;
    with (objBoss2HP)
    {
        play = false;
        alarm[3] = 300;
    }
    with (objTornado)
         alarm[2] = 5;
}
else
{
    for (i = 0; i < global.difficulty+1; i++)
    {
        tornado = instance_create(x, y, objTornado);
        tornado.gravity_direction = gravity_direction + 90 * i;
    }
    if (global.musicSlowdown)
    {
        with (objJustularity)
        {
            pitch -= 32/256;
            alarm[10] = 5;
        }
    }
}