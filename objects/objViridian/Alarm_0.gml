/// @description Die
instance_destroy();
instance_create(0, 0, objLightEffect);
objBoss2Door.alarm[2] = 150;
if (muted)
    exit;
scrPlaySound(sndWarpV);
scrPlaySound(choose(sndLaughV1, sndLaughV2));

