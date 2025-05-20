if (key_listen)
{
    var oldKey = ds_list_find_value(values, select);
    if (keyboard_check_pressed(vk_anykey))  //check if a key is being pressed and if it is, store that key
    {
        scrPlaySound(sndMenuSelect);
        var keyChange = keyboard_key;
        if (keyChange == vk_lshift || keyChange == vk_rshift)   //check if current key pressed is either shift key
            keyChange = vk_shift; //set it to work for both shift keys
        oldKey[0] = keyChange;
        ds_list_replace(values, select, oldKey);
        key_listen = false;
        event_user(4);
        event_user(2);
    }
    else if (scrAnyControllerButton() != -1)    //check if a controller button was pressed, exit prompt
    {
        var keyChange = scrAnyControllerButton();
        scrPlaySound(sndBoss1_Reload);
        oldKey[0] = keyChange;
        ds_list_replace(values, select, oldKey);
        key_listen = false;
        event_user(4);
        event_user(2);
    }
    
}
else
    event_inherited();

