image_xscale += 0.1;
image_yscale += 0.1;
if (image_yscale > 4)
{
    scrCreateFade(c_white, 0.02, false);
    with (objK2_Ball)
         instance_destroy();
    with (objK2_Projectile)
         instance_destroy();
    with (objK2_Projectile2)
         instance_destroy();
    with (objK2_Laser)
         instance_destroy();
    with (objK2_MagicUse)
         instance_destroy();
    instance_destroy();
}

