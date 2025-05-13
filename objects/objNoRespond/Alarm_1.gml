/// @description Dragging
if (!mouse_check_button(mb_left))
   exit;
xx = clamp(mouse_x - dragX, __view_get( e__VW.XView, 0 ), __view_get( e__VW.XView, 0 ) + 490);
yy = clamp(mouse_y - dragY, __view_get( e__VW.YView, 0 ), __view_get( e__VW.YView, 0 ) + 460);
for (var i = 0; i < 3; i++)
{
    if (!instance_exists(button[i]))
       break;
    button[i].x += xx - x;
    button[i].y += yy - y;
}
x = xx;
y = yy;
alarm[1] = 1;

