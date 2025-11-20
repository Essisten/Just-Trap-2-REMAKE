/// @description Decrease distortion
if (p <= 0)
{
	application_surface_draw_enable(true);
	instance_destroy();
	exit;
}
p -= 4;
alarm[1] = 1;