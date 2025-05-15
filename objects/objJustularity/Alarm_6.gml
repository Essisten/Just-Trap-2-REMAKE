/// @description Shooting in real time
shootCounter++;
var time = -1;
if (instance_exists(objPlayer))
{
    if (phase == 1)
    {
        if (shootCounter < 4 + global.difficulty * 4)
            time = 10 - global.difficulty * 2;
        with (instance_create(x, y, objCherry))
        {
            direction = point_direction(x, y, objPlayer.x, objPlayer.y);
            speed = 4 + global.difficulty * 2;
            if (other.image_blend == c_black)
                sprite_index = sprJustularityBullet2;
            else
                sprite_index = sprJustularityBullet;
            image_xscale = 2;
            image_yscale = image_xscale;
        }
    }
    else
    {
        if (isRed)
        {
            if (instance_number(objJustularityStarCenter) < 2)
            {
                with (instance_create(x, y, objJustularityStarCenter))
                    owner = other.id;
            }
        }
        else
        {
            if (shootCounter <= (global.difficulty + 1) * 2)
                time = 13 - global.difficulty * 3;
            for (var i = 0; i < 3; i++)
            {
                with (instance_create(x, y, objParalyzer))
                {
                    image_speed = 4 / room_speed;
                    sprite_index = sprJustularityRing;
                    direction = point_direction(x, y, objPlayer.x, objPlayer.y) + (i - 1) * 30;
                    image_angle = direction;
                    speed = 8 + (global.difficulty) * 2;
                    image_xscale = 2;
                    image_yscale = image_xscale;
                }
            }
        }
    }
}
alarm[6] = time;
if (time == -1)
{
    shootCounter = 0;
    shooting = false;
    scrJustularitySkin(0);
    image_speed = 0.2;
}
else
{
    scrPlaySound(sndBoss2_Shoot);
}