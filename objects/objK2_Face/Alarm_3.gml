/// @description Explode
var boom = instance_create(x + random_range(-128, 128), y + random_range(-64, 128), objK2_Laser);
with (boom)
{
    sprite_index = sprK2_DeathBoom;
}
counter++;
scrPlaySound(sndK2_Boom);
alarm[3] = 10;

