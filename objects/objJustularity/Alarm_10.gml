/// @description Changing pitch
var p = min(audio_sound_get_pitch(global.currentMusic), 1);
if (pitch >= p)
    exit;
audio_sound_pitch(global.currentMusic, p - 1/256);
alarm[10] = 5;