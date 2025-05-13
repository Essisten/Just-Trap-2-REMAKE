/// @description Spawning clear

if (!instance_exists(objPlayer) or room == rStageSelect)
    exit;
var s = 1;
switch (room)
{
    case rBoss4:
        s = 4;
        break;
    case rBoss2:
        s = 2;
        break;
    case rBoss3_Fall:
        s = 3;
        break;
}
var c = instance_create(0, 0, objClear);
c.stage = s;

