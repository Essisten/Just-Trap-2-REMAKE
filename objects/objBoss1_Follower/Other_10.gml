/// @description stay with the player

if (instance_exists(owner))
{
    x += (owner.x - x) / snapDiv;
    y += (owner.y - y) / snapDiv;
    image_xscale = owner.image_xscale;
    image_yscale = owner.image_yscale;
    if (global.grav != 1)
        image_yscale *= -1;
}
else
    instance_destroy();

