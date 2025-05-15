w_id = ds_list_find_value(global.arsenal, global.currentWeapon);
if (!instance_exists(objPlayer))
{
   instance_destroy();
   exit;
}
for (i = 0; i < array_length(CD); i++)
{
    if (CD[i] > 0)
       CD[i]--;
}
x = objPlayer.x;
y = objPlayer.y;
image_angle = objPlayer.image_angle;
image_alpha = objPlayer.image_alpha;
image_xscale = objPlayer.xScale;
image_yscale = global.grav;
if (objPlayer.frozen or attacking or w_id == -1)
   exit;
sprite_index = state_sprites[objPlayer.state];
if (objPlayer.shootUpward)
   sprite_index = sprWeaponUp;
if (scrButtonCheck(global.shootButton))
{
    if (scrButtonCheckPressed(global.shootButton) or 
    w_id == 3 or w_id == 1)
    {
        event_user(0);
    }
}
else if (max_weapons > 1)
{
    var old_w = global.currentWeapon;
    if (scrButtonCheckPressed(global.prevWeaponButton))
        global.currentWeapon--;
    else if (scrButtonCheckPressed(global.nextWeaponButton))
        global.currentWeapon++;
    else
    {
        if keyboard_check_pressed(ord("1"))
            global.currentWeapon = 0;
        else if keyboard_check_pressed(ord("2"))
            global.currentWeapon = 1;
        else if keyboard_check_pressed(ord("3"))
            global.currentWeapon = 2;
        else if keyboard_check_pressed(ord("4"))
            global.currentWeapon = 3;
        if (global.currentWeapon >= max_weapons)
           global.currentWeapon = max_weapons - 1;
    }
    if (global.currentWeapon < 0)
       global.currentWeapon += max_weapons;
    if (global.currentWeapon >= max_weapons)
       global.currentWeapon = 0;
    if (global.currentWeapon != old_w)
        scrPlaySound(sndBoss1_Reload, 1);
}
image_index = w_id;

