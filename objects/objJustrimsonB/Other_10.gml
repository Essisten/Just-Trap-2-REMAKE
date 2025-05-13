event_inherited();
if (objJustrimsonController.dead)
   exit;
var beam = instance_create(x, y, objJustrimsonB_Laser);
if (HP <= 50)
{
    var beam2 = instance_create(x, y, objJustrimsonB_Laser);
    if (beam.side == 1 or beam.side == 3)
       beam2.side = choose(2, 4);
    else
        beam2.side = choose(1, 3);
    if (HP <= 0)
    {
        beam.sprite_index = sprJustrimsonB_Circle2;
        beam2.sprite_index = sprJustrimsonB_Circle2;
    }
}
if (instance_number(objJustrimsonB_Laser) > 4)
{
   beam.alarm[0] += instance_number(objJustrimsonB_Laser) * 5 * choose(-1, 1);
   beam.alarm[0] = max(1, beam.alarm[0]);
}
if (HP > 0 and HP <= 50)
{
    objJustrimsonB_Head.image_index = 1;
}

