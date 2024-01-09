///Big Just: Crimson phase
if (tmpHP > 10)
{
   var f;
   f = instance_create(v_w, view_yview + (view_hview[0] / 2), objCherry);
   f.direction = point_direction(f.x, f.y, objPlayer.x, objPlayer.y);
   f.speed = fruit_spd;
}
if (tmpHP > 20)
{
   var yy = random_range(view_yview[0], v_h);
   var amount = 8 * (global.difficulty + 1);
   var dir = choose(1, -1);
   for (var i = 1; i <= 8 * (global.difficulty + 1); i++)
   {
       var f = instance_create(v_w, yy, objCherry);
       f.speed = fruit_spd;
       f.direction = 90 + 180 / amount * i;
       f.sprite_index = sprCherry_Colorful;
       f.image_blend = c_yellow;
       if (tmpHP > 60)
          f.change_dir = dir * 0.5;
   }
}
if (tmpHP > 30)
{
   var xx = objPlayer.x;
   f[0] = instance_create(view_xview[0], view_yview[0], objCherry);
   f[1] = instance_create(view_xview[0], v_h, objCherry);
   if (global.difficulty == 3)
   {
       f[2] = instance_create(v_w, view_yview[0], objCherry);
       f[3] = instance_create(v_w, v_h, objCherry);
   }
   for (var i = 0; i < array_length_1d(f); i++)
   {
       f[i].speed = fruit_spd;
       f[i].sprite_index = sprCherry_Colorful;
       f[i].direction = point_direction(f[i].x, f[i].y, xx, view_yview[0] + view_hview[0] / 2);
       f[i].image_blend = c_blue;
   }
}
if (tmpHP > 40)
{
       g[0] = instance_create(view_xview[0], random_range(256, 448), objCherry);
       g[0].hspeed = fruit_spd / 2;
       if (global.difficulty > 0)
       {
          g[1] = instance_create(v_w, random_range(256, 448), objCherry);
          g[1].hspeed = -fruit_spd / 2;
       }
       if (global.difficulty == 3)
       {
           g[2] = instance_create(random_range(160, 416), v_h, objCherry);
           g[2].vspeed = -fruit_spd / 2;
           g[3] = instance_create(random_range(160, 416), view_yview[0], objCherry);
           g[3].vspeed = fruit_spd / 2;
       }
       for (var i = 0; i < array_length_1d(g); i++)
       {
           g[i].sprite_index = sprCherry_Colorful;
           g[i].image_blend = c_lime;
       }
}
if (tmpHP > 50)
{
   f = instance_create(v_w, objPlayer.y, objCrimsonCherry);
   f.direction = 180;
   f.x = x + 64;
   f.speed = fruit_spd;
}
