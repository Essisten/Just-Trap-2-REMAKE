///Big Just: Geezer phase
if (!objBigGeezer_Head.crazy)
{
    objBigGeezer_Head.face_id = 2;
    if (instance_exists(objBigGeezer_Eyes))
       objBigGeezer_Eyes.hspeed = -3;
    with (objGeezer_Text)
    {
        line = 4;
        chars = 0;
        alarm[0] = 1;
        alarm[1] = -1;
    }
}
if (tmpHP > 10)
{
    instance_create(random_range(160, 416), view_yview, objBigGeezer_Spike);
}
