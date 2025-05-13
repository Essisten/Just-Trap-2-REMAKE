event_inherited();
type = choose(128, 255)
image_blend = make_colour_hsv(type, type, 200);
image_xscale = 6;
image_yscale = image_xscale;
image_speed = 0;
rotate = false;
fly = true;
line = false;
muted = false;
shootCounter = 0;
totalShoots = 0;
bullet = noone;
lineCounter = 0;
HP = 8;
d = 0;
spd = 16 * choose(1, -1);
yy = y;
alarm[2] = 160;
seed = irandom(2)
alarm[4] = 80;
instance_create(0, 0, objLightEffect);
name = instance_create(x, y, objBossName);
with (name)
{
    from = "Happil 1";
    owner = objViridian;
    if (other.type == 128)
       name = "Gugudian";
    else
        name = "Gugumillion";
}
alarm[6] = 1;

