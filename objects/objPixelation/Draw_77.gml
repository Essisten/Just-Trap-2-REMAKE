//shader_set(shdPixelation);
//gpu_set_texfilter(false);
surface_resize(application_surface, view_wport[0] - p * 4, view_hport[0] - p * 3)
if (global.smoothingMode != 1)
	draw_surface_stretched(application_surface, view_xport[0], view_yport[0], view_wport[0], view_hport[0]);
//gpu_set_texfilter(true);