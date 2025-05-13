if (!active or !instance_exists(objPlayer))
   exit;
event_inherited();
if (HP <= 0)
{
    with (objBoss4_Spike)
    {
        kill = false;
    }
    global.swapControls = false;
    scrSwapControls();
    global.frozen = true;
    alarm[4] = -1;
    __background_set( e__BG.Alpha, 0, 1 );
    instance_destroy();
    part_emitter_clear(global.portalParticleSystem, emitter);
    scrStopMusic();
    scrPlaySound(sndMonster1, 1.2);
    scrStartSlowdown(50, 25);
    scrShakeEffect(10, 0.2);
    for (var i = 1; i < 9; i++)
    {
        piece = instance_create(x, y, objJustinationPiece);
        piece.direction = 360 - 90 * i + random_range(-35, 35);
        if ((i mod 2) == 1 and i < 5)
           piece.image_index = 7;
        else
           piece.image_index = 6;
        piece.speed = random_range(2, 6);
        if (i == 1)
           piece.image_yscale = -1;
        else if (i == 4)
           piece.image_xscale = -1;
        else if (i > 4)
             piece.image_angle = random(360);
    }
    with (objBoss4_Spike)
         vspeed = 1;
}
else if (HP <= 50 and surprise)
{
    surprise = false;
    scrPlaySound(sndBlockChange);
    for (var i = 0; i < 2; i++)
    {
        with (spikes[i])
        {
            hspeed *= choose(1, -1) * 1.2;
        }
    }
}

