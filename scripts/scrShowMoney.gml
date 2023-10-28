///scrShowMoney(x, y, stage, follow clear, reward)
var m = instance_create(argument0, argument1, objMoneyShower);
with (m)
{
    stage = argument2;
    follow = argument3;
    reward = argument4;
}
return m;
