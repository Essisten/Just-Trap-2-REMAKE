///Big Just: Geezer phase
if (!objBigGeezer_Head.crazy and instance_exists(objGeezer_Text) and objGeezer_Text.line < 4)
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
if (tmpHP > 20)
{
    instance_create(view_xview[0] + view_wview[0] + 8, 480, objBigGeezer_Octopus);
}
if (tmpHP > 30)
{
    instance_create(view_xview[0] + view_wview[0] + random(64), 256, objBigGeezer_Hammer);
}
if (tmpHP > 40)
{
    instance_create(random_range(160, 416), view_yview - 13, objBigGeezer_GreenDude);
}
if (tmpHP > 50)
{
    instance_create(view_xview[0] + view_wview[0] + 13, random_range(256, 448), objBigGeezer_GreenDude2);
}
if (tmpHP > 60)
{
    instance_create(view_xview[0] - 8, random_range(256, 448), objBigGeezer_Bat);
}
if (HP <= 0 and !instance_exists(objNoRespond_Controller))
{
    frozen = true;
    instance_create(x, y, objNoRespond_Controller);
}
