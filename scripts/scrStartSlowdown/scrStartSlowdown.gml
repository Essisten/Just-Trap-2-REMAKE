/// @description scrStartSlowdown(time, fps)
/// @param time
/// @param  fps
function scrStartSlowdown() {
	with (instance_create(0, 0, objSlowdownEffect))
	{
	    if (argument_count > 0)
	    {
	       time = argument[0];
	       if (argument_count > 1)
	          spd = argument[1];
	    }  
	}



}
