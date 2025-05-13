/// @description Explosion
if (stage < min(global.difficulty + 1, 3))
{
    with (objJustularity)
    {
        if (!audio_is_playing(sound))
            sound = scrPlaySound(sndBreak);
    }
    g = gravity_direction + irandom_range(1, 3) * 90;
    for (var i = 0; i < min(global.difficulty + 1, 3); i++)
    {
        var r = instance_create(x, y, objRock);
        with (r)
        {
            gravity_direction = other.g;
            gravity /= 2;
            stage = other.stage + 1;
            sprite_index = other.sprite_index;
            image_index = stage;
            speed = global.difficulty + random(3);
        }
        r.direction = 360 / 3 * i;
    }
}
instance_destroy();

