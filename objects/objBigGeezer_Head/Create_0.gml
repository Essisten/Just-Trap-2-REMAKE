crazy = false;
noise = true;
on = false;
intro = true;
image_speed = 1/2;
image_xscale = 16;
image_yscale = image_xscale;
image_blend = make_colour_hsv(0, 0, 127);
face_id = -1;
faceY = y;
faceX = x;
alarm[0] = 150;
alarm[3] = 50;
alarm[4] = 1;
if (global.spriteStyle == 0 and global.particles)
{
    emitter = part_emitter_create(global.topParticleSystem);
    effect = part_type_create();
    part_type_alpha2(effect, 0.9, 0);
    part_type_direction(effect, 0, 360, 1, 0);
    part_type_orientation(effect, 0, 0, 1, 0, true);
    part_type_speed(effect, 0.5, 0.5, 0, 0);
    part_type_life(effect, 112, 150);
    part_type_sprite(effect, sprGeezer_Effect, false, false, false);
}
if (!instance_exists(objBigKid_BG))
   exit;
xx = objBigKid_BG.x;
yy = objBigKid_BG.y;
for (var i = 0; i < 13; i++)
{
    instance_create(xx, yy + i * 32, objBigGeezer_Block);
}
for (var i = 0; i < 13; i++)
{
    instance_create(768, yy + i * 32, objBigGeezer_Block);
}
for (var i = 1; i < 20; i++)
{
    instance_create(xx + i * 32, yy, objBigGeezer_Block);
}
for (var i = 1; i < 20; i++)
{
    instance_create(xx + i * 32, 576, objBigGeezer_Block);
}
for (var i = __view_get( e__VW.YView, 0 ); i < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 128; i += 128)
{
    with (instance_create(__view_get( e__VW.XView, 0 ), i, objBigGeezer_BG))
         vspeed = 1;
    with (instance_create(__view_get( e__VW.XView, 0 ), i, objBigGeezer_BG))
         vspeed = -1;
}

