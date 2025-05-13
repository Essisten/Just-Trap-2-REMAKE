event_inherited();
destinationX = 250;
spd = 3;
bro = objJustist;
sprite[0] = sprJR_Idle;
sprite[1] = sprJR_Run;
sprite[2] = sprJR_Jump;
sprite[3] = sprJR_Fall;

color1 = c_aqua;
color2 = c_teal;
part_type_color2(particleRevive, c_aqua, c_teal);
if (global.spriteStyle == 0)
{
    scrAddBodyPart(objBoss1Bow, objJR);
    scrAddBodyPart(objBoss1_Wings, objJR);
}
scrAddBodyPart(objBoss1_Head, objJR);
arms = scrAddBodyPart(objBoss1_Arms, objJR);
with (instance_create(x, y, objBossName))
{
    name = "JR";
    owner = objJR;
    yflip = true;
    xflip = true;
}

