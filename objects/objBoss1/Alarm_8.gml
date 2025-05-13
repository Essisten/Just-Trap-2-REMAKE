/// @description Healing

if (hidden or energy <= 5 or HP <= 0 or HP >= 100)
{
    alarm[8] = 50;
    return -1;
}
var tmp = irandom_range(5, min(energy, 20));
var targ = self;
if (bro.HP < HP and bro.HP > 0)
    targ = bro;
if (targ.HP > 80)
    tmp = min(energy, 100 - targ.HP);
with (instance_create(x, y, objHealBullet))
{
    num = tmp;
    target = targ;
    speed = targ.spd;
}
energy -= tmp;
alarm[8] = irandom_range(1200, 1600);

