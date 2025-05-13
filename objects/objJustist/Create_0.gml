event_inherited();
destinationX = 550;
spd = 4;
bro = objJR;
sprite[0] = sprJustist_Idle;
sprite[1] = sprJustist_Run;
sprite[2] = sprJustist_Jump;
sprite[3] = sprJustist_Fall;
if (global.spriteStyle == 0)
{
    scrAddBodyPart(objBoss1Bow, objJustist);
    scrAddBodyPart(objBoss1_Wings, objJustist);
}
scrAddBodyPart(objBoss1_Head, objJustist);
arms = scrAddBodyPart(objBoss1_Arms, objJustist);
with (instance_create(x, y, objBossName))
{
    name = "Justist";
    owner = objJustist;
    yflip = true;
}

