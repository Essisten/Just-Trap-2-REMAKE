/// @description scrCreateShopItem(name, description, speed, damage, range, price, requirement)
/// @param name
/// @param  description
/// @param  speed
/// @param  damage
/// @param  range
/// @param  price
/// @param  requirement
function scrCreateShopItem(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	var tmp = instance_create(x, y, objShopItem);
	tmp.name = argument0;
	tmp.description = argument1;
	tmp.spd = argument2;
	tmp.dmg = argument3;
	tmp.range = argument4;
	tmp.price = argument5;
	tmp.require = argument6;
	return tmp;



}
