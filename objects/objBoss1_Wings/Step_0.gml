if (!instance_exists(owner))
   exit;
if (owner == objJustist)
   sprite_index = sprite[owner.state];
else
   sprite_index = sprite2[owner.state];

