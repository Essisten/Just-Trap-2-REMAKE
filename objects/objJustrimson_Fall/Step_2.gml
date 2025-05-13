if (!instance_exists(objPlayer))
   exit;
if (objPlayer.y > 1376 and (instance_exists(objClear) or objWorld.alarm[2] > -1))
   objPlayer.y -= 768;

