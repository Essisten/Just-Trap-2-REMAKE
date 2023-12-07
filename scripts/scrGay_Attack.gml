///Big Just: Gay phase
if (tmpHP > 10)
{
   if (!instance_exists(objGayReporter))
      instance_create(x - 56, y, objGayReporter);
   else
       objGayReporter.shoots++;
}
if (tmpHP > 20)
{
   f = instance_create(x, y + 64, objGayFireball);
   f.hspeed = -3 + global.difficulty / 2;
}
if (tmpHP > 30)
{
   if (instance_exists(objBigKid_GayShooter))
      objBigKid_GayShooter.shoots++;
   else
       instance_create(v_w + 29, v_h - 130, objBigKid_GayShooter);
}
if (tmpHP > 40)
{
   with (instance_create(view_xview + view_wview[0], random_range(256, 448), objCherry))
   {
       sprite_index = sprTrapCard;
       hspeed = -2 * (global.difficulty + 1);
   }
}
if (tmpHP > 50)
{
   for (var i = 0; i < (global.difficulty) * 2; i++)
   {
       with (instance_create(random_range(160, 416), view_yview[0], objPlayerKiller))
       {
           sprite_index = sprBigKid_GaySpike;
           gravity = 0.1 * random_range(1, global.difficulty);
           image_angle = 180;
           depth = -100;
       }
   }
   if (irandom(2) == 0)
      snd = choose(sndGayBilly1, sndGayBilly2, sndGayBilly3, sndGayBilly4, sndGayBilly5);
}
if (HP <= 0)
   snd = sndGayBillyDeath;
