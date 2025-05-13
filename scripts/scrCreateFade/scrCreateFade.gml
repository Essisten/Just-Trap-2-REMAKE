/// @description scrCreateFade(colour, speed, darker)
/// @param colour
/// @param  speed
/// @param  darker
///colour - colour of effect
///speed - fading speed
///darker - increasing alpha or lowering
function scrCreateFade() {
	with (instance_create(0, 0, objLightEffect))
	{
	    if (argument_count > 0)
	    {
	        color = argument[0];
	        if (argument_count > 1)
	        {
	            spd = argument[1]
	            if (argument_count > 2)
	            {
	                darker = argument[2];
	                if (darker)
	                    alpha = 0;
	            }
	        }
	    }
	}



}
