if (!ready)
    return -1;
switch (image_index)
{
    case 0:
        warm = min(warm + 4 + global.difficulty * 2, 255);
        break;
}
if (warm > 254)
    scrKillPlayer();

