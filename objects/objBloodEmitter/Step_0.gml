if (type == 2)
{
    repeat (H2_Amount)
    {
        bl = instance_create(x, y, objBloodH2);
        bl.image_blend = image_blend;
        bl.speed = random(H2_Speed);
        bl.direction = random(360);
        bl.gravity_direction = 90 + global.gravH * 90 + max(global.grav, 0) * 180;
    }
}
else
{
    for (var i = 0; i < 36; i++)
    {
        if (random(1) < 0.3)
        {
            repeat (10)
            {
                tmp = instance_create(x, y, objBlood);
                tmp.direction = i * 10;
                tmp.image_blend = image_blend;
            }
        }
    }
}

