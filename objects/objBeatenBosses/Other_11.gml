/// @description Changing tiles transparency
var l = array_length_1d(tiles[sel]);
var temp = tiles[sel];
for (var i = 0; i < l; i++)
{
    tile_set_alpha(temp[i], __background_get( e__BG.Alpha, 1 ));
}
switch (global.selectedBoss)
{
    case 1:
        if (__background_get( e__BG.Index, 1 ) != bBoss1)
            __background_set( e__BG.Index, 1, bBoss1 );
        break;
    case 2:
        if (__background_get( e__BG.Index, 1 ) != bBoss2_BG)
            __background_set( e__BG.Index, 1, bBoss2_BG );
        break;
    case 3:
        if (__background_get( e__BG.Index, 1 ) != bBoss3_BG2)
            __background_set( e__BG.Index, 1, bBoss3_BG2 );
        break;
    case 4:
        if (__background_get( e__BG.Index, 1 ) != bBoss4)
            __background_set( e__BG.Index, 1, bBoss4 );
        break;
    case 6:
        if (__background_get( e__BG.Index, 1 ) != bFinalBoss_BG)
            __background_set( e__BG.Index, 1, bFinalBoss_BG );
        break;
}

