/// @description Firing
with (instance_create(x, fire.y - 64, objCherry))
{
    vspeed = -(global.difficulty + 1);
    sprite_index = sprPirhanaPlant_Laser2;
    depth = -112;
    canParry = false;
    image_speed = 0;
}
counter++;
if (counter > (global.difficulty + 1) * 10)
{
    vspeed = 2;
    image_index = 0;
    instance_destroy(fire);
    exit;
}
alarm[2] = 2;

