/// @description Increase distortion
if (p <= 2)
{
	alarm[1] = 1;
	exit;
}
alarm[0] = 1;
if (!global.gamePaused)
	p --;