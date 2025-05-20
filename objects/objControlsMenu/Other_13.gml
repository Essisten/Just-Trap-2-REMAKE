with (objControlsMenu) {
///Option paging
if (scrButtonCheckPressed(global.menuLeftButton))
{
    switch (select)
    {
        case 0:
            gp_sel--;
            if (gp_sel < 0)
                gp_sel = ds_list_size(global.gp_connections) - 1;
            global.controllerIndex = ds_list_find_value(global.gp_connections, gp_sel);
            break;
        default:
            event_user(0);
            break;
    }
}
else
{
    switch (select)
    {
        default:
            event_user(0);
            break;
    }
}

}
