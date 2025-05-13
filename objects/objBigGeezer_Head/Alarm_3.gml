/// @description Make noise
sprite_index = sprBigGeezer_Noise;
image_blend = c_white;
alarm[1] = 50;
noise = true;
scrPlaySound(sndGeezerStatic, 1, true);
if (!on)
   alarm[1] /= 2;

