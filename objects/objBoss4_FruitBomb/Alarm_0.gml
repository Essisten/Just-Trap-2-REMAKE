for(i = 0; i < 5; i++)
{
    var f = instance_create(x, y, objCherry);
    with (f)
    {
        sprite_index = sprCherryDark;
        speed = 3 + global.difficulty * 2;
        reflected = other.reflected;
        if (instance_exists(objJustinationDark))
        {
            if objJustinationDark.HP <= 0
                sprite_index = sprCherryGray;
        }
    }
    f.direction = 180 + 45 * i;
}
instance_destroy();

