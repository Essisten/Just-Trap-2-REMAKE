event_inherited();
canParry = false;
if (global.spriteStyle == 0)
   image_speed = 1/20;
else
{
    sprite_index = sprBigKid_Body_Old;
    image_speed = 0;
}
bullet = noone;
head = instance_create(x, y, objBigKid_Head);
bullet_counter = irandom(1);
alarm[0] = 50;
skin[0] = sprBigJust_Body;
skin[1] = sprBigCrimson_Body;
skin[2] = sprBigGay_Body;
skin[3] = sprBigSolgryn_Body;
skin[4] = sprBigGeezer_Body;
skin[5] = sprBigKamilia_Body;

