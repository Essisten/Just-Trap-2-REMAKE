/// @description Attack
var temp1 = RedHP;
var temp2 = BlueHP;
if (phase == 2)
{
    temp1 = maxHP[0];
    temp2 = maxHP[1];
}
if (isRed)
{
    if (temp1 > 75)
        exit;
    if (temp1 > 50)
        scrJustularityAttack(0);
    else if (temp1 > 25)
        scrJustularityAttack(1);
    else if (temp1 > 0)
        scrJustularityAttack(2);
    else
        scrJustularityAttack(irandom(2));
}
else
{
    if (temp2 > 75)
        exit;
    if (temp2 > 50)
        scrJustularityAttack(3);
    else if (temp2 > 25)
        scrJustularityAttack(4);
    else if (temp2 > 0)
        scrJustularityAttack(5);
    else
        scrJustularityAttack(irandom_range(3, 5));
}