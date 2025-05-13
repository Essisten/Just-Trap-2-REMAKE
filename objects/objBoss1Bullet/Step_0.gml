if (wrap and instance_exists(owner))
   move_wrap(true, true, 10);
else if (y < -20 or y > 620 or x < -20 or x > 820)
{
    instance_destroy();
}

