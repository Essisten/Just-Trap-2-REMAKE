/// @description iframe
if (iframe >= 30)
{
    iframe = 0;
    image_alpha = 1;
    with (objBigGeezer_Head)
    {
        if (crazy)
        {
            event_perform(ev_alarm, 1);
            event_perform(ev_alarm, 2);
        }
    }
    exit;
}
if (image_alpha == 0.4)
   image_alpha = 1;
else
    image_alpha = 0.4;
iframe++;
alarm[0] = 5;

