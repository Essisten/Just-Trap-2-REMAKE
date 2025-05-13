event_inherited();
image_speed = 0;
canParry = false;
bullet = noone;
bounce_counter = 0;
evenCounter = false;
frozen = false;
iframe = 0;
HP = 50;
maxHP = HP;
image_xscale = 16;
image_yscale = image_xscale;
with (instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 192, objCard))
{
    image_index = 5;
}
if (global.spriteStyle == 1)
{
    sprite_index = sprBigKid_Head_Old;
}

