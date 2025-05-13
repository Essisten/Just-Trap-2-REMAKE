if (warpX == 0 && warpY == 0)
{
    with(objPlayer)
        instance_destroy();
}
else
{
    objPlayer.x = warpX;
    objPlayer.y = warpY;
}

room_goto(roomTo);

