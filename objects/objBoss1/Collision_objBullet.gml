if (hidden)
    return -1;
if (HP <= 0 and bro.HP > 0)
{
    energy++;
    if (alarm[7] > 10)
        alarm[7] -= 10;
}
if (!instance_exists(bullet))
   bullet = instance_nearest(x, y, objBullet);
if (godmode or HP <= 0)
{
    instance_destroy(bullet);
    exit;
}
HP = max(HP - bullet.dmg, 0);
instance_destroy(bullet);
//godmode = true;
//alarm[2] = 1;
//alarm[3] = 40;
if (!sound_isplaying(hit))
   hit = scrPlaySound(sndBossHit);
if (HP <= 0)
    scrPlaySound(sndDeath);
if ((extraBulletsCounter == 0 and HP > 50 and HP <= 75) or
(extraBulletsCounter <= (1 + global.difficulty * 2) and HP > 25 and HP <= 50) or
(extraBulletsCounter <= (1 + global.difficulty * 2) * 2 and HP > 0 and HP <= 25) or 
(extraBulletsCounter <= (1 + global.difficulty * 2) * 3 and HP <= 0))
{
    event_user(13);
    scrPlaySound(sndBoss1);
    spd += 1 + global.difficulty;
    image_speed += 0.04;
    if (HP <= 0)
    {
        if (global.musicSlowdown)
        {
            with (objBG)
            {
                alarm[1] = 5;
                pitch = 232/256;
            }
        }
        alarm[7] = irandom_range(2000, 3000);
        reviveSound = true;
        if (bro.HP <= 0)
        {
            with (objBG)
            {
                event_user(3);
                if (global.musicSlowdown)
                {
                    pitch = 208/256;
                    alarm[1] = 5;
                }
            }
        }
    }
}

