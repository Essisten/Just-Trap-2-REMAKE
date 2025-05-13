/// @description scrShowMoney(x, y, stage, follow clear, reward)
/// @param x
/// @param  y
/// @param  stage
/// @param  follow clear
/// @param  reward
function scrShowMoney(argument0, argument1, argument2, argument3, argument4) {
	var m = instance_create(argument0, argument1, objMoneyShower);
	with (m)
	{
	    stage = argument2;
	    follow = argument3;
	    reward = argument4;
	}
	return m;



}
