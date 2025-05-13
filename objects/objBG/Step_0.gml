switch (round(audio_sound_get_track_position(global.currentMusic)))
{
    case 72:
        if (!once)
            break;
        event_user(0);
        phase = 1;
        once = false;
        break;
    case 35:
    case 101:
        if (!once)
            break;
        event_user(1);
        phase = 2;
        once = false;
        break;
    case 45:
    case 110:
        if (!once or global.difficulty == 3)
            break;
        instance_create(objJR.hole.x, objJR.hole.y, objWarningJR);
        once = false;
        break;
    case 51:
    case 117:
        if (!once)
            break;
        event_user(2);
        phase = 3;
        once = false;
        break;
    case 65:
    case 135:
        if (!once or global.difficulty == 3)
            break;
        instance_create(objJustist.hole.x, objJustist.hole.y, objWarningJustist);
        once = false;
        break;
    case 136:
        audio_sound_set_track_position(global.currentMusic, 70);
        break;
    default:
        once = true;
        break;
}

