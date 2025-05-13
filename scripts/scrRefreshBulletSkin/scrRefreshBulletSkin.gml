/// @description scrRefreshBulletSkin(bullet)
/// @param bullet
///Refreshing boss bullets in boss 1 fight
function scrRefreshBulletSkin(argument0) {

	var bullet = argument0;
	bullets[0] = 0;
	var count = 0;

	count = instance_number(bullet);
	for (var i = 0; i < count; i++)
	{
	    with (instance_find(bullet, i))
	        sprite_index = sprDark_Bullet;
	}



}
