/// @description Activating phase transition
audio_stop_sound(global.currentMusic);
if (alarm[5] > -1)
{
   prevGrav = oldGrav;
   prevGravH = oldGravH;
   prevPlayerGrav = oldPlayerGrav;
   side = oldSide;
}
for (var i = 0; i < 8; i++)
{
    alarm[i] = -1;
}
wait = true;
god = true;
shooting = false;
jumping = false;
scrJustularitySkin(0);
speed = 0;
image_speed = 0;
RedHP = 0;
BlueHP = 0;
if (gravH)
{
    destination = y;
}
else
{
    destination = x;
}
alarm[8] = 150;
with (objJustularityBall)
    event_user(0);
with (objJustularityBall)
    counter = 101;
with (objJustularityBomb)
    event_user(0);
with (objBoss2HP)
{
    phase = 2;
    play = false;
}