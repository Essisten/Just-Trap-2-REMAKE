/// @description Start moving spikes
for (var i = 0; i < 19; i++)
{
    if (i > 9 and i < 16)
       continue;
    instance_create(x + 32 * (i + 2), y + 32, objSpikeDown);
    instance_create(x + 32 * (i + 1), 576, objSpikeUp);
}
with (objSpikeUp)
{
    vspeed = -2;
    depth = 200;
}
with (objSpikeDown)
{
    vspeed = 2;
    depth = 200;
}
alarm[1] = 16;
//event_user(0);

