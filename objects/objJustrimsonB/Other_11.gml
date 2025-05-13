if (nohit_challenge < 8 - global.difficulty * 2)
   exit;
if (!instance_exists(objJustrimsonB_Halo))
   instance_create(x, y, objJustrimsonB_Halo);
else
{
    with (objJustrimsonB_Halo)
    {
        event_user(15);
    }
}
nohit_challenge = 0;
dmg_in = 3 - global.difficulty;

