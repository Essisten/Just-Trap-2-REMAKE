event_inherited();
if (!objJR.hidden and instance_number(objWarningJR) > 1)
{
    with (instance_furthest(x, y, objWarningJR))
    {
        dest[0] = other.x;
        dest[1] = other.y;
    }
    instance_destroy();
}

if (objJR.HP <= 0)
    sprite_index = sprWarningDark;

