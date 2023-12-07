///scrDamagePlayer(damage, do iframe)
if (global.debugNoDeath)
   exit;
if (argument[0] > 0)
   scrPlaySound(sndDeath);
else
    scrPlaySound(sndHeal);
var state = objPlayerHP.state;
var do_iframe = true;
if (argument_count > 1)
{
   do_iframe = argument[1];
}
with (objPlayer)
{
    HP -= argument[0];
    if (do_iframe)
       alarm[1] = 1;
    if (argument[0] < 0)
        state = 0;
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
