healthbar = -1;
width = 640;
height = 384;
color[0] = c_gray;
color[1] = c_maroon;
color[2] = -1;
color[3] = -1;
color[4] = c_black;
color[5] = -1;
color[6] = -1;
color[7] = -1;
BG[2] = sprBigKid_GayBG;
BG[3] = sprBigKid_SolgrynBG;
BG[5] = sprBigKid_KamiliaBG;
BG[6] = sprBigKid_KamiliaBG;
if (global.spriteStyle == 1)
{
    BG[5] = sprBigKamilia_BG_Old;
}
phase = 0;
name[0] = "The Kid";
name[1] = "Crimson Kid";
name[2] = "Gay Kid";
name[3] = "Solgryn Kid";
name[4] = "Geezer Kid";
name[5] = "Kamilia Kid";
name[6] = "Kamilia";
name[7] = "The Kamilia";
gay_effect = part_type_create();
part_type_alpha2(gay_effect, 0.6, 0);
part_type_life(gay_effect, 10, 20);
part_type_speed(gay_effect, 1, 2, 0, 0);
part_type_direction(gay_effect, 0, 0, 0, 0);
part_type_size(gay_effect, 1, 1, 0, 0);
part_type_sprite(gay_effect, sprGayBullet_Effect, false, false, false);
emitter = part_emitter_create(global.topParticleSystem);
solgryn_effect = part_type_create();
part_type_blend(solgryn_effect, true);
part_type_sprite(solgryn_effect, sprSolgryn_ShootEffect, true, true, false);
part_type_alpha2(solgryn_effect, 0.8, 0.2);
part_type_life(solgryn_effect, 30, 30);
dick = 0;
image_speed = 1/8;
top_wall = instance_create(x + 32, y, objStretchableBlock);
bottom_wall = instance_create(x + 32, 576, objStretchableBlock);
left_wall = instance_create(x, y + 32, objStretchableBlock);
right_wall = instance_create(768, y + 32, objStretchableBlock);
alarm[0] = 200;
left_top_edge = instance_create(x, y, objBlockEdge);
left_bottom_edge = instance_create(x, 576, objBlockEdge);
right_top_edge = instance_create(768, y, objBlockEdge);
right_bottom_edge = instance_create(768, 576, objBlockEdge);
alarm[2] = 1;
healthbar = instance_create(x, y - 24, objBigJust_Healthbar);
with (top_wall)
{
    image_xscale = 19;
    sprite_index = sprBlock3;
}
with (bottom_wall)
{
    image_xscale = 19;
    sprite_index = sprBlock3;
}
with (left_wall)
{
    image_yscale = 11;
    sprite_index = sprBlock2;
    depth = -87;
}
with (right_wall)
{
    image_yscale = 11;
    sprite_index = sprBlock2;
}
with (objBlock)
     image_speed = 0;

