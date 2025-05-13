if (alarm[1] > 0)
   exit;
ars_size = ds_list_size(global.arsenal);
w_id = select * (version[select]+1);
w_index = ds_list_find_index(global.arsenal, w_id);
if (scrButtonCheckPressed(global.menuUpButton))
{
    scrPlaySound(sndMenuMove);
    select -= 1;
    if(select < 0)
        select = optionsNum-1;
}
else if (scrButtonCheckPressed(global.menuDownButton))
{
    scrPlaySound(sndMenuMove);
    select += 1;
    if(select > optionsNum-1)
        select = 0;
}
else if (scrButtonCheckPressed(global.menuBackButton))
{
    scrPlaySound(sndMenuMove, 1.5);
    alarm[0] = -1;
    alarm[1] = 1;
}
else if (scrButtonCheckPressed(global.menuAcceptButton) or scrButtonCheckPressed(global.menuOptionsButton))
{
    scrPlaySound(sndMenuSelect);
    if (global.obtainedWeapons[w_id])
    {
        if (w_index == -1)
            ds_list_insert(global.arsenal, min(ars_size, select), w_id);
        else if (ds_list_size(global.arsenal) > 1)
            ds_list_delete(global.arsenal, w_index);
        global.currentWeapon = 0;
    }
    else
    {
        if (global.unlockedWeapons[w_id] and weapons[version[select], select].price <= global.coins)
        {
            scrGiveMoney(-weapons[version[select], select].price);
            global.obtainedWeapons[w_id] = true;
        }
    }
    scrSaveGame(false);
}

