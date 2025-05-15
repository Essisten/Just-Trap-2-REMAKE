image_speed = 0.2;
image_xscale = 3;
image_yscale = image_xscale;
mask_index = sprJustularityMask;
RedHP = 100;
BlueHP = 100;
maxHP[0] = 100;
maxHP[1] = 100;
phase = 1;
alarm[0] = 60;
god = true;
isRed = false;
wait = true;
waitTime = 100 - global.difficulty * 20;
jumping = false;
shooting = false;
reloading = false;
killable = true;
gravity_direction = 270;
gravity = 0.4;
destination = x;
spd = 3;
d = 0;
pitch = 1;
shootCounter = 0;
sound = -1;
grav = 1;
gravH = false;  //If current gravity is horizontal instead of vertical
prevGrav = 1;
prevGravH = false;
prevPlayerGrav = 3;
side = 3;
prevAct = 0;
act = -1;
j[0] = self;
j[1] = noone;
bullet = noone;
oldGrav = grav;
oldGravH = gravH;
oldPlayerGrav = prevPlayerGrav;
oldSide = side;
smoke = part_type_create();
part_type_alpha2(smoke, 0.8, 0);
part_type_life(smoke, 20, 30);
part_type_speed(smoke, 1, 2, 0, 0);
part_type_direction(smoke, 0, 360, 0, 0);
part_type_size(smoke, 0.2, 0.6, 0, 0);
part_type_shape(smoke, pt_shape_smoke);
emitter = part_emitter_create(global.saveParticleSystem);
with (instance_create(32, 32, objShowLabel))
{
    text = "Press [" + scrGetKeybind(global.skipButton[0]) + "] to skip ";
    if (global.skip[0])
        text += "phase 1";
    else
        text += "intro";
}
with (instance_create(x, y, objBossName))
{
    name = "Justularity";
    owner = other;
    yflip = true;
}