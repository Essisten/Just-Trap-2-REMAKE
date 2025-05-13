var wow = sin(degtorad(abs((400 - hText)*(90/400))));
hText += 1 + wow * 5;
if (hText > 0 and hText < 800)
    vGrad = max((1 - wow) * 100, 0);
else
    vGrad = 0;
if (hText > 1000)
{
    if (!instance_exists(objPlayer))
        exit;
    global.bossClear[stage - 1] = true;
    global.pb[stage - 1] = 100;
    instance_destroy();
    if (room == rBoss3_Fall)
       exit;
    if (room == rBoss2)
    {
        with (objBoss2Door)
             event_user(0);
        exit;
    }
    with (objPlayer)
        instance_destroy();
    room_goto(rStageSelect);
}

