/// @description no problem bro
var s = 3 + global.difficulty;
scrPlaySound(sndBoss2_Water);
var w = instance_create(0, 576, objJustularityWater);   //bottom
w.hspeed = s;

w = instance_create(800, 32, objJustularityWater);  //top
w.hspeed = -s;
w.image_yscale = -1;

w = instance_create(32, 0, objJustularityWater);  //left
w.vspeed = s;
w.image_angle = 270;

w = instance_create(768, 608, objJustularityWater); //right
w.vspeed = -s;
w.image_angle = 90;
if (global.difficulty == 3)
{
    w = instance_create(800, 576, objJustularityWater); //bottom
    w.hspeed = -s;
    
    w = instance_create(0, 32, objJustularityWater); //top
    w.hspeed = s;
    w.image_yscale = -1;
    
    w = instance_create(32, 608, objJustularityWater);  //left
    w.vspeed = -s;
    w.image_angle = 270;
    
    w = instance_create(768, 0, objJustularityWater);  //right
    w.vspeed = s;
    w.image_angle = 90;
}
if (black_water)
{
    with (objJustularityWater)
         sprite_index = sprJustularityWater2;
}

