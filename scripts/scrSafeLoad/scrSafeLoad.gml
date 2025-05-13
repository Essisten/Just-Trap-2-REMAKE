/// @description scrSafeLoad(map, name, default value)
/// @param map
/// @param  name
/// @param  default value
function scrSafeLoad(argument0, argument1, argument2) {
	what = ds_map_find_value(argument0, argument1);
	if (is_undefined(what))
	    what = argument2;
	return what;



}
