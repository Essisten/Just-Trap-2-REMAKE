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
}

