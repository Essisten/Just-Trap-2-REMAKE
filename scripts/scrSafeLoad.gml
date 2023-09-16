///scrSafeLoad(map, name, default value)
what = ds_map_find_value(argument0, argument1);
if (is_undefined(what))
    what = argument2;
return what;
