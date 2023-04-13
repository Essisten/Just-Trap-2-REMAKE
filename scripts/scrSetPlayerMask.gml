///sets the player's mask depending on gravity flip mode

if (global.gravH)
{
    image_angle = 90;
    gravity_direction = 0;
}
else
{
    image_angle = 0;
    gravity_direction = 270;
}
if (global.grav)
    mask_index = sprPlayerMask;
else
    mask_index = sprPlayerMaskFlip;
