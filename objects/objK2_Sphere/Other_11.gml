/// @description Counter-attack
repeat (4 + (global.difficulty * 2))
{
     var proj = instance_create(x, y, objK2_Projectile2);
     proj.image_index = image_index;
     proj.speed = bullet_spd + random(1);
     proj.dmg /= 5;
     with (proj)
     {
         direction = random_range(100, 260);
         image_xscale = random_range(0.2, 0.5);
         image_yscale = image_xscale;
     }
}

