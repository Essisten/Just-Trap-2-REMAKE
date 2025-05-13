/// @description My honest reaction
/*
if (global.difficulty < 3)
{
    alarm[0] = 5;
    HP -= (4 - global.difficulty) * 2;
}
else
    HP--;*/
if (HP <= 0)
{
    image_blend = c_black;
    scrPlaySound(sndDeath, 1);
    HP = 0;
}
else
    scrPlaySound(sndBossHit, 1);
if (objJustrimsonA.HP <= 0 and objJustrimsonD.HP <= 0 and objJustrimsonB.HP <= 0 and objJustrimsonC.HP <= 0)
{
    with (objJustrimsonController)
        event_user(0);
}

/* */
/*  */
