if (image_index == 0)
    warm = max(0, warm - 1);
else
    warm = 0;
image_blend = make_colour_rgb(255, 255 - warm, 255 - warm);

