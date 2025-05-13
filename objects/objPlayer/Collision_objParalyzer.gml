/// @description Paralyze the player
instance_destroy(other);
alarm[0] = 50 + global.difficulty * 25;
if (paralyzed)
   exit;
frozen = true;
paralyzed = true;
exit;
with (objWeaponPlayer)
{
    sprite_index = paralyzed[other.state];
    if (other.shootUpward)
       sprite_index = sprWeaponUp_Paralyzed;
}

