/// @description happil 2 slowdown
if (audio_sound_get_pitch(global.currentMusic) <= 32/256)
{
    audio_stop_sound(global.currentMusic);
    exit;
}
audio_sound_pitch(global.currentMusic, audio_sound_get_pitch(global.currentMusic) - 2/256);
alarm[3] = 1;

