/// @description draw debug overlay
/*
shader_set(shdRandomNoise);
var rng = shader_get_uniform(shdRandomNoise, "rng_seed");
shader_set_uniform_f(rng, random_range(0.1, 0.5));
var alpha = shader_get_uniform(shdRandomNoise, "transparency");
shader_set_uniform_f(alpha, 0.2);
draw_sprite_ext(sprJustinationFire, 0, 400, 300, 4, 4, 0, 0, 0);
shader_reset();*/
if (global.debugOverlay)
{
    draw_set_color(c_black);
    draw_set_halign(fa_left);
    draw_set_font(fDefault12);
    var drawX = 0, drawY = 0, drawAlign = 0;
    if (instance_exists(objPlayer))
    {
        drawX = objPlayer.x;
        drawY = objPlayer.y;
        drawAlign = objPlayer.x mod 3;
    }
    scrDrawTextOutline(20,20,"X: "+string(drawX),c_black,c_white);
    scrDrawTextOutline(20,40,"Y: "+string(drawY),c_black,c_white);
    scrDrawTextOutline(20,60,"Align: "+string(drawAlign),c_black,c_white);
    scrDrawTextOutline(20,80,"Room name: "+room_get_name(room),c_black,c_white);
    scrDrawTextOutline(20,100,"Room number: "+string(room),c_black,c_white);
    scrDrawTextOutline(20,120,"God mode: "+string(global.debugNoDeath),c_black,c_white);
    scrDrawTextOutline(20,140,"Infinite jump: "+string(global.debugInfJump),c_black,c_white);
    scrDrawTextOutline(20,160,"FPS: "+string(fps),c_black,c_white);
    scrDrawTextOutline(20,180,"Real FPS: "+string(fps_real),c_black,c_white);
}

/* */
///draw debug mode text when we're on the title screen

if (global.debugMode && room == rTitle)
{
    draw_set_color(c_red);
    draw_set_font(fDefault12);
    draw_set_halign(fa_left);
    
    draw_text(34,34,string_hash_to_newline("Debug mode"));
}

/* */
/*  */
