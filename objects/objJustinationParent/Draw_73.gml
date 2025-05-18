/// @description Draw healthbars
if (active and HP > 0)
    draw_healthbar(x - 32, oldY - 90, x + 32, oldY - 86, HP, c_black, colorHP, colorHP, 0, true, true);