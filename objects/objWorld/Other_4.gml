/// @description room checks
if (!instance_exists(objPlayMusic) and !instance_exists(objMusicLooper))  //make sure the play music object isn't in the current room
    scrGetMusic();  //find and play the proper music for the current room


scrCreateFade(c_black, 0.04, false);
room_speed = 50;    //make sure game is running at the correct frame rate
scrSetRoomCaption();    //make sure window caption stays updated

