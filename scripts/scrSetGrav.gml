///scrSetGrav(direction)
///argument0 - 1, 2, 3, 4. Top, Right, Bottom, Left
scrPlaySound(sndVJump);
var dist = 14;
var down = 10;
var up = 14;
djump = 1;
if (!global.gravityControls)
{
    scrLoadControls();
    var tmpUp = global.upButton;
    var tmpDown = global.downButton;
    var tmpLeft = global.leftButton;
    var tmpRight = global.rightButton;
    switch (argument0)
    {
        case 1:
            global.upButton = tmpDown;
            global.downButton = tmpUp;
            break;
        case 2:
            global.upButton = tmpLeft;
            global.downButton = tmpRight;
            global.leftButton = tmpDown;
            global.rightButton = tmpUp;
            break;
        case 4:
            global.upButton = tmpRight;
            global.downButton = tmpLeft;
            global.leftButton = tmpUp;
            global.rightButton = tmpDown;
            break;
    }
}
switch (argument0)
{
    case 1:
        global.gravH = false;
        if (global.grav == 1)
            scrFlipGrav();
        break;
    case 2:
        global.gravH = true;
        if (global.grav == -1)
            scrFlipGrav();
        break;
    case 3:
        global.gravH = false;
        if (global.grav == -1)
            scrFlipGrav();
        break;
    case 4:
        global.gravH = true;
        if (global.grav == 1)
            scrFlipGrav();
        break;
}
scrSetPlayerMask();
if (place_meeting(x, y, objBlock))
{
    switch (argument0)
    {
        case 1:
            if (!place_meeting(x, y - down, objBlock))
                y -= dist;
            else if (!place_meeting(x, y + up, objBlock))
                y += dist;
            break;
        case 2:
            if (!place_meeting(x - up, y, objBlock))
                x -= dist;
            else if (!place_meeting(x + down, y, objBlock))
                x += dist;
                break;
        case 3:
            if (!place_meeting(x, y - up, objBlock))
                y -= dist;
            else if (!place_meeting(x, y + down, objBlock))
                y += dist;
             break;
        case 4:
            if (!place_meeting(x - down, y, objBlock))
                x -= dist;
            else if (!place_meeting(x + up, y, objBlock))
                x += dist;
            break;
    }
}
if (place_meeting(x, y, objBlock))
{
    switch (argument0)
    {
        case 1:
        case 3:
            if (!place_meeting(x - 7, y, objBlock))
                x -= dist;
            else if (!place_meeting(x + 7, y, objBlock))
                x += dist;
            break;
        case 2:
        case 4:
            
            if (!place_meeting(x, y - 7, objBlock))
                y -= dist;
            else if (!place_meeting(x, y + 7, objBlock))
                y += dist;
            break;
    }
}
