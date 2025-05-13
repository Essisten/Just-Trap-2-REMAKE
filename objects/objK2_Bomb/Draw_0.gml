draw_set_blend_mode(bm_add) 
draw_self();
draw_set_blend_mode(bm_normal)
image_angle += speed * 2 * dir;
if (((place_meeting(x, y, objBlock) or place_meeting(x, y, objPlayer)) and y > 128)
       or y >= 560)
{
    event_user(0);
}
else if (place_meeting(x, y, objBigKid_Head) and reflected)
{
    event_user(0);
    with (objBigKid_Head)
    {
        bullet = other;
        event_perform(ev_collision, objPlayerKiller);
    }
}

