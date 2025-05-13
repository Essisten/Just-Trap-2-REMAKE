event_inherited();
alarm[11] = 50;
image_index = 1;
blade = instance_create(x, y, objJustrimsonA_blade);
if (HP > 50)
   blade.alarm[0] = -1;
if (HP <= 50 and HP > 0)
{
    with (blade)
    {
        alarm[1] = 200;
        image_index = 1;
    }
    if (phase_counter == 0)
    {
       blade.endless = true;
       blade.canParry = false;
       phase_counter++;
       if (!objJustrimsonController.lmao)
          sprite_index = sprJustrimsonA2;
    }
}
else if (HP <= 0)
{
    with (blade)
    {
        image_index = 1;
    }
    if (phase_counter == 1)
    {
       blade.endless = true;
       blade.canParry = false;
       phase_counter++;
    }
   with (objJustrimsonA_blade)
   {
        image_blend = c_maroon;
   }
}
var blades = instance_number(objJustrimsonA_blade);
if (blades > 4)
{
   blade.direction += min(blades, 16) * 4 * choose(-1, 1);
   blade.gravity_direction = blade.direction;
   if (blades > 16)
       nohit_challenge++;
}
//scrPlaySound(sndMiss, 1);

