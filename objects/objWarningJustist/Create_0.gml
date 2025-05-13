event_inherited();
if (!objJustist.hidden and instance_number(objWarningJustist) > 1)
{
    with (instance_furthest(x, y, objWarningJustist))
    {
        dest[0] = other.x;
        dest[1] = other.y;
    }
    instance_destroy();
}

if (objJustist.HP <= 0)
    sprite_index = sprWarningDark;

