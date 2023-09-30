///gets which song is supposed to be playing for the current room and plays it

var roomSong;
var doLoop = true;

switch (room)                       //determines which song to play
{               //make sure to always put a break after setting the song
    case rStageSelect:
    case rShop:
    case rTemplate:
        var oldMusic = global.currentMusic;
        scrPlayMusic(musStageSelect, true); //play the song for the current room
        if (oldMusic != global.currentMusic)
            audio_sound_set_track_position(global.currentMusic, choose(73, 126, 165));
        return -1;
    case rBoss1:
        roomSong = musStage1;
        break;
    case rBoss4:
        scrPlayMusic(musStage4, true); //play the song for the current room
        audio_sound_set_track_position(global.currentMusic, 13.1);
        return -1;
    default:                        //default option in case the room does not have a song set
        roomSong = -1;
        break;
}

if (roomSong != -2)
{
    scrPlayMusic(roomSong, doLoop); //play the song for the current room
}
