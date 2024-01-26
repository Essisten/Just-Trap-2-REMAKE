///scrPlaySound(sound, pitch, loop)
var loop = false;
if (argument_count > 2)
   loop = argument[2];
var s = audio_play_sound(argument[0], 3, loop);
audio_sound_gain(s, global.soundVol/100, 0);
if (argument_count > 1)
{
    audio_sound_pitch(s, argument[1]);
}
return s;
