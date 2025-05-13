/// @description Configure
var offset = 32;
switch (side)
{
    case 1:
         image_angle = 180;
         y = offset;
         break;
    case 2:
         image_angle = 90;
         x = 800 - offset;
         break;
    case 3:
         y = 608 - offset;
         break;
    case 4:
         image_angle = 270;
         x = offset;
         break;
}
if (type == 2)
   image_index = 1;

