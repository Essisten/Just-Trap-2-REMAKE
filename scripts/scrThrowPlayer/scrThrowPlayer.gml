/// @description scrThrowPlayer(direction, speed)
/// @param direction
/// @param speed
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrThrowPlayer()
{
	with (objPlayer)
	{
		direction = argument0;
		speed = argument1;
		momentumH = hspeed;
		momentumV = vspeed;
	}
}