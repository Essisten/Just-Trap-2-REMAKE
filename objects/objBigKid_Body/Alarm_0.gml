/// @description Shooting big bullets
var tmp = objBigKid_Water;
if ((bullet_counter == 0 or
   (bullet_counter == 1 and (irandom(5 - global.difficulty) == 0) and global.difficulty > 0) or
   (bullet_counter == 2 and (global.difficulty == 3) and choose(true, false))))
{
    if !(global.difficulty == 0 and bullet_counter == 1)
       bullet_counter++;
    tmp = objBigKid_Bullet;
    if (objBigKid_BG.phase == 1 and objBigKid_Head.HP < 25 and global.difficulty < 3)
    {
        alarm[0] = ceil(64 / random_range(2, 5));
        exit;
    }
}
else
    bullet_counter = 0;
if (instance_exists(objBigGeezer_Head) and !objBigGeezer_Head.crazy)
   tmp = objBigKid_Water;
b = instance_create(x - 208, y + 64, tmp);
with (b)
{
    hspeed = -(global.difficulty + 1) * 1.4;
    image_xscale = 16;
    image_yscale = image_xscale;
}
alarm[0] = floor(64 / abs(b.hspeed));

