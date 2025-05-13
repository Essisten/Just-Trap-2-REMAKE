if (speed <= 3 or !instance_exists(objPlayer))
{
   instance_destroy();
   exit;
}
objPlayer.x = x;
objPlayer.y = y;

