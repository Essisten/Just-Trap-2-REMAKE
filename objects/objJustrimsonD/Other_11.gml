if (nohit_challenge < 8 - global.difficulty * 2)
   exit;
/*
with (instance_create(400, 304, objBoss2Warning))
{
    image_angle = 90 + 90 * -global.grav;
    direction = image_angle + 90;
}*/
instance_create(0, 0, objPixelation);
alarm[10] = 80 - 25 * global.difficulty;