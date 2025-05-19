/// @description Drawing final
if (final)
{
    draw_set_blend_mode_ext(bm_inv_dest_color, bm_inv_dest_color);
    draw_set_colour(c_white);
	draw_set_circle_precision(32);
	if (w2 < 600)
	{
		if (w < 600)
			draw_circle(405, 216, w, false);
		else
			draw_rectangle(-32, -32, 832, 640, false);
		if (w2 > 0)
			draw_circle(405, 216, w2, false);
	}
    if (instance_exists(objJustination))
    {
        if (w < 600)
            w += 4;
        else
        {
            w = 600;
            with (objBoss4_Spike)
            {
                kill = true;
                image_alpha = 1;
            }
        }
    }
    else
    {
        if (w2 < 600)
            w2 += 4;
        else
        {
            w2 = 600;
            with (objBoss4_Spike)
            {
                kill = true;
            }
            objWorld.alarm[2] = 300;
            instance_destroy();
            __view_set( e__VW.Visible, 2, false );
            __view_set( e__VW.Visible, 1, false );
			draw_set_blend_mode(bm_normal);
            exit;
        }
    }
    draw_set_blend_mode(bm_normal);
	exit;
}

view_set_visible(2, false);
switch (old[0])
{
    case objJustinationDark:
		view_set_visible(2, true);
		if (!surface_exists(surf[0]))
		{
		    surf[0] = surface_create(400, 608);
		    __view_set( e__VW.SurfaceID, 2, surf[0] );
		}
		surface_set_target(surf[0]);
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
		surface_reset_target();
		draw_surface(surf[0], 0, 0);
        break;
    case objJustinationLight:
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
}
///Right side
var xsurf = 400;
view_set_visible(1, false);
switch (old[1])
{
    case objJustinationDark:
		view_set_visible(1, true);
		if (!surface_exists(surf[1]))
		{
		    surf[1] = surface_create(400, 608);
		    __view_set( e__VW.SurfaceID, 1, surf[1] );
		}
		surface_set_target(surf[1]);
        draw_clear_alpha(c_white, 0);
        draw_set_blend_mode(bm_subtract);
        var color = c_black;
        var color2 = 100 - global.difficulty * 20;
        if (objJustinationDark.HP <= 0)
            color = make_colour_rgb(color2, color2, color2);
        draw_set_colour(color);
        draw_rectangle(0 + changeW[1], 0, 400, 608, false);
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
		surface_reset_target();
		draw_surface(surf[1], xsurf, 0);
        break;
    case objJustinationLight:
        draw_set_blend_mode(bm_add);
        var c = 150 + global.difficulty * 20;
        var color = make_colour_rgb(c, c, c);
        if (objJustinationLight.HP <= 0)
            color = make_colour_rgb(c/2, c/2, c/2);
        draw_set_colour(color);
        draw_rectangle(450 + changeW[1], 0, 800 + changeW[1], 608, false);
        draw_rectangle_colour(400 + changeW[1], 0, 449 + changeW[1], 608, c_black, color, color, c_black, false);
        break;
    case objJustinationFire:
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
        draw_rectangle_colour(400 + changeW[1], 0, 800 + changeW[1], 608, c_black, c_maroon, c_maroon, c_black, false);
        break;
    case objJustinationIce:
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
        draw_rectangle_colour(400 + changeW[1], 0, 800 + changeW[1], 608, c_black, c_teal, c_teal, c_black, false);
        break;
}
draw_set_blend_mode(bm_normal);

