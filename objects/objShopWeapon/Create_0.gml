select = 0;
submenu = -1;
dick = 0;
weaponStartX = 10;
weaponStartY = 10;
weaponEndX = 790;
weaponEndY = 240;
weaponNameX = 232;
weaponNameY = 32;
weaponDescriptionX = 420;
weaponDescriptionY = 32;
version = array_create(6, 0);
weapons[0, 0] = scrCreateShopItem("CXN Bat",
@"The CXN is end loaded, has an optimized handle flex specially built to perform perfectly with the 13 inch composite barrel. Get your CXN Slowpitch Bat today, right here at CheapBats.com!
#    Due to Just's lack of strength, the damage of this weapon is simply negligible. However, it's capable of reflecting most enemy projectiles.",
"middle",
"pathetic",
"melee",
200,
"");
weapons[0, 1] = scrCreateShopItem("The Gun",
@"   The classic standard pistol of everyone's favorite Kid. The original user wielded it for many years before Just obtained it.
#   It was initially designed to only fire manually, but it could be improved with an auto-firing module.",
"fast",
"middle",
"far",
0,
"How did you even lost it?!");
weapons[0, 2] = scrCreateShopItem("Shotgun",
@"    A notoriously deadly weapon. It fractures the bullets into pieces right after firing. This weapon has a lower shot speed, but significantly increased damage radius.
#    The sharp fragments are able to penetrate an enemy's defenses, increasing maximum damage compared to The Gun. ",
"slow",
"good",
"short",
400,
"");
weapons[0, 3] = scrCreateShopItem("Machine gun",
@"    An extremely lethal and heavy weapon. Combining multiple guns together gives this weapon a high rate of fire, without sacrificing the power of each bullet.
#    Its disadvantages include its reduced accuracy, as well as reduced user mobility.",
"TRA-TA-TA",
"middle",
"far",
800,
"");
var w_amount = array_length(weapons);
for (var k = 0; k < w_amount; k++)
{
    var v_amount = array_length(weapons[0]);
    for (var i = 0; i < v_amount; i++)
    {
        if (global.unlockedWeapons[i + k * (w_amount - 1)])
           continue;
        with (weapons[k, i])
        {
            name = "???";
            description = "";
        }
    }
}
lineSeperation = 48;
optionsNum = array_length(weapons[0]);
boxStartX = 300;
boxStartY = 250;
boxEndX = 540;
boxEndY = boxStartY + lineSeperation * (optionsNum);
lineCenter = boxStartX + (boxEndX - boxStartX) / 2;
selectBoxOffset = 4;
slideOffset = 160;
alarm[0] = 1;
image_alpha = 0;
w_id = 0;
w_index = 0;
ars_size = 0;