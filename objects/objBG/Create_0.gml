alarm[0] = 20;
tiles = tile_get_ids_at_depth(1000000);
tiles_count = array_length_1d(tiles);
holes_count = 5;
holes[0] = 0;
for (var i = 0; i < holes_count; i++)
{
    holes[i] = instance_find(objWallHole, i);
}
spd = 1;
phase = 0;
once = true;
final = false;
timer = 15 * (global.difficulty + 1);
pitch = 1;
maxPitch = 1;
draw_set_valign(fa_top);
event_user(4);

