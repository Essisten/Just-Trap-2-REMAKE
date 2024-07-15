///scrGetControllerBind(buttonIndex)
///gets a string representation of the button for a controller
///argument0 - button constant (i.e. gp_face1, gp_start)

var buttonIn = argument0;

switch (buttonIn)
{
    case gp_face1: return "A/Cross";
    case gp_face2: return "B/Circle";
    case gp_face3: return "X/Square";
    case gp_face4: return "Y/Triangle";
    case gp_shoulderl: return "Left Bumper";
    case gp_shoulderlb: return "Left Trigger";
    case gp_shoulderr: return "Right Bumper";
    case gp_shoulderrb: return "Right Trigger";
    case gp_select: return "Select/Touch-Pad";
    case gp_start: return "Start/Options";
    case gp_stickl: return "Left Stick (pressed)";
    case gp_stickr: return "Right Stick (pressed)";
    case gp_padu: return "D-Pad Up";
    case gp_padd: return "D-Pad Down";
    case gp_padl: return "D-Pad Left";
    case gp_padr: return "D-Pad Right";
    case gp_axislh: return "Joystick LH";
    case gp_axislv: return "Joystick LV";
    case gp_axisrh: return "Joystick RH";
    case gp_axisrv: return "Joystick RV";
    default: return "Unknown";
}
