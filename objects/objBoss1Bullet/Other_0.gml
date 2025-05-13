
if (wrap and instance_exists(owner))
{
    var num = instance_number(b);
    var count = 0;
    for (var i = 0; i < num; i++)
    {
        var tmp = instance_find(b, i);
        if (tmp.wrap)
           count++;
    }
    if (owner.extraBulletsCounter < count)
       wrap = false;
    event_user(0);
}

