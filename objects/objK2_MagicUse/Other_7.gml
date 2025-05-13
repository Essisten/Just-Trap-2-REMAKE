instance_destroy();
var c = irandom(12);
var amount = 10 + (global.difficulty - 1) * 2;
repeat (amount)
{
    var proj = instance_create(x, y, objK2_Projectile);
    with (proj)
    {
        speed = 1 * (global.difficulty + 1);
    }
    proj.direction = c;
    c += 360 / amount;
}
amount = 13 + (global.difficulty - 1) * 4;
repeat (amount)
{
    var proj = instance_create(x, y, objK2_Projectile);
    with (proj)
    {
        speed = 1 * (global.difficulty + 1.5);
    }
    proj.direction = c;
    c += 360 / amount;
}
amount = 10 + (global.difficulty - 1) * 2;
repeat (amount)
{
    var proj = instance_create(x, y, objK2_Projectile);
    with (proj)
    {
        speed = 1 * (global.difficulty + 2);
    }
    proj.direction = c;
    c += 360 / amount;
}

