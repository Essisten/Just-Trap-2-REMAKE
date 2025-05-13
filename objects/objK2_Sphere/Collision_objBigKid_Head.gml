/// @description Do an explosion
if (HP > 0 or abs(x - objBigKid_Head.x) > 32)
   exit;
instance_create(x, y, objK2_Boom);
instance_destroy();
if (instance_number(objK2_Sphere) == 0)
{
    objK2_Face.alarm[4] = 100;
}

