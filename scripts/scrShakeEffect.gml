///scrShakeEffect(mag, mag_acc, sound)
var shake = instance_create(0, 0, objShakeEffect);
shake.shake_mag = argument[0];
shake.shake_mag_acc = argument[1];
if (argument_count > 2)
   scrPlaySound(argument[2]);
