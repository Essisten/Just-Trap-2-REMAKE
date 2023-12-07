///Big Just: Solgryn phase
if (tmpHP > 10)
{
   var amount = 8 * (global.difficulty + 1);
   var rng = random(360 / amount);
   snd = sndSolgrynShoot;
   for (var i = 0; i < amount; i++)
   {
       var b = instance_create(x + 64, y + 64, objReflectableKiller);
       b.direction = 360 / amount * i + rng;
       b.image_angle = b.direction;
       b.speed = fruit_spd;
       b.sprite_index = sprSolgrynBullet;
       b.image_speed = 1/8;
   }
   part_emitter_region(global.topParticleSystem, objBigKid_BG.emitter, x + 64, x + 64, y + 64, y + 64, ps_shape_line, ps_distr_linear);
   part_emitter_burst(global.topParticleSystem, objBigKid_BG.emitter, objBigKid_BG.solgryn_effect, 1);
}
if (tmpHP > 20)
{
   var step = 32 + 16 * (4 - global.difficulty);
   var i = 64;
   snd = choose(snd, sndHadoken);
   if (global.difficulty == 3)
   {
      step += 16;
      i += evenCounter * 32;
   }
   for (; i <= 800 - 64; i += step)
   {
       var h = instance_create(view_xview + i, view_yview[0], objReflectableKiller);
       h.vspeed = fruit_spd * 0.8;
       with (h)
       {
           sprite_index = sprSolgrynHadoken;
           image_xscale = 1.5;
           image_yscale = image_xscale;
           image_angle = 270;
           image_speed = 1/8;
       }
   }
   evenCounter = !evenCounter;
}
if (tmpHP > 30)
{
   instance_create(random_range(160, 416), view_yview[0], objKitty);
}
if (tmpHP > 40)
{
   instance_create(random_range(160, 416), v_h + 92, objPirhanaPlant);
}
if (tmpHP > 50)
{
   instance_create(random_range(160, 416), v_h, objSolgryn_Water);
   snd = choose(snd, sndSolgrynWater);
}
