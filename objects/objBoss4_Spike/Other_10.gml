/// @description Selecting skin
if (owner == objJustination)
    return -1;
var s = 0;
switch (owner)
{
    case objJustinationDark:
        s = 1;
        break;
    case objJustinationIce:
        s = 2;
        break;
    case objJustinationLight:
        s = 3;
        break;
    case objJustinationFire:
        s = 4;
        break;
}
if (owner.HP <= 0)
    s = 5;
image_index = s;

