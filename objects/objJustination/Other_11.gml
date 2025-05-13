/// @description Checking part's HP
var dead = 0;
var parts_size = ds_list_size(parts);
if (parts_size == 0)
{
    show_debug_message("Eblan");
}
for (var i = 0; i < parts_size; i++)
{
     var p = ds_list_find_value(parts, i);
     if (p.HP <= 0)
        dead++;
}
if (dead > 0)
{
    if (global.musicSlowdown)
    {
        alarm[2] = 5;
        pitch = (256 - dead * 8) / 256;
    }
    part_alpha = dead / 12;
    part_type_alpha2(fantom, part_alpha, 0);
    part_emitter_stream(global.portalParticleSystem, emitter, fantom, -4 +  dead);
}
if (dead >= 4)
{
    alarm[4] = 20;
    active = true;
    global.swapControls = true;
    scrSwapControls();
    alarm[3] = -1;
    repeat (4)
        ds_list_add(parts, instance_create(x + random_range(-128, 128), y + random_range(-128, 128), objJustinationPiece));
    for (var i = 0; i < 8; i++)
    {
        piece = ds_list_find_value(parts, i);
        with (piece)
        {
            speed = random_range(2, 6);
            direction = random(360);
            gravity = random_range(0.2, 0.4);
            alarm[11] = 5;
            sprite_index = sprJustinationPiece;
            active = false;
        }
        if (i < 4)
            piece.image_index = i;
        else
            piece.image_index = irandom_range(4, 5);
    }
    ds_list_clear(active_parts);
    ds_list_clear(parts);
    var r = choose(0, 1);
    for (var i = 0; i < 2; i++)
    {
        var s = spikes[i];
        with (s)
        {
            owner = objJustination;
            kill = false;
            image_alpha = 0.4;
        }
        if (i == r)
        {
            s.doHeal = true;
            s.image_index = 5;
        }
        else
            s.image_index = 3;
    }
    with (objBoss4_Effects)
    {
        part_type_destroy(snow);
        part_type_destroy(smoke);
        part_emitter_destroy(global.portalParticleSystem, emitter[0]);
        part_emitter_destroy(global.saveParticleSystem, emitter[1]);
        surface_free(surf[0]);
        surface_free(surf[1]);
        __view_set( e__VW.Visible, 1, false );
        __view_set( e__VW.Visible, 2, false );
        final = true;
    }
    part_type_sprite(fantom, crazy[global.spriteStyle], false, false, false);
    part_type_life(fantom, 10, 20);
    part_emitter_stream(global.portalParticleSystem, emitter, fantom, 1);
    sprite_index = crazy[global.spriteStyle];
    image_alpha = 0.4;
    for (var i = 0; i < block_count; i++)
    {
        with (blocks[i])
            image_index = 0;
    }
    if (instance_exists(objPlayer) and global.difficulty < 3)
    {
        with (objCherry)
        {
            direction = point_direction(x, y, objPlayer.x, objPlayer.y) + 180;
        }
        with (objBoss4_FruitBomb)
        {
            alarm[0] = -1;
            direction += 180;
        }
    }
    event_user(15);
    alarm[5] = 300;
}

