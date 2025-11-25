/// @description Decrease distortion
if (p <= 0)
{
	application_surface_draw_enable(true);
	instance_destroy();
	exit;
}
alarm[1] = 1;
if (!global.gamePaused)
	p -= 4;