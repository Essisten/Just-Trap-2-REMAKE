//make sure we never have more than one world object
if (instance_number(object_index) > 1)
    instance_destroy();
__SMOOTH_u_texelsPerPixel = shader_get_uniform(__SMOOTH_sh_pxUpscale,"u_texelsPerPixel");

