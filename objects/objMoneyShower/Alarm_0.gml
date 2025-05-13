/// @description Start showing the reward
alarm[1] = 1;
if (reward == 0)
{
    reward = stage * 100 * max(0, (1 - 0.1 * global.clearAmount[stage])) * (global.difficulty + 1);
    global.clearAmount[stage]++;
    if (global.pb[stage - 1] < 25)
       reward *= 2;
}
scrGiveMoney(reward);
scrSaveGame(false);

