/// @description Apply gravity direction
var dist = 16;
var ver = 72;
var hor = 30;
image_angle = 90 * gravH;
if (gravH)
{
    if (oldGrav != grav or oldGravH != gravH)
    {
        image_yscale = 3 * grav;
        gravity_direction = 90 + 90 * -grav;
        x += dist * grav;
        while (place_meeting(x, y, objBlock))
        {
            var tmp = false;
            if (!place_meeting(x, y + hor, objBlock))
                y += dist;
            else if (!place_meeting(x, y - hor, objBlock))
                y -= dist;
            else
                tmp = true;
            if (!place_meeting(x + ver * grav, y, objBlock) or tmp)
                x += dist * grav;
        }
        
    }
}
else
{
    if (oldGrav != grav or oldGravH != gravH)
    {
        image_yscale = 3 * grav;
        gravity_direction = 180 + 90 * grav;
        y += dist * grav;
        while (place_meeting(x, y, objBlock))
        {
            var tmp = false;
            if (!place_meeting(x + hor, y, objBlock))
                x += dist;
            else if (!place_meeting(x - hor, y, objBlock))
                x -= dist;
            else
                tmp = true;
            if (!place_meeting(x, y + ver * grav, objBlock) or tmp)
                y += dist * grav;
        }
    }
}