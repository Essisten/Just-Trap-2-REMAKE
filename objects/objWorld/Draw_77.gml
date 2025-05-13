if (global.smoothingMode != 1 or global.enableShaders == 0)
    exit;
var __SMOOTH_windowWidth = window_get_width();
var __SMOOTH_windowHeight = window_get_height();

texture_set_repeat(false);

draw_enable_alphablend(false);

if(__SMOOTH_windowWidth mod 800 != 0 || __SMOOTH_windowHeight mod 608 != 0){
    var __SMOOTH_aspectRatio = __SMOOTH_windowWidth / __SMOOTH_windowHeight;
    var __SMOOTH_aspectRatioRatio = __SMOOTH_aspectRatio / (800/608);
    
    texture_set_interpolation(true);
    //shader_set(__SMOOTH_sh_pxUpscale);
    
    if(__SMOOTH_aspectRatioRatio < 1){
        var __SMOOTH_canvasHeight = __SMOOTH_windowWidth*608/800;
        var __SMOOTH_vertOutPixels = (__SMOOTH_windowHeight - __SMOOTH_canvasHeight) / 2;
        shader_set_uniform_f(__SMOOTH_u_texelsPerPixel, 800./__SMOOTH_windowWidth, 608./__SMOOTH_canvasHeight);
        draw_surface_stretched(application_surface, 0, __SMOOTH_vertOutPixels, __SMOOTH_windowWidth, __SMOOTH_canvasHeight);
    }
    else{
        var __SMOOTH_canvasWidth = __SMOOTH_windowHeight*800/608;
        var __SMOOTH_horOutPixels = (__SMOOTH_windowWidth - __SMOOTH_canvasWidth) / 2;
        shader_set_uniform_f(__SMOOTH_u_texelsPerPixel, 800./__SMOOTH_canvasWidth, 608./__SMOOTH_windowHeight);
        draw_surface_stretched(application_surface, __SMOOTH_horOutPixels, 0, __SMOOTH_canvasWidth, __SMOOTH_windowHeight);
    }
    
    shader_reset();
    texture_set_interpolation(false);
}
else{
    draw_surface(application_surface,0,0);
}

draw_enable_alphablend(true);

