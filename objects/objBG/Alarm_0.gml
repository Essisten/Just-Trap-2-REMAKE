/// @description Background flashing
var r = random_range(0.5, 1);
for (var i = 0; i < tiles_count; i++)
{
    tile_set_alpha(tiles[i], r);
}
alarm[0] = 20;

