/// @description Attacking
var cycles = global.difficulty + 1;
if (alarm[5] > -1 and global.difficulty < 3)
   cycles--;
if (HP > 50)
{
    repeat (cycles)
    {
        with (instance_create(x, y, objCherry))
        {
            sprite_index = choose(sprCherry, sprCherryWhite, sprCherryCyan, sprCherryGray);
            direction = random_range(200, 340);
            speed = random_range(2, 3 + global.difficulty * 2);
            change_dir = random_range(0.1, -0.1) * (global.difficulty + 1);
            image_xscale = 0.5;
            image_yscale = 0.5;
            dmg /= 5;
        }
    }
    alarm[0] = 8 - global.difficulty * 2;
}
else
{
    repeat (cycles)
    {
        with (instance_create(0, 0, objCherry))
        {
            sprite_index = choose(sprCherry, sprCherryWhite, sprCherryCyan, sprCherryGray);
            direction = random_range(270, 320);
            speed = random_range(1, 2 + global.difficulty);
            change_dir = random_range(0.1, -0.1) * (global.difficulty + 1);
            image_xscale = 0.5;
            image_yscale = 0.5;
        }
        with (instance_create(800, 0, objCherry))
        {
            sprite_index = choose(sprCherry, sprCherryWhite, sprCherryCyan, sprCherryGray);
            direction = random_range(270, 220);
            speed = random_range(1, 2 + global.difficulty);
            change_dir = random_range(0.1, -0.1) * (global.difficulty + 1);
            image_xscale = 0.5;
            image_yscale = 0.5;
        }
    }
    if (global.difficulty == 3)
       alarm[0] = 3;
    else
        alarm[0] = 18 - global.difficulty * 3;
}

