switch (global.currentWeapon)
{
    case 0:
        instance_create(x,y,objBullet);
        scrPlaySound(sndShoot);
        break;
    case 1:
         repeat (8)
            instance_create(x, y, objBulletShotgun);
        scrPlaySound(sndShotgunShoot);
         break;
    case 2:
        with (instance_create(x,y,objBullet))
        {
            direction += random_range(-5, 5);
        }
        scrPlaySound(sndShoot, 1.5);
        break;
}

