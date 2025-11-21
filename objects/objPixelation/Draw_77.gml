surface_resize(application_surface, view_wport[0] - p * 4, view_hport[0] - p * 3)
if (global.smoothingMode != 1)
{
	var windowWidth = window_get_width();
	var windowHeight = window_get_height();

	var aspectRatio = windowWidth / windowHeight;
	var aspectRatioRatio = aspectRatio / (800/608);
	
	if(aspectRatioRatio < 1)
	{
	    var canvasHeight = windowWidth*608/800;
	    var vertOutPixels = (windowHeight - canvasHeight) / 2;
	    draw_surface_stretched(application_surface, 0, vertOutPixels, windowWidth, canvasHeight);
	}
	else
	{
	    var canvasWidth = windowHeight*800/608;
	    var horOutPixels = (windowWidth - canvasWidth) / 2;
	    draw_surface_stretched(application_surface, horOutPixels, 0, canvasWidth, windowHeight);
	}
}