/// @description Slow red health fade
if (oldHP <= HP)
   exit;
oldHP -= max((abs(HP - oldHP) / 50), 0.05);
if (oldHP < HP)
   oldHP = HP;
alarm[0] = 1;

