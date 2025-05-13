line = 3;
if (!global.soundTest)
   room_goto_next();
warn_alpha = 0;
image_alpha = 0;
sel = 1;
choice = 1;
phrase = 0;
answer = irandom(2);
warn[0] = "WRONG! Are you deaf?"
warn[1] = "Wow, you have ears!"
warn[2] = "What next? Play blindfolded?"
warn_color[0] = c_red;
warn_color[1] = c_lime;
warn_color[2] = c_yellow;
sound[0] = sndCherry;
sound[1] = sndSpike;
sound[2] = sndShoot;
musicPlaying = -1;
music[0] = musTitleA;
music[1] = musStage2A;
music[2] = musStage2C;
music[3] = musStage3A;
alarm[1] = 1;
alarm[3] = 50;
alarm[4] = 10;

