if (hidden)
{
    x = hole.x;
    y = hole.y;
}
with (instance_create(x, y, objBloodEmitter))
{
    image_blend = c_aqua;
    H2_Amount = 10;
    H2_Speed = 8;
    type = 2;
}

