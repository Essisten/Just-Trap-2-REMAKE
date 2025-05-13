/// @description scrAddBodyPart(part, owner)
/// @param part
/// @param  owner
function scrAddBodyPart(argument0, argument1) {
	var part = instance_create(x, y, argument0);
	part.owner = argument1;
	if (part.owner == objJustist)
	   part.depth -= 2;
	return part;



}
