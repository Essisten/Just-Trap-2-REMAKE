if (nohit_challenge < 8 - global.difficulty * 2)
   exit;
var obj = objJustrimson_Block;
var obj2 = objJustrimson_Water;
if (objJustrimsonController.block_type)
{
   obj = objJustrimson_Water;
   obj2 = objJustrimson_Block;
   scrPlaySound(sndCrunchy, 1);
}
else
   scrPlaySound(sndWater, 1);
for (i = 0; i < instance_number(obj); i++)
{
    var tmp = instance_find(obj, i);
    with (tmp)
    {
        alarm[1] = 1;
    }
    var n = instance_create(tmp.x, tmp.y, obj2);
    with (n)
    {
        alarm[0] = 1;
        image_alpha = 0;
        if (objJustrimsonController.block_type and y < 300)
           image_index = 1;
    }
    n.hspeed = tmp.hspeed;
}
with (objJustrimsonController)
     block_type = !block_type;
nohit_challenge = 0;
dmg_in = 3 - global.difficulty;