/// @description Phase 2 started
if (!instance_exists(objPlayer))
   exit;
with (objJustularity)
{
    wait = false;
    god = false;
}
with (objBoss2HP)
{
    play = true;
    scrPlayMusic(musStage2C, false);
}
global.skip[0] = true;

