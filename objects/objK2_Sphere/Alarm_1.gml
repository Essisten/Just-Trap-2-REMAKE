/// @description Periodic attack
if (!instance_exists(objPlayer))
   exit;
alarm[1] = 50 + instance_number(objK2_Sphere) * (6 - global.difficulty) * 5;
if (global.difficulty == 3)
   alarm[1] = 15;
var proj = noone;
switch (image_index)
{
    case 0:
         proj = instance_create(x, y, objK2_Projectile2);
         proj.image_index = image_index;
         proj.direction = point_direction(x, y, objPlayer.x, objPlayer.y);
         proj.speed = bullet_spd;
         break;
    case 1:
         for (var i = 0; i < 360; i += 32 - (global.difficulty * 8))
         {
             proj = instance_create(x, y, objK2_Projectile2);
             proj.image_index = image_index;
             proj.direction = i;
             proj.speed = bullet_spd;
             proj.image_speed = 0;
             proj.dmg /= 2;
         }
         break;
    case 2:
         proj = instance_create(x, y, objK2_Projectile2);
         proj.image_index = image_index;
         proj.direction = random_range(100, 260);
         proj.speed = bullet_spd;
         alarm[1] = ceil(alarm[1] / 10);
         break;
    case 3:
         proj = instance_create(x, y, objK2_Projectile2);
         proj.image_index = image_index;
         proj.direction = red_dir;
         proj.speed = bullet_spd;
         red_dir += 32 - (global.difficulty * 8);
         if (red_dir > 360)
            red_dir -= 360;
         alarm[1] = 20;
         break;
    case 4:
         proj = instance_create(x, y, objK2_Projectile2);
         proj.image_index = image_index;
         proj.direction = 180;
         proj.speed = bullet_spd;
         break;
}
proj.image_speed = 0;
proj.dmg /= 2;

