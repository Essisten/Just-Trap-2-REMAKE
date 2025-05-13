if ((!audio_is_playing(music[0]) and !audio_is_playing(music[1])) and !intro and !instance_exists(objGameOver))
{
    scrPlayMusic(music[1], true);
    instance_destroy();
}

