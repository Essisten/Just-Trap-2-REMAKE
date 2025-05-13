/// @description Save menu slide in
if (saveX > saveMax)
    saveX = max(saveX - saveSpd, saveMax);
if (textX > -100)
{
    textX -= saveSpd;
    sx[0] -= saveSpd;
    sx[1] -= saveSpd;
}
if (textX > -100 or saveX > saveMax)
    alarm[2] = 1;

