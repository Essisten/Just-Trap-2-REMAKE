with (other) {
if (scrButtonCheckPressed(global.skipButton) and alarm[0] != -1 and !skip)
{
    if (global.skip[0])
    {
        with (objJustularity)
        {
            RedHP = 0;
            BlueHP = 0;
            event_user(4);
        }
        with (instance_create(400, 304, objViridian))
        {
            alarm[0] = 2
            muted = true;;
        }
        with (objBoss2Door)
        {
            image_yscale = 1;
            alarm[1] = -1;
            alarm[2] = 1;
        }
        skip = true;
        phase = 2;
    }
    HP[0] = boss.RedHP;
    HP[1] = boss.BlueHP;
}

}
