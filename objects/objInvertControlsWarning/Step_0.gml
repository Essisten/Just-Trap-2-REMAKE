/// @description Follow the player
if (!instance_exists(objPlayer))
{
	instance_destroy();
	exit;
}
x = objPlayer.x;
y = objPlayer.y - 64;