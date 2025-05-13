if (!instance_exists(objPlayer))
   exit;
if (aim)
{
    switch (side)
    {
        case 1:
        case 3:
             x += (objPlayer.x - x) / 8;
             break;
        case 2:
        case 4:
             y += (objPlayer.y - y) / 8;
             break;
    }
    if (image_alpha < 0.8)
       image_alpha += 0.05;
}

