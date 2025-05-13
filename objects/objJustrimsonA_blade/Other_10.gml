gravity_direction += 180;
if (gravity_direction > 360)
   gravity_direction -= 360;
if (endless)
{
   alarm[0] = 100;
}
else
    alarm[0] = -1;

if ((x < -100 and (gravity_direction < 270 and gravity_direction > 90)) or
   (x > 1000 and (gravity_direction < 90 or gravity_direction > 270)) or
   (y < -100 and (gravity_direction < 180 and gravity_direction > 0)) or
   (y > 700 and gravity_direction > 180))
{
   gravity_direction += 180;
   alarm[1] = -1;
}
if (gravity_direction > 360)
   gravity_direction -= 360;

