///scrAddBodyPart(part, owner)
var part = instance_create(x, y, argument0);
part.owner = argument1;
if (part.owner == objJustist)
   part.depth -= 2;
return part;
