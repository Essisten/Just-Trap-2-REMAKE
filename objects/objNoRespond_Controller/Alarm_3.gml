/// @description tf you mean "no surface" ?
if (!surface_exists(application_surface))
{
    alarm[3] = 1;
    exit;
}
instance_deactivate_all(true);
surface = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));
surface_copy(surface, 0, 0, application_surface);

