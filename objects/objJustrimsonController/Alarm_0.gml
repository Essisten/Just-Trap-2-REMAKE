/// @description Pull out the spikes
with (objSpikeUp)
{
    image_blend = c_red;
    vspeed = -2;
}
with (objSpikeDown)
{
    image_blend = c_blue;
    vspeed = 2;
}
alarm[1] = 32;

