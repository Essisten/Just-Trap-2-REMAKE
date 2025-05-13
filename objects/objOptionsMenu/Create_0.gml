with (other) {
event_inherited();
active = true;
if (room == rOptions)
    alarm[2] = 10;
group[0] = objAudioMenu;
group[1] = objGraphicMenu;
group[2] = objGameplayMenu;
group[3] = objControlsMenu;
group[4] = objOtherMenu;
xSelector = __view_get( e__VW.XView, 0 ) - 128;

}
