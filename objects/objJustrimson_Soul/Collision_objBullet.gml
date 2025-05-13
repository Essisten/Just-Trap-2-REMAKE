HP -= other.dmg;
instance_destroy(other);
if (HP <= 0)
{
   instance_destroy();
   scrPlaySound(sndDeath, 1.2);
}
else
{
    scrPlaySound(sndBossHit, 1.2);
}

