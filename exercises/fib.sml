fun fibHelper(a, b, 0) = a
| fibHelper(a, b, 1) = b
| fibHelper(a, b, count) = fibHelper(b, a+b, count-1);

fun fib(n) = fibHelper(0, 1, n);

fib(10) = 55;
fib(8) = 21;
fib(2) = 1;