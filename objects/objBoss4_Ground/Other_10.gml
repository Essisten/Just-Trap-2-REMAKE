/// @description Changing skin
var s = image_index;
if (objJustination.active)
{
    image_index = 0;
}
if (x < 400)
{
    switch (ds_list_find_value(objJustination.active_parts, 0))
    {
        case objJustinationDark:
            s = 2;
            break;
        case objJustinationIce:
            s = 3;
            warm = 0;
            if (x < 32 or objJustinationIce.HP <= 0)
                s = 5;
            break;
        case objJustinationLight:
            s = 4;
            break;
        case objJustination:
        case objJustinationFire:
            s = 0;
            break;
    }
}
else
{
    switch (ds_list_find_value(objJustination.active_parts, 1))
    {
        case objJustinationDark:
            s = 2;
            break;
        case objJustinationIce:
            s = 3;
            if (x > 720 or objJustinationIce.HP <= 0)
                s = 5;
            break;
        case objJustinationLight:
            s = 4;
            break;
        case objJustination:
        case objJustinationFire:
            s = 0;
            break;
    }
}
image_index = s;

