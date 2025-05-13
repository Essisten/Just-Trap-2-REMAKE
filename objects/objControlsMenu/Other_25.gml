/// @description Find duplicate key bindings
ds_list_clear(key_duplicates);
for (var i = 2; i < ds_list_size(values); i++)
{
    var key = ds_list_find_value(values, i);
    if (global.controllerIndex == -1)
        var results = ds_list_find_all(values, key[0], 0);
    else
        var results = ds_list_find_all(values, key[1], 1);
    if (ds_list_size(results) > 1)
        ds_list_add(key_duplicates, i);
}

