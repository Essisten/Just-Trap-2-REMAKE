if (instance_exists(objJustrimsonD))
{
    if (objJustrimsonD.HP >0)
       event_inherited();
}
if (speed > spd)
   speed = spd;
if (ready or !instance_exists(objJustrimsonD))
   exit;
gravity_direction = point_direction(x, y, objJustrimsonD.x, objJustrimsonD.y);

