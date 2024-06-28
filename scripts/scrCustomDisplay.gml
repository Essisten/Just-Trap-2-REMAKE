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
            case 1:
                break;
            default:
                if (global.controllerIndex == -1)
                {
                    
                }
                else
                {
                    
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
