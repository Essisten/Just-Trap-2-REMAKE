if (HP[2] > 0)
{
	if (phase == 2 and global.currentMusicID == musStage2D)
	{
		draw_set_colour(c_red);
		offset += 2;
		draw_rectangle(redX - offset, redY - offset, redX + width + offset, redY + HP[2] * 1.28 + offset, false);
		offset -= 2;
	}
	draw_set_colour(c_black);
    draw_rectangle(redX - offset, redY - offset, redX + width + offset, redY + HP[2] * 1.28 + offset, false);
}
if (HP[3] > 0)
{
	if (phase == 2 and global.currentMusicID == musStage2D)
	{
		draw_set_colour(c_aqua);
		offset += 2;
		draw_rectangle(blueX - offset - blueOffset, blueY + offset, blueX + width + offset - blueOffset, blueY + HP[3] * -1.28 - offset, false);
		offset -= 2;
	}
	draw_set_colour(c_black);
    draw_rectangle(blueX - offset - blueOffset, blueY + offset, blueX + width + offset - blueOffset, blueY + HP[3] * -1.28 - offset, false);
}
draw_set_colour(c_white);

if (phase == 2)
    exit;
if (HP[0] > 0)
    draw_sprite_ext(sprJustularityHP, round(sub), redX, redY + 3, 1, HP[0] * 1.24, 0, c_white, 1);
if (HP[1] > 0)
    draw_sprite_ext(sprJustularityHP2, round(sub), blueX - blueOffset, blueY - 3, 1, HP[1] * -1.24, 0, c_white, 1);
sub += 0.2;
if (round(sub) > 6)
    sub = 0;

