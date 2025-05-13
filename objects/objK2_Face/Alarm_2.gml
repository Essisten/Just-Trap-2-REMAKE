/// @description Start death scene
with (objSpikeParent)
     instance_destroy();
with (objBlock)
     image_blend = c_black;
with (objBigKid_Head)
     image_blend = c_black;
with (objBigBow)
     image_blend = c_black;
with (objBow)
     image_blend = c_black;
with (objPlayer)
     color_normal = c_black;
with (objWeaponPlayer)
     image_blend = c_black;
with (objBigKid_Body)
{
     image_blend = c_black;
     alarm[0] = -1;
}
with (objBigKid_BounceFruit)
     instance_destroy();
with (objBigKid_Bullet)
     instance_destroy();
with (objBigKid_Water)
     instance_destroy();
with (objK2_Bomb)
     instance_destroy();
instance_destroy(objK2_PeriodicAttack);
image_blend = c_black;
with (objBigKid_BG)
     image_alpha = 0;
__background_set_colour( c_white );
alarm[3] = 1;
audio_stop_sound(global.currentMusic);
if (instance_exists(objMoon))
   instance_destroy(objMoon);

