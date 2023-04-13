///scrPlaySound(sound, pitch)

var s = audio_play_sound(argument[0], 3, false);
audio_sound_gain(s, global.soundVol/100, 0);
if (argument_count > 1)
{
    audio_sound_pitch(s, argument[1]);
}
return s;
