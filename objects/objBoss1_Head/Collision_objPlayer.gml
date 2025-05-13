if (!instance_exists(owner))
   exit;
if (owner.HP > 0 and global.difficulty < 3)
   scrKillPlayer();

