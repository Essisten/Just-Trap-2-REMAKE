with (objGameOver) {
alarm[0] = 6;
image_alpha = 0;
x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2;
y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) / 2;
percent = 0;
old = 0;
stage = 1;
image_speed = 0;
image_index = global.GameOverType;
with (objMusicLooper)
     alarm[0] = -1;
//Happil 2
d = 0;
h2 = 8;
a = true;
b = false;
c = 0;
alarm[1] = 90;
global.frozen = false;
hide_progress = false;

}
///Personal Best
if (!global.showPB or global.GameOverType == 4)
    exit;
switch (room)
{
    case rBoss1:
        old = global.pb[0];
        if (instance_exists(objJR))
            percent += abs(objJR.HP - 100);
        if (instance_exists(objJustist))
            percent += abs(objJustist.HP - 100);
        if (!instance_exists(objJustist) or !instance_exists(objJR))
            percent = 99.99;
        else
            percent = percent / 200 * 99;
        if (instance_exists(objBG))
        {
            if (objBG.final)
            {
                var tmp = 15 * (global.difficulty + 1);
                percent = 99 + abs(objBG.timer - tmp) / tmp;
            }
        }
        else
            percent = 99.99;
        if (old < percent)
            global.pb[0] = percent;
        break;
    case rBoss2:
         stage = 2;
        if (instance_exists(objViridian))
        {
            old = global.pb[1];
            percent = 99.99;
            if (global.pb[1] < percent)
                global.pb[1] = percent;
            break;
        }
        if (instance_exists(objJustularity))
        {
            if (objJustularity.phase == 1)
            {
                old = global.pb[1];
                percent = abs(objJustularity.BlueHP + objJustularity.RedHP - 200) / 2;
                if (percent == 100)
                   percent = 99.99;
                if (global.pb[1] < percent)
                    global.pb[1] = percent;
            }
            else
            {
                old = global.pb[7];
                var bar1 = instance_find(objJustularity, 0);
                var bar2 = instance_find(objJustularity, 1);
                if (!bar1.isRed)
                {
                    var tmp = bar1;
                    bar1 = bar2;
                    bar2 = tmp;
                }
                var hp1 = 0;
                if (instance_exists(bar1))
                    hp1 = bar1.maxHP[0];
                var hp2 = 0;
                if (instance_exists(bar2))
                    hp2 = bar2.maxHP[1];
                percent = abs(hp1 + hp2 - 200) / 2;
                if (percent == 100)
                   percent = 99.99;
                if (global.pb[7] < percent)
                    global.pb[7] = percent;
                if (global.pb[1] < 100)
                {
                    percent += 100 - global.pb[1];
                    global.pb[1] = 100;
                }
            }
        }
        else
        {
            old = global.pb[7];
            percent = 99.99;
            if (global.pb[7] < percent)
                global.pb[7] = percent;
        }
        break;
    case rBoss4:
         stage = 4;
        old = global.pb[3];
        if (instance_exists(objJustination))
        {
            if (objJustination.alarm[0] != -1)
                percent = 99 + abs(objJustination.HP - 100) / 100;
            else if (instance_exists(objJustinationDark) and instance_exists(objJustinationIce) and
            instance_exists(objJustinationLight) and instance_exists(objJustinationFire))
                percent = abs(objJustinationDark.HP + objJustinationIce.HP + objJustinationLight.HP + objJustinationFire.HP - 400) / 400 * 99;
        }
        else
            percent = 99.99;
        if (old < percent)
            global.pb[3] = percent;
        break;
    case rBoss3:
         stage = 3;
        old = global.pb[2];
        if (!objJustrimsonController.dead)
        {
            percent = (400 - (objJustrimsonA.HP + objJustrimsonB.HP + objJustrimsonC.HP + objJustrimsonD.HP)) / 4;
        }
        else
            percent = 99.99;
        if (old < percent)
            global.pb[2] = percent;
        break;
    case rFinalBoss:
        stage = 11;
        old = global.pb[10];
        with (objBigKid_Head)
            other.percent = ((maxHP * objBigKid_BG.phase + (maxHP - HP)) / (maxHP * 6)) * 100;
        if (old < percent)
            global.pb[10] = percent;
        hide_progress = true;
        break;
}
if (percent > old)
   scrShowMoney(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 128, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 32, stage, false, ceil((percent - old) * stage * (1 + global.difficulty)));
if (percent > 100 and stage == 2)
    percent -= 100;

