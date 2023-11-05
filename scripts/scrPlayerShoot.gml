switch (ds_list_find_value(global.arsenal, global.currentWeapon))
{
    case 0:
        instance_create(x,y,objBatHit);
        attacking = true;
        sprite_index = sprBatAttack;
        image_speed = 0.2;
        scrPlaySound(sndShoot);
        break;
    case 1:
        instance_create(x,y,objBullet);
        scrPlaySound(sndShoot);
        break;
    case 2:
         repeat (8)
            instance_create(x, y, objBulletShotgun);
        scrPlaySound(sndShotgunShoot);
         break;
    case 3:
        with (instance_create(x,y,objBullet))
        {
            direction += random_range(-5, 5);
            dmg /= 2;
            speed += random(5);
        }
        scrPlaySound(sndShoot, 1.5);
        break;
}

