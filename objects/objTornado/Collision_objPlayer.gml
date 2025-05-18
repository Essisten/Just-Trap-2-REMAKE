if (instance_exists(objJustularity))
{
	/*
    if (!instance_exists(objPlayerThrower))
    {
		
       instance_create(x, y, objPlayerThrower);
       with (objPlayerThrower)
       {
            direction = point_direction(x, y, 400, 304) + (random_range(-45, 45));
            gravity_direction =  180 + global.gravH * 90 + global.grav * 90;
            gravity = 0.2;
            speed = random_range(4, 10 + global.difficulty * 4);
       }
    }
    objPlayerThrower.speed += 1;*/
	scrThrowPlayer(point_direction(x, y, 400, 304) + (random_range(-45, 45)),
		random_range(2, 6 + global.difficulty * 4));
}