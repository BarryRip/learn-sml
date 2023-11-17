fun allChangeH(coins, coinvals, 0, acc) = [coins]::acc
| allChangeH(coins, [], amount, acc) = acc
| allChangeH(coins, c::coinvals, amount, acc) =
    if amount < 0 then acc
    else allChangeH(coins, coinvals, amount, allChangeH(c::coins, c::coinvals, amount-c, acc));

fun allChange(coins, coinvals, amount) = allChangeH(coins, coinvals, amount, []);

allChange([], [5,2], 16);
allChange([], [25,10,2,1], 43);