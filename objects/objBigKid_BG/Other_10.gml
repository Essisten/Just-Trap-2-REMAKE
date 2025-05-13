/// @description Show name
var label_name = instance_create(x, y - 64, objShowLabel);
label_name.text = name[phase];
with (label_name)
{
    alarm[1] = 150;
    color[0] = c_white;
    color[1] = c_gray;
}

