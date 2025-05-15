//make sure we never have more than one world object
if (instance_number(object_index) > 1)
    instance_destroy();
u_texelsPerPixel = shader_get_uniform(sh_pxUpscale,"u_texelsPerPixel");
application_surface_draw_enable(false);