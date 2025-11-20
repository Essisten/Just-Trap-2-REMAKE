/// @description Actually invert controls
scrPlaySound(sndBlockChange);
global.swapControls = !global.swapControls;
scrSwapControls();
instance_destroy();