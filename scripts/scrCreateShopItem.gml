///scrCreateShopItem(name, description, speed, damage, range, price, requirement)
var tmp = instance_create(x, y, objShopItem);
tmp.name = argument0;
tmp.description = argument1;
tmp.spd = argument2;
tmp.dmg = argument3;
tmp.range = argument4;
tmp.price = argument5;
tmp.require = argument6;
return tmp;
