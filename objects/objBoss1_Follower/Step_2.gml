/// @description snap to the player before he moves this frame
if (!instance_exists(owner))
   exit;
event_user(0);
visible = owner.visible;
d+=2;

