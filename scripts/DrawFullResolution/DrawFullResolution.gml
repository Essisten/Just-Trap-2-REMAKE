function DrawFullResolution(surface)
{
	var scale_x = view_wport / surface_get_width(surface);
	var scale_y = view_hport / surface_get_height(surface);
	var scale = min(scale_x, scale_y);
	draw_surface_ext(surface, camera_get_view_x(view_camera), camera_get_view_y(view_camera), scale, scale, 0, c_white, 1);
}