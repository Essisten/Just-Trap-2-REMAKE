/// @description stop noise
var offset = 64;
sprite_index = sprBigGeezer_Head;
noise = false;
audio_stop_sound(sndGeezerStatic);
if (intro and crazy)
{
   alarm[2] = 1;
   alarm[5] = 100;
   intro = false;
   if (global.spriteStyle == 0 and global.particles)
   {
       part_emitter_region(global.topParticleSystem, emitter,
    x - offset, x, y, y + offset, pt_shape_square, ps_distr_invgaussian);
       part_emitter_stream(global.topParticleSystem, emitter, effect, -20);
    }
   with (objGeezer_Text)
        event_user(0);
}
if (on)
{
    image_blend = make_colour_hsv(52, 222, 230);
}
else
{
    alarm[3] = 25;
    image_blend = make_colour_hsv(0, 0, 127);
}

