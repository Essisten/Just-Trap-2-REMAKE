///Big Just: LoveTrap phase
if (global.difficulty == 3)
{
   if (HP < 10)
      fruit_spd *= 2;
   for (var i = 0; i < tmp + 1; i++)
   {
       with (instance_create(v_w, random_range(256, 448), objCherry))
            hspeed = -other.fruit_spd * random_range(0.6, 1);
       with (instance_create(random_range(160, 416), v_h, objCherry))
            vspeed = -other.fruit_spd * random_range(0.6, 1);
       with (instance_create(random_range(160, 416), view_yview[0], objCherry))
            vspeed = other.fruit_spd * random_range(0.6, 1);
       with (instance_create(view_xview[0], random_range(256, 448), objCherry))
            hspeed = other.fruit_spd * random_range(0.6, 1);
   }
}
else
{
   if (tmpHP > 10)
       with (instance_create(random_range(160, 416), view_yview[0], objCherry))
            vspeed = other.fruit_spd * random_range(0.6, 1);
   if (tmpHP > 20)
       with (instance_create(random_range(160, 416), v_h, objCherry))
            vspeed = -other.fruit_spd * random_range(0.6, 1);
   if (tmpHP > 30)
       with (instance_create(v_w, random_range(256, 448), objCherry))
            hspeed = -other.fruit_spd * random_range(0.6, 1);
   if (tmpHP > 40)
       with (instance_create(view_xview[0], random_range(256, 448), objCherry))
            hspeed = other.fruit_spd * random_range(0.6, 1);
}
