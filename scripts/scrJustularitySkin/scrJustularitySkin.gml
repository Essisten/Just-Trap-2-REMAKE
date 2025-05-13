/// @description scrJustularitySkin(skin)
/// @param skin
///Sets proper skin by checking if the boss is red or not
function scrJustularitySkin(argument0) {

	if (reloading)
	   return -1;
	if (isRed)
	{
	    switch (argument0)
	    {
	        case 0:
	            sprite_index = sprJustularityIdleRed;
	            break;
	        case 1:
	            sprite_index = sprJustularityRunRed;
	            break;
	        case 2:
	            sprite_index = sprJustularityFallRed;
	            break;
	        case 3:
	            sprite_index = sprJustularityShootRed;
	            break;
	    }
	}
	else
	{
	    switch (argument0)
	    {
	        case 0:
	            sprite_index = sprJustularityIdleBlue;
	            break;
	        case 1:
	            sprite_index = sprJustularityRunBlue;
	            break;
	        case 2:
	            sprite_index = sprJustularityFallBlue;
	            break;
	        case 3:
	            sprite_index = sprJustularityShootBlue;
	            break;
	    }
	}



}
