///scrGiveMoney(amount)
///Gives money
global.coins += argument0;
if (global.coins - global.fakeCoins > 9999)
{
    show_message("Fuck you");
    game_end();
}
global.fakeCoins = global.coins;
