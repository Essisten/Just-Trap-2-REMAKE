///scrCustomDisplay()
switch (object_index)
{
    case objAudioMenu:
        draw_set_halign(fa_right);
        switch (i)
        {
            case 0:
                scrDrawTextOutline(xSelector+xSeperation,ySelector+ySeperation*i,string(global.musicVol) + "%", clr, c_black);
                draw_set_color(clr);
                draw_rectangle(xSelector+xSeperation - 320, ySelector+ySeperation*i,
                            xSelector+xSeperation - 320 + (224 * (global.musicVol / 100)), ySelector+ySeperation*i + 32, false);
                draw_set_color(c_white);
                draw_rectangle(xSelector+xSeperation - 320, ySelector+ySeperation*i,
                            xSelector+xSeperation - 96, ySelector+ySeperation*i + 32, true);
                break;
            case 1:
                scrDrawTextOutline(xSelector+xSeperation,ySelector+ySeperation*i,string(global.soundVol) + "%", clr, c_black);
                draw_set_color(clr);
                draw_rectangle(xSelector+xSeperation - 320, ySelector+ySeperation*i,
                            xSelector+xSeperation - 320 + (224 * (global.soundVol / 100)), ySelector+ySeperation*i + 32, false);
                draw_set_color(c_white);
                draw_rectangle(xSelector+xSeperation - 320, ySelector+ySeperation*i,
                            xSelector+xSeperation - 96, ySelector+ySeperation*i + 32, true);
                break;
        }
        break;
    case objControlsMenu:
        draw_set_halign(fa_right);
        switch (i)
        {
            case 0:
                scrDrawTextOutline(xSelector+xSeperation - 32,ySelector+(ySeperation*i), strValue[3, ds_list_find_value(values, i) + 1], clr, c_black);
                break;
            case 1:
                break;
            default:
                if (key_listen and select == i)
                {
                    scrDrawTextOutline(xSelector+xSeperation,ySelector+ySeperation*i, "Press any key", clr, c_black);
                    break;
                }
                var value = ds_list_find_value(values, i);
                var key = scrGetKeybind(value[0]);
                if (global.controllerIndex > -1)
                    key = scrGetControllerBind(value[1]);
                scrDrawTextOutline(xSelector+xSeperation - 32,ySelector+ySeperation*i, key, clr, c_black);
                if (ds_list_find_index(key_duplicates, i) != -1)
                {
                    draw_set_colour(c_red);
                    draw_text(xSelector+xSeperation + 16,ySelector+ySeperation*i, "X");
                }
                break;
        }
        break;
    case objOtherMenu:
        draw_set_halign(fa_right);
        switch (i)
        {
            case 0:
                scrDrawTextOutline(xSelector+xSeperation,ySelector+ySeperation*i,string(round(global.bossDeathBrightness * 100)) + "%", clr, c_black);
                draw_set_color(clr);
                draw_rectangle(xSelector+xSeperation - 160, ySelector+ySeperation*i,
                            xSelector+xSeperation - 160 + (64 * global.bossDeathBrightness), ySelector+ySeperation*i + 32, false);
                draw_set_color(c_white);
                draw_rectangle(xSelector+xSeperation - 160, ySelector+ySeperation*i,
                            xSelector+xSeperation - 96, ySelector+ySeperation*i + 32, true);
                break;
        }
}
