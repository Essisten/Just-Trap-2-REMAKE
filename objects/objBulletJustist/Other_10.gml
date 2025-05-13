/// @description Skin
if (!instance_exists(owner))
    return -1;
if (objJustist.HP <= 0)
    sprite_index = sprDark_Bullet;
else
    sprite_index = sprJustist_Bullet;

