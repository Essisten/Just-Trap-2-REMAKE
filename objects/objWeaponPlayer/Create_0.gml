
attacking = false;
w_id = ds_list_find_value(global.arsenal, global.currentWeapon);
paralyzed[0] = sprWeaponIdle_Paralyzed;
paralyzed[1] = sprWeaponIdle_Paralyzed;
paralyzed[2] = sprWeaponJump_Paralyzed;
paralyzed[3] = sprWeaponIdle_Paralyzed;
paralyzed[4] = sprWeaponSliding_Paralyzed;
image_speed = 0;
state_sprites[0] = sprWeaponIdle;
state_sprites[1] = sprWeaponIdle;
state_sprites[2] = sprWeaponJump;
state_sprites[3] = sprWeaponIdle;
state_sprites[4] = sprWeaponSliding;
max_weapons = ds_list_size(global.arsenal);
image_index = w_id;
for (var i = 0; i < array_length_1d(global.obtainedWeapons); i++)
    CD[i] = 0;
maxCD[0] = 25;
maxCD[1] = 10;
maxCD[2] = 50;
maxCD[3] = 2;

