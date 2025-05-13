with (objSpikeUp)
{
    sprite_index = sprBoss3_Lava;
    image_speed = 1/15;
    if (y == 1760)
       depth -= 1;
}
if (!instance_exists(objPlayer))
    exit;
with (objPlayer)
{
     maxVspeed = 4.5;
     y = 0;
}
objWorld.alarm[2] = 100;
global.frozen = true;

