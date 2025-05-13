alarm[0] = 200 - global.difficulty * 50;
alarm[2] = 50;
alarm[3] = 200;
block_type = false;
dead = false;
lmao = (irandom_range(1, 100) == 1);
if (lmao and global.difficulty < 3)
{
    with (objJustrimsonA)
    {
        sprite_index = sprLeslie;
        glow_index = 5;
    }
    with (objJustrimsonC)
    {
        sprite_index = sprKelvar;
        glow_index = 5;
    }
    with (objJustrimsonD)
    {
        sprite_index = sprSquare;
        glow_index = 5;
        image_xscale = 1;
        image_yscale = image_xscale;
    }
}
for (i = 32; i <= 736; i+=32)
{
    with (instance_create(i, 576, objBlock))
    {
        sprite_index = sprBoss3_Block;
        visible = true;
        image_speed = 0;
        depth = -20;
    }
}

