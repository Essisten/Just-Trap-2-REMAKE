/// @description Spawning blocks
var obj = objJustrimson_Block;
if (block_type)
   obj = objJustrimson_Water;
with (instance_create(800, 224, obj))
{
    hspeed *= -1;
    image_index = 1;
}
instance_create(-32, 352, obj);
alarm[2] = 80 - global.difficulty * 15;

