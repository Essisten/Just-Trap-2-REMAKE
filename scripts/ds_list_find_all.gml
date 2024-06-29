///ds_list_find_all(list, value, [array index])
///Searches for all value matches and returns their position
///Surprised that gamemaker doesn't have something like that =.=

var result = ds_list_create();
for (var i = 0; i < ds_list_size(argument[0]); i++)
{
    var value = ds_list_find_value(argument[0], i);
    if ((is_array(value) and value[argument[2]] == argument[1]) or value == argument[1])
        ds_list_add(result, i);
}
return result;
