event_inherited();
instance_create(x, y, objJustrimsonC_Center);
if (objJustrimsonController.dead)
   exit;
if (HP <= 50 and !instance_exists(objJustrimsonC_Heart))
{
   instance_create(x, y, objJustrimsonC_Heart);
   image_index = 1;
}

