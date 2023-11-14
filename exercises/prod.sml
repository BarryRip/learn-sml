(* Make tail recursive *)
fun prodHelper ([], x) = x
| prodHelper (n::ns, x) = prodHelper (ns, n*x)

fun prod l = prodHelper (l, 1);

prod([2,3,4,5]) = 120;
prod([]) = 1;