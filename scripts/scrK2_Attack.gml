///Kamilia 2 phase
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
    var dist = 80 - (global.difficulty * 16);
    instance_create(objPlayer.x - dist, 576, objK2_Laser);
    instance_create(objPlayer.x + dist, 576, objK2_Laser);
    snd = choose(snd, sndK2_Laser);
}
