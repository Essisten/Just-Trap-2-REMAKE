/// @description Sync HP
if (instance_exists(objBigJust_Healthbar))
{
    with (objBigJust_Healthbar)
    {
        HP = other.HP;
        if (oldHP < HP)
           oldHP = HP;
        alarm[0] = 50;
    }
}

