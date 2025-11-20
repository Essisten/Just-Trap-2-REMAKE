/// @description Smoothly appear
if (image_alpha >= 1)
{
	alarm[0] = 100 - 50 * global.difficulty;
	exit;	
}
image_alpha += 0.05;
alarm[1] = 1;