/// @description spinning circle mini attack
var c = instance_create(x, y, objK2_Projectile2);
c.direction = counter;
c.speed = (global.difficulty + 2) * 2 - random(1);
counter += random(32) - global.difficulty * 3;
audio_stop_sound(sndK2_Shoot);
scrPlaySound(sndK2_Shoot);
if (counter < 360)
   alarm[0] = 4 - global.difficulty;
else
    counter = 0;

