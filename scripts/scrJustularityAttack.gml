///scrJustularityAttack(num)
switch (argument0)
{
    case 0: //Red
        for (var i = 0; i < 1 + global.difficulty; i++)
        {
            with (instance_create(x, y, objRock))
            {
                speed = other.spd;
                if (other.image_blend == c_black)
                    sprite_index = sprJustularityRock2;
            }
        }
        alarm[7] = 400 - global.difficulty * 100;
        break;
    case 1:
        if (!audio_is_playing(sound))
            sound = scrPlaySound(sndBoss2_Fire);
        var tmpX = -4;
        var tmpY = -4;
        var tmpD = 270;
        for (var i = 0; i < global.difficulty + 1; i++)
        {
            if (global.gravH)
            {
                tmpY = random_range(32, 576);
                if (!global.grav)
                {
                    tmpX = 804;
                    tmpD = 180;
                }
                else
                    tmpD = 0;
            }
            else
            {
                tmpX = random_range(32, 768);
                if (!global.grav)
                {
                    tmpY = 612;
                    tmpD = 90;
                }
            }
            var c = instance_create(tmpX, tmpY, objCherry);
            with (c)
            {
                if (other.image_blend == c_black)
                    sprite_index = sprJustularityCoal2;
                else
                    sprite_index = sprJustularityCoal;
                image_speed = 10 / room_speed;
                speed = 4 + global.difficulty * 2;
                image_xscale = 2;
                image_yscale = image_xscale;
            }
            c.direction = tmpD;
            c.image_angle = tmpD - 270;
        }
        alarm[7] = 32 - global.difficulty * 6;
        break;
    case 2:
        var b = instance_create(x, y, objJustularityBomb);
        if (image_blend == c_black)
            b.sprite_index = sprJustularitySausage2;
        alarm[7] = 100 - global.difficulty * 30;
        break;
    case 3: //Blue
        for (var i = 0; i < 4; i++)
        {
            var r = instance_create(x, y, objPropeller);
            with (r)
            {
                speed = (global.difficulty + 2) * 3;
                if (other.image_blend == c_black)
                    sprite_index = sprJustularityPropeller2;
                image_angle = other.image_angle;
            }
            r.direction = 90 * i;
        }
        alarm[7] = 400 - global.difficulty * 100;
        break;
    case 4:
        var s = 3 + global.difficulty;
        scrPlaySound(sndBoss2_Water);
        var w = instance_create(0, 576, objJustularityWater);   //bottom
        w.hspeed = s;
        if (image_blend == c_black)
            w.sprite_index = sprJustularityWater2;
        
        w = instance_create(800, 32, objJustularityWater);  //top
        w.hspeed = -s;
        w.image_yscale = -1;
        if (image_blend == c_black)
            w.sprite_index = sprJustularityWater2;
        
        w = instance_create(32, 0, objJustularityWater);  //left
        w.vspeed = s;
        w.image_angle = 270;
        if (image_blend == c_black)
            w.sprite_index = sprJustularityWater2;
        
        w = instance_create(768, 608, objJustularityWater); //right
        w.vspeed = -s;
        w.image_angle = 90;
        if (image_blend == c_black)
            w.sprite_index = sprJustularityWater2;
        if (global.difficulty == 3)
        {
            w = instance_create(800, 576, objJustularityWater); //bottom
            w.hspeed = -s;
            if (image_blend == c_black)
                w.sprite_index = sprJustularityWater2;
            
            w = instance_create(0, 32, objJustularityWater); //top
            w.hspeed = s;
            w.image_yscale = -1;
            if (image_blend == c_black)
                w.sprite_index = sprJustularityWater2;
            
            w = instance_create(32, 608, objJustularityWater);  //left
            w.vspeed = -s;
            w.image_angle = 270;
            if (image_blend == c_black)
                w.sprite_index = sprJustularityWater2;
            
            w = instance_create(768, 32, objJustularityWater);  //right
            w.vspeed = s;
            w.image_angle = 90;
            if (image_blend == c_black)
                w.sprite_index = sprJustularityWater2;
        }
        alarm[7] = 200 - global.difficulty * 50;
        break;
    case 5:
        for (var i = 0; i < global.difficulty + 1; i++)
        {
            with (instance_create(x, y, objJustularityBall))
            {
                direction = random(360);
                speed = 4 + global.difficulty * 2;
                image_xscale = 2;
                image_yscale = image_xscale;
                if (other.image_blend == c_black)
                    sprite_index = sprJustularityBall2;
            }
        }
        alarm[7] = 800 - global.difficulty * 100;
        break;
}
