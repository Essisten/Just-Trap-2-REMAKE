/// @description Changing active parts
scrPlaySound(sndBlockChange);
if (active)
    exit;
var length = ds_list_size(active_parts);
for (var i = 0; i < length; i++)
{
    with (ds_list_find_value(active_parts, i))
    {
        active = false;
    }
}
ds_list_clear(active_parts);
var tmp = 2;
if (!instance_exists(objPlayer))
   tmp = 4;
for (var i = 0; i < tmp; i++)
{
    var parts_size = ds_list_size(parts);
    var r = irandom(parts_size - 1);
    var part = ds_list_find_value(parts, r);
    if (part.HP > 0)
       unlucky = 0;
    if (parts_size > 1) //unluck protection
    {
        if ((i > 0 and part == objJustinationLight and !instance_exists(objPlayer))
           or (unlucky > 3 and part.HP <= 0))
        {
            ds_list_delete(parts, r);
            i --;
            continue;
        }
    }
    objBoss4_Effects.side[i] = part;
    ds_list_add(active_parts, part);
    with (part)
    {
        active = true;
        event_user(15);
    }
    ds_list_delete(parts, r);
    if (ds_list_size(parts) == 0)
        break;
}
var part1 = ds_list_find_value(active_parts, 0),
    part2 = ds_list_find_value(active_parts, 1);
if (part1.HP <= 0 and part2.HP <= 0)
   unlucky++;
else
    unlucky = 0;
for (var i = 0; i < block_count; i++)
{
    with (blocks[i])
        event_user(0);
}
event_user(0);
if (!instance_exists(objPlayer))
   exit;;
length = min(ds_list_size(active_parts), 2);
for (var i = 0; i < length; i++)
{
   spikes[i].owner = ds_list_find_value(active_parts, i);
   with (spikes[i])
        event_user(0);
}
alarm[3] = 600;

