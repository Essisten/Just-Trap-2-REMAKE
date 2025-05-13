if ((scrButtonCheckPressed(global.skipButton) or global.spriteStyle == 1) and !crazy)
{
    event_perform(ev_alarm, 0);
    alarm[0] = -1;
    alarm[1] = 2;
    alarm[3] = -1;
    face_id = 3;
    objBigGeezer_Eyes.x = x;
    with (objGeezer_Text)
    {
         alarm[1] = -1;
    }
}

