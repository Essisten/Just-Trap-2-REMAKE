side = irandom_range(1, 4);
type = 1;
aim = true;
beam = noone;
size = 2 + 2 * global.difficulty;
alarm[0] = 150 - global.difficulty * 25;
alarm[2] = 1;
image_speed = 0;
image_alpha = 0;
if (global.difficulty == 3)
   type = 2;
else
{
  image_xscale += 0.25 * global.difficulty;
  image_yscale = image_xscale;

}
if (!instance_exists(objJustrimsonB))
   exit;

