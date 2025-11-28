/// @description Decrease distortion
if (p > 25)
{
	application_surface_draw_enable(true);
	instance_destroy();
	exit;
}
alarm[1] = 1;
if (!global.gamePaused)
	p++;