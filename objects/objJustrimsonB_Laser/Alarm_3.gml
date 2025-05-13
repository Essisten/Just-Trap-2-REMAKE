/// @description Circle fade
if (image_alpha > 0)
{
   image_alpha -= 0.05;
   alarm[3] = 1;
}
else
{
    instance_destroy();
}

