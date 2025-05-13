draw_set_alpha(1);
draw_clear(c_black);
draw_set_colour(c_black);
if (surface_exists(global.pauseSurf))       //check if surface exists before drawing it
    draw_surface(global.pauseSurf, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
draw_set_alpha(0.4);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 ) + display_get_gui_width(),__view_get( e__VW.YView, 0 ) + display_get_gui_height(),0);    //darken the paused screen
draw_set_alpha(1);
draw_set_blend_mode(bm_add);
draw_rectangle_colour(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + w, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), c_aqua, c_black, c_black, c_aqua, false);
draw_rectangle_colour(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - w, __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), c_black, c_red, c_red, c_black, false);
draw_set_blend_mode(bm_normal);

if (instance_exists(child))
    exit;
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fDefault30);
draw_set_alpha(w / maxW * 0.8);
draw_set_colour(c_black);
draw_rectangle(textX - sOffsetH,textY - sOffsetV,
textX + sOffsetH, textY + sep * (maxSel + 1.5) + sOffsetV, false);

draw_set_alpha(w / maxW);
for (var i = 0; i <= maxSel; i++)
{
    var clr = c_white;
    if (sel == i)
        clr = c_red;
    scrDrawTextOutline(textX, textY + sep * (i), text[i], clr, c_black);
}

draw_set_halign(fa_left);
draw_set_font(fDefault18);

var t = global.time;
var timeText = string(t div 3600) + ":";
t = t mod 3600;
timeText += string(t div 600);
t = t mod 600;
timeText += string(t div 60) + ":";
t = t mod 60;
timeText += string(t div 10);
t = t mod 10;
timeText += string(floor(t));

draw_set_color(c_white);
draw_sprite_ext(sprDiffIcon, 5, textX - sOffsetH / 3, textY - 20 + sep * (maxSel + 1), 2, 2, 0, c_white, draw_get_alpha());
draw_sprite(sprClock, 0, textX - sOffsetH / 3,  textY + sep * (maxSel + 1.5));
scrDrawTextOutline(textX - sOffsetH / 3 + 16, textY + sep * (maxSel + 1), "x" + string(global.death), c_white, c_black);
scrDrawTextOutline(textX - sOffsetH / 3 + 16,textY + sep * (maxSel + 1.5), timeText, c_white, c_black);
draw_set_alpha(1);

