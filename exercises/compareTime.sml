fun hourMinuteBefore((h1, m1), (h2, m2)) =
if h1 = h2
then m1 < m2
else h1 < h2;

fun timeBefore((h1, m1, x1), (h2, m2, x2)) =
if x1 = x2
then hourMinuteBefore((h1, m1), (h2, m2))
else x1 = "AM" andalso x2 = "PM";

timeBefore((1, 59, "AM"), (2, 40, "PM")) = true;
timeBefore((1, 59, "PM"), (2, 40, "PM")) = true;
timeBefore((1, 59, "PM"), (2, 40, "AM")) = false;
timeBefore((1, 59, "AM"), (2, 40, "AM")) = true;