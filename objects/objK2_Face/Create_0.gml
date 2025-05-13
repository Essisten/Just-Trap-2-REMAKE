image_speed = 0;
image_xscale = 16;
image_yscale = image_xscale;
instance_destroy(objBigGeezer_Head);
instance_destroy(objGeezer_Text);
audio_stop_sound(sndGeezerStatic);
instance_destroy(objBigGeezer_BG);
with (objSpikeParent)
{
    if (global.spriteStyle == 0)
       sprite_index = sprBigKid_KamiliaSpike;
    else
    {
        sprite_index = sprSpikeUp;
        image_blend = c_fuchsia;
    }
}
with (objBlock)
{
    if (global.spriteStyle == 0)
       sprite_index = sprBigKamilia_Block;
     visible = true;
}
counter = 0;
if (global.spriteStyle == 0)
{
    with (objBigKid_BG)
    {
       with (top_wall)
            image_index = 1;
       with (left_wall)
            image_index = 2;
       with (right_wall)
            image_index = 2;
       with (bottom_wall)
       {
           sprite_index = sprBigKamilia_Platform;
           image_xscale = ceil((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - x) /
           sprite_get_width(sprite_index)) - 1;
       }
    }
}
else
{
    with (objBigKid_BG)
    {
        bottom_wall.sprite_index = sprBlock3;
        top_wall.sprite_index = sprBlock3;
        left_wall.sprite_index = sprBlock2;
        right_wall.sprite_index = sprBlock2;
    }
    with (objBlockEdge)
         sprite_index = sprBlock;
    with (objBlock)
         image_blend = c_fuchsia;
}
with (objBigBow)
     image_index = 3;
instance_create(objBigKid_BG.x, objBigKid_BG.y, objBigJust_ViewMover);

