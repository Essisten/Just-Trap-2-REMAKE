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
hidden = (global.gravH or (phase == 2 and (global.gravH and global.grav)));
if (instance_exists(boss) and !hidden)
{
	hidden = (phase == 2 and boss.gravH and boss.grav);
}
if (instance_number(objJustularity) > 1 and !hidden)
{
	var another = instance_find(objJustularity, 1);
	hidden = (another.gravH and another.grav);
}
var move_spd = 2;
if (hidden)
{
	redX = max(redX - move_spd, 8);
	blueX = max(blueX - move_spd, 20);
}
else
{
	redX = min(redX + move_spd, 60);
	blueX = min(blueX + move_spd, 72);
}