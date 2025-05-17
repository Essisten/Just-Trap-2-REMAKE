/// @description Hiding other tiles
for (var i = 1; i < 7; i++)
{
    var l = array_length(tiles[i]);
    var temp = tiles[i];
    for (var j = 0; j < l; j++)
    {
        tile_set_alpha(temp[j], 0);
    }
}

