if (sx[0] < sMax)
    sx[0] = min(sx[0] + sqSpd, sMax);
if (sx[1] > 800 - sMax)
    sx[1] = max(sx[1] - sqSpd, 800 - sMax);
if (sy[0] < textY)
    sy[0] = min(sy[0] + sqSpd, textY);
if (sy[1] > textY + array_length_1d(text) * sepY)
    sy[1] = max(sy[1] - sqSpd, textY + array_length_1d(text) * sepY);
if (a < 1)
    a += 0.05;
if (sx[0] < sMax or sx[1] > 800 - sMax or sy[0] < textY or sy[1] > textY + array_length_1d(text) * sepY)
    alarm[0] = 1;

