/// @description Post-create

if (global.difficulty < 3)
{
   healthbar = instance_create(x, y, objPlayerHP);
    with (objPlayer)
         healthed = true;
}

