if (mouse_x < (x + 7) or mouse_x > (x + 299) or
   mouse_y < (y + 4) or (mouse_y > (y + 148)))
{
   focused = false;
   image_index = 1;
}
else
{
    focused = true;
    dragging = true;
    image_index = 0;
    dragX = mouse_x - x;
    dragY = mouse_y - y;
}

