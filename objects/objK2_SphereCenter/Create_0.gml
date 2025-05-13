event_inherited();
rad = 128;
color[0] = c_yellow;
color[1] = c_purple;
color[2] = c_red;
color[3] = c_green;
color[4] = c_aqua;
alarm[0] = -1;
for (var i = 0; i < 5; i++)
{
    var s = instance_create(x, y, objK2_Sphere);
    s.image_index = i;
    s.color = color[i];
    ds_list_add(stars, s);
}
owner = objBigKid_Head;
spd /= 4;
speed = 0;

