if (hidden)
{
    x = hole.x;
    y = hole.y;
}
with (instance_create(x, y, objBloodEmitter))
{
    type = 2;
    H2_Amount = 10;
    H2_Speed = 8;
}

