/// @description Stop freezing
global.smoothingMode = old_smoothing;
instance_activate_all();
audio_resume_sound(global.currentMusic);
with (instance_create(objBigKid_Head.x, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), objStickyKeys))
{
    vspeed = -4;
}
with (objBigGeezer_Head)
{
    event_perform(ev_alarm, 3);
    alarm[1] = -1;
    alarm[2] = -1;
}
instance_destroy();

