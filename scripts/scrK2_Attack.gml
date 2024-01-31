///Kamilia 2 phase
if (HP <= 10 and objK2_Face.image_index == 0)
{
    frozen = true;
    instance_create(view_xview[0] + view_wview[0] / 2,
      view_yview[0] + view_hview[0] / 2, objK2_LightEffect);
    with (objK2_Face)
    {
        alarm[1] = 50;
        image_index = 1;
    }
    exit;
}
if (HP <= 0)
{
    frozen = true;
    instance_create(view_xview[0] + view_wview[0] / 2,
      view_yview[0] + view_hview[0] / 2, objK2_LightEffect);
    with (objK2_Face)
    {
        alarm[2] = 50;
        image_index = 2;
    }
}
if (tmpHP > 0)
{
    with (instance_create(x - 208, y + 80, objK2_Ball))
    {        
        hspeed = -(global.difficulty + 1) * 3;
        image_angle = 180;
    }
    snd = sndK2_Ball;
}
if (tmpHP > 10)
{
    instance_create(random_range(64, 576), 128, objK2_MagicUse);
    snd = choose(snd, sndK2_Shoot2);
}
if (tmpHP > 20 and instance_exists(objPlayer))
{
    var dist = 40 + 30 - (global.difficulty * 8);
    instance_create(objPlayer.x - dist, 576, objK2_Laser);
    instance_create(objPlayer.x + dist, 576, objK2_Laser);
    snd = choose(snd, sndK2_Laser);
}
if (tmpHP > 30)
{
    snd = choose(snd, sndK2_Shoot);
    switch (irandom(2))
    {
        case 0:
             for (var i = 0; i < 360; i = i)
             {
                i += (random_range(8, 36) - (global.difficulty * 4));
                var c = instance_create(x, y, objK2_Projectile2);
                c.direction = i;
                c.speed = fruit_spd;
             }
             break;
        case 1:
             for (var i = 135; i < 225; i += 24 - global.difficulty * 6)
             {
                var c = instance_create(x, y, objK2_Projectile2);
                c.direction = i;
                c.speed = fruit_spd - random(1);
             }
             break;
        case 2:
             if (!instance_exists(objK2_PeriodicAttack))
                instance_create(x, y, objK2_PeriodicAttack);
             objK2_PeriodicAttack.alarm[0] = 1;
             break;
    }
}
if (tmpHP > 40)
{
    for (var i = 64; i < view_xview[0] + view_wview[0] - 128; i += 96 - (global.difficulty * 16))
    {
        show_debug_message(i);
        instance_create(i, view_yview[0] - 8, objK2_Bomb);
    }
}
