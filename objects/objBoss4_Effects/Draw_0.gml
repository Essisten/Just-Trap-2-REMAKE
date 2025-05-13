/// @description Drawing final
if (final)
{
    draw_set_blend_mode_ext(bm_inv_dest_color, bm_inv_dest_color);
    draw_set_colour(c_white);
    draw_rectangle(400 - w, 0, 400 + w, 608, false);
    if (instance_exists(objJustination))
    {
        if (w < 500)
            w += 4;
        else
        {
            w = 500;
            with (objBoss4_Spike)
            {
                kill = true;
                image_alpha = 1;
            }
        }
    }
    else
    {
        if (w > 0)
            w -= 4;
        else
        {
            w = 0;
            with (objBoss4_Spike)
            {
                kill = true;
            }
            objWorld.alarm[2] = 300;
            instance_destroy();
            __view_set( e__VW.Visible, 2, false );
            __view_set( e__VW.Visible, 1, false );
            exit;
        }
    }
    draw_set_blend_mode(bm_normal);
}

with (objBoss4_Effects) {
///Left side
if (final)
    return -1;
if (!surface_exists(surf[0]))
{
    surf[0] = surface_create(400, 608);
    __view_set( e__VW.SurfaceID, 2, surf[0] );
}

if (side[0] != old[0])
{
    changeW[0] = max(0, changeW[0] - 8);
    if (changeW[0] == 0)
    {
        old[0] = side[0];
        part_emitter_destroy(global.portalParticleSystem, emitter[0]);
    }
}
else
    changeW[0] = min(500, changeW[0] + 8);
    
surface_set_target(surf[0]);
switch (old[0])
{
    case objJustinationDark:
        draw_clear_alpha(c_white, 0);
        draw_set_blend_mode(bm_subtract);
        var color = c_black;
        var color2 = 100 - global.difficulty * 20;
        if (objJustinationDark.HP <= 0)
            color = make_colour_rgb(color2, color2, color2);
        draw_set_colour(color);
        draw_rectangle(0, 0, -150 + changeW[0], 608, false);
        draw_rectangle_colour(-149 + changeW[0], 0, 400, 608, color, c_white, c_white, color, false);
        color2 /= 20;
        color = make_colour_rgb(color2, color2, color2);
        if (instance_exists(objPlayer))
        {
            if (objPlayer.x < 600)
            {
                var xx = objPlayer.x;
                var yy = objPlayer.y;
                var rad = (220 - global.difficulty * 60) * (changeW[0] / 500);
                draw_ellipse_colour(xx - rad, yy - rad, xx + rad, yy + rad, c_white, color, false);
            }
        }
        
        if (objJustinationLight.active and objJustinationLight.HP > 0)
        {
            var xx = objJustinationLight.x;
            var yy = objJustinationLight.y;
            var rad = 160 * (0.9 + sin(degtorad(objJustinationLight.dick)) * 0.1) * (changeW[0] / 500);
            draw_ellipse_colour(xx - rad * 2, yy - rad, xx + rad * 2, yy + rad, c_white, color, false);
        }
        if (objJustinationDark.HP > 0)
        {
            var xx = objJustinationDark.x;
            var yy = objJustinationDark.y;
            var rad = 200 * (changeW[0] / 500) * (0.9 + sin(degtorad(objJustinationDark.image_angle)) * 0.1);
            draw_ellipse_colour(xx - rad, yy - rad, xx + rad, yy + rad, c_red, color, false);
        }
        break;
    case objJustinationLight:
        draw_clear_alpha(c_black, 0);
        draw_set_blend_mode(bm_add);
        var c = 150 + global.difficulty * 20;
        var color = make_colour_rgb(c, c, c);
        if (objJustinationLight.HP <= 0)
            color = make_colour_rgb(c/2, c/2, c/2);
        draw_set_colour(color);
        draw_rectangle(0, 0, -150 + changeW[0], 608, false);
        draw_rectangle_colour(-149 + changeW[0], 0, -100 + changeW[0], 608, color, c_black, c_black, color, false);
        break;
    case objJustinationFire:
        draw_clear_alpha(c_black, 0);
        if (!part_emitter_exists(global.portalParticleSystem, emitter[0]) and objJustinationFire.HP > 0 and global.particles)
        {
            emitter[0] = part_emitter_create(global.portalParticleSystem);
            part_emitter_region(global.portalParticleSystem, emitter[0], 32, 400, 676, 676, pt_shape_line, ps_distr_linear);
            part_emitter_stream(global.portalParticleSystem, emitter[0], smoke, 1);
            if (objJustinationFire.HP > 50)
                part_type_speed(smoke, 2, 6, 0, 0);
            else
                part_type_speed(smoke, 5, 15, 0, 0);
        }
        draw_set_blend_mode(bm_add);
        draw_rectangle_colour(0, 0, -100 + changeW[0], 608, c_maroon, c_black, c_black, c_maroon, false);
        break;
    case objJustinationIce:
        draw_clear_alpha(c_black, 0);
        if (!part_emitter_exists(global.portalParticleSystem, emitter[0]) and objJustinationIce.HP > 0 and global.particles)
        {
            emitter[0] = part_emitter_create(global.portalParticleSystem);
            part_emitter_region(global.portalParticleSystem, emitter[0], 32, 400, 0, 0, pt_shape_line, ps_distr_linear);
            if (objJustinationIce.HP > 50)
            {
                part_type_speed(snow, 2, 6, 0, 0);
                part_emitter_stream(global.portalParticleSystem, emitter[0], snow, 1);
            }
            else
            {
                part_type_speed(snow, 5, 10, 0, 0);
                part_emitter_stream(global.portalParticleSystem, emitter[0], snow, 5);
            }
        }
        draw_set_blend_mode(bm_add);
        draw_rectangle_colour(0, 0, -100 + changeW[0], 608, c_teal, c_black, c_black, c_teal, false);
        break;
    default:
        draw_clear_alpha(c_black, 0);
        break;
}
surface_reset_target();
draw_surface(surf[0], 0, 0);
draw_set_blend_mode(bm_normal);

}
///Right side
if (final)
    return -1;
if (!surface_exists(surf[1]))
{
    surf[1] = surface_create(400, 608);
    __view_set( e__VW.SurfaceID, 1, surf[1] );
}

if (side[1] != old[1])
{
    changeW[1] = min(500, changeW[1] + 8);
    if (changeW[1] == 500)
    {
        old[1] = side[1];
        part_emitter_destroy(global.saveParticleSystem, emitter[1]);
    }
}
else
    changeW[1] = max(0, changeW[1] - 8);

surface_set_target(surf[1]);
var xsurf = 400;
switch (old[1])
{
    case objJustinationDark:
        draw_clear_alpha(c_white, 0);
        draw_set_blend_mode(bm_subtract);
        var color = c_black;
        var color2 = 100 - global.difficulty * 20;
        if (objJustinationDark.HP <= 0)
            color = make_colour_rgb(color2, color2, color2);
        draw_set_colour(color);
        draw_rectangle(50 + changeW[1], 0, 400, 608, false);
        draw_rectangle_colour(0, 0, 49 + changeW[1], 608, c_white, color, color, c_white, false);
        color2 /= 20;
        color = make_colour_rgb(color2, color2, color2);
        if (instance_exists(objPlayer))
        {
            if (objPlayer.x > 200)
            {
                var xx = objPlayer.x - xsurf;
                var yy = objPlayer.y;
                var rad = 220 - global.difficulty * 60;
                draw_ellipse_colour(xx - rad, yy - rad, xx + rad, yy + rad, c_white, color, false);
            }
        }
        if (objJustinationIce.active and objJustinationIce.HP > 0)
        {
            var xx = objJustinationIce.x - xsurf;
            var yy = objJustinationIce.y;
            var rad = 200 * abs((-changeW[1] + 500) / 500) * (0.9 + sin(degtorad(objJustinationIce.dick)) * 0.1);
            draw_ellipse_colour(xx - rad * 2, yy - rad, xx + rad * 2, yy + rad, c_teal, color, false);
        }
        if (objJustinationFire.active and objJustinationFire.HP > 0)
        {
            var xx = objJustinationFire.x - xsurf;
            var yy = objJustinationFire.y;
            var rad = 160 * abs((-changeW[1] + 500) / 500) * (0.9 + sin(degtorad(objJustinationFire.dick)) * 0.1);
            draw_ellipse_colour(xx - rad * 2, yy - rad, xx + rad * 2, yy + rad, c_red, color, false);
        }
        break;
    case objJustinationLight:
        draw_clear_alpha(c_black, 0);
        draw_set_blend_mode(bm_add);
        var c = 150 + global.difficulty * 20;
        var color = make_colour_rgb(c, c, c);
        if (objJustinationLight.HP <= 0)
            color = make_colour_rgb(c/2, c/2, c/2);
        draw_set_colour(color);
        draw_rectangle(50 + changeW[1], 0, 400 + changeW[1], 608, false);
        draw_rectangle_colour(0 + changeW[1], 0, 49 + changeW[1], 608, c_black, color, color, c_black, false);
        break;
    case objJustinationFire:
        draw_clear_alpha(c_black, 0);
        if (!part_emitter_exists(global.saveParticleSystem, emitter[1]) and objJustinationFire.HP > 0 and global.particles)
        {
            emitter[1] = part_emitter_create(global.saveParticleSystem);
            part_emitter_region(global.saveParticleSystem, emitter[1], 32 + xsurf, 400 + xsurf, 676, 676, pt_shape_line, ps_distr_linear);
            part_emitter_stream(global.saveParticleSystem, emitter[1], smoke, -1);
            if (objJustinationFire.HP > 50)
                part_type_speed(smoke, 2, 6, 0, 0);
            else
                part_type_speed(smoke, 5, 15, 0, 0);
        }
        draw_set_blend_mode(bm_add);
        draw_rectangle_colour(0 + changeW[1], 0, 400 + changeW[1], 608, c_black, c_maroon, c_maroon, c_black, false);
        break;
    case objJustinationIce:
        draw_clear_alpha(c_black, 0);
        if (!part_emitter_exists(global.saveParticleSystem, emitter[1]) and objJustinationIce.HP > 0 and global.particles)
        {
            emitter[1] = part_emitter_create(global.saveParticleSystem);
            part_emitter_region(global.saveParticleSystem, emitter[1], 32 + xsurf, 400 + xsurf, 0, 0, pt_shape_line, ps_distr_linear);
            if (objJustinationIce.HP > 50)
            {
                part_type_speed(snow, 2, 6, 0, 0);
                part_emitter_stream(global.saveParticleSystem, emitter[1], snow, 1);
            }
            else
            {
                part_type_speed(snow, 5, 10, 0, 0);
                part_emitter_stream(global.saveParticleSystem, emitter[1], snow, 5);
            }
        }
        draw_set_blend_mode(bm_add);
        draw_rectangle_colour(0 + changeW[1], 0, 400 + changeW[1], 608, c_black, c_teal, c_teal, c_black, false);
        break;
    default:
        draw_clear_alpha(c_black, 0);
        break;
}
surface_reset_target();
draw_surface(surf[1], xsurf, 0);
draw_set_blend_mode(bm_normal);

