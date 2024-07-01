var xp,yp,xx,yy,i, save;
xp=x;
yp=y;
xx=xp;
yy=yp;
i=0;
save = -1;

if (instance_exists(objSave))
{
    save = instance_nearest(xx, yy, objSave);
}
if (save > -1 and distance_to_object(save) < 96)
{
    repeat (64)
    {
        if (place_free(xx, yy) and !instance_place(xx, yy, objPlayerKiller))
            break;
        dir = point_direction(xx, yy, save.x + 16, save.y + 16);
        xx += lengthdir_x(3, dir);
        yy += lengthdir_y(3, dir);
    }
}
else
{
    repeat ((360/45)* 64)
    {
        xx = xp + lengthdir_x(i div 360,i);
        yy = yp + lengthdir_y(i div 360,i);
        if (place_free(xx,yy)) && !instance_place(xx,yy,objPlayerKiller)
            break;
        i+=45;
    }
}
x=xx;
y=yy;

