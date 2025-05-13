/// @description Show names with delay

with (instance_create(objJustrimsonA.x, objJustrimsonA.y, objBossName))
{
    if (objJustrimsonController.lmao)
       name = "Leslie";
    else
        name = "Grim-kun";
    owner = objJustrimsonA;
}
with (instance_create(objJustrimsonB.x, objJustrimsonB.y, objBossName))
{
    name = "Raphael";
    yflip = true;
    owner = objJustrimsonB;
}
with (instance_create(objJustrimsonC.x, objJustrimsonC.y, objBossName))
{
    if (objJustrimsonController.lmao)
        name = "Kelvar";
    else
       name = "Surface-chan";
    xflip = true;
    yflip = true;
    owner = objJustrimsonC;
}
with (instance_create(objJustrimsonD.x, objJustrimsonD.y, objBossName))
{
    if (objJustrimsonController.lmao)
        name = "Square";
    else
       name = "Flip-Flop";
    xflip = true;
    owner = objJustrimsonD;
}

