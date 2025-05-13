/// @description Stretch the box
if (x > 0)
   x -= 4;
else if (y > 0)
     y -= 4;
else
{
    alarm[2] = 64;
    for (var i = 1; i < 21; i++)
    {
         if (i > 4 and i < 15)
            continue;
        with (instance_create(32 * (i + 1), -64, objSpikeDown))
        {
            vspeed = 2;
            if (global.spriteStyle == 0)
               sprite_index = sprBigKid_KamiliaSpike;
            else
            {
                sprite_index = sprSpikeUp;
                image_blend = c_fuchsia;
            }
        }
        if (i > 4)
           continue;
        with (instance_create(32 * i,
             __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 64, objSpikeUp))
        {
            vspeed = -2;
            if (global.spriteStyle == 0)
               sprite_index = sprBigKid_KamiliaSpike;
            else
            {
                sprite_index = sprSpikeUp;
                image_blend = c_fuchsia;
            }
        }
    }
    if (global.spriteStyle == 0)
    {
        for (var i = 0; i <= __view_get( e__VW.WView, 0 ); i += 400;)
        {
            var line = instance_create(__view_get( e__VW.XView, 0 ) + i, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 115, objBlock);
            with (line)
            {
                sprite_index = sprK2_Line;
                image_speed = 1/3;
                visible = true;
                vspeed = -2;
                depth = -20;
            }
        }
    }
    /*
    var xs = -1;
    for (var i = -8; i < view_wview[0] + 32; i += 42)
    {
        var line = instance_create(view_xview[0] + i, view_yview[0] + view_hview[0] + 115, objBlock);
        with (line)
        {
            sprite_index = sprK2_Line;
            image_speed = 1/3;
            visible = true;
            vspeed = -2;
            depth = -20;
        }
        line.image_xscale = xs;
        if ((i - 10) mod 192 == 0)
           xs *= -1;
    }*/
    exit;
}
with (objBigKid_BG)
{
    with (top_wall)
    {
        x = objBigJust_ViewMover.x + 32;
        xprevious = x;
        y = objBigJust_ViewMover.y;
        image_xscale = ceil((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - x) /
        sprite_get_width(sprite_index)) - 1;
    }
    with (left_wall)
    {
        x = objBigJust_ViewMover.x;
        y = objBigJust_ViewMover.y + 32;
        image_yscale = ceil((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - y) /
        sprite_get_height(sprite_index)) - 1;
    }
    with (right_wall)
    {
        y = objBigJust_ViewMover.y + 32;
        image_yscale = ceil((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - y) /
        sprite_get_height(sprite_index)) - 1;
    }
    with (bottom_wall)
    {
        x = objBigJust_ViewMover.x + 32;
        xprevious = x;
        image_xscale = ceil((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - x) /
        sprite_get_width(sprite_index));
    }
    with (left_top_edge)
    {
        x = objBigJust_ViewMover.x;
        y = objBigJust_ViewMover.y;
    }
    with (right_top_edge)
    {
        y = objBigJust_ViewMover.y;
    }
    with (left_bottom_edge)
    {
        x = objBigJust_ViewMover.x;
    }
    x = objBigJust_ViewMover.x;
    y = objBigJust_ViewMover.y;
}
with (objBigJust_Healthbar)
{
    x = objBigJust_ViewMover.x + 32;
    y = objBigJust_ViewMover.y + 4;
    width = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - x - 32;
}
with (objSpikeDown)
{
    y = objBigJust_ViewMover.y + 64;
}
alarm[1] = 1;

/* */
/*  */
