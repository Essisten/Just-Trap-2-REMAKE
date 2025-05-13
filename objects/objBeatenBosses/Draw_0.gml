scrCheckBossClear(0);
if (global.spriteStyle == 0)
{
    draw_sprite_ext(sprJRWings_Idle, 0, 138, 440, 3, 3, 0, blend, image_alpha);
    draw_sprite_ext(sprJustistWings_Idle, 0, 246, 440, -3, 3, 0, blend, image_alpha);
    draw_sprite_ext(sprBoss1Bow, 0, 138, 440, 3, 3, 0, blend, image_alpha);
    draw_sprite_ext(sprBoss1Bow, 1, 246, 440, -3, 3, 0, blend, image_alpha);
}
draw_sprite_ext(sprJR_Idle_Old, 0, 138, 440, 3, 3, 0, blend, image_alpha);
draw_sprite_ext(sprJustist_Idle_Old, 0, 246, 440, -3, 3, 0, blend, image_alpha);
if (global.selectedBoss == 6 or global.selectedBoss == 0)
{
    draw_sprite_ext(sprJustularity_Mini_Outline, 0, 554, 448, -2, 2, 0, c_white, __background_get( e__BG.Alpha, 1 ));
    draw_sprite_ext(sprJustularity_Mini_Outline, 1, 658, 448, 2, 2, 0, c_white, __background_get( e__BG.Alpha, 1 ));
}
scrCheckBossClear(1);
draw_sprite_ext(sprJustularityIdleRed, 1, 554, 448, -2, 2, 0, blend, image_alpha);
draw_sprite_ext(sprJustularityIdleBlue, 1, 658, 448, 2, 2, 0, blend, image_alpha);
scrCheckBossClear(2);
draw_sprite_ext(sprJustrimsonA, 0, 112, 304, 0.5, 0.5, 0, blend, image_alpha);
draw_sprite_ext(sprJustrimsonB, 0, 168, 272, 0.5, 0.5, 0, blend, image_alpha);
draw_sprite_ext(sprJustrimsonB_Head, 0, 168, 272, 0.5, 0.5, 0, blend, image_alpha);
draw_sprite_ext(sprJustrimsonC, 0, 224, 272, 0.5, 0.5, 0, blend, image_alpha);
draw_sprite_ext(sprJustrimsonD, 0, 280, 304, 4, 4, 0, blend, image_alpha);
if (global.selectedBoss == 6 or global.selectedBoss == 0)
{
    draw_set_colour(c_white);
    draw_set_alpha(__background_get( e__BG.Alpha, 1 ));
    if (global.spriteStyle == 0)
       draw_sprite(sprJustination_Mini_Outline, 0, 608, 278);
    else
        draw_sprite(sprJustination_Mini_Outline, 1, 608, 278);
    draw_set_alpha(1);
}
scrCheckBossClear(3);
if (global.spriteStyle == 0)
   draw_sprite_ext(sprJustination_Mini, 0, 608, 278, 1, 1, 0, blend, image_alpha);
else
    draw_sprite_ext(sprJustination_Mini, 1, 608, 278, 1, 1, 0, blend, image_alpha);

scrCheckBossClear(5);
draw_sprite_ext(sprBigJust_Head, 6, 464, 48, 4, 4, 0, blend, image_alpha);
draw_sprite_ext(sprBigJust_Body, 0, 464, 48, 4, 4, 0, blend, image_alpha);


draw_sprite_ext(sprDarkJust_Body, 0, 336, 48, -4, 4, 0, blend, image_alpha);
draw_sprite_ext(sprDarkJust_Head, 0, 336, 48, -4, 4, 0, blend, image_alpha);



