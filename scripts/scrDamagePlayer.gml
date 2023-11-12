///scrDamagePlayer(damage, do iframe)

if (argument0 > 0)
   scrPlaySound(sndDeath);
else
    scrPlaySound(sndHeal);
var state = objPlayerHP.state;
with (objPlayer)
{
    HP -= argument0;
    if (argument_count == 1 or argument1)
       alarm[1] = 1;
    if (HP >= 10)
    {
        HP = maxHP;
        state = 0;
    }
    else if (HP <= 0)
    {
        HP = 0;
        scrKillPlayer();
        exit;
    }
    else if (HP <= 3 - global.difficulty)
        state = 2;
    else
        state = 1;
}
objPlayerHP.state = state;
objPlayerHP.alarm[0] = 1;
objPlayerHP.alarm[1] = -1;
