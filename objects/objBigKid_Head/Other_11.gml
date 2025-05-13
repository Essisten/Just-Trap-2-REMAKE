/// @description Attack
if (!instance_exists(objPlayer))
   exit;
v_w = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 );
v_h = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 );
tmp = (maxHP - HP) div 10;
fruit_spd = (global.difficulty + 2) * 1.5;
tmpHP = (maxHP - HP) + (global.difficulty - 1) * 10;
snd = -1;
bounce_counter = instance_number(objBigKid_BounceFruit);
if (bounce_counter < ceil((objBigKid_BG.phase + 1) * ((maxHP - HP) div 20)) / (4 - global.difficulty))
{
    with (instance_create(x, y, objBigKid_BounceFruit))
    {
        direction = random(360);
        speed = floor(other.fruit_spd / 2);
    }
}
switch (objBigKid_BG.phase)
{
    case 0:
         scrLovetrap_Attack();
         break;
    case 1:
         scrCrimson_Attack();
         break;
    case 2:
         scrGay_Attack();
         break;
    case 3:
         scrSolgryn_Attack();
         break;
    case 4:
         scrGeezer_Attack();
         break;
    case 5:
         scrK2_Attack();
         break;
}
with (objCherry)
     depth = -110;
if (snd != -1)
{
    audio_stop_sound(snd);
    scrPlaySound(snd);
}
event_user(2);

