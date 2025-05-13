if (!instance_exists(objPlayer))
   exit;
if (objPlayer.paralyzed)
   shader_set(shdGrayscale);
draw_self();
shader_reset();

