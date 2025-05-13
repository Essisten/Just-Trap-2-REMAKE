if (active)
{
    y = oldY + 4 * sin(degtorad(dick));
    dick += 8;
}
else if (gravity == 0)
{
    y = oldY;
    dick = 0;
}
if (y > 800)
    instance_destroy();

