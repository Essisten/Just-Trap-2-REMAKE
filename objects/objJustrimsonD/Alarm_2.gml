/// @description Movivng
if (x != xdest)
   x += sign(xdest - x) * hspd;
else if (oldY != ydest)
   oldY += sign(ydest - oldY) * vspd;
else
{
    nohit_challenge++;
    alarm[3] = 1;
    event_user(1);
    exit;
}

if (abs(xdest - x) < hspd)
   x = xdest;
if (abs(ydest - oldY) < vspd)
   oldY = ydest;

alarm[2] = 1;

