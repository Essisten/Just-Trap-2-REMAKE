/// @description Changing spot
if (!instance_exists(objPlayer))
   exit;
spot++;
if (spot > 4)
   spot -= 4;
switch (spot)
{
    case 1:
         xdest = 112;
         break;
    case 2:
         ydest = 112;
         break;
    case 3:
         xdest = 688;
         break;
    case 4:
         ydest = 496;
         break;
}
alarm[1] = 400;
alarm[2] = 1;

