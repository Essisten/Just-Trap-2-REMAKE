/// @description Stop existing
if (image_alpha <= 0)
{
	event_user(0);
	exit;
}
image_alpha -= 0.05;
alarm[0] = 1;