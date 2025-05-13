/// @description Swap controls
var tmp = global.leftButton[0];
global.leftButton[0] = global.rightButton[0]
global.rightButton[0] = tmp;
global.swapControls = !global.swapControls;
image_index = !image_index;
scrPlaySound(sndBlockChange);

