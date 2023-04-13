///scrSwapControls()
///Swapping players controls

for (var i = 0; i < 2; i++)
{
    if (global.swapControls)
    {
        global.leftButton[i] = global.saveRightButton[i];
        global.rightButton[i] = global.saveLeftButton[i];
        global.jumpButton[i] = global.saveShootButton[i];
        global.shootButton[i] = global.saveJumpButton[i];
    }
    else
    {
        global.leftButton[i] = global.saveLeftButton[i];
        global.rightButton[i] = global.saveRightButton[i];
        global.jumpButton[i] = global.saveJumpButton[i];
        global.shootButton[i] = global.saveShootButton[i];
    }
}
