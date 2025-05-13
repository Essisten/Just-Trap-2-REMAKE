with (other) {
var trick = abs(sin(degtorad(d)));
draw_set_alpha(trick * 0.5)
draw_sprite(sprGameTitle, 1, titleX, titleY);
draw_set_alpha(0.9 + trick * 0.1);
draw_sprite(sprGameTitle, 0, titleX, titleY);
if (intro and alarm[0] == -1)
{
    draw_set_alpha(trick);
    draw_sprite(sprShiftToStart, 0, 160, 480);
    draw_set_alpha(1);
}

}
