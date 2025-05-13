draw_set_font(fDefault30);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_colour(c_white);
draw_set_alpha(image_alpha);
draw_text(400, 32, string_hash_to_newline("Sound Test"));
for (var i = 0; i < 3; i++)
{
    draw_sprite_ext(sprSoundTest_Icon, i, 200 + i * 200, 500, 4, 4, 0, c_white, image_alpha);
}
draw_set_font(fDefault24);
draw_text(400, 86, string_hash_to_newline("Press arrow keys to navigate"));
if (line == 3)
{
    draw_set_color(c_red);
    for (var k = 2; k < 6; k++)
    {
        draw_rectangle(136 + sel * 200 - k, 436 - k, 264 + sel * 200 + k, 564 + k, true);
    }
    draw_set_color(warn_color[phrase]);
    draw_set_alpha(warn_alpha);
    draw_text(400, 144, string_hash_to_newline(warn[phrase]));
}
draw_set_alpha(image_alpha);
var clr = c_white;
if (line == 0)
    clr = c_red;
scrDrawTextOutline(64, 232, "Music", clr, c_black);
scrDrawTextOutline(748, 232, string(global.musicVol) + "%", clr, c_black);
draw_set_color(clr);
draw_rectangle(400 - 288, 212, 400 - 288 + (576 * (global.musicVol / 100)), 212 + 32, false);
draw_set_color(c_white);
draw_rectangle(400 - 288, 212, 400 + 288, 212 + 32, true);
if (line == 1)
    clr = c_red;
else
    clr = c_white;
scrDrawTextOutline(64, 276, "Sound", clr, c_black);
scrDrawTextOutline(748, 276, string(global.soundVol) + "%", clr, c_black);
draw_set_color(clr);
draw_rectangle(400 - 288, 256, 400 - 288 + (576 * (global.soundVol / 100)), 256 + 32, false);
draw_set_color(c_white);
draw_rectangle(400 - 288, 256, 400 + 288, 256 + 32, true);
if (line == 2)
    clr = c_red;
else
    clr = c_white;
var text = "Play Music";
if (audio_is_playing(musicPlaying))
    text = "Music is playing...";
else if (alarm[3] == -1 and alarm[2] == -1)
    alarm[3] = 50;
scrDrawTextOutline(400, 336, text, clr, c_black);

