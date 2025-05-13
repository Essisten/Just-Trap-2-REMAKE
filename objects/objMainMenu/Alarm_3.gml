/// @description Save menu slides away
if (saveX < 900)
    saveX = min(saveX + saveSpd, 900);
if (textX < 400)
{
    textX += saveSpd;
    sx[0] += saveSpd;
    sx[1] += saveSpd;
}
if (saveX < 800 or textX < 400)
    alarm[3] = 1;

