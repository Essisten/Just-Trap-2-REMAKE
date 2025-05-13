event_inherited();
if (nohit_challenge < 8 - global.difficulty * 2)
   exit;
var target = objJustrimsonB;
for (i = 0; i < 3; i++)
{
    if (friends[i].HP < 100 and friends[i].HP < target.HP)
       target = friends[i];
}
if (objJustrimsonB.HP >= 100 and objJustrimsonC.HP >= 100 and objJustrimsonD.HP >= 100)
{
    if (HP >= 100)
       target = objPlayer;
    else
       target = objJustrimsonA;
}
var soul = instance_create(x, y, objJustrimson_Soul);
soul.target = target;
nohit_challenge -= 8;
dmg_in = 3 - global.difficulty;

