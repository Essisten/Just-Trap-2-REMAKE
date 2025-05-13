if (!triggered && global.trigger[trg])
{
    if (v != 0 || h != 0)
    {
        vspeed = v;
        hspeed = h;
    }
    else if (spd != 0)
    {
        direction = dir;
        speed = spd;
    }
    
    triggered = true;
}

