/// @description Start reloading
reloading = true;
image_index = 0;
scrPlaySound(sndBoss1_Reload, 0.4);
if (owner == objJustist)
   sprite_index = sprJustist_Reload;
else
   sprite_index = sprJR_Reload;

