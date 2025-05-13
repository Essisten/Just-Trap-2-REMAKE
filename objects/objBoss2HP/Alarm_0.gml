/// @description Start animation

if (HP[0] < boss.RedHP)
{
    alarm[0] = 7;
    HP[0] += 5;
    HP[1] = HP[0];
    scrPlaySound(sndBoss2_Charge);
}
else
{
    HP[0] = boss.RedHP;
    HP[1] = boss.BlueHP;
    play = true;
    if (!skip)
        scrPlayMusic(musStage2A, false);
    with (boss)
    {
        god = false;
        image_speed = 0.2;
        if (!other.skip)
            event_user(1);
    }
    with (objJustularity)
    {
        alarm[0] = -1;
        prevAct = 1;
    }
    with (objPlayer)
        frozen = false;
    with (objShowLabel)
        alarm[1] = 1;
}

