if (play)
{
    if (!audio_is_playing(global.currentMusic) and instance_exists(objPlayer))
    {
        var name = musStage2B;
        if (phase == 2)
            name = musStage2D;
        scrPlayMusic(name, true);
    }
}

