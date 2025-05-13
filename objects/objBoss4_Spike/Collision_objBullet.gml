with (other)
    instance_destroy();
if (!ready or !instance_exists(owner))
    return -1;
var bullet = instance_create(x + 16, y + 16, objBoss4_BigBullet);
bullet.target = instance_find(owner, 0);
bullet.direction = point_direction(x, y, owner.x, owner.y);
bullet.image_index = image_index;
bullet.doHeal = doHeal;
ready = false;
alarm[0] = 30;

