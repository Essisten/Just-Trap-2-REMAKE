/// @description Music slowdown
audio_sound_pitch(global.currentMusic, pitch);
if (pitch <= maxPitch)
{
    alarm[1] = -1;
    return -1;
}
pitch -= 1/256;
alarm[1] = 10;

