/// @description Movivng
if (x != xdest)
   x += sign(xdest - x) * hspd;
else if (y != ydest)
   y += sign(ydest - y) * vspd;
else
{
    nohit_challenge++;
    alarm[3] = 1;
    event_user(1);
    exit;
}

if (abs(xdest - x) < hspd)
   x = xdest;
if (abs(ydest - y) < vspd)
   y = ydest;

alarm[2] = 1;

