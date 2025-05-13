/// @description Smooth animation
var max_glow_thicc = nohit_challenge / (8 - global.difficulty * 2);
if (glow_thicc == max_glow_thicc)
   exit;
if (glow_thicc < max_glow_thicc)
   glow_thicc += 0.01;
else
    glow_thicc -= 0.01;
alarm[3] = 1;

