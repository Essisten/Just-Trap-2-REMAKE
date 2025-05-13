blend = c_white;
sel = global.selectedBoss;
var d = 100000000;
for (var i = 0; i < 7; i++)
{
    tiles[i] = tile_get_ids_at_depth(d);
    d /= 10;
}
event_user(0);
__background_set( e__BG.Alpha, 1, 0.99 );
if (global.tutorial[0])
    instance_create(160, 64, objTutorial1);
if (global.hubColor == -1)
    global.hubColor = irandom(255);
__background_set( e__BG.Blend, 0, make_colour_hsv(global.hubColor, 220, 255) );
alarm[0] = 10;

