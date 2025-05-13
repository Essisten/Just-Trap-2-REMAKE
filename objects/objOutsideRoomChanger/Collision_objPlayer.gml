if (other.x < 0 || other.x > room_width || other.y < 0 || other.y > room_height)  //check if player has left the room
{
    if (!smoothTransition)  //not using smooth transition, use default warp
    {
        event_inherited();
    }
    else        //using smooth transition, wrap around the screen then warp
    {
        if (other.x < 0)
        {
            other.x += room_width;
        }
        if (other.x > room_width)
        {
            other.x -= room_width;
        }
        if (other.y < 0)
        {
            other.y += room_height;
        }
        if (other.y > room_height)
        {
            other.y -= room_height;
        }
        
        room_goto(roomTo);
    }
}

