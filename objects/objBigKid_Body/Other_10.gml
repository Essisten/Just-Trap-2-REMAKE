/// @description Change skin
switch (objBigKid_BG.phase)
{
    default:
        if (global.spriteStyle == 0)
           sprite_index = skin[objBigKid_BG.phase];
        else
            image_index = objBigKid_BG.phase;
        break;
}

