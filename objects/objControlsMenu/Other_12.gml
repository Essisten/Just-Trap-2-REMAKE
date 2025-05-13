/// @description Read values
ds_list_clear(values);
ds_list_add(values, global.controllerIndex);
ds_list_add(values, "");
ds_list_add(values, global.leftButton);
ds_list_add(values, global.rightButton);
ds_list_add(values, global.upButton);
ds_list_add(values, global.downButton);
ds_list_add(values, global.jumpButton);
ds_list_add(values, global.shootButton);
ds_list_add(values, global.restartButton);
ds_list_add(values, global.skipButton);
ds_list_add(values, global.sprintButton);
ds_list_add(values, global.pauseButton);
ds_list_add(values, global.prevWeaponButton);
ds_list_add(values, global.nextWeaponButton);
event_user(15);

